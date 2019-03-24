;*********************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 3 6 3 1

;*********************************************

	ORG		0
	
	movlw	0xAB
	
	movwf	0x0C
	
Inicio

	decf	0x0C,0
		
	goto	Inicio
	
	END