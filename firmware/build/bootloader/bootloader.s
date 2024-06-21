subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	16F15243
include "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\16f15243.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 110 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INDF0 equ 00h ;# 
# 130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INDF1 equ 01h ;# 
# 150 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCL equ 02h ;# 
# 170 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
STATUS equ 03h ;# 
# 233 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0L equ 04h ;# 
# 253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0H equ 05h ;# 
# 277 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1L equ 06h ;# 
# 297 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1H equ 07h ;# 
# 317 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BSR equ 08h ;# 
# 375 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WREG equ 09h ;# 
# 395 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCLATH equ 0Ah ;# 
# 415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INTCON equ 0Bh ;# 
# 448 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PORTA equ 0Ch ;# 
# 498 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PORTB equ 0Dh ;# 
# 537 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PORTC equ 0Eh ;# 
# 599 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TRISA equ 012h ;# 
# 649 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TRISB equ 013h ;# 
# 688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TRISC equ 014h ;# 
# 750 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
LATA equ 018h ;# 
# 800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
LATB equ 019h ;# 
# 839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
LATC equ 01Ah ;# 
# 901 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CPCON equ 09Ah ;# 
# 934 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADRES equ 09Bh ;# 
# 941 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADRESL equ 09Bh ;# 
# 961 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADRESH equ 09Ch ;# 
# 981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADCON0 equ 09Dh ;# 
# 1042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADCON1 equ 09Eh ;# 
# 1096 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADACT equ 09Fh ;# 
# 1124 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB4I2C equ 010Ch ;# 
# 1157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB6I2C equ 010Dh ;# 
# 1190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC1REG equ 0119h ;# 
# 1210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TX1REG equ 011Ah ;# 
# 1230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SP1BRG equ 011Bh ;# 
# 1237 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SP1BRGL equ 011Bh ;# 
# 1257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SP1BRGH equ 011Ch ;# 
# 1277 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC1STA equ 011Dh ;# 
# 1339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TX1STA equ 011Eh ;# 
# 1401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BAUD1CON equ 011Fh ;# 
# 1453 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1BUF equ 018Ch ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1ADD equ 018Dh ;# 
# 1593 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1MSK equ 018Eh ;# 
# 1663 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1STAT equ 018Fh ;# 
# 2027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CON1 equ 0190h ;# 
# 2147 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CON2 equ 0191h ;# 
# 2334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CON3 equ 0192h ;# 
# 2396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1 equ 020Ch ;# 
# 2403 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1L equ 020Ch ;# 
# 2523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1H equ 020Dh ;# 
# 2643 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1CON equ 020Eh ;# 
# 2648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1CON equ 020Eh ;# 
# 2865 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1GCON equ 020Fh ;# 
# 2870 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1GCON equ 020Fh ;# 
# 3115 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1GATE equ 0210h ;# 
# 3120 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1GATE equ 0210h ;# 
# 3281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1CLK equ 0211h ;# 
# 3286 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1CLK equ 0211h ;# 
# 3290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PR1 equ 0211h ;# 
# 3491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2TMR equ 028Ch ;# 
# 3496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR2 equ 028Ch ;# 
# 3545 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2PR equ 028Dh ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PR2 equ 028Dh ;# 
# 3599 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2CON equ 028Eh ;# 
# 3745 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2HLT equ 028Fh ;# 
# 3873 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2CLKCON equ 0290h ;# 
# 3941 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2RST equ 0291h ;# 
# 4021 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR1 equ 030Ch ;# 
# 4028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR1L equ 030Ch ;# 
# 4048 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR1H equ 030Dh ;# 
# 4068 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP1CON equ 030Eh ;# 
# 4195 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP1CAP equ 030Fh ;# 
# 4251 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR2 equ 0310h ;# 
# 4258 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR2L equ 0310h ;# 
# 4278 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR2H equ 0311h ;# 
# 4298 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP2CON equ 0312h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP2CAP equ 0313h ;# 
# 4481 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3DC equ 0314h ;# 
# 4488 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3DCL equ 0314h ;# 
# 4509 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3DCH equ 0315h ;# 
# 4529 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3CON equ 0316h ;# 
# 4585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4DC equ 0318h ;# 
# 4592 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4DCL equ 0318h ;# 
# 4613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4DCH equ 0319h ;# 
# 4633 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4CON equ 031Ah ;# 
# 4689 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR0L equ 059Ch ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR0 equ 059Ch ;# 
# 4827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR0H equ 059Dh ;# 
# 4832 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PR0 equ 059Dh ;# 
# 5081 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T0CON0 equ 059Eh ;# 
# 5205 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T0CON1 equ 059Fh ;# 
# 5347 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIR0 equ 070Ch ;# 
# 5380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIR1 equ 070Dh ;# 
# 5442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIR2 equ 070Eh ;# 
# 5475 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIE0 equ 0716h ;# 
# 5508 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIE1 equ 0717h ;# 
# 5570 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIE2 equ 0718h ;# 
# 5603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WDTCON equ 080Ch ;# 
# 5665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BORCON equ 0811h ;# 
# 5692 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCON0 equ 0813h ;# 
# 5749 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCON1 equ 0814h ;# 
# 5770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMADR equ 081Ah ;# 
# 5777 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMADRL equ 081Ah ;# 
# 5797 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMADRH equ 081Bh ;# 
# 5817 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMDAT equ 081Ch ;# 
# 5824 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMDATL equ 081Ch ;# 
# 5844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMDATH equ 081Dh ;# 
# 5864 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMCON1 equ 081Eh ;# 
# 5920 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMCON2 equ 081Fh ;# 
# 5940 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCCON equ 088Eh ;# 
# 6005 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCSTAT equ 0890h ;# 
# 6051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCEN equ 0891h ;# 
# 6091 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCTUNE equ 0892h ;# 
# 6149 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCFRQ equ 0893h ;# 
# 6189 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FVRCON equ 090Ch ;# 
# 6248 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PPSLOCK equ 01E8Fh ;# 
# 6268 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INTPPS equ 01E90h ;# 
# 6328 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T0CKIPPS equ 01E91h ;# 
# 6388 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1CKIPPS equ 01E92h ;# 
# 6454 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1GPPS equ 01E93h ;# 
# 6520 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2INPPS equ 01E9Ch ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP1PPS equ 01EA1h ;# 
# 6652 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP2PPS equ 01EA2h ;# 
# 6718 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADACTPPS equ 01EC3h ;# 
# 6784 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CLKPPS equ 01EC5h ;# 
# 6850 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1DATPPS equ 01EC6h ;# 
# 6916 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1SSPPS equ 01EC7h ;# 
# 6982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RX1PPS equ 01ECBh ;# 
# 6987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RX1DTPPS equ 01ECBh ;# 
# 6991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RXPPS equ 01ECBh ;# 
# 7174 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CK1PPS equ 01ECCh ;# 
# 7179 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TX1CKPPS equ 01ECCh ;# 
# 7183 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CKPPS equ 01ECCh ;# 
# 7366 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA0PPS equ 01F10h ;# 
# 7424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA1PPS equ 01F11h ;# 
# 7482 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA2PPS equ 01F12h ;# 
# 7540 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA4PPS equ 01F14h ;# 
# 7598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA5PPS equ 01F15h ;# 
# 7656 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB4PPS equ 01F1Ch ;# 
# 7714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB5PPS equ 01F1Dh ;# 
# 7772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB6PPS equ 01F1Eh ;# 
# 7830 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB7PPS equ 01F1Fh ;# 
# 7888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC0PPS equ 01F20h ;# 
# 7946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC1PPS equ 01F21h ;# 
# 8004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC2PPS equ 01F22h ;# 
# 8062 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC3PPS equ 01F23h ;# 
# 8120 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC4PPS equ 01F24h ;# 
# 8178 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC5PPS equ 01F25h ;# 
# 8236 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC6PPS equ 01F26h ;# 
# 8294 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC7PPS equ 01F27h ;# 
# 8352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ANSELA equ 01F38h ;# 
# 8397 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WPUA equ 01F39h ;# 
# 8447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ODCONA equ 01F3Ah ;# 
# 8492 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SLRCONA equ 01F3Bh ;# 
# 8537 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INLVLA equ 01F3Ch ;# 
# 8587 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCAP equ 01F3Dh ;# 
# 8637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCAN equ 01F3Eh ;# 
# 8687 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCAF equ 01F3Fh ;# 
# 8737 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ANSELB equ 01F43h ;# 
# 8776 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WPUB equ 01F44h ;# 
# 8815 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ODCONB equ 01F45h ;# 
# 8854 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SLRCONB equ 01F46h ;# 
# 8893 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INLVLB equ 01F47h ;# 
# 8932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCBP equ 01F48h ;# 
# 8971 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCBN equ 01F49h ;# 
# 9010 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCBF equ 01F4Ah ;# 
# 9049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ANSELC equ 01F4Eh ;# 
# 9111 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WPUC equ 01F4Fh ;# 
# 9173 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ODCONC equ 01F50h ;# 
# 9235 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SLRCONC equ 01F51h ;# 
# 9297 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INLVLC equ 01F52h ;# 
# 9359 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCCP equ 01F53h ;# 
# 9421 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCCN equ 01F54h ;# 
# 9483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCCF equ 01F55h ;# 
# 9545 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
STATUS_SHAD equ 01FE4h ;# 
# 9565 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WREG_SHAD equ 01FE5h ;# 
# 9585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BSR_SHAD equ 01FE6h ;# 
# 9605 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCLATH_SHAD equ 01FE7h ;# 
# 9625 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0_SHAD equ 01FE8h ;# 
# 9632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0L_SHAD equ 01FE8h ;# 
# 9652 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0H_SHAD equ 01FE9h ;# 
# 9672 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1L_SHAD equ 01FEAh ;# 
# 9692 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1H_SHAD equ 01FEBh ;# 
# 9712 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
STKPTR equ 01FEDh ;# 
# 9756 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TOSL equ 01FEEh ;# 
# 9826 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TOSH equ 01FEFh ;# 
# 110 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INDF0 equ 00h ;# 
# 130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INDF1 equ 01h ;# 
# 150 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCL equ 02h ;# 
# 170 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
STATUS equ 03h ;# 
# 233 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0L equ 04h ;# 
# 253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0H equ 05h ;# 
# 277 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1L equ 06h ;# 
# 297 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1H equ 07h ;# 
# 317 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BSR equ 08h ;# 
# 375 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WREG equ 09h ;# 
# 395 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCLATH equ 0Ah ;# 
# 415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INTCON equ 0Bh ;# 
# 448 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PORTA equ 0Ch ;# 
# 498 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PORTB equ 0Dh ;# 
# 537 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PORTC equ 0Eh ;# 
# 599 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TRISA equ 012h ;# 
# 649 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TRISB equ 013h ;# 
# 688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TRISC equ 014h ;# 
# 750 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
LATA equ 018h ;# 
# 800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
LATB equ 019h ;# 
# 839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
LATC equ 01Ah ;# 
# 901 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CPCON equ 09Ah ;# 
# 934 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADRES equ 09Bh ;# 
# 941 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADRESL equ 09Bh ;# 
# 961 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADRESH equ 09Ch ;# 
# 981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADCON0 equ 09Dh ;# 
# 1042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADCON1 equ 09Eh ;# 
# 1096 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADACT equ 09Fh ;# 
# 1124 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB4I2C equ 010Ch ;# 
# 1157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB6I2C equ 010Dh ;# 
# 1190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC1REG equ 0119h ;# 
# 1210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TX1REG equ 011Ah ;# 
# 1230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SP1BRG equ 011Bh ;# 
# 1237 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SP1BRGL equ 011Bh ;# 
# 1257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SP1BRGH equ 011Ch ;# 
# 1277 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC1STA equ 011Dh ;# 
# 1339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TX1STA equ 011Eh ;# 
# 1401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BAUD1CON equ 011Fh ;# 
# 1453 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1BUF equ 018Ch ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1ADD equ 018Dh ;# 
# 1593 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1MSK equ 018Eh ;# 
# 1663 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1STAT equ 018Fh ;# 
# 2027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CON1 equ 0190h ;# 
# 2147 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CON2 equ 0191h ;# 
# 2334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CON3 equ 0192h ;# 
# 2396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1 equ 020Ch ;# 
# 2403 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1L equ 020Ch ;# 
# 2523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1H equ 020Dh ;# 
# 2643 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1CON equ 020Eh ;# 
# 2648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1CON equ 020Eh ;# 
# 2865 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1GCON equ 020Fh ;# 
# 2870 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1GCON equ 020Fh ;# 
# 3115 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1GATE equ 0210h ;# 
# 3120 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1GATE equ 0210h ;# 
# 3281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1CLK equ 0211h ;# 
# 3286 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR1CLK equ 0211h ;# 
# 3290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PR1 equ 0211h ;# 
# 3491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2TMR equ 028Ch ;# 
# 3496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR2 equ 028Ch ;# 
# 3545 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2PR equ 028Dh ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PR2 equ 028Dh ;# 
# 3599 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2CON equ 028Eh ;# 
# 3745 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2HLT equ 028Fh ;# 
# 3873 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2CLKCON equ 0290h ;# 
# 3941 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2RST equ 0291h ;# 
# 4021 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR1 equ 030Ch ;# 
# 4028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR1L equ 030Ch ;# 
# 4048 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR1H equ 030Dh ;# 
# 4068 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP1CON equ 030Eh ;# 
# 4195 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP1CAP equ 030Fh ;# 
# 4251 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR2 equ 0310h ;# 
# 4258 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR2L equ 0310h ;# 
# 4278 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCPR2H equ 0311h ;# 
# 4298 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP2CON equ 0312h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP2CAP equ 0313h ;# 
# 4481 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3DC equ 0314h ;# 
# 4488 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3DCL equ 0314h ;# 
# 4509 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3DCH equ 0315h ;# 
# 4529 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM3CON equ 0316h ;# 
# 4585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4DC equ 0318h ;# 
# 4592 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4DCL equ 0318h ;# 
# 4613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4DCH equ 0319h ;# 
# 4633 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PWM4CON equ 031Ah ;# 
# 4689 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR0L equ 059Ch ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR0 equ 059Ch ;# 
# 4827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TMR0H equ 059Dh ;# 
# 4832 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PR0 equ 059Dh ;# 
# 5081 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T0CON0 equ 059Eh ;# 
# 5205 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T0CON1 equ 059Fh ;# 
# 5347 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIR0 equ 070Ch ;# 
# 5380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIR1 equ 070Dh ;# 
# 5442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIR2 equ 070Eh ;# 
# 5475 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIE0 equ 0716h ;# 
# 5508 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIE1 equ 0717h ;# 
# 5570 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PIE2 equ 0718h ;# 
# 5603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WDTCON equ 080Ch ;# 
# 5665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BORCON equ 0811h ;# 
# 5692 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCON0 equ 0813h ;# 
# 5749 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCON1 equ 0814h ;# 
# 5770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMADR equ 081Ah ;# 
# 5777 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMADRL equ 081Ah ;# 
# 5797 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMADRH equ 081Bh ;# 
# 5817 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMDAT equ 081Ch ;# 
# 5824 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMDATL equ 081Ch ;# 
# 5844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMDATH equ 081Dh ;# 
# 5864 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMCON1 equ 081Eh ;# 
# 5920 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
NVMCON2 equ 081Fh ;# 
# 5940 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCCON equ 088Eh ;# 
# 6005 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCSTAT equ 0890h ;# 
# 6051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCEN equ 0891h ;# 
# 6091 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCTUNE equ 0892h ;# 
# 6149 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
OSCFRQ equ 0893h ;# 
# 6189 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FVRCON equ 090Ch ;# 
# 6248 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PPSLOCK equ 01E8Fh ;# 
# 6268 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INTPPS equ 01E90h ;# 
# 6328 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T0CKIPPS equ 01E91h ;# 
# 6388 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1CKIPPS equ 01E92h ;# 
# 6454 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T1GPPS equ 01E93h ;# 
# 6520 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
T2INPPS equ 01E9Ch ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP1PPS equ 01EA1h ;# 
# 6652 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CCP2PPS equ 01EA2h ;# 
# 6718 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ADACTPPS equ 01EC3h ;# 
# 6784 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1CLKPPS equ 01EC5h ;# 
# 6850 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1DATPPS equ 01EC6h ;# 
# 6916 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SSP1SSPPS equ 01EC7h ;# 
# 6982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RX1PPS equ 01ECBh ;# 
# 6987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RX1DTPPS equ 01ECBh ;# 
# 6991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RXPPS equ 01ECBh ;# 
# 7174 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CK1PPS equ 01ECCh ;# 
# 7179 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TX1CKPPS equ 01ECCh ;# 
# 7183 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
CKPPS equ 01ECCh ;# 
# 7366 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA0PPS equ 01F10h ;# 
# 7424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA1PPS equ 01F11h ;# 
# 7482 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA2PPS equ 01F12h ;# 
# 7540 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA4PPS equ 01F14h ;# 
# 7598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RA5PPS equ 01F15h ;# 
# 7656 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB4PPS equ 01F1Ch ;# 
# 7714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB5PPS equ 01F1Dh ;# 
# 7772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB6PPS equ 01F1Eh ;# 
# 7830 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RB7PPS equ 01F1Fh ;# 
# 7888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC0PPS equ 01F20h ;# 
# 7946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC1PPS equ 01F21h ;# 
# 8004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC2PPS equ 01F22h ;# 
# 8062 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC3PPS equ 01F23h ;# 
# 8120 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC4PPS equ 01F24h ;# 
# 8178 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC5PPS equ 01F25h ;# 
# 8236 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC6PPS equ 01F26h ;# 
# 8294 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
RC7PPS equ 01F27h ;# 
# 8352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ANSELA equ 01F38h ;# 
# 8397 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WPUA equ 01F39h ;# 
# 8447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ODCONA equ 01F3Ah ;# 
# 8492 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SLRCONA equ 01F3Bh ;# 
# 8537 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INLVLA equ 01F3Ch ;# 
# 8587 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCAP equ 01F3Dh ;# 
# 8637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCAN equ 01F3Eh ;# 
# 8687 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCAF equ 01F3Fh ;# 
# 8737 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ANSELB equ 01F43h ;# 
# 8776 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WPUB equ 01F44h ;# 
# 8815 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ODCONB equ 01F45h ;# 
# 8854 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SLRCONB equ 01F46h ;# 
# 8893 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INLVLB equ 01F47h ;# 
# 8932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCBP equ 01F48h ;# 
# 8971 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCBN equ 01F49h ;# 
# 9010 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCBF equ 01F4Ah ;# 
# 9049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ANSELC equ 01F4Eh ;# 
# 9111 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WPUC equ 01F4Fh ;# 
# 9173 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
ODCONC equ 01F50h ;# 
# 9235 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
SLRCONC equ 01F51h ;# 
# 9297 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
INLVLC equ 01F52h ;# 
# 9359 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCCP equ 01F53h ;# 
# 9421 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCCN equ 01F54h ;# 
# 9483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
IOCCF equ 01F55h ;# 
# 9545 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
STATUS_SHAD equ 01FE4h ;# 
# 9565 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
WREG_SHAD equ 01FE5h ;# 
# 9585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
BSR_SHAD equ 01FE6h ;# 
# 9605 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
PCLATH_SHAD equ 01FE7h ;# 
# 9625 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0_SHAD equ 01FE8h ;# 
# 9632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0L_SHAD equ 01FE8h ;# 
# 9652 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR0H_SHAD equ 01FE9h ;# 
# 9672 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1L_SHAD equ 01FEAh ;# 
# 9692 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
FSR1H_SHAD equ 01FEBh ;# 
# 9712 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
STKPTR equ 01FEDh ;# 
# 9756 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TOSL equ 01FEEh ;# 
# 9826 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f15243.h"
TOSH equ 01FEFh ;# 
	debug_source C
	FNCALL	_main,_loop
	FNCALL	_main,_putch
	FNCALL	_main,_startup
	FNCALL	_main,_stat_blink
	FNCALL	_main,_unlock_sequence
	FNROOT	_main
	FNCALL	_isr,_interrupt
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_programming_mode
	global	_serial_buffer
	global	_serial_buffer_size
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_TRISBbits
_TRISBbits	set	0x13
	global	_PORTBbits
