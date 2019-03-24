;****************************************************

	LIST P=16F84A
	
	INCLUDE<P16F84A.INC>
	
;P 10 1

;****************************************************

	ORG		0
	
Inicio

	movlw	0x0F
	movwf	0x0C
	goto	BCDIN
	
BCDIN

	btfsc	0x0C,0
	btfss	0x0C,0
	goto	BCD0
	goto	BCD1

BCD0
	
	btfsc	0x0C,1
	btfss	0x0C,1
	goto	BCD00
	goto	BCD10

BCD1
	
	btfsc	0x0C,1
	btfss	0x0C,1
	goto	BCD01
	goto	BCD11

BCD00
	
	btfsc	0x0C,2
	btfss	0x0C,2
	goto	BCD000
	goto	BCD100

BCD10
	
	btfsc	0x0C,2
	btfss	0x0C,2
	goto	BCD010
	goto	BCD110
	
BCD01
	
	btfsc	0x0C,2
	btfss	0x0C,2
	goto	BCD001
	goto	BCD101

BCD11
	
	btfsc	0x0C,2
	btfss	0x0C,2
	goto	BCD011
	goto	BCD111

BCD011
	
	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_3
	goto	BCD_B
		
BCD101
	
	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_5
	goto	BCD_D

BCD100
	
	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_4
	goto	BCD_C
	
BCD110
	
	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_6
	goto	BCD_E
	
BCD010
	
	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_2
	goto	BCD_A
	
BCD000

	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_0
	goto	BCD_8
	
BCD001
	
	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_1
	goto	BCD_9

BCD111
	
	btfsc	0x0C,3
	btfss	0x0C,3
	goto	BCD_7
	goto	BCD_F
	
BCD_0
	
	movlw	0x00
	movwf	0X0D
	goto	FIN
	
BCD_1
	
	movlw	0x01
	movwf	0X0D
	goto	FIN
	
BCD_2
	
	movlw	0x02
	movwf	0X0D
	goto	FIN
	
BCD_3
	
	movlw	0x03
	movwf	0X0D
	goto	FIN
	
BCD_4
	
	movlw	0x04
	movwf	0X0D
	goto	FIN

BCD_5
	
	movlw	0x05
	movwf	0X0D
	goto	FIN
	
BCD_6
	
	movlw	0x06
	movwf	0X0D
	goto	FIN
	
BCD_7
	
	movlw	0x07
	movwf	0X0D
	goto	FIN
	
BCD_8
	
	movlw	0x08
	movwf	0X0D
	goto	FIN
	
BCD_9
	
	movlw	0x09
	movwf	0X0D
	goto	FIN
	
BCD_A
	
	movlw	0x10
	movwf	0X0D
	goto	FIN

BCD_B
	
	movlw	0x11
	movwf	0X0D
	goto	FIN

BCD_C
	
	movlw	0x12
	movwf	0X0D
	goto	FIN
	
BCD_D
	
	movlw	0x13
	movwf	0X0D
	goto	FIN

BCD_E
	
	movlw	0x14
	movwf	0X0D
	goto	FIN

BCD_F
	
	movlw	0x15
	movwf	0X0D
	goto	FIN
	
FIN
	clrw
	goto	FIN
	
END