List p = 16f877a
include <p16f877a.inc>
   
T	EQU 	2Eh
	

INICIO	CLRF	T
		INCF	T,1
		MOVLW	.250
		SUBWF	T,1	
	
		END
