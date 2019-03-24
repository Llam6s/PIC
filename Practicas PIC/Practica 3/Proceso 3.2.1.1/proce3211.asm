;*******************************

;Probar los codigos de operacion del microcontrolador

;instrucciones aritmeticas de suma "addwf"

;P 3 2 1 1

;*******************************

	LIST P=16F84A				;Procesador.
	
	INCLUDE <P16F84A.INC>		;Definicion de los operandos


;********************************

	ORG		0					;El programa comienza en la direccion 0 de memoria
	
	movlw 	0x01				;Carga 01h
	
	movwf	0x0C				;Poner 01h en registro C0
	
Inicio
	
	addwf	0x0C,0				;Suma a W el registro C0, el resultado es W
	
	goto	Inicio
	
	END
	

	