;*****************************************************

;Probar los c�digos de operaci�n del microcontrolador

;instrucciones de L�GICAS "xorlw"

;P 4 5 1 1 

;*****************************************************

	LIST P = 16F84A					;Procesador
	
	INCLUDE <P16F84A.INC>			;Definicion de los operandos utilzados.
	
;******************************************************

	ORG		0						;El programa comienza en la direcci�n 0 de memoria

Inicio
	
	movlw	0xFF					;Carga 0xFF en W
	
	xorlw	0x05					;OR-Ecxlusiva de W con 0x05, resultado en W

	goto	Inicio					;Genera un blcle cerrado.
	
	END								;Fin del programa
	
		