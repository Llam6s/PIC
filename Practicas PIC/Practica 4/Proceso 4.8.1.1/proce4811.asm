;*******************************************************

;Probar los codigos de operacion del microcontrolador

;instrucciones de LOGICAS  "swapf"

;P 4 8 1 1

;*******************************************************

	LIST P=16F84A							;Procesador.
		
	INCLUDE <P16F84A.INC>					;Definicion de los operandos utilizados.
	

;*******************************************************

	ORG		0					;El progama comienza en la direccion 0 de memoria

Inicio
	
	movlw	0x05				;Carga 0x05 en W							
	
	movwf	0x0C				;Poner W en la direccion 0x0C
	
	swapf	0x0C,1				;Intercambia los nibles de f, resultado en 0xC0.
	
	goto	Inicio				;Genera un bucle cerrado.
	
	END							;Fin del Programa
