;*****************************************************

	LIST P = 16F84A
		
	INCLUDE <P16F84A.INC>

;P 4 1 2 1 

;******************************************************

	ORG		0
	
	clrw
	
	movlw	0xFF
	
Inicio
	
	andlw	0x33
	
	goto	Inicio
	
	END
	
		