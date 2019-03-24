;*******************************************

	LIST P=16F84A
	
	INCLUDE <P16F84A.INC>
	
;P 4 7 2 1

;*********************************************

	ORG		0
	
	movlw	0x55
	
	movwf	0x0C
	
Inicio

	comf	0x0C,0
	
	goto	Inicio
	
	END
