;***************************************************

;Probar los codigos de operacion del microcontrolador

;instrucciones aritmeticas de incremento "incf"

;P 3 3 1 1

;***************************************************

	LIST P=16F84A			;Procesador
	
	INCLUDE<P16F84A.INC>	;Definicion de los operandos utilizados
	
;**************************************************

	ORG		0				;El programa comienza en la direccion 0 de memoria
	
	movlw	0x01			;Carga 01h en W
	
	movwf	0x0C			;Ponerlo en el registro 0C
	
Inicio

	incf	0x0C,1			;Incrementa el registro C0, resultado en 0C
	
	goto	Inicio			;Genera un bucle cerrado
	
	END