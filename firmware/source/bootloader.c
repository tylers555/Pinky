#include <xc.h>
#include <stdio.h>

#include "pinky.h"

#pragma config WDTE   = OFF
#pragma config RSTOSC = HFINTOSC_32MHZ
#pragma config BBSIZE = BB512
#pragma config BBEN   = ON

void __at(ISR_ADDRESS) interrupt(void);
void __at(STARTUP_ADDRESS) startup(void);
void __at(LOOP_ADDRESS) loop(void);

char serial_buffer[70];
int  serial_buffer_size = 0;
b1   programming_mode = 0;

__nonreentrant void putch(char data){
    while(!TX1IF) CLRWDT();
    TX1REG = data;
}

void stat_blink(int times, int delay){
    for(int i=0; i<times; i++){
        STAT_LED = 1;
        for(int j=0; j<delay; j++){
            __delaywdt_ms(1);
        }
        STAT_LED = 0;
        for(int j=0; j<delay; j++){
            __delaywdt_ms(1);
        }
    }
}

void __interrupt() isr(void){
    if(PIR1bits.RC1IF){
        while(serial_buffer_size < sizeof(serial_buffer)){
            if(PIR1bits.RC1IF){
                char c = RC1REG; // reading the register changes it
                serial_buffer[serial_buffer_size++] = c;
                if(RC1STAbits.OERR){
                    RC1STAbits.CREN = 0;
                    RC1STAbits.CREN = 1;
                    serial_buffer_size = -1;
                }
                if(c == '\n') break;
            }
            CLRWDT();
        }
    }
    
    interrupt();
}

void unlock_sequence(void){
    NVMCON2 = 0x55; // First unlock code
    NVMCON2 = 0xAA; // Second unlock code
    NVMCON1bits.WR = 1; // Initiate write/erase cycle
}

int main(void){
    OSCFRQ = 0x05;
    
    //- Stat LED
    PORTBbits.RB6    = 0;
    ANSELBbits.ANSB6 = 0;
    TRISBbits.TRISB6 = 0;
    
    //- UART pins
    PORTBbits.RB5 = 0;
    PORTBbits.RB7 = 0;
    ANSELBbits.ANSB5 = 0;
    ANSELBbits.ANSB7 = 0;
    TRISBbits.TRISB5 = 1;
    TRISBbits.TRISB7 = 0;
    
    //- Setup UART
    // baudrate is calculated to be 19.2k. 0.16% error.
    // CH340C needs error < 1%
    SP1BRG = 103;
    
    RB5PPS = 0x06; // PPS table
    RB7PPS = 0x05; // PPS table
    
    TX1STAbits.SYNC = 0;
    TX1STAbits.TX9  = 1;
    TX1STAbits.TX9D = 1;
    TX1STAbits.BRGH = 1;
    TX1STAbits.TXEN = 1;
    RC1STAbits.SPEN = 1;
    RC1STAbits.CREN = 1;
    //RC1STAbits.RX9  = 1;
    
    
    PIE1bits.RC1IE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.GIE  = 1;
    
    startup();
    
    while(1){
        // TODO(Tyler): I need a better way of doing this, so that it is all done through the 
        // interrupt or something, and not by default
        if(serial_buffer_size > 0){
            stat_blink(1, 100);
            switch(serial_buffer[0]){
                case 0x81:{
                    putch(0x06);
                    programming_mode = 1;
                } break;
                case 0x82: {
                    putch(0x06);
                    programming_mode = 0;
                }break;
                case  0x83: {
                    INTCONbits.GIE = 0; // Disable global interrupts
                    
                    
                    // Erase program memory
                    NVMCON1bits.NVMREGS = 0;
                    // MSB is first (big-endian)
                    NVMADRH = serial_buffer[1];
                    NVMADRL = serial_buffer[2];
                    NVMCON1bits.FREE = 1;
                    NVMCON1bits.WREN = 1;
                    unlock_sequence();
#if 0
                    
                    NVMCON1bits.LWLO = 1;
                    NVMADRH = serial_buffer[1];
                    NVMADRL = serial_buffer[2];
                    for(int i=0; i < 62; i+=2){
                        NVMDATH = serial_buffer[3+i];
                        NVMDATL = serial_buffer[4+i];
                        unlock_sequence();
                        NVMADRL++;
                    }
                    NVMCON1bits.LWLO = 0;
                    NVMDATH = serial_buffer[65];
                    NVMDATL = serial_buffer[66];
                    unlock_sequence();
                    
#endif
                    INTCONbits.GIE = 1; // Enable global interrupts
                    NVMCON1bits.WREN = 0;
                    
                    putch(0x06);
                }break;
                default: {
                    if(programming_mode){
                        //putch((char)serial_buffer[0]);
                        putch(0x81);
                        stat_blink(2, 100);
                    }
                }break;
            }
            serial_buffer_size = 0;
        }else if(serial_buffer_size == -1){
            putch(0x12);
        }
        
        if(programming_mode){
            //stat_blink(1, 100);
        }else{
            loop();
        }
        
        CLRWDT();
    }
}