;*******************************************************

	LIST P=16F84A
		
	INCLUDE <P16F84A.INC>

;P 4 8 2 1

;*******************************************************

	ORG		0

Inicio
	
	movlw	0xD1					
	
	movwf	0x0C
	
	swapf	0x0C,1
	
	goto	Inicio
	
	END
