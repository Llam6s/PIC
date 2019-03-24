;************************************************************
	
	LIST P=16F84A

	INCLUDE<P16F84A.INC>

;P 6 3 3

;*************************************************************

	ORG		0
	
	movlw	0xFB

	movwf	0x0C

	goto 	Prueba
		
Inicio
		
	btfsc	0x0C,5

	goto	Inicio
	
	goto	Fin
	
Prueba
	
	btfsc	0x0C,5
	
	btfsc	0x0C,2

	goto 	Inicio
	
Fin
	
	clrf	0x0C
	
	goto	Fin
	
	END