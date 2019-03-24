;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 7 2 3

;****************************************************

	ORG		0
	
Inicio
	
	movlw	0x00
	
	call	Dos
	
	goto	Inicio
	
Dos
	
	retlw	0xCD
	
	END