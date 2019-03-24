;************************************************************
	
	LIST P=16F84A

	INCLUDE<P16F84A.INC>

;P 6 4 3

;*************************************************************

	ORG		0
	
	movlw	0x00

	movwf	0x0C

	goto 	Prueba
		
Inicio
		
	btfss	0x0C,3

	goto	Inicio
	
	goto	Fin
	
Prueba
	
	btfss	0x0C,3
	
	btfss	0x0C,6

	goto 	Inicio
	
Fin
	
	clrf	0x0C
	
	goto	Fin
	
	END