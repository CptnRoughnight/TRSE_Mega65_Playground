
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
	; LineNumber: 186
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
	; ***********  Defining procedure : mega65_init
	;    Procedure type : User-defined procedure
	; LineNumber: 18
mega65_init:
	; LineNumber: 19
	; ****** Inline assembler section
		sei 
		lda #$35
		sta $01
		
		; enable 40 mhz
		lda #$41
		sta $00
		
		; disable C65 ROM
		lda #$70
		sta $d640
		eom
		; unmap C65 rom
		lda #%11111000
		trb $d030
		
		; disable CIA interrupts
		lda $7f
		sta $dc0d
		sta $dd0d
		
		; disable IRQ interrupts
		lda #$00
		sta $d01a
		cli
		
	
	; LineNumber: 47
	rts
end_procedure_mega65_init:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_setFCM
	;    Procedure type : User-defined procedure
	; LineNumber: 51
mega65_setFCM:
	; LineNumber: 52
	; ****** Inline assembler section
		lda #%00000111
		trb $d016
		
		lda #%10100000
		trb $d031
		
		lda #%00000101
		sta $d054
		
		lda #$00
		sta $d020
		sta $d021
		
	
	; LineNumber: 67
	rts
end_procedure_mega65_setFCM:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_relocateScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 71
	; LineNumber: 70
mega65_p	= $02
	; LineNumber: 69
mega65_b:	.byte	0
	; LineNumber: 69
mega65_addr:	.word	0
mega65_relocateScreen_block12:
mega65_relocateScreen:
	; LineNumber: 72
	lda mega65_b
	; Calling storevariable on generic assign expression
	sta mega65_screenB
	; LineNumber: 73
	; integer assignment NodeVar
	ldy mega65_addr+1 ; keep
	lda mega65_addr
	; Calling storevariable on generic assign expression
	sta mega65_screenaddr
	sty mega65_screenaddr+1
	; LineNumber: 74
	; Poke
	; Optimization: shift is zero
	; integer assignment NodeVar
mega65_relocateScreen_tempVarShift_var13 = $54
	sta mega65_relocateScreen_tempVarShift_var13
	sty mega65_relocateScreen_tempVarShift_var13+1
	; COUNT : 8
		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var13+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var13+0 ;keep

	lda mega65_relocateScreen_tempVarShift_var13
	sta $d061
	; LineNumber: 75
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
	; LineNumber: 76
	; Poke
	; Optimization: shift is zero
	lda mega65_b
	sta $d062
	; LineNumber: 77
	rts
end_procedure_mega65_relocateScreen:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_SetRowSize
	;    Procedure type : User-defined procedure
	; LineNumber: 80
	; LineNumber: 79
mega65_newRowSize:	.byte	0
mega65_SetRowSize_block15:
mega65_SetRowSize:
	; LineNumber: 81
	lda mega65_newRowSize
	; Calling storevariable on generic assign expression
	sta mega65_RowSize
	; LineNumber: 82
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
	; LineNumber: 83
	; Poke
	; Optimization: shift is zero
	lda mega65_RowSize
	sta $d05e
	; LineNumber: 84
	; Poke
	; Optimization: shift is zero
	; integer assignment NodeVar
	ldy mega65_LogicalRowSize+1 ; keep
	lda mega65_LogicalRowSize
mega65_SetRowSize_tempVarShift_var16 = $54
	sta mega65_SetRowSize_tempVarShift_var16
	sty mega65_SetRowSize_tempVarShift_var16+1
	; COUNT : 8
		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var16+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var16+0 ;keep

	lda mega65_SetRowSize_tempVarShift_var16
	sta $d059
	; LineNumber: 85
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
	; LineNumber: 86
	rts
end_procedure_mega65_SetRowSize:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_printCharFCM
	;    Procedure type : User-defined procedure
	; LineNumber: 90
	; LineNumber: 89
mega65_a:	.word	0
	; LineNumber: 88
mega65_ch:	.byte	0
	; LineNumber: 88
mega65_color:	.byte	0
	; LineNumber: 88
mega65_x:	.word	0
	; LineNumber: 88
mega65_y:	.word	0
mega65_printCharFCM_block18:
mega65_printCharFCM:
	; LineNumber: 91
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
mega65_printCharFCM_rightvarInteger_var21 = $54
	sta mega65_printCharFCM_rightvarInteger_var21
	sty mega65_printCharFCM_rightvarInteger_var21+1
	; Generic 16 bit op
	ldy #0
	lda #$0
mega65_printCharFCM_rightvarInteger_var24 = $56
	sta mega65_printCharFCM_rightvarInteger_var24
	sty mega65_printCharFCM_rightvarInteger_var24+1
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
	adc mega65_printCharFCM_rightvarInteger_var24
