;*****************************************************

	LIST P = 16F84A	
	
	INCLUDE <P16F84A.INC>
	
;P 4 5 2 1 

;******************************************************

	ORG		0

Inicio
	
	movlw	0x99
	
	xorlw	0x05

	goto	Inicio
	
	END
	
		