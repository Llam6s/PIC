;***************************************************

;Probar los codigos de operacion del microcontrolador

;instrucciones aritmeticas de resta "sublw"

;P 3 4 1 1

;***************************************************

	LIST P=16F84A			;Procesador.
	
	INCLUDE<P16F84A.INC>	;Definicion de los operandos utilizados
	
;**************************************************

	ORG		0				;El programa comienza en la direccion 0 de memoria
	
	movlw	0x02			;Carga 02h en W			
	
Inicio

	sublw	0x08			;Resta a 08h la cantidad de W(02h), resultado W
	
	goto	Inicio			;Genera un bucle cerrado.
	
	END						;Fin del programa.