mega65_printCharFCM_wordAdd22:
	sta mega65_printCharFCM_rightvarInteger_var24
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var24+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var24
	; Low bit binop:
	clc
	adc mega65_printCharFCM_rightvarInteger_var21
mega65_printCharFCM_wordAdd19:
	sta mega65_printCharFCM_rightvarInteger_var21
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var21+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var21
	; Calling storevariable on generic assign expression
	sta mega65_a
	sty mega65_a+1
	; LineNumber: 92
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
	; LineNumber: 93
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
mega65_printCharFCM_rightvarInteger_var27 = $54
	sta mega65_printCharFCM_rightvarInteger_var27
	sty mega65_printCharFCM_rightvarInteger_var27+1
	; Generic 16 bit op
	ldy #0
	lda #$1
mega65_printCharFCM_rightvarInteger_var30 = $56
	sta mega65_printCharFCM_rightvarInteger_var30
	sty mega65_printCharFCM_rightvarInteger_var30+1
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
	adc mega65_printCharFCM_rightvarInteger_var30
mega65_printCharFCM_wordAdd28:
	sta mega65_printCharFCM_rightvarInteger_var30
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var30+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var30
	; Low bit binop:
	clc
	adc mega65_printCharFCM_rightvarInteger_var27
mega65_printCharFCM_wordAdd25:
	sta mega65_printCharFCM_rightvarInteger_var27
	; High-bit binop
	tya
	adc mega65_printCharFCM_rightvarInteger_var27+1
	tay
	lda mega65_printCharFCM_rightvarInteger_var27
	; Calling storevariable on generic assign expression
	sta mega65_a
	sty mega65_a+1
	; LineNumber: 94
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
	; LineNumber: 95
	rts
end_procedure_mega65_printCharFCM:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : keyboard_getKey
	;    Procedure type : User-defined procedure
	; LineNumber: 84
	; LineNumber: 83
keyboard_getKeyRet:	.byte	0
keyboard_getKey_block31:
keyboard_getKey:
	; LineNumber: 85
	; ****** Inline assembler section
		lda $D610
		sta keyboard_getKeyRet
		lda #$00
		sta $D610	
	
	; LineNumber: 92
	; LineNumber: 92
	lda keyboard_getKeyRet
	rts
end_procedure_keyboard_getKey:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : testKeyboard
	;    Procedure type : User-defined procedure
	; LineNumber: 137
	; LineNumber: 133
k:	.byte	0
	; LineNumber: 134
xx:	.byte	0
	; LineNumber: 134
yy:	.byte	0
	; LineNumber: 135
caddr:	.word	0
	; LineNumber: 136
pp	= $02
testKeyboard_block32:
testKeyboard:
	; LineNumber: 138
testKeyboard_while33:
testKeyboard_loopstart37:
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq testKeyboard_localfailed88
	jmp testKeyboard_ConditionalTrueBlock34
testKeyboard_localfailed88:
	jmp testKeyboard_elsedoneblock36
testKeyboard_ConditionalTrueBlock34: ;Main true block ;keep:
	; LineNumber: 138
	; LineNumber: 140
	jsr keyboard_getKey
	; Calling storevariable on generic assign expression
	sta k
	; LineNumber: 141
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$9d;keep
	bne testKeyboard_elsedoneblock93
testKeyboard_ConditionalTrueBlock91: ;Main true block ;keep:
	; LineNumber: 142
	; LineNumber: 143
	; Test Inc dec D
	dec xx
	; LineNumber: 144
	jmp testKeyboard_loopstart37
	; LineNumber: 145
testKeyboard_elsedoneblock93:
	; LineNumber: 146
	; Binary clause Simplified: EQUALS
	lda k
	; Compare with pure num / var optimization
	cmp #$1d;keep
	bne testKeyboard_elsedoneblock99
testKeyboard_ConditionalTrueBlock97: ;Main true block ;keep:
	; LineNumber: 147
	; LineNumber: 148
	; Test Inc dec D
	inc xx
	; LineNumber: 149
	jmp testKeyboard_loopstart37
	; LineNumber: 150
testKeyboard_elsedoneblock99:
	; LineNumber: 151
	; Binary clause Simplified: EQUALS
	lda k
	; Compare with pure num / var optimization
	cmp #$11;keep
	bne testKeyboard_elsedoneblock105
testKeyboard_ConditionalTrueBlock103: ;Main true block ;keep:
	; LineNumber: 152
	; LineNumber: 153
	; Test Inc dec D
	inc yy
	; LineNumber: 154
	jmp testKeyboard_loopstart37
	; LineNumber: 155
