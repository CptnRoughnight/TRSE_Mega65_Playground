
StartBlock0:
	; Starting new memory block at 0
.p4510   ; 65816 processor
;.i16    ; X/Y are 16 bits
;.a8     ; A is 8 bits
;.segment "CODE"
EndBlock0:
StartBlock2001:
	; Starting new memory block at $2001
.p4510   ; 65816 processor
	 .org $2001
	 .byte $09,$20 ;End of command marker (first byte after the 00 terminator)
	 .byte $0a,$00 ;10
	 .byte $fe,$02,$30,$00 ;BANK 0
	 .byte $13, $20 
	 .byte $14,$00 ;20
	 .byte $9e ;SYS
	 .byte $38,$32,$32,$34
	  .byte $00
endd_s:
	  .byte $00,$00    ;End of basic terminators
	  .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF    ;extra
	; Ending memory block at $2001
	; Resuming memory block at $2001
HelloWorld:
	; LineNumber: 131
	jmp block1
	; LineNumber: 23
DMA_dmalist:	.res	20,0
	; LineNumber: 6
mega65_RowSize:	.byte	$28
	; LineNumber: 7
mega65_LogicalRowSize:	.word	0
	; LineNumber: 9
mega65_screenB:	.byte	0
	; LineNumber: 10
mega65_screenaddr:	.word	0
	; LineNumber: 5
Memory_zpLo	= $90
	; LineNumber: 6
Memory_zpHi	= $92
	; LineNumber: 7
Memory_pa:	.byte	0
	; LineNumber: 7
Memory_pb:	.byte	0
	; LineNumber: 16
sprAddr = $3000
	; LineNumber: 17
sprPos:	.word $0a, $0c8, $01e, $042, $046, $078, $02, $05a
	.word $037, $0fa, $0a, $0c8, $01e, $042, $046, $078
	.word $02, $05a, $037, $0fa, $0a, $0c8, $01e, $042
	.word $046
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
initdiv16x8_divisor = $4C     ;$59 used for hi-byte
initdiv16x8_dividend = $4E	  ;$fc used for hi-byte
initdiv16x8_remainder = $50	  ;$fe used for hi-byte
initdiv16x8_result = $4E ;save memory by reusing divident to store the result
divide16x8:
	lda #0	        ;preset remainder to 0
	sta initdiv16x8_remainder
	sta initdiv16x8_remainder+1
	ldx #16	        ;repeat for each bit: ...
divloop16:	asl initdiv16x8_dividend	;dividend lb & hb*2, msb -> Carry
	rol initdiv16x8_dividend+1
	rol initdiv16x8_remainder	;remainder lb & hb * 2 + msb from carry
	rol initdiv16x8_remainder+1
	lda initdiv16x8_remainder
	sec
	sbc initdiv16x8_divisor	;substract divisor to see if it fits in
	tay	        ;lb result -> Y, for we may need it later
	lda initdiv16x8_remainder+1
	sbc initdiv16x8_divisor+1
	bcc skip16	;if carry=0 then divisor didn't fit in yet
	sta initdiv16x8_remainder+1	;else save substraction result as new remainder,
	sty initdiv16x8_remainder
	inc initdiv16x8_result	;and INCrement result cause divisor fit in 1 times
skip16:
	dex
	bne divloop16
	rts
end_procedure_init16x8div:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8mul
	;    Procedure type : Built-in function
	;    Requires initialization : no
mul16x8_num1Hi = $4C
mul16x8_num1 = $4E
mul16x8_num2 = $50
mul16x8_procedure:
	lda #$00
	ldy #$00
	beq mul16x8_enterLoop
mul16x8_doAdd:
	clc
	adc mul16x8_num1
	tax
	tya
	adc mul16x8_num1Hi
	tay
	txa
mul16x8_loop:
	asl mul16x8_num1
	rol mul16x8_num1Hi
mul16x8_enterLoop:
	lsr mul16x8_num2
	bcs mul16x8_doAdd
	bne mul16x8_loop
	rts
