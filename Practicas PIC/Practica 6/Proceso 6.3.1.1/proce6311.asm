;************************************************************

;Probar los códigos de operación del microcontrolador

;instrucciones de SALTO btfsc"

;P 6 3 1 1

;************************************************************
	
	LIST P=16F84A					;Procesador.

	INCLUDE<P16F84A.INC>			;Definición de los operandos utilizados.
	
;*************************************************************
	
	ORG		0					;El programa comienza en la direccion 0 de memoria
	
	movlw	0x00				;Carga 0x00 en W
	
	movwf	0x0C				;Poner W en el registro "0x0C"
	
Inicio
	
	btfsc	0x0C,0				;Prueba el bit "b" y salta un lugar si es cero
	
	goto	Inicio				;Genera un bucle cerrado en Inicio
	
Fin
	
	clrf	0x0C				;Limpia 0x0C
	
	goto	Fin					;Genera un bucle cerrado en Fin
	
	END							;Fin del programa