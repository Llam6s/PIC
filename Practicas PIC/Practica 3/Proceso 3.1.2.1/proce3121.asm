;*******************************

	LIST P=16F84A
	
	INCLUDE <P16F84A.INC>

;P 3 1 2 1

;********************************

	ORG		0
	
	
	clrw
	
Inicio
	
	addlw 	0x05
	
	goto	Inicio
	
	END
	

	