end_procedure_init16x8mul:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init8x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
div8x8_c = $4C
div8x8_d = $4E
div8x8_e = $50
	; Normal 8x8 bin div
div8x8_procedure:
	lda #$00
	ldx #$07
	clc
div8x8_loop1:
	rol div8x8_d
	rol
	cmp div8x8_c
	bcc div8x8_loop2
	sbc div8x8_c
div8x8_loop2:
	dex
	bpl div8x8_loop1
	rol div8x8_d
	lda div8x8_d
div8x8_def_end:
	rts
end_procedure_init8x8div:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initeightbitmul
	;    Procedure type : Built-in function
	;    Requires initialization : no
multiplier = $4C
multiplier_a = $4E
multiply_eightbit:
	cpx #$00
	beq mul_end
	dex
	stx $4E
	lsr
	sta multiplier
	lda #$00
	ldx #$08
mul_loop:
	bcc mul_skip
mul_mod:
	adc multiplier_a
mul_skip:
	ror
	ror multiplier
	dex
	bne mul_loop
	ldx multiplier
	rts
mul_end:
	txa
	rts
initeightbitmul_multiply_eightbit2:
	rts
end_procedure_initeightbitmul:
	
; // Index constants for dmalist
; // 16 bit
; // 16 bit
; // 16 bit
; // Helper functions, don't know if TRSE has something build in.. couldnt find it :)
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_hiByte
	;    Procedure type : User-defined procedure
	; LineNumber: 27
	; LineNumber: 26
DMA_val1:	.word	0
DMA_hiByte_block3:
DMA_hiByte:
	; LineNumber: 29
	; LineNumber: 29
	; integer assignment NodeVar
	ldy DMA_val1+1 ; keep
	lda DMA_val1
DMA_hiByte_tempVarShift_var4 = $54
	sta DMA_hiByte_tempVarShift_var4
	sty DMA_hiByte_tempVarShift_var4+1
	; COUNT : 8
		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

		lsr DMA_hiByte_tempVarShift_var4+1 ;keep
	ror DMA_hiByte_tempVarShift_var4+0 ;keep

	lda DMA_hiByte_tempVarShift_var4
	ldy DMA_hiByte_tempVarShift_var4+1
	rts
end_procedure_DMA_hiByte:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_loByte
	;    Procedure type : User-defined procedure
	; LineNumber: 32
	; LineNumber: 31
DMA_val2:	.word	0
DMA_loByte_block5:
DMA_loByte:
	; LineNumber: 34
	; LineNumber: 34
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy DMA_val2+1 ; keep
	lda DMA_val2
	and #$ff
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	and #$00
	tay 
	pla 
	rts
end_procedure_DMA_loByte:
	
; // Start the DMA process... don't call unless you populatet the dmalist array
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_do_dma
	;    Procedure type : User-defined procedure
	; LineNumber: 38
DMA_do_dma:
	; LineNumber: 39
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $d702
	; LineNumber: 40
	; Poke
	; Optimization: shift is zero
	sta $d704
	; LineNumber: 41
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	sta $d701
	; LineNumber: 42
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	sta $d705
	; LineNumber: 43
	rts
end_procedure_DMA_do_dma:
	
; // peeks a value to address [mb][b][addr]
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lpoke
	;    Procedure type : User-defined procedure
	; LineNumber: 80
	; LineNumber: 79
DMA_dma_byte1:	.byte	0
	; LineNumber: 78
DMA_mb1:	.byte	0
	; LineNumber: 78
DMA_b1:	.byte	0
	; LineNumber: 78
DMA_addr1:	.word	0
	; LineNumber: 78
DMA_value:	.byte	0
DMA_lpoke_block8:
DMA_lpoke:
	; LineNumber: 81
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 82
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 83
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 85
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 86
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 87
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 88
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 91
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 92
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 93
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 95
	lda DMA_value
	; Calling storevariable on generic assign expression
	sta DMA_dma_byte1
	; LineNumber: 97
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 98
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 99
	lda #<DMA_dma_byte1
	ldy #>DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 100
	lda #<DMA_dma_byte1
	ldy #>DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 102
	lda DMA_mb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 103
	lda DMA_b1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 104
	; integer assignment NodeVar
	ldy DMA_addr1+1 ; keep
	lda DMA_addr1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 105
	; integer assignment NodeVar
	ldy DMA_addr1+1 ; keep
	lda DMA_addr1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 108
	jsr DMA_do_dma
	; LineNumber: 109
	rts
