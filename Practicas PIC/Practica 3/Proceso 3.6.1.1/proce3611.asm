;*********************************************

;Probar los codigos de operacion del microcontrolador

;instrucciones aritmeticas de decremento "decf"

;P 3 6 1 1

;*********************************************

	LIST P=16F84A			;Procesador.
	
	INCLUDE<P16F84A.INC>	;Definicion de ls operandos utilizados
	
;*********************************************

	ORG		0				;El programa comienza en la direccion 0 de memoria
	
	movlw	0x09			;Carga 09h en W
	
	movwf	0x0C			;Ponerlo en el registro 0C
	
Inicio

	decf	0x0C,1			;Decrementa e registro C0, el resultado en 0C
	
	goto	Inicio			;Genera un bucle cerrado.
	
	END						;Fin del programa.