_PORTBbits	set	0xD
	global	_SP1BRG
_SP1BRG	set	0x11B
	global	_TX1STAbits
_TX1STAbits	set	0x11E
	global	_RC1STAbits
_RC1STAbits	set	0x11D
	global	_RC1REG
_RC1REG	set	0x119
	global	_TX1REG
_TX1REG	set	0x11A
	global	_PIE1bits
_PIE1bits	set	0x717
	global	_PIR1bits
_PIR1bits	set	0x70D
	global	_TX1IF
_TX1IF	set	0x386B
	global	_NVMADRL
_NVMADRL	set	0x81A
	global	_NVMADRH
_NVMADRH	set	0x81B
	global	_NVMCON1bits
_NVMCON1bits	set	0x81E
	global	_NVMCON2
_NVMCON2	set	0x81F
	global	_OSCFRQ
_OSCFRQ	set	0x893
	global	_RB7PPS
_RB7PPS	set	0x1F1F
	global	_RB5PPS
_RB5PPS	set	0x1F1D
	global	_ANSELBbits
_ANSELBbits	set	0x1F43
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config RSTOSC = "HFINTOSC_32MHZ"
	config WDTE = "OFF"
	config BBSIZE = "BB512"
	config BBEN = "ON"
	file	"bootloader.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_programming_mode:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_serial_buffer:
       ds      70

