;***************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 3 3 3 1
	
;**************************************************

	ORG		0
	
	movlw	0xA0
	
	movwf	0x0C
	
Inicio

	incf	0x0C,0
	
	goto	Inicio
	
	END