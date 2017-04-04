List p = 16f877a
include <p16f877a.inc>

VALOR 	EQU		0x21

INICIO	
		CLRW
		CLRF	VALOR
		ADDLW	0x55
		ANDLW	0xFF
		IORLW	0x0F
		XORLW	0x0F
		MOVWF	VALOR
		NOP
	
		END