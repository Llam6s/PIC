;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 13 1

;****************************************************

	ORG		0
	
Inicio
	
	movlw	0x07		;NUM - 1
	movwf	0x0C
	movlw	0x09		;NUM - 2
	movwf	0x0D
	movlw	0x05		;NUM - 3
	movwf	0x0E
	movlw	0x03		;NUM - 4
	movwf	0x0F
	movlw	0x01		;NUM - 5
	movwf	0x10
	call	COMP_0C
	
;---------------------- 0C -----------------------

COMP_0C
	movfw	0x0D
	subwf	0x0C,0
	call	VERIF_0C_0D
	movfw	0x0E
	subwf	0x0C,0
	call	VERIF_0C_0E
	movfw	0x0F
	subwf	0x0C,0
	call	VERIF_0C_0F
	movfw	0x10
	subwf	0x0C,0
	call	VERIF_0C_10

VERIF_0C_0D
	btfsc	STATUS,0
	return
	call	SWIT_0C_0D

VERIF_0C_0E
	btfsc	STATUS,0
	return
	call	SWIT_0C_0E

VERIF_0C_0F
	btfsc	STATUS,0
	return
	call	SWIT_0C_0F	

VERIF_0C_10
	btfsc	STATUS,0
	return
	call	SWIT_0C_10

SWIT_0C_0D
	movfw	0x0C
	movwf	0x0B
	movfw	0x0D
	movwf	0x0C
	movfw	0x0B
	movwf	0x0D
	clrf	0x0B
	call	COMP_0C
	
SWIT_0C_0E
	movfw	0x0C
	movwf	0x0B
	movfw	0x0E
	movwf	0x0C
	movfw	0x0B
	movwf	0x0E
	clrf	0x0B
	call	COMP_0C
	
SWIT_0C_0F
	movfw	0x0C
	movwf	0x0B
	movfw	0x0F
	movwf	0x0C
	movfw	0x0B
	movwf	0x0F
	clrf	0x0B
	call	COMP_0C
	
SWIT_0C_10
	movfw	0x0C
	movwf	0x0B
	movfw	0x10
	movwf	0x0C
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	call	COMP_0C
	
;------------------ 0D -------------------

COMP_0D
	movfw	0x0E
	subwf	0x0D,0
	call	VERIF_0D_0E
	movfw	0x0F
	subwf	0x0D,0
	call	VERIF_0D_0F
	movfw	0x10
	subwf	0x0D,0
	call	VERIF_0D_10
	
VERIF_0D_0E
	btfsc	STATUS,0
	return
	call	SWIT_0D_0E

VERIF_0D_0F
	btfsc	STATUS,0
	return
	call	SWIT_0D_0F

VERIF_0D_10
	btfsc	STATUS,0
	return
	call	SWIT_0D_10
	
SWIT_0D_0E
	movfw	0x0D
	movwf	0x0B
	movfw	0x0E
	movwf	0x0D
	movfw	0x0B
	movwf	0x0E
	clrf	0x0B
	call	COMP_0D
	
SWIT_0D_0F
	movfw	0x0D
	movwf	0x0B
	movfw	0x0F
	movwf	0x0D
	movfw	0x0B
	movwf	0x0F
	clrf	0x0B
	call	COMP_0D
	
SWIT_0D_10
	movfw	0x0D
	movwf	0x0B
	movfw	0x10
	movwf	0x0D
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	call	COMP_0D
	
;------------------ 0E -------------------

COMP_0E
	movfw	0x0F
	subwf	0x0E,0
	call	VERIF_0E_0F
	movfw	0x10
	subwf	0x0E,0
	call	VERIF_0E_10
	
VERIF_0E_0F
	btfsc	STATUS,0
	return
	call	SWIT_0E_0F

VERIF_0E_10
	btfsc	STATUS,0
	return
	call	SWIT_0E_10
	
SWIT_0E_0F
	movfw	0x0E
	movwf	0x0B
	movfw	0x0F
	movwf	0x0E
	movfw	0x0B
	movwf	0x0F
	clrf	0x0B
	call	COMP_0E
	
SWIT_0E_10
	movfw	0x0E
	movwf	0x0B
	movfw	0x10
	movwf	0x0E
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	call	COMP_0E
	
;------------------ 0F -------------------

COMP_0F_10
	movfw	0x10
	subwf	0x0F,0
	call	VERIF_0F_10
	
VERIF_0F_10
	btfsc	STATUS,0
	goto	FIN
	call	SWIT_0F_10
	
SWIT_0F_10
	movfw	0x0F
	movwf	0x0B
	movfw	0x10
	movwf	0x0F
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	call	COMP_0F_10

FIN
	clrf	0x0B
	goto	FIN
	
END