;sumar los numeros y poner los LSB en 0x73 y los MSB en 0x74, yo lo hago del tipo 0000LSB y 0000MSB

List p = 16f877a
include <p16f877a.inc>

LSB			EQU		0x73
MSB			EQU		0x74
CONTADOR	EQU 	0x21

INICIO
			CLRW
;			MOVLW	b'00000011'
;			MOVWF	0x3b
;			MOVLW	b'11100000'
;			MOVWF	0x4c
			
			
			CLRF	0x73		
			MOVLW	0x38
			MOVWF	0x21
			MOVLW	0x3a
			MOVWF	FSR
			CLRW
			
LOOP			ADDWF	INDF,W
			INCF	FSR,1
			DECFSZ	CONTADOR
			GOTO 	LOOP
			
			MOVWF	LSB
			ANDLW	b'11110000'
			MOVWF	MSB
			SWAPF	MSB,1
			MOVF	LSB,0
			ANDLW	b'00001111'
			MOVWF	LSB
			
			SLEEP
			END
