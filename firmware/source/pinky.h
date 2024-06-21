#ifndef PINKY_H
#define PINKY_H

#include <xc.h>

#define _XTAL_FREQ 32000000

#define ISR_ADDRESS     1024
#define STARTUP_ADDRESS  512
#define LOOP_ADDRESS     640

#define GPIO_0 PORTAbits.RA5
#define GPIO_1 PORTAbits.RA4
#define GPIO_2 PORTCbits.RC5
#define GPIO_3 PORTCbits.RC4
#define GPIO_4 PORTAbits.RA2
#define GPIO_5 PORTCbits.RC2
#define GPIO_6 PORTBbits.RB6
#define GPIO_7 PORTCbits.RC3
#define GPIO_8 PORTCbits.RC6
#define GPIO_9 PORTCbits.RC7

#define SPI_0 GPIO_7
#define SPI_1 GPIO_8
#define SPI_2 GPIO_9

#define STAT_LED GPIO_6

typedef __bit b1;

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

typedef int8_t  s8;
typedef int16_t s16;
typedef int32_t s32;

void stat_blink(int times, int delay);

#endif //PINKY_H
