;*****************************************************

;Probar los codigos de operacion del microcontrolador

;instrucciones aritmeticas de resta "subwf"

;P 3 5 1 1

;*****************************************************

	LIST P=16F84A				;Procesador.
	INCLUDE<P16F84A.INC>		;Definicion de los operandos utilizados.
	
;*****************************************************
	
	ORG		0					;El programa comienza en la direccion 0 de memoria
	
	movlw	0x08				;Carga 08h en W
	
	movwf	0x0C				;Ponerlo en el registro 0Ch (08h)
	
	movlw	0x02				;Carga 02h en W
	
Inicio
	
	subwf	0x0C,1				;Resta la cantidad del registro 0C-W, resultado 0C
	
	goto	Inicio				;Genera un bucle cerrado
	
	END							;Fin del programa