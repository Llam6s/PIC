;*******************************************************

	LIST P=16F84A
	
	INCLUDE <P16F84A.INC>

;P 4 10 3 1

;*******************************************************

	ORG		0
	
	movlw	0x09
	
	movwf	0x0C

Inicio
	
	rrf		0x0C,0
	
	goto	Inicio
	
	END