end_procedure_DMA_lpoke:
	
; // fill count2 bytes at address [dmb1][db1][daddr1]
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lfill
	;    Procedure type : User-defined procedure
	; LineNumber: 141
	; LineNumber: 140
DMA_dmb1:	.byte	0
	; LineNumber: 140
DMA_db1:	.byte	0
	; LineNumber: 140
DMA_daddr1:	.word	0
	; LineNumber: 140
DMA_value1:	.byte	0
	; LineNumber: 140
DMA_count2:	.word	0
DMA_lfill_block9:
DMA_lfill:
	; LineNumber: 142
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 143
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 144
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 145
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 146
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 147
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 148
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 149
	lda #$3
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 151
	; integer assignment NodeVar
	ldy DMA_count2+1 ; keep
	lda DMA_count2
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 152
	; integer assignment NodeVar
	ldy DMA_count2+1 ; keep
	lda DMA_count2
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 154
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 155
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 156
	lda DMA_value1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 157
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 159
	lda DMA_dmb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 160
	lda DMA_db1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 161
	; integer assignment NodeVar
	ldy DMA_daddr1+1 ; keep
	lda DMA_daddr1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 162
	; integer assignment NodeVar
	ldy DMA_daddr1+1 ; keep
	lda DMA_daddr1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 164
	jsr DMA_do_dma
	; LineNumber: 165
	rts
end_procedure_DMA_lfill:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_setFCM
	;    Procedure type : User-defined procedure
	; LineNumber: 18
mega65_setFCM:
	; LineNumber: 19
	; ****** Inline assembler section
		sei
		lda #$35
		sta $01
		
		lda #$41
		sta $00
		
		lda #$00
		tax
		tay
		taz
		map
		eom
		
		lda #$47
		sta $d02f
		lda #$53
		sta $d02f
		
		lda #$7f
		sta $dc0d
		sta $dd0d
		
		lda #$70
		sta $d640
		eom
		
		lda #$00
		sta $d01a
		
		lda #%11111000
		trb $d030
		
		cli
		
		lda #%00000111
		trb $d016
		
		lda #%10100000
		trb $d031
		
		lda #%00000101
		sta $d054
		
		lda #$00
		sta $d020
		sta $d021
		
	
	; LineNumber: 69
	rts
end_procedure_mega65_setFCM:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_relocateScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 73
	; LineNumber: 72
mega65_p	= $02
	; LineNumber: 71
mega65_b:	.byte	0
	; LineNumber: 71
mega65_addr:	.word	0
mega65_relocateScreen_block11:
mega65_relocateScreen:
	; LineNumber: 74
	lda mega65_b
	; Calling storevariable on generic assign expression
	sta mega65_screenB
	; LineNumber: 75
	; integer assignment NodeVar
	ldy mega65_addr+1 ; keep
	lda mega65_addr
	; Calling storevariable on generic assign expression
	sta mega65_screenaddr
	sty mega65_screenaddr+1
	; LineNumber: 76
	; Poke
	; Optimization: shift is zero
	; integer assignment NodeVar
mega65_relocateScreen_tempVarShift_var12 = $54
	sta mega65_relocateScreen_tempVarShift_var12
	sty mega65_relocateScreen_tempVarShift_var12+1
	; COUNT : 8
		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var12+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var12+0 ;keep

	lda mega65_relocateScreen_tempVarShift_var12
	sta $d061
	; LineNumber: 77
	; Poke
	; Optimization: shift is zero
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy mega65_addr+1 ; keep
	lda mega65_addr
	and #$ff
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	and #$00
	tay 
	pla 
	sta $d060
	; LineNumber: 78
	; Poke
	; Optimization: shift is zero
	lda mega65_b
	sta $d062
	; LineNumber: 79
	rts
