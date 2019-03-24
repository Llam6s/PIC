;***************************************************

	LIST P=16F84A			;Procesador.
	
	INCLUDE<P16F84A.INC>	;Definicion de los operandos utilizados

;P 3 4 2 1
	
;**************************************************

	ORG		0
	
	movlw	0x02
	
Inicio

	sublw	0xC0
	
	goto	Inicio
	
	END