;******************************************************

;Probar los códigos de operación del microcontrolador

;Instrucciones de LÓGICAS "iorlw"

;P 4 3 1 1 

;*****************************************************

	LIST P = 16F84A					;Procesador
	
	INCLUDE <P16F84A.INC>			;Definicion de los operandos utilizados

;******************************************************

	ORG		0						;programa comienza en la dirección 0 de memoria
	
	movlw	0x00					;Carga 0x00 en W
	
Inicio
	
	iorlw	0x55					;W "OR" 0x55, resultado W
	
	goto	Inicio					;Genera un bucle cerrado.
	
	END								;Fin del programa
	
		