;****************************************************

;Probar los c�digos de operaci�n del microcontrolador

;instrucciones de L�GICAS  "xorwf"

;P 4 6 1 1 

;*****************************************************

	LIST P = 16F84A						;Procesador
	
	INCLUDE <P16F84A.INC>				;Definicion de los operandos utilizados

;******************************************************

	ORG		0							;El programa comienza en la direcci�n 0 de memoria
	
	movlw	0x05						;Carga 0x05 en W
	
	movwf	0x0C						;Definici�n de los operandos utilizados.

Inicio
	
	movlw	0xFF						;Carga 0xFF en W
	
	xorwf	0x0C,0						;OR-Exclusiva de W con 0x0C, resultado en W

	goto	Inicio						;Genera un bucle cerrado.
	
	END									;Fin del programa
	
		