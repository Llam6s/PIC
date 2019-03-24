;********************************************

;Probar los codigos de operacion del microcontrolador

;instruccions de LOGICAS "comf"

;P 4 7 1 1

;*******************************************

	LIST P=16F84A			;Procesador.
	
	INCLUDE <P16F84A.INC>	;Definicion de los operandos utilizados
	
;*********************************************

	ORG		0				;El programa comienza en la direccion 0 de memoria
	
	movlw	0x00			;Carga 0x00 en W
	
	movwf	0x0C			;Pone W en la direccion 0x0C
	
Inicio

	comf	0x0C,0			;Complementa (0 a 1 y 1 a 0) la direccion 0x0C, resultado W
	
	
	goto	Inicio			;Genera un bucle cerrado
	
	END						;Fin del programa
