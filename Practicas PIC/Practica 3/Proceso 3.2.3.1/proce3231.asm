;**************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 3 2 3 1

;**************************

	ORG		0
	
	movlw	0x0A
	
	movwf	0x0C
	
Inicio

	addwf	0x0C,1
	
	goto	Inicio
	
	END