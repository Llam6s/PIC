;**************************************************************

;Probar los códigos de operación del microcontrolador

;instrucciones de SALTO "btfss"

;P 6 4 1 1

;***************************************************************

	LIST P=16F84A					;Procesador.

	INCLUDE <P16F84A.INC>			;Definición de los operandos utilizados

;****************************************************************

	ORG		0				;El programa comienza en la direccion 0 de memoria

	movlw	0x01			;Carga 0x01 en W

	movwf	0x0C			;Poner W en el registro "0x0C"

Inicio
	
	btfss	0x0C,0			;Prueba el bit "b" y salta un lugar si es uno

	goto	Inicio			;Genera un bucle cerrado en Inicio.

Fin
	
	clrf	0x0C			;Limpia 0x0C

	goto	Fin				;Genera un bucle cerrado en Fin.

	END