end_procedure_mega65_relocateScreen:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_SetRowSize
	;    Procedure type : User-defined procedure
	; LineNumber: 82
mega65_SetRowSize:
	; LineNumber: 83
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda mega65_RowSize
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$2
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Calling storevariable on generic assign expression
	sta mega65_LogicalRowSize
	sty mega65_LogicalRowSize+1
	; LineNumber: 84
	; Poke
	; Optimization: shift is zero
	lda mega65_RowSize
	sta $d05e
	; LineNumber: 85
	; Poke
	; Optimization: shift is zero
	; integer assignment NodeVar
	ldy mega65_LogicalRowSize+1 ; keep
	lda mega65_LogicalRowSize
mega65_SetRowSize_tempVarShift_var15 = $54
	sta mega65_SetRowSize_tempVarShift_var15
	sty mega65_SetRowSize_tempVarShift_var15+1
	; COUNT : 8
		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var15+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var15+0 ;keep

	lda mega65_SetRowSize_tempVarShift_var15
	sta $d059
	; LineNumber: 86
	; Poke
	; Optimization: shift is zero
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy mega65_LogicalRowSize+1 ; keep
	lda mega65_LogicalRowSize
	and #$ff
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	and #$00
	tay 
	pla 
	sta $d058
	; LineNumber: 87
	rts
end_procedure_mega65_SetRowSize:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_printCharFCM
	;    Procedure type : User-defined procedure
	; LineNumber: 91
	; LineNumber: 90
mega65_a:	.word	0
	; LineNumber: 89
mega65_ch:	.byte	0
	; LineNumber: 89
mega65_color:	.byte	0
	; LineNumber: 89
mega65_x:	.word	0
	; LineNumber: 89
mega65_y:	.word	0
mega65_printCharFCM_block17:
mega65_printCharFCM:
	; LineNumber: 92
	; Generic 16 bit op
	; Mul 16x8 setup
	ldy mega65_y+1
	lda mega65_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy mega65_LogicalRowSize+1
	lda mega65_LogicalRowSize
	sta mul16x8_num2
	jsr mul16x8_procedure
mega65_printCharFCM_rightvarInteger_var20 = $54
	sta mega65_printCharFCM_rightvarInteger_var20
	sty mega65_printCharFCM_rightvarInteger_var20+1
	; Generic 16 bit op
	ldy #0
	lda #$0
mega65_printCharFCM_rightvarInteger_var23 = $56
	sta mega65_printCharFCM_rightvarInteger_var23
	sty mega65_printCharFCM_rightvarInteger_var23+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy mega65_x+1
	lda mega65_x
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$2
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc mega65_printCharFCM_rightvarInteger_var23
mega65_printCharFCM_wordAdd21:
	sta mega65_printCharFCM_rightvarInteger_var23
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var23+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var23
	; Low bit binop:
	clc
	adc mega65_printCharFCM_rightvarInteger_var20
mega65_printCharFCM_wordAdd18:
	sta mega65_printCharFCM_rightvarInteger_var20
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var20+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var20
	; Calling storevariable on generic assign expression
	sta mega65_a
	sty mega65_a+1
	; LineNumber: 93
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; integer assignment NodeVar
	ldy mega65_a+1 ; keep
	lda mega65_a
	; Calling storevariable on generic assign expression
	sta DMA_addr1
	sty DMA_addr1+1
	lda mega65_ch
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 94
	; Generic 16 bit op
	; Mul 16x8 setup
	ldy mega65_y+1
	lda mega65_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy mega65_LogicalRowSize+1
	lda mega65_LogicalRowSize
	sta mul16x8_num2
	jsr mul16x8_procedure
mega65_printCharFCM_rightvarInteger_var26 = $54
	sta mega65_printCharFCM_rightvarInteger_var26
	sty mega65_printCharFCM_rightvarInteger_var26+1
	; Generic 16 bit op
	ldy #0
	lda #$1
