;************************************

;Probar los codigos de operacion del microcontrolador

; Instrucciones de carga "movlw"

;**********************
      
      ;P 2 1 1

;**********************

	LIST P=16F84A			;Procesador
	
	INCLUDE <P16F84A.INC>	;Definicion de los operandos utilizados
	
;**********************
	ORG		0				;EL programa comienza en la direccion 0 de memoria
	
Inicio

	movlw	0x03			;Carga 03h en W
	
	goto	Inicio			;Genera un bucle cerrado
	
	END