;************************************************************
	
	LIST P=16F84A

	INCLUDE<P16F84A.INC>

;P 6 3 2 1

;*************************************************************

	ORG		0
	
	movlw	0xFF
	
	movwf	0x0C
	
Inicio
	
	btfsc	0x0C,0

	goto	Inicio
	
Fin
	
	clrf	0x0C
	
	goto	Fin
	
	END