mega65_printCharFCM_rightvarInteger_var29 = $56
	sta mega65_printCharFCM_rightvarInteger_var29
	sty mega65_printCharFCM_rightvarInteger_var29+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy mega65_x+1
	lda mega65_x
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$2
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc mega65_printCharFCM_rightvarInteger_var29
mega65_printCharFCM_wordAdd27:
	sta mega65_printCharFCM_rightvarInteger_var29
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var29+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var29
	; Low bit binop:
	clc
	adc mega65_printCharFCM_rightvarInteger_var26
mega65_printCharFCM_wordAdd24:
	sta mega65_printCharFCM_rightvarInteger_var26
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var26+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var26
	; Calling storevariable on generic assign expression
	sta mega65_a
	sty mega65_a+1
	; LineNumber: 95
	lda #$ff
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$8
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; integer assignment NodeVar
	ldy mega65_a+1 ; keep
	lda mega65_a
	; Calling storevariable on generic assign expression
	sta DMA_addr1
	sty DMA_addr1+1
	lda mega65_color
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 96
	rts
end_procedure_mega65_printCharFCM:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Memory_Poke32
	;    Procedure type : User-defined procedure
	; LineNumber: 26
Memory_Poke32_block30:
Memory_Poke32:
	; LineNumber: 27
	; ****** Inline assembler section
 
		ldz Memory_pa
		lda Memory_pb
		eom 
		sta (Memory_zpLo),z
	
	; LineNumber: 34
	rts
end_procedure_Memory_Poke32:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : poke16
	;    Procedure type : User-defined procedure
	; LineNumber: 67
	; LineNumber: 66
pa:	.word	0
	; LineNumber: 66
pb:	.word	0
	; LineNumber: 66
val:	.word	0
poke16_block31:
poke16:
	; LineNumber: 71
	
; //     zphi zplo
; //     xxxx xxxx
; // bsp$0FF8 0000	- color ram
	lda pb
	ldx pb+1
	sta Memory_zpLo
	stx Memory_zpLo+1
	; LineNumber: 72
	lda pa
	ldx pa+1
	sta Memory_zpHi
	stx Memory_zpHi+1
	; LineNumber: 73
	
; // 32 bit addressing through pointers
	lda #$0
	; Calling storevariable on generic assign expression
	sta Memory_pa
	; integer assignment NodeVar
	ldy val+1 ; keep
	lda val
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta Memory_pb
	jsr Memory_Poke32
	; LineNumber: 74
	lda #$1
	; Calling storevariable on generic assign expression
	sta Memory_pa
	; integer assignment NodeVar
	ldy val+1 ; keep
	lda val
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta Memory_pb
	jsr Memory_Poke32
	; LineNumber: 75
	rts
end_procedure_poke16:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : demoRRB
	;    Procedure type : User-defined procedure
	; LineNumber: 83
	; LineNumber: 78
x2:	.byte	0
	; LineNumber: 78
y2:	.byte	0
	; LineNumber: 79
ch:	.byte	0
	; LineNumber: 80
rampos:	.word	0
	; LineNumber: 81
rrbrunning:	.byte	$01
demoRRB_block32:
demoRRB:
	; LineNumber: 85
	
; // Update RowSize
	lda #$2d
	; Calling storevariable on generic assign expression
	sta mega65_RowSize
	; LineNumber: 86
	jsr mega65_SetRowSize
	; LineNumber: 88
	
; // populate layer 0 with chars
	lda #$0
	; Calling storevariable on generic assign expression
	sta ch
	; LineNumber: 118
	; Calling storevariable on generic assign expression
	sta y2
demoRRB_forloop33:
	; LineNumber: 90
	; LineNumber: 96
	lda #$0
	; Calling storevariable on generic assign expression
	sta x2
demoRRB_forloop54:
	; LineNumber: 92
	; LineNumber: 93
	lda ch
	; Calling storevariable on generic assign expression
	sta mega65_ch
	lda #$6
	; Calling storevariable on generic assign expression
	sta mega65_color
	lda x2
	; Calling storevariable on generic assign expression
	sta mega65_x
	sty mega65_x+1
	lda y2
	; Calling storevariable on generic assign expression
	sta mega65_y
	sty mega65_y+1
	jsr mega65_printCharFCM
	; LineNumber: 94
	; Test Inc dec D
	inc ch
	; LineNumber: 95
