;****************************************************

;Probar los c�digos de operaci�n del microcontrolador

;instrucciones de SUBRUTINAS "call" "return"

;P 7 1 1 1

;****************************************************

	LIST P=16F84A				;Procesador
	
	INCLUDE<P16F84A.INC>		;Definici�n de los operandos utilizados
	
;****************************************************

	ORG		0				;El programa comienza en la direcci�n 0 de memoria
	
Inicio
	
	movlw	0x00				;Carga 0x00 en W
	
	movwf	0x0C				;Poner W en 0x0C
	
	call	Uno					;Llama a la subrutina Uno
	
	goto	Inicio				;Genera un lazo con Inicio
	
Uno
	
	movlw	0x01				;Carga 0x01 en W
	
	movwf	0x0C				;Poner W en 0x0C
	
	return						;Retorno de subrutina
	
	END							;Fin del programa