_serial_buffer_size:
       ds      2

	file	"bootloader.s"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	048h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_interrupt:	; 1 bytes @ 0x0
??_interrupt:	; 1 bytes @ 0x0
?_startup:	; 1 bytes @ 0x0
?_loop:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
?_unlock_sequence:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	isr@c
isr@c:	; 1 bytes @ 0x0
	ds	1
??_startup:	; 1 bytes @ 0x1
??_loop:	; 1 bytes @ 0x1
??_putch:	; 1 bytes @ 0x1
?_stat_blink:	; 1 bytes @ 0x1
??_unlock_sequence:	; 1 bytes @ 0x1
	global	putch@data
putch@data:	; 1 bytes @ 0x1
	global	stat_blink@times
stat_blink@times:	; 2 bytes @ 0x1
	ds	2
	global	stat_blink@delay
stat_blink@delay:	; 2 bytes @ 0x3
	ds	2
??_stat_blink:	; 1 bytes @ 0x5
	ds	1
	global	stat_blink@i
stat_blink@i:	; 2 bytes @ 0x6
	ds	2
	global	stat_blink@j
stat_blink@j:	; 2 bytes @ 0x8
	ds	2
	global	stat_blink@j_227
stat_blink@j_227:	; 2 bytes @ 0xA
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 1 bytes @ 0x0
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         72
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      13
;!    BANK0            80      1      73
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_stat_blink
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0     464
;!                                              0 BANK0      1     1      0
;!                               _loop
;!                              _putch
;!                            _startup
;!                         _stat_blink
;!                    _unlock_sequence
;! ---------------------------------------------------------------------------------
;! (1) _unlock_sequence                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _stat_blink                                          11     7      4     442
;!                                              1 COMMON    11     7      4
;! ---------------------------------------------------------------------------------
;! (1) _startup                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _putch                                                1     1      0      22
;!                                              1 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _loop                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _isr                                                  1     1      0      45
;!                                              0 COMMON     1     1      0
;!                          _interrupt
;! ---------------------------------------------------------------------------------
;! (3) _interrupt                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _loop
;!   _putch
;!   _startup
;!   _stat_blink
;!   _unlock_sequence
;!
;! _isr (ROOT)
;!   _interrupt
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM              F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       1       1        7.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      C       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      1      49       5       91.2%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!ABS                  0      0      56      10        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!DATA                 0      0      56      11        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%
;!BITSFR32             0      0       0      33        0.0%
;!SFR32                0      0       0      33        0.0%
;!BITSFR33             0      0       0      34        0.0%
;!SFR33                0      0       0      34        0.0%
;!BITSFR34             0      0       0      35        0.0%
;!SFR34                0      0       0      35        0.0%
;!BITSFR35             0      0       0      36        0.0%
;!SFR35                0      0       0      36        0.0%
;!BITSFR36             0      0       0      37        0.0%
;!SFR36                0      0       0      37        0.0%
;!BITSFR37             0      0       0      38        0.0%
;!SFR37                0      0       0      38        0.0%
;!BITSFR38             0      0       0      39        0.0%
;!SFR38                0      0       0      39        0.0%
;!BITSFR39             0      0       0      40        0.0%
;!SFR39                0      0       0      40        0.0%
;!BITSFR40             0      0       0      41        0.0%
;!SFR40                0      0       0      41        0.0%
;!BITSFR41             0      0       0      42        0.0%
;!SFR41                0      0       0      42        0.0%
;!BITSFR42             0      0       0      43        0.0%
;!SFR42                0      0       0      43        0.0%
;!BITSFR43             0      0       0      44        0.0%
;!SFR43                0      0       0      44        0.0%
;!BITSFR44             0      0       0      45        0.0%
;!SFR44                0      0       0      45        0.0%
;!BITSFR45             0      0       0      46        0.0%
;!SFR45                0      0       0      46        0.0%
;!BITSFR46             0      0       0      47        0.0%
;!SFR46                0      0       0      47        0.0%
;!BITSFR47             0      0       0      48        0.0%
;!SFR47                0      0       0      48        0.0%
;!BITSFR48             0      0       0      49        0.0%
;!SFR48                0      0       0      49        0.0%
;!BITSFR49             0      0       0      50        0.0%
;!SFR49                0      0       0      50        0.0%
;!BITSFR50             0      0       0      51        0.0%
;!SFR50                0      0       0      51        0.0%
;!BITSFR51             0      0       0      52        0.0%
;!SFR51                0      0       0      52        0.0%
;!BITSFR52             0      0       0      53        0.0%
;!SFR52                0      0       0      53        0.0%
;!BITSFR53             0      0       0      54        0.0%
;!SFR53                0      0       0      54        0.0%
;!BITSFR54             0      0       0      55        0.0%
;!SFR54                0      0       0      55        0.0%
;!BITSFR55             0      0       0      56        0.0%
;!SFR55                0      0       0      56        0.0%
;!BITSFR56             0      0       0      57        0.0%
;!SFR56                0      0       0      57        0.0%
;!BITSFR57             0      0       0      58        0.0%
;!SFR57                0      0       0      58        0.0%
;!BITSFR58             0      0       0      59        0.0%
;!SFR58                0      0       0      59        0.0%
;!BITSFR59             0      0       0      60        0.0%
;!SFR59                0      0       0      60        0.0%
;!BITSFR60             0      0       0      61        0.0%
;!SFR60                0      0       0      61        0.0%
;!BITSFR61             0      0       0      62        0.0%
;!SFR61                0      0       0      62        0.0%
;!BITSFR62             0      0       0      63        0.0%
;!SFR62                0      0       0      63        0.0%
;!BITSFR63             0      0       0      64        0.0%
;!SFR63                0      0       0      64        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 63 in file "..\..\source\bootloader.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   89[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_loop
;;		_putch
;;		_startup
;;		_stat_blink
;;		_unlock_sequence
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"..\..\source\bootloader.c"
	line	63
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"..\..\source\bootloader.c"
	line	63
	
_main:	
;incstack = 0
	callstack 13
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	64
	
l904:	
	movlw	low(05h)
	movlb 17	; select bank17
	movwf	(2195)^0880h	;volatile
	line	67
	
l906:	
	movlb 0	; select bank0
	bcf	(13),6	;volatile
	line	68
	
l908:	
	movlb 62	; select bank62
	bcf	(8003)^01F00h,6	;volatile
	line	69
	
l910:	
	movlb 0	; select bank0
	bcf	(19),6	;volatile
	line	72
	
l912:	
	bcf	(13),5	;volatile
	line	73
	
l914:	
	bcf	(13),7	;volatile
	line	74
	
l916:	
	movlb 62	; select bank62
	bcf	(8003)^01F00h,5	;volatile
	line	75
	
l918:	
	bcf	(8003)^01F00h,7	;volatile
	line	76
	
l920:	
	movlb 0	; select bank0
	bsf	(19),5	;volatile
	line	77
	
l922:	
	bcf	(19),7	;volatile
	line	82
	
l924:	
	movlw	0
	movlb 2	; select bank2
	movwf	(283+1)^0100h	;volatile
	movlw	067h
	movwf	(283)^0100h	;volatile
	line	84
	movlw	low(06h)
	movlb 62	; select bank62
	movwf	(7965)^01F00h	;volatile
	line	85
	movlw	low(05h)
	movwf	(7967)^01F00h	;volatile
	line	87
	
l926:	
	movlb 2	; select bank2
	bcf	(286)^0100h,4	;volatile
	line	88
	
l928:	
	bsf	(286)^0100h,6	;volatile
	line	89
	
l930:	
	bsf	(286)^0100h,0	;volatile
	line	90
	
l932:	
	bsf	(286)^0100h,2	;volatile
	line	91
	
l934:	
	bsf	(286)^0100h,5	;volatile
	line	92
	
l936:	
	bsf	(285)^0100h,7	;volatile
	line	93
	
l938:	
	bsf	(285)^0100h,4	;volatile
	line	97
	
l940:	
	movlb 14	; select bank14
	bsf	(1815)^0700h,4	;volatile
	line	98
	
l942:	
	bsf	(11),6	;volatile
	line	99
	
l944:	
	bsf	(11),7	;volatile
	line	101
	
l946:	
	fcall	_startup
	line	106
	
l948:	
	movlb 0	; select bank0
	movf	(_serial_buffer_size+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u275
	movlw	01h
	subwf	(_serial_buffer_size),w
u275:

	skipc
	goto	u271
	goto	u270
u271:
	goto	l982
u270:
	line	107
	
l950:	
	movlw	01h
	movwf	(stat_blink@times)
	movlw	0
	movwf	((stat_blink@times))+1
	movlw	064h
	movwf	(stat_blink@delay)
	movlw	0
	movwf	((stat_blink@delay))+1
	fcall	_stat_blink
	line	108
	goto	l978
	line	110
	
l952:	
	movlw	low(06h)
	fcall	_putch
	line	111
	
l954:	
	bsf	(_programming_mode/8),(_programming_mode)&7
	line	112
	goto	l980
	line	114
	
l956:	
	movlw	low(06h)
	fcall	_putch
	line	115
	
l958:	
	bcf	(_programming_mode/8),(_programming_mode)&7
	line	116
	goto	l980
	line	117
	
l96:	
	line	118
	bcf	(11),7	;volatile
	line	121
	movlb 16	; select bank16
	bcf	(2078)^0800h,6	;volsfr
	line	123
	
l960:	
	movlb 0	; select bank0
	movf	0+(_serial_buffer)+01h,w
	movlb 16	; select bank16
	movwf	(2075)^0800h	;volatile
	line	124
	movlb 0	; select bank0
	movf	0+(_serial_buffer)+02h,w
	movlb 16	; select bank16
	movwf	(2074)^0800h	;volatile
	line	125
	
l962:	
	bsf	(2078)^0800h,4	;volsfr
	line	126
	
l964:	
	bsf	(2078)^0800h,2	;volsfr
	line	127
	
l966:	
	fcall	_unlock_sequence
	line	145
	
l968:	
	bsf	(11),7	;volatile
	line	146
	
l970:	
	movlb 16	; select bank16
	bcf	(2078)^0800h,2	;volsfr
	line	148
	
l972:	
	movlw	low(06h)
	fcall	_putch
	line	149
	goto	l980
	line	150
	
l97:	
	line	151
	btfss	(_programming_mode/8),(_programming_mode)&7
	goto	u281
	goto	u280
u281:
	goto	l980
u280:
	line	153
	
l974:	
	movlw	low(081h)
	fcall	_putch
	line	154
	movlw	02h
	movwf	(stat_blink@times)
	movlw	0
	movwf	((stat_blink@times))+1
	movlw	064h
	movwf	(stat_blink@delay)
	movlw	0
	movwf	((stat_blink@delay))+1
	fcall	_stat_blink
	goto	l980
	line	157
	
l978:	
	movlb 0	; select bank0
	movf	(_serial_buffer),w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 129 to 131
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           15     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	129^0	; case 129
	skipnz
	goto	l952
	xorlw	130^129	; case 130
	skipnz
	goto	l956
	xorlw	131^130	; case 131
	skipnz
	goto	l96
	goto	l97
	asmopt pop

	line	158
	
l980:	
	movlb 0	; select bank0
	clrf	(_serial_buffer_size)
	clrf	(_serial_buffer_size+1)
	line	159
	goto	l986
	
l982:	
	movlb 0	; select bank0
		incf	((_serial_buffer_size)),w
	skipz
	goto	u291
	incf	((_serial_buffer_size+1)),w
	btfss	status,2
	goto	u291
	goto	u290
u291:
	goto	l986
u290:
	line	160
	
l984:	
	movlw	low(012h)
	fcall	_putch
	line	163
	
l986:	
	btfss	(_programming_mode/8),(_programming_mode)&7
	goto	u301
	goto	u300
u301:
	goto	l990
u300:
	goto	l102
	line	166
	
l990:	
	fcall	_loop
	line	167
	
l102:	
	line	169
# 169 "..\..\source\bootloader.c"
clrwdt ;# 
psect	maintext
	goto	l948
	global	start
	ljmp	start
	callstack 0
	line	171
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_unlock_sequence

;; *************** function _unlock_sequence *****************
;; Defined at:
;;		line 57 in file "..\..\source\bootloader.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	57
global __ptext1
__ptext1:	;psect for function _unlock_sequence
psect	text1
	file	"..\..\source\bootloader.c"
	line	57
	
_unlock_sequence:	
;incstack = 0
	callstack 13
; Regs used in _unlock_sequence: [wreg]
	line	58
	
l788:	
	movlw	low(055h)
	movlb 16	; select bank16
	movwf	(2079)^0800h	;volsfr
	line	59
	movlw	low(0AAh)
	movwf	(2079)^0800h	;volsfr
	line	60
	
l790:	
	bsf	(2078)^0800h,1	;volsfr
	line	61
	
l85:	
	return
	callstack 0
GLOBAL	__end_of_unlock_sequence
	__end_of_unlock_sequence:
	signat	_unlock_sequence,89
	global	_stat_blink

;; *************** function _stat_blink *****************
;; Defined at:
;;		line 24 in file "..\..\source\bootloader.c"
;; Parameters:    Size  Location     Type
;;  times           2    1[COMMON] int 
;;  delay           2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2   10[COMMON] int 
;;  j               2    8[COMMON] int 
;;  i               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         6       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:        11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext2
__ptext2:	;psect for function _stat_blink
psect	text2
	file	"..\..\source\bootloader.c"
	line	24
	
_stat_blink:	
;incstack = 0
	callstack 13
; Regs used in _stat_blink: [wreg+status,2]
	line	25
	
l776:	
	clrf	(stat_blink@i)
	clrf	(stat_blink@i+1)
	goto	l61
	
l62:	
	line	26
	movlb 0	; select bank0
	bsf	(13),6	;volatile
	line	27
	
l778:	
	clrf	(stat_blink@j)
	clrf	(stat_blink@j+1)
	goto	l63
	line	28
	
l780:	
	asmopt push
asmopt off
movlw	8
movwf	((??_stat_blink+0)+0)
	movlw	203
u317:
	clrwdt
decfsz	wreg
	goto	u317
	decfsz	((??_stat_blink+0)+0),f
	goto	u317
	clrwdt
	nop
asmopt pop

	line	29
	movlw	01h
	addwf	(stat_blink@j),f
	movlw	0
	addwfc	(stat_blink@j+1),f
	
l63:	
	movf	(stat_blink@j+1),w
	xorlw	80h
	movwf	(??_stat_blink+0)+0
	movf	(stat_blink@delay+1),w
	xorlw	80h
	subwf	(??_stat_blink+0)+0,w
	skipz
	goto	u155
	movf	(stat_blink@delay),w
	subwf	(stat_blink@j),w
u155:

	skipc
	goto	u151
	goto	u150
u151:
	goto	l780
u150:
	
l65:	
	line	30
	movlb 0	; select bank0
	bcf	(13),6	;volatile
	line	31
	
l782:	
	clrf	(stat_blink@j_227)
	clrf	(stat_blink@j_227+1)
	goto	l66
	line	32
	
l784:	
	asmopt push
asmopt off
movlw	8
movwf	((??_stat_blink+0)+0)
	movlw	203
u327:
	clrwdt
decfsz	wreg
	goto	u327
	decfsz	((??_stat_blink+0)+0),f
	goto	u327
	clrwdt
	nop
asmopt pop

	line	33
	movlw	01h
	addwf	(stat_blink@j_227),f
	movlw	0
	addwfc	(stat_blink@j_227+1),f
	
l66:	
	movf	(stat_blink@j_227+1),w
	xorlw	80h
	movwf	(??_stat_blink+0)+0
	movf	(stat_blink@delay+1),w
	xorlw	80h
	subwf	(??_stat_blink+0)+0,w
	skipz
	goto	u165
	movf	(stat_blink@delay),w
	subwf	(stat_blink@j_227),w
u165:

	skipc
	goto	u161
	goto	u160
u161:
	goto	l784
u160:
	line	34
	
l786:	
	movlw	01h
	addwf	(stat_blink@i),f
	movlw	0
	addwfc	(stat_blink@i+1),f
	
l61:	
	movf	(stat_blink@i+1),w
	xorlw	80h
	movwf	(??_stat_blink+0)+0
	movf	(stat_blink@times+1),w
	xorlw	80h
	subwf	(??_stat_blink+0)+0,w
	skipz
	goto	u175
	movf	(stat_blink@times),w
	subwf	(stat_blink@i),w
u175:

	skipc
	goto	u171
	goto	u170
u171:
	goto	l62
u170:
	line	35
	
l70:	
	return
	callstack 0
GLOBAL	__end_of_stat_blink
	__end_of_stat_blink:
	signat	_stat_blink,8313
	global	_startup

;; *************** function _startup *****************
;; Defined at:
;;		line 8 in file "..\..\source\bootloader_stubs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	_startup_text,class=CODE,delta=2,group=0
	file	"..\..\source\bootloader_stubs.c"
	line	8
global __p_startup_text
__p_startup_text:	;psect for function _startup
psect	_startup_text
	file	"..\..\source\bootloader_stubs.c"
	line	8
	
_startup:	
;incstack = 0
	callstack 13
	global _startup_absaddr
	_startup_absaddr equ 0x200
; Regs used in _startup: []
	line	10
	
l111:	
	return
	callstack 0
GLOBAL	__end_of_startup
	__end_of_startup:
	signat	_startup,89
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 19 in file "..\..\source\bootloader.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"..\..\source\bootloader.c"
	line	19
global __ptext4
__ptext4:	;psect for function _putch
psect	text4
	file	"..\..\source\bootloader.c"
	line	19
	
_putch:	
;incstack = 0
	callstack 13
; Regs used in _putch: [wreg]
	movwf	(putch@data)
	line	20
	
l772:	
	goto	l55
	
l56:	
# 20 "..\..\source\bootloader.c"
clrwdt ;# 
psect	text4
	
l55:	
	movlb 14	; select bank14
	btfss	(14443/8)^0700h,(14443)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l56
u140:
	line	21
	
l774:	
	movf	(putch@data),w
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	22
	
l58:	
	return
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_loop

;; *************** function _loop *****************
;; Defined at:
;;		line 12 in file "..\..\source\bootloader_stubs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	_loop_text,class=CODE,delta=2,group=0
	file	"..\..\source\bootloader_stubs.c"
	line	12
global __p_loop_text
__p_loop_text:	;psect for function _loop
psect	_loop_text
	file	"..\..\source\bootloader_stubs.c"
	line	12
	
_loop:	
;incstack = 0
	callstack 13
	global _loop_absaddr
	_loop_absaddr equ 0x280
; Regs used in _loop: []
	line	14
	
l114:	
	return
	callstack 0
GLOBAL	__end_of_loop
	__end_of_loop:
	signat	_loop,89
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 37 in file "..\..\source\bootloader.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_interrupt
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"..\..\source\bootloader.c"
	line	37
	
_isr:	
;incstack = 0
	callstack 13
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _isr: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	38
	
i1l792:	
	movlb 14	; select bank14
	btfss	(1805)^0700h,4	;volatile
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l814
u18_20:
	goto	i1l812
	line	39
	
i1l77:	
	line	40
	movlb 14	; select bank14
	btfss	(1805)^0700h,4	;volatile
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l78
u19_20:
	line	41
	
i1l796:	
	movlb 2	; select bank2
	movf	(281)^0100h,w	;volatile
	movwf	(isr@c)
	line	42
	
i1l798:	
	movlb 0	; select bank0
	movf	(_serial_buffer_size),w
	addlw	low(_serial_buffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(isr@c),w
	movwf	indf1
	
i1l800:	
	movlw	01h
	addwf	(_serial_buffer_size),f
	movlw	0
	addwfc	(_serial_buffer_size+1),f
	line	43
	
i1l802:	
	movlb 2	; select bank2
	btfss	(285)^0100h,1	;volatile
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l808
u20_20:
	line	44
	
i1l804:	
	bcf	(285)^0100h,4	;volatile
	line	45
	bsf	(285)^0100h,4	;volatile
	line	46
	
i1l806:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(_serial_buffer_size)
	movlw	0FFh
	movwf	((_serial_buffer_size))+1
	line	48
	
i1l808:	
		movlw	10
	xorwf	((isr@c)),w
	btfss	status,2
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l78
u21_20:
	goto	i1l814
	line	49
	
i1l78:	
	line	50
# 50 "..\..\source\bootloader.c"
clrwdt ;# 
psect	intentry
	line	39
	
i1l812:	
	movlw	0
	movlb 0	; select bank0
	subwf	(_serial_buffer_size+1),w
	movlw	046h
	skipnz
	subwf	(_serial_buffer_size),w
	skipc
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l77
u22_20:
	line	54
	
i1l814:	
	fcall	_interrupt
	line	55
	
i1l82:	
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
	global	_interrupt

;; *************** function _interrupt *****************
;; Defined at:
;;		line 4 in file "..\..\source\bootloader_stubs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	_interrupt_text,class=CODE,delta=2,group=0
	file	"..\..\source\bootloader_stubs.c"
	line	4
global __p_interrupt_text
__p_interrupt_text:	;psect for function _interrupt
psect	_interrupt_text
	file	"..\..\source\bootloader_stubs.c"
	line	4
	
_interrupt:	
;incstack = 0
	callstack 13
	global _interrupt_absaddr
	_interrupt_absaddr equ 0x400
; Regs used in _interrupt: []
	line	6
	
i1l108:	
	return
	callstack 0
GLOBAL	__end_of_interrupt
	__end_of_interrupt:
	signat	_interrupt,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	int$flags
	int$flags	set btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
