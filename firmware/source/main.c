#include <xc.h>
#include <stdio.h>

#include "pinky.h"

extern char serial_buffer[16];
extern int  serial_buffer_index;

__at(ISR_ADDRESS) void interrupt(){
    
}

__at(STARTUP_ADDRESS) void startup(){
    
}

__at(LOOP_ADDRESS) void loop(){
    //printf("Hello!");
    //__delaywdt_ms(500);
    stat_blink(1, 500);
}