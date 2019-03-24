;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 11 1

;****************************************************

	ORG		0
	
Inicio

	movlw	0x0F
	movwf	0x0C
	call	HEX
	
HEX

	call	HEX_DEC
	movwf	0x0D
	goto	FIN
	
HEX_DEC
	
	addwf	PCL,1
	retlw	0x00
	retlw	0x01
	retlw	0x02
	retlw	0x03
	retlw	0x04
	retlw	0x05
	retlw	0x06
	retlw	0x07
	retlw	0x08
	retlw	0x09
	retlw	0x10
	retlw	0x11
	retlw	0x12
	retlw	0x13
	retlw	0x14
	retlw	0x15
	
FIN
	clrw
	goto	FIN
END