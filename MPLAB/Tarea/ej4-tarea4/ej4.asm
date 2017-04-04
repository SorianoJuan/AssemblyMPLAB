;borrar la parte mas significativa de la zona	

List p = 16f877a
include <p16f877a.inc>

CONTADOR	EQU 	0x21

INICIO	
			CLRW
;			MOVLW	b'00000011'
;			MOVWF	0x3b
;			MOVLW	b'11100000'
;			MOVWF	0x4c
;			MOVLW	b'11110000'
;			MOVWF	0x4d
;			MOVWF	0x4e
;			MOVWF	0x4f
;			MOVLW	b'11001001'
;			MOVWF	0x50
;			MOVWF	0x51
;			MOVWF	0x52
;			MOVWF	0x53
;			MOVLW	b'00100001'
;			MOVWF	0x54
;			MOVWF	0x55
;			MOVWF	0x56
;			MOVWF	0x57			
			
			
			CLRF	0x73		
			MOVLW	0x38
			MOVWF	CONTADOR
			MOVLW	0x3a
			MOVWF	FSR
			MOVLW	b'00001111'
			
LOOP		ANDWF	INDF,1	
			INCF	FSR,1
			DECFSZ	CONTADOR
			GOTO 	LOOP
			
			SLEEP
			END