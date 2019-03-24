;*********************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 3 6 2 1

;*********************************************

	ORG		0
	
	movlw	0xAB
	
	movwf	0x0C
	
Inicio

	decf	0x0C,1
	
	goto	Inicio
	
	END