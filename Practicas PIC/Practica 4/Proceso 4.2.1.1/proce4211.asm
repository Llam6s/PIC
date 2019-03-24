;*****************************************************

;Probar los c�digos de operaci�n del microcontrolador

;Instrucciones de L�GICAS "andwf"

;P 4 2 1 1 

;*****************************************************

	LIST P = 16F84A			;Procesador.
	
	INCLUDE <P16F84A.INC>	;Definici�n de los operandos utilizados

;******************************************************

	ORG		0				;El programa comienza en la direcc�n 0 de memoria
	
	movlw	0x33			;Carga 0x33 en W
	
	movwf	0x0C			;Pone W en la direcci�n 0x0C
		
	movlw	0xFF			;Carga 0xFF en W
	
Inicio
	
	andwf	0x0C,0			;W and con la direccion 0x0C, resultado W
	
	goto	Inicio			;Genera un bucle cerrado.
	
	END						;Fin del programa
	
		