demoRRB_forloopcounter56:
demoRRB_loopstart57:
	; Compare is onpage
	; Test Inc dec D
	inc x2
	lda #$27
	cmp x2 ;keep
	bne demoRRB_forloop54
demoRRB_loopdone61: ;keep:
demoRRB_forloopend55:
demoRRB_loopend58:
	; LineNumber: 97
	
; // Add GOTOX|TRANSPARENT into colorram
	; Generic 16 bit op
	ldy #0
	lda #80
demoRRB_rightvarInteger_var64 = $54
	sta demoRRB_rightvarInteger_var64
	sty demoRRB_rightvarInteger_var64+1
	; Mul 16x8 setup
	ldy #0
	lda y2
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy mega65_LogicalRowSize+1
	lda mega65_LogicalRowSize
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc demoRRB_rightvarInteger_var64
demoRRB_wordAdd62:
	sta demoRRB_rightvarInteger_var64
	; High-bit binop
	tya
	adc demoRRB_rightvarInteger_var64+1
	tay
	lda demoRRB_rightvarInteger_var64
	; Calling storevariable on generic assign expression
	sta rampos
	sty rampos+1
	; LineNumber: 99
	
; //DMA::lpoke($ff,$08,rampos,RRB::GOTOX|RRB::TRANSPARENT);
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$90
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 101
	
; // save ram position 	
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	pha
	lda y2
	asl
	tax
	pla
	sta sprAddr,x
	tya
	sta sprAddr+1,x
	; LineNumber: 103
	
; // New Position of "Sprite"
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	; Load Integer array
	lda y2
	asl
	tax
	lda sprPos,x
	ldy sprPos+1,x
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 105
	
; // Draw new Char - "Sprite"
	lda rampos
	clc
	adc #$02
	sta rampos+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc demoRRB_WordAdd65
	inc rampos+1
demoRRB_WordAdd65:
	; LineNumber: 106
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	; Integer constant assigning
	ldy #$04
	lda #$00
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 107
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$2
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 109
	
; // RRB GotoX 320
	lda rampos
	clc
	adc #$02
	sta rampos+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc demoRRB_WordAdd66
	inc rampos+1
demoRRB_WordAdd66:
	; LineNumber: 110
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$10
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 111
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	; Integer constant assigning
	ldy #$01
	lda #$40
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 113
	
; // RRB GotoX 320 - finish char
	lda rampos
	clc
	adc #$02
	sta rampos+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc demoRRB_WordAdd67
	inc rampos+1
demoRRB_WordAdd67:
	; LineNumber: 114
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 115
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; integer assignment NodeVar
	ldy rampos+1 ; keep
	lda rampos
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 117
demoRRB_forloopcounter35:
demoRRB_loopstart36:
	; Test Inc dec D
	inc y2
	lda #$18
	cmp y2 ;keep
	beq demoRRB_loopdone68
demoRRB_loopnotdone69:
	jmp demoRRB_forloop33
demoRRB_loopdone68:
demoRRB_forloopend34:
demoRRB_loopend37:
	; LineNumber: 118
demoRRB_while70:
demoRRB_loopstart74:
	; Binary clause Simplified: NOTEQUALS
	lda rrbrunning
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq demoRRB_localfailed102
	jmp demoRRB_ConditionalTrueBlock71
demoRRB_localfailed102:
	jmp demoRRB_elsedoneblock73
demoRRB_ConditionalTrueBlock71: ;Main true block ;keep:
	; LineNumber: 119
	; LineNumber: 120
	; wait for raster
	ldx #$ff ; optimized, look out for bugs
	cpx $d012
	bne *-3
	; LineNumber: 128
	lda #$0
	; Calling storevariable on generic assign expression
	sta y2
demoRRB_forloop104:
	; LineNumber: 122
	; LineNumber: 123
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda y2
	asl
	tax
	lda sprPos,x
	ldy sprPos+1,x
	clc
	adc #$01
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	; Calling storevariable on generic assign expression
	pha
	lda y2
	asl
	tax
	pla
	sta sprPos,x
	tya
	sta sprPos+1,x
	; LineNumber: 124
	; Binary clause INTEGER: GREATER
	; Load Integer array
	lda y2
	asl
	tax
	lda sprPos,x
	ldy sprPos+1,x
demoRRB_rightvarInteger_var125 = $5A
	sta demoRRB_rightvarInteger_var125
	sty demoRRB_rightvarInteger_var125+1
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda demoRRB_rightvarInteger_var125+1   ; compare high bytes
	cmp #$01 ;keep
	bcc demoRRB_elsedoneblock123
	bne demoRRB_ConditionalTrueBlock121
	lda demoRRB_rightvarInteger_var125
	cmp #$40 ;keep
	bcc demoRRB_elsedoneblock123
	beq demoRRB_elsedoneblock123
demoRRB_ConditionalTrueBlock121: ;Main true block ;keep:
	; LineNumber: 124
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	pha
	lda y2
	asl
	tax
	pla
	sta sprPos,x
	tya
	sta sprPos+1,x
demoRRB_elsedoneblock123:
	; LineNumber: 126
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta pa
	sty pa+1
	; Load Integer array
	lda y2
	asl
	tax
	lda sprAddr,x
	ldy sprAddr+1,x
	; Calling storevariable on generic assign expression
	sta pb
	sty pb+1
	; Load Integer array
	lda y2
	asl
	tax
	lda sprPos,x
	ldy sprPos+1,x
	; Calling storevariable on generic assign expression
	sta val
	sty val+1
	jsr poke16
	; LineNumber: 127
demoRRB_forloopcounter106:
demoRRB_loopstart107:
	; Test Inc dec D
	inc y2
	lda #$18
	cmp y2 ;keep
	beq demoRRB_loopdone127
demoRRB_loopnotdone128:
	jmp demoRRB_forloop104
demoRRB_loopdone127:
demoRRB_forloopend105:
demoRRB_loopend108:
	; LineNumber: 128
	jmp demoRRB_while70
demoRRB_elsedoneblock73:
demoRRB_loopend75:
	; LineNumber: 129
	rts
end_procedure_demoRRB:
block1:
main_block_begin_:
	; LineNumber: 132
	jsr mega65_setFCM
	; LineNumber: 133
	lda #$5
	; Calling storevariable on generic assign expression
	sta mega65_b
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta mega65_addr
	sty mega65_addr+1
	jsr mega65_relocateScreen
	; LineNumber: 135
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmb1
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_db1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_daddr1
	sty DMA_daddr1+1
	; Calling storevariable on generic assign expression
	sta DMA_value1
	; Integer constant assigning
	ldy #$0f
	lda #$a0
	; Calling storevariable on generic assign expression
	sta DMA_count2
	sty DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 136
	lda #$ff
	; Calling storevariable on generic assign expression
	sta DMA_dmb1
	lda #$8
	; Calling storevariable on generic assign expression
	sta DMA_db1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_daddr1
	sty DMA_daddr1+1
	; Calling storevariable on generic assign expression
	sta DMA_value1
	; Integer constant assigning
	ldy #$0f
	lda #$a0
	; Calling storevariable on generic assign expression
	sta DMA_count2
	sty DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 137
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_db1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_daddr1
	sty DMA_daddr1+1
	; Calling storevariable on generic assign expression
	sta DMA_value1
	; Integer constant assigning
	ldy #$40
	lda #$00
	; Calling storevariable on generic assign expression
	sta DMA_count2
	sty DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 147
	
; // uncomment next 4 lines for tile demo_LogicalRowSize
; // mega65::SetRowSize();
; // palettes::InitPalette();			
; // for chars(demoRRB) the palette doesnt fit, as the first 16 colors a grey shades
; // initTiles();
; // demoDrawTiles();
; // RRB Demo
	jsr demoRRB
	; LineNumber: 150
main_block_end_:
	; End of program
	; Ending memory block at $2001
	; Ending memory block at $2001
EndBlock2001:

