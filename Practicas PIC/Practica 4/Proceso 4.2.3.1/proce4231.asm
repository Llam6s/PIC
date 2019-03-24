;*****************************************************

	LIST P = 16F84A
	
	INCLUDE <P16F84A.INC>

;P 4 2 3 1 

;******************************************************

	ORG		0
	
	movlw	0x55
	
	movwf	0x0C
		
	movlw	0xFF
	
Inicio
	
	andwf	0x0C,1
	
	goto	Inicio
	
	END
	
		