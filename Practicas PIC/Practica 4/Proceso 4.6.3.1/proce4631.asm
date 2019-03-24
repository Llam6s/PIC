;*****************************************************

	LIST P=16F84A
	
	INCLUDE <P16F84A.INC>
	
;P 6 2 1

;*****************************************************

	ORG		0
	
	movlw	0x05
	
	movwf	0x0C
	
Inicio

	movlw	0xFF
	
	xorwf	0x0C,1
	
	goto	Inicio
	
	END