testKeyboard_elsedoneblock105:
	; LineNumber: 156
	; Binary clause Simplified: EQUALS
	lda k
	; Compare with pure num / var optimization
	cmp #$91;keep
	bne testKeyboard_elsedoneblock111
testKeyboard_ConditionalTrueBlock109: ;Main true block ;keep:
	; LineNumber: 157
	; LineNumber: 158
	; Test Inc dec D
	dec yy
	; LineNumber: 159
	jmp testKeyboard_loopstart37
	; LineNumber: 160
testKeyboard_elsedoneblock111:
	; LineNumber: 161
	; Binary clause Simplified: EQUALS
	lda k
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne testKeyboard_elsedoneblock117
testKeyboard_ConditionalTrueBlock115: ;Main true block ;keep:
	; LineNumber: 162
	; LineNumber: 163
	; Test Inc dec D
	inc xx
	; LineNumber: 164
	jmp testKeyboard_loopstart37
	; LineNumber: 165
testKeyboard_elsedoneblock117:
	; LineNumber: 166
	; Binary clause Simplified: EQUALS
	lda k
	; Compare with pure num / var optimization
	cmp #$d;keep
	bne testKeyboard_elsedoneblock123
testKeyboard_ConditionalTrueBlock121: ;Main true block ;keep:
	; LineNumber: 167
	; LineNumber: 168
	lda #$0
	; Calling storevariable on generic assign expression
	sta xx
	; LineNumber: 169
	; Test Inc dec D
	inc yy
	; LineNumber: 170
	jmp testKeyboard_loopstart37
	; LineNumber: 171
testKeyboard_elsedoneblock123:
	; LineNumber: 172
	; Binary clause Simplified: EQUALS
	lda k
	; Compare with pure num / var optimization
	cmp #$5f;keep
	bne testKeyboard_elsedoneblock129
testKeyboard_ConditionalTrueBlock127: ;Main true block ;keep:
	; LineNumber: 172
	; LineNumber: 174
	; Test Inc dec D
	dec xx
	; LineNumber: 175
	lda #$20
	; Calling storevariable on generic assign expression
	sta mega65_ch
	lda #$0
	; Calling storevariable on generic assign expression
	sta mega65_color
	lda xx
	; Calling storevariable on generic assign expression
	sta mega65_x
	sty mega65_x+1
	lda yy
	; Calling storevariable on generic assign expression
	sta mega65_y
	sty mega65_y+1
	jsr mega65_printCharFCM
	; LineNumber: 176
	jmp testKeyboard_loopstart37
	; LineNumber: 177
testKeyboard_elsedoneblock129:
	; LineNumber: 178
	; Binary clause Simplified: NOTEQUALS
	lda k
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq testKeyboard_elsedoneblock135
testKeyboard_ConditionalTrueBlock133: ;Main true block ;keep:
	; LineNumber: 179
	; LineNumber: 180
	; Optimizer: a = a +/- b
	lda k
	sec
	sbc #$60
	sta mega65_ch
	lda #$5
	; Calling storevariable on generic assign expression
	sta mega65_color
	lda xx
	; Calling storevariable on generic assign expression
	sta mega65_x
	sty mega65_x+1
	lda yy
	; Calling storevariable on generic assign expression
	sta mega65_y
	sty mega65_y+1
	jsr mega65_printCharFCM
	; LineNumber: 181
	; Test Inc dec D
	inc xx
	; LineNumber: 182
testKeyboard_elsedoneblock135:
	; LineNumber: 183
	jmp testKeyboard_while33
testKeyboard_elsedoneblock36:
testKeyboard_loopend38:
	; LineNumber: 184
	rts
end_procedure_testKeyboard:
block1:
main_block_begin_:
	; LineNumber: 187
	jsr mega65_init
	; LineNumber: 188
	jsr mega65_setFCM
	; LineNumber: 189
	lda #$5
	; Calling storevariable on generic assign expression
	sta mega65_b
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta mega65_addr
	sty mega65_addr+1
	jsr mega65_relocateScreen
	; LineNumber: 191
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
	; LineNumber: 192
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
	; LineNumber: 193
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
	; LineNumber: 206
	
; // uncomment next 4 lines for tile demo_LogicalRowSize
; // mega65::SetRowSize();
; // palettes::InitPalette();			
; // for chars(demoRRB) the palette doesnt fit, as the first 16 colors a grey shades
; // initTiles();
; // demoDrawTiles();
; // RRB Demo
; //	demoRRB();
; // Keyboard Demo - input 
	lda #$28
	; Calling storevariable on generic assign expression
	sta mega65_newRowSize
	jsr mega65_SetRowSize
	; LineNumber: 207
	jsr testKeyboard
	; LineNumber: 208
main_block_end_:
	; End of program
	; Ending memory block at $2001
	; Ending memory block at $2001
EndBlock2001:

