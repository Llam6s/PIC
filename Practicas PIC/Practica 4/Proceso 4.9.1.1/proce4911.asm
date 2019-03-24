;******************************************************

;Probar los codigos de operacion del microcontrolador

;instrucciones de LOGICAS "rlf"

;P 4 9 1 1

;*******************************************************

	LIST P=16F84A					;Procesador.
	
	INCLUDE <P16F84A.INC>			;Definicion de los operandos utilizados.

;*******************************************************

	ORG		0					;El programa comienza en la direccion 0 de memoria.
	
	movlw	0x01				;Carga 0x01 en W
	
	movwf	0x0C				;Poner W en la direccion 0x0C

Inicio
	
	rlf		0x0C,1				;Rota a la izquierda el dato de direccion 0x0C, resultado 0xC0			
	
	goto	Inicio				;Genera un bucle cerrado.
	
	END							;Fin del programa.
