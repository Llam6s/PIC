;********************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 3 5 2 1

;********************************************

	ORG 0
	
	movlw	0x0A
	
	movwf	0x0C
	
	movlw	0x02
	
Inicio
	
	subwf	0x0C,1
	
	goto	Inicio
	
	END