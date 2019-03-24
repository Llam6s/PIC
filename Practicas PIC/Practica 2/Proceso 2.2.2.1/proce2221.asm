;**********************

	LIST P=16F84A			;Procesador
	
	INCLUDE <P16F84A.INC>	;Definicion de los operandos utilizados

;P 2 2 2 1 
	
;**********************
	ORG		0				;EL programa comienza en la direccion 0 de memoria
	
Inicio

	movlw	0x09			;Carga 03h en W
	
	movwf	0x0C			;Pone W en el registro 0C, resultando en 0C
	
	goto	Inicio			;Genera un bucle cerrado
	
	END