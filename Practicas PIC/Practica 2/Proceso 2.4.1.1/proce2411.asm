;**********************

;Probar los codigos de operacion del microcontrolador

;instruccciones de carga "clrw"

;P 2 4 1 1

;**********************

	LIST P=16F84A			;Procesador
	
	INCLUDE <P16F84A.INC>	;Definicion de los operandos utilizados


 
;**********************
	ORG		0				;El programa comienza en la direccion 0 de memoria
	
Inicio		
	
	movlw	0xFF			;Carga FFh en W
	
	clrw					;Pone 00h en el W, resultado W		
	
	goto	Inicio			;Genera un bucle cerrado		
	
	END						;Fin del programa