;*********************************************************

;Probar los códigos de operación del microcontrolador

;instrucciones de SALTO "goto"

;P 6 5 1 1

;********************************************************

	LIST P=16F84A				;Procesador

	INCLUDE<P16F84A.INC>		;Definicion de los operandos utilizados.

;***********************************************************

	ORG		0					;El programa comienza en la direccion 0 de memoria

Inicio

	movlw	0x00				;Carga 0x00 en W

	goto	Uno					;Brinca a Uno

Dos
	
	movlw	0x02				;Carga 0x02 en W

	goto	Tres				;Brinca Tres

Seis

	movlw	0x06				;Carga 0x06 en W

	goto	Siete				;Brinca Siete

Uno

	movlw	0x01				;Carga en 0x01 en W

	goto	Dos					;Brinca a Dos

Tres

	movlw	0x03				;Carga 0x03 en W

	goto	Cuatro				;Brinca a Cuatro

Cinco
	
	movlw	0x05				;Carga 0x05 en W

	goto	Seis				;Brinca a Seis

Ocho

	movlw	0x08				;Carga 0x08 en W

	goto	Nueve				;Brinca a Nueve

Cuatro
	
	movlw	0x04				;Carga 0x04 en W

	goto	Cinco				;Brinca a Cinco

Siete

	movlw	0x07				;Carga 0x07 en W

	goto	Ocho				;Brinca a Ocho

Nueve

	movlw	0x09				;Carga 0x09 en W

	goto	Inicio				;Genera un bucle cerrado en Inicio}

	END							;Fin del programa.