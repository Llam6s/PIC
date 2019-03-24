;*******************************************************

;Probar los codigos de operacion del microcontrolador

;instrucciones de LOGICAS "rrf"

;P 4 10 1 1

;*******************************************************

	LIST P=16F84A				;Procesador.
	
	INCLUDE <P16F84A.INC>		;Definicion de los operandos utilizados

;*******************************************************

	ORG		0					;El programa comienza en la direccion 0 de memoria
	
	movlw	0x80				;Carga 0x80 en W
	
	movwf	0x0C				;Poner W en la direccion 0x0C

Inicio
	
	rrf		0x0C,1				;Rota a la derecha el dato de direccion 0x0C, resultado 0xC0
	
	goto	Inicio				;Genera un bucle cerrado.
	
	END							;Fin del programa
