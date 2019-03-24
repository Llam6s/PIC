;*****************************************************

	LIST P = 16F84A		
	
	INCLUDE <P16F84A.INC>
	
;P 4 4 2 1 

;******************************************************

	ORG		0
	
	movlw	0x11
	
	movwf	0x0C

	clrw
	
Inicio
	
	iorwf	0x0C,0		
	
	goto	Inicio
	
	END
	
		