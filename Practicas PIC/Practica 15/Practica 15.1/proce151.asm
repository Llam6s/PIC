;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 15 1

;****************************************************

	movlw	0x23
	movwf	0x0C
	movlw	0x56
	movwf	0x0D
	movlw	0x89
	movwf	0x0E
	movlw	0xBC
	movwf	0x0F
	goto	RESTA
	
RESTA

	call	COMPROBAR
	call	COMPLEMENTO_1
	movfw	0x0F
	addwf	0x0D,0
	movwf	0x11
	call	CARRY_D
	movfw	0x0E
	addwf	0x0C,0
	movwf	0x10
	goto	FIN
	
;CARRY
;	btfsc	STATUS,0
;	return
;	call	ERR_0

CARRY_D
	btfss	STATUS,0
	return
	incf	0x0C,1
	return
	
CARRY_Z
	btfss	STATUS,2
	return
	call	COMPROBAR_2
	return
	
COMPROBAR_2
	movfw	0x0F
	subwf	0x0D,0
;	call	CARRY
	return
	
COMPROBAR
	movfw	0x0E
	subwf	0x0C,0
	;call	CARRY
	call	CARRY_Z
	return
	
COMPLEMENTO_1
	
	comf	0x0E,1
	comf	0x0F,1
	call	COMPLEMENTO_2
	return

COMPLEMENTO_2
	incfsz	0x0F,1
	return
	incf	0x0E,1
	return
	
;ERR_0
	
;	clrf	0x10
;	clrf	0x11
;	call	FIN
	
FIN
	
	goto	FIN
	
END