;**********************

;Probar los codigos de peracion del microcontrolador

;instrcciones de carga "movf"

;P 2 3 1 1

;**********************

	LIST P=16F84A			;Procesador
	
	INCLUDE <P16F84A.INC>	;Definicion de los operandos utilizados

 
;**********************
	ORG		0				;EL programa comienza en la direccion 0 de memoria
	
	movlw	0x03			;Carga 03h en W
	
	movwf	0x0C			;Pone W en el registro 0C, resultando en 0C

Inicio

	clrw					;Limpia W
	
	movf 0x0C,0				;Carga W con el valor del registro 0C
	
	goto	Inicio			;Genera un bucle cerrado
	
	END						;Fin del programa