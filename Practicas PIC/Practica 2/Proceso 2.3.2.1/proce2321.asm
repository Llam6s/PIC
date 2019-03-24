;**********************

	LIST P=16F84A			;Procesador
	
	INCLUDE <P16F84A.INC>	;Definicion de los operandos utilizados

;P 2 3 2 1
 
;**********************
	ORG		0			
	
	movlw	0x07		
	
	movwf	0x0C		
	
Inicio

	clrw				
	
	movf 0x0C,0				
	
	goto	Inicio		
	
	END						