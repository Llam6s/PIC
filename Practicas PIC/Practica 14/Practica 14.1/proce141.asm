;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 14 1

;****************************************************

	movlw	0x57
	movwf	0x0C
	movlw	0x89
	movwf	0x0D
	movlw	0x12
	movwf	0x0E
	movlw	0xAB
	movwf	0x0F
	goto	SUMA
	
SUMA
	
	movfw	0x0F
	addwf	0x0D,0
	movwf	0x11
	call	CARRY
	movfw	0x0E
	addwf	0x0C,0
	call	CARRY_2
	movwf	0x10
	goto	FIN
	
CARRY_2
	btfss	STATUS,0
	return
	incf	0x20,1
	return
	
CARRY
	btfss	STATUS,0
	return
	incf	0x0E,1
	return
	
FIN
	
	goto	FIN
	
END