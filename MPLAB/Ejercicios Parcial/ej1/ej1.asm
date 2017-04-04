List p = 16f877a
include <p16f877a.inc>

T		EQU		0x21

INICIO	
		CLRW
		MOVWF 	T
		BSF		T,4
		COMF	T,1
		BTFSS	T,1
		SWAPF	T,0
		SWAPF	T,1
		SLEEP
	
		END