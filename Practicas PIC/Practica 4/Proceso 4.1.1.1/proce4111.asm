;*****************************************************

;Probar los c�digos de operaci�n del microcontrolador

;Instrucciones de L�GICAS "andlw"

;P 4 1 1 1 

;*****************************************************

	LIST P = 16F84A			;Procesador.
	
	INCLUDE <P16F84A.INC>	;Definici�n de los operandos utilizados

;******************************************************

	ORG		0				;El programa comienza en la direcc�n 0 de memoria
	
	clrw					;Limpia el W
	
	movlw	0xFF			;Carga
	
Inicio
	
	andlw	0x55			;W and con 0x55, resultado W
	
	goto	Inicio			;Genera un bucle cerrado.
	
	END						;Fin del programa
	
		