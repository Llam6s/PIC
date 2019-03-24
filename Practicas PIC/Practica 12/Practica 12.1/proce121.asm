;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 12 1

;****************************************************

	ORG		0
	
Inicio
	
	movlw	0x04		;NUM - 1
	movwf	0x0C
	movlw	0x08		;NUM - 2
	movwf	0x0D
	movlw	0x02		;NUM - 3
	movwf	0x0E
	movlw	0x0A		;NUM - 4
	movwf	0x0F
	movlw	0x06		;NUM - 5
	movwf	0x10
	goto	COMP_0C_0D
	
;---------------------- 0C -----------------------

COMP_0C_0D
	movfw	0x0D
	subwf	0x0C,0
	goto	VERIF_0C_0D
COMP_0C_0E
	movfw	0x0E
	subwf	0x0C,0
	goto	VERIF_0C_0E
COMP_0C_0F
	movfw	0x0F
	subwf	0x0C,0
	goto	VERIF_0C_0F
COMP_0C_10
	movfw	0x10
	subwf	0x0C,0
	goto	VERIF_0C_10

VERIF_0C_0D
	btfsc	STATUS,0
	goto	COMP_0C_0E
	goto	SWIT_0C_0D

VERIF_0C_0E
	btfsc	STATUS,0
	goto	COMP_0C_0F
	goto	SWIT_0C_0E

VERIF_0C_0F
	btfsc	STATUS,0
	goto	COMP_0C_10
	goto	SWIT_0C_0F	

VERIF_0C_10
	btfsc	STATUS,0
	goto	COMP_0D_0E
	goto	SWIT_0C_10

SWIT_0C_0D
	movfw	0x0C
	movwf	0x0B
	movfw	0x0D
	movwf	0x0C
	movfw	0x0B
	movwf	0x0D
	clrf	0x0B
	goto	COMP_0C_0D
	
SWIT_0C_0E
	movfw	0x0C
	movwf	0x0B
	movfw	0x0E
	movwf	0x0C
	movfw	0x0B
	movwf	0x0E
	clrf	0x0B
	goto	COMP_0C_0D
	
SWIT_0C_0F
	movfw	0x0C
	movwf	0x0B
	movfw	0x0F
	movwf	0x0C
	movfw	0x0B
	movwf	0x0F
	clrf	0x0B
	goto	COMP_0C_0D
	
SWIT_0C_10
	movfw	0x0C
	movwf	0x0B
	movfw	0x10
	movwf	0x0C
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	goto	COMP_0C_0D
	
;------------------ 0D -------------------

COMP_0D_0E
	movfw	0x0E
	subwf	0x0D,0
	goto	VERIF_0D_0E
	
COMP_0D_0F
	movfw	0x0F
	subwf	0x0D,0
	goto	VERIF_0D_0F
	
COMP_0D_10
	movfw	0x10
	subwf	0x0D,0
	goto	VERIF_0D_10
	
VERIF_0D_0E
	btfsc	STATUS,0
	goto	COMP_0D_0F
	goto	SWIT_0D_0E

VERIF_0D_0F
	btfsc	STATUS,0
	goto	COMP_0D_10
	goto	SWIT_0D_0F

VERIF_0D_10
	btfsc	STATUS,0
	goto	COMP_0E_0F
	goto	SWIT_0D_10
	
SWIT_0D_0E
	movfw	0x0D
	movwf	0x0B
	movfw	0x0E
	movwf	0x0D
	movfw	0x0B
	movwf	0x0E
	clrf	0x0B
	goto	COMP_0D_0E
	
SWIT_0D_0F
	movfw	0x0D
	movwf	0x0B
	movfw	0x0F
	movwf	0x0D
	movfw	0x0B
	movwf	0x0F
	clrf	0x0B
	goto	COMP_0D_0E
	
SWIT_0D_10
	movfw	0x0D
	movwf	0x0B
	movfw	0x10
	movwf	0x0D
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	goto	COMP_0D_0E
	
;------------------ 0E -------------------

COMP_0E_0F
	movfw	0x0F
	subwf	0x0E,0
	goto	VERIF_0E_0F

COMP_0E_10
	movfw	0x10
	subwf	0x0E,0
	goto	VERIF_0E_10
	
VERIF_0E_0F
	btfsc	STATUS,0
	goto	COMP_0E_10
	goto	SWIT_0E_0F

VERIF_0E_10
	btfsc	STATUS,0
	goto	COMP_0F_10
	goto	SWIT_0E_10
	
SWIT_0E_0F
	movfw	0x0E
	movwf	0x0B
	movfw	0x0F
	movwf	0x0E
	movfw	0x0B
	movwf	0x0F
	clrf	0x0B
	goto	COMP_0E_0F
	
SWIT_0E_10
	movfw	0x0E
	movwf	0x0B
	movfw	0x10
	movwf	0x0E
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	goto	COMP_0E_0F
	
;------------------ 0F -------------------

COMP_0F_10
	movfw	0x10
	subwf	0x0F,0
	goto	VERIF_0F_10
	
VERIF_0F_10
	btfsc	STATUS,0
	goto	FIN
	goto	SWIT_0F_10
	
SWIT_0F_10
	movfw	0x0F
	movwf	0x0B
	movfw	0x10
	movwf	0x0F
	movfw	0x0B
	movwf	0x10
	clrf	0x0B
	goto	COMP_0F_10

FIN
	clrf	0x0B
	goto	FIN
	
END