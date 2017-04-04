;contar impares entre 0x3a y 0x72 y poner el resultado en 73h

List p = 16f877a
include <p16f877a.inc>

IMPARES		EQU		0x73
CONTADOR	EQU		0x21

INICIO
;			MOVLW	.1
;			MOVWF	0x3b
;			MOVLW	.5
;			MOVWF	0x4c


			CLRF	0x73
			MOVLW	0x38
			MOVWF	0x21
			MOVLW	0x3a
			MOVWF	FSR

LOOP		BTFSC	INDF,0
			INCF	IMPARES
			INCF	FSR,1
			DECFSZ	CONTADOR
			GOTO 	LOOP
			
			SLEEP
			END

			

