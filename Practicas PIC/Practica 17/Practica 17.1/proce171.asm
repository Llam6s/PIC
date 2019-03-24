;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 17 1

;****************************************************
	clrf	0x1E
	clrf	0x1F
	clrf	0x0F
	clrf	0x0E
	clrf	0x17
	movlw	0xFD
	movwf	0x12
	movlw	0xFF
	movwf	0x13
	movlw	0xFF
	movwf	0x14
	movlw	0xFF
	movwf	0x15
	movlw	0xFF
	movwf	0x16
	movlw	0x05
	movwf	0x1F
	goto	PROMEDIO
	
PROMEDIO
	
	call	SUMA
	
SUMA
	
	movfw	0x12
	addwf	0x13,0
	movwf	0x0F
	call	CARRY_S
	movfw	0x0F
	addwf	0x14,0
	movwf	0x0F
	call	CARRY_S
	movfw	0x0F
	addwf	0x15,0
	movwf	0x0F
	call	CARRY_S
	movfw	0x0F
	addwf	0x16,0
	movwf	0x0F
	call	CARRY_S
	goto	DIVISION

CARRY_S

	btfss	STATUS,0
	return
	incf	0x0E,1
	return

DIVISION

	call	COMPROBAR
	call	COMPLEMENTO_1
	movfw	0x2F
	addwf	0x0F,1
	call	CARRY_D
	movfw	0x2E
	addwf	0x0E,1
	incfsz	0x17,1
	goto	DIVISION
	incf	0x27,1
	goto	DIVISION
	
CARRY
	btfsc	STATUS,0
	return
	goto	FIN
	
CARRY_D
	btfss	STATUS,0
	return
	incf	0x0E,1
	return
	
CARRY_Z
	btfss	STATUS,2
	return
	call	COMPROBAR_2
	return

COMPROBAR
	movfw	0x1E
	subwf	0x0E,0
	call	CARRY
	call	CARRY_Z
	return	

COMPROBAR_2
	movfw	0x1F
	subwf	0x0F,0
 	call	CARRY
	return
	
COMPLEMENTO_1
	
	comf	0x1E,0
	movwf	0x2E
	comf	0x1F,0
	movwf	0x2F
	call	COMPLEMENTO_2
	return

COMPLEMENTO_2
	incfsz	0x2F,1
	return
	incfsz	0x2E,1
	return
	incf	0x2D,1
	return
	
ERR_0
	
	clrf	0x17
	return
	
;COMP_F
	
; 	movfw	0x1E
;	subwf	0x0E,0
;	addwf	0x1E,0
;	btfss	STATUS,2
; 	btfsc	STATUS,0
; 	btfss	STATUS,2
; 	goto	ERR_0
; 	movfw	0x1F
;	subwf	0x0F,0
;	addwf	0x1F,0
; 	btfss	STATUS,2
; 	goto	ERR_0
; 	return
	
FIN
	
;	call	COMP_F
	goto	FIN
	
END