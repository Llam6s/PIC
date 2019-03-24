;*******************************

;Probar los codigos de operacion del microcontrolador

;instrucciones aritmeticas de suma "addlw"

;P 3 1 1 1

;*******************************

	LIST P=16F84A			;Procesador
	
	INCLUDE <P16F84A.INC>	;Definicion	de los operandos

;********************************

	ORG		0				;El programa comienz aen la direccion 0 de memoria
	
	
	clrw					;Limpia W
	
Inicio
	
	addlw 	0x01			;Suma 01 al registro W
	
	goto	Inicio			;Genera un bucle cerrado.
	
	END						;Fin del programa.
	

	