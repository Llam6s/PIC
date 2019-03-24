;****************************************************

;Probar los c�digos de operaci�n del microcontrolador

;instrucciones de SUBRUTINAS "call" y "retlw"

;P 7 2 1 1

;****************************************************

	LIST P=16F84A				;Procesador
	
	INCLUDE<P16F84A.INC>		;Definici�n de los operandos utilizados
	
;****************************************************

	ORG		0				;El programa comienza en la direcci�n 0 de memoria
	
Inicio
	
	movlw	0x00				;Carga 0x00 en W
	
	call	Dos					;Llama a la subrutina Dos
	
	goto	Inicio				;Genera un lazo con Inicio
	
Dos
	
	retlw	0x02				;Retorno de subrutina con el valor 0x02 en W
	
	END							;Fin del programa