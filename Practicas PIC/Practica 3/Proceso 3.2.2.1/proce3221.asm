;************************

	LIST P=14F84A
	
	INCLUDE<P16F84A.INC>
	
;P 3 2 2 1

;************************

	ORG		0
	
	movlw	0x0A
	
	movwf	0x0C
	
Inicio
	
	addwf	0x0C,0
	
	goto	Inicio
	
	END