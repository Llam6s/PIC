;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 9 1

;****************************************************

	ORG		0
	
Inicio
	
	movlw	0x09
	movwf	0x0C
	call	BCD
	
BCD

	call	BCD_A
	movwf	0x0D
	goto	FIN
	
BCD_A
	
	addwf	PCL,1
	retlw	0x3F
	retlw	0x06
	retlw	0x5B
	retlw	0x4F
	retlw	0x66
	retlw	0x6D
	retlw	0xED
	retlw	0x47
	retlw	0x7F
	retlw	0x67
	
FIN
	clrw
	goto	FIN
END