;*****************************************************

;Probar los c�digos de operaci�n del microcontrolador

;instrucciones de L�GICAS "iorwf"

;P 4 4 1 1 

;*****************************************************

	LIST P = 16F84A					;Procesador.		
	
	INCLUDE <P16F84A.INC>			;Definici�n de los operandos utilizados.

;******************************************************

	ORG		0						;El programna comienza en la direccion 0 de memoria
	
	movlw	0x55					;Carga 0x55 en W
	
	movwf	0x0C					;Poner W en la direcci�n 0x0C

	clrw							;Limpia W
	
Inicio
	
	iorwf	0x0C,0					;W "OR" direcci�n 0x0C, resultado W
	
	goto	Inicio					;Fin del programa
	
	END
	
		