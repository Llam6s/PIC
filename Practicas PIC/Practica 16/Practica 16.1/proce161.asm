;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 16 1

;****************************************************

	clrf	0x10
	clrf	0x11
	
	movlw	0xFF
	movwf	0x0C
	movlw	0xFF
	movwf	0x0D
	movlw	0x00
	movwf	0x0E
	movlw	0xFF
	movwf	0x0F
	goto	DIVISION
	
DIVISION

	call	COMPROBAR
	call	COMPLEMENTO_1
	movfw	0x1F
	addwf	0x0D,1
	call	CARRY_D
	movfw	0x1E
	addwf	0x0C,1
	incfsz	0x11,1
	goto	DIVISION
	incf	0x10,1
	goto	DIVISION
	
CARRY
	btfsc	STATUS,0
	return
	goto	FIN
	
CARRY_D
	btfss	STATUS,0
	return
	incf	0x1E,1
	return
	
CARRY_Z
	btfss	STATUS,2
	return
	call	COMPROBAR_2
	return

COMPROBAR
	movfw	0x0E
	subwf	0x0C,0
	call	CARRY
	call	CARRY_Z
	return	

COMPROBAR_2
	movfw	0x0F
	subwf	0x0D,0
 	call	CARRY
	return
	
COMPLEMENTO_1
	
	comf	0x0E,0
	movwf	0x1E
	comf	0x0F,0
	movwf	0x1F
	call	COMPLEMENTO_2
	return

COMPLEMENTO_2
	incfsz	0x1F,1
	return
	incf	0x1E,1
	return
	
;ERR_0
	
;	clrf	0x10
;	clrf	0x11
;	return
	
;COMP_F

;	movfw	0x0E
;	subwf	0x0C,0
;	addwf	0x0E,0
;	btfss	STATUS,2
;	btfsc	STATUS,0
; 	btfss	STATUS,2
; 	goto	ERR_0
; 	movfw	0x0F
;	subwf	0x0D,0
;	addwf	0x0F,0
; 	btfss	STATUS,2
; 	goto	ERR_0
; 	return
	
FIN
	
;	call	COMP_F
	goto	FIN
	
END