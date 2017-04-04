;sumar los numeros y ponerlos en 0x73

List p = 16f877a
include <p16f877a.inc>

RES1		EQU		0x73
CONTADOR	EQU 	0x21

INICIO
			CLRW
;			MOVLW	.1
;			MOVWF	0x3b
;			MOVLW	.5
;			MOVWF	0x4c
;			MOVLW	.10
;			MOVWF	0x50
;			MOVWF	0x42
			
			
			CLRF	0x73
			MOVLW	0x38
			MOVWF	0x21
			MOVLW	0x3a
			MOVWF	FSR
			CLRW

LOOP		ADDWF	INDF,W
			INCF	FSR,1
			DECFSZ	CONTADOR
			GOTO 	LOOP
			MOVWF	RES1
			
			SLEEP
			END
