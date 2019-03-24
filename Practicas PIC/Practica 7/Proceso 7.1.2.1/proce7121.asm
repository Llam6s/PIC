;****************************************************

	LIST P=16F84A				;Procesador
	
	INCLUDE<P16F84A.INC>		;Definición de los operandos utilizados
	
;P 7 1 2 1
;****************************************************

	ORG		0
	
Inicio
	
	movlw	0x00
	
	movwf	0x0C
	
	call	Uno
	
	goto	Inicio
	
Uno
	
	movlw	0x06
	
	movwf	0x0C
	
	return
	
	END