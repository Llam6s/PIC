;**********************

;Probar los codigos de operacion del microcontrolador

;instruccciones de carga "clrf"

;P 2 5 1 1

;**********************

	LIST P=16F84A			;Procesador
	
	INCLUDE <P16F84A.INC>	;Definicion de los operandos utilizados


 
;**********************
	ORG		0				;El programa comienza en la direccion 0 de memoria
	
	movlw 	0XFF			;Carga FFh en W
	
Inicio		
	
	movwf	0x0C			;Ponerlo en el registro 0Ch (08h)
	
	clrf	0x0C			;Pone 00h en el registro 0C, resultado 0C		
	
	goto	Inicio			;Genera un bucle cerrado		
	
	END						;Fin del programa