
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
	; LineNumber: 59
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
palettes_p	= $02
	; LineNumber: 7
palettes_redvalues:	.byte $00, $011, $022, $033, $044, $055, $066, $077
	.byte $088, $099, $0aa, $0bb, $0cc, $0dd, $0ee, $0ff
	.byte $00, $0f3, $00, $0fb, $018, $00, $0f3, $00
	.byte $0f, $0f7, $0fb, $05f, $0df, $0ff, $0ff, $0ff
	.byte $0fb, $0f7, $055, $0f7, $0fb, $0ff, $0ff, $0ff
	.byte $0ff, $0fb, $0f7, $00, $0f3, $00, $0fa, $00
	.byte $00, $0b4, $0cb, $0bc, $06a, $0e7, $0e6, $0e7
	.byte $0a, $0c, $0d, $01e, $0be, $05f, $06f, $05f
	.byte $0f7, $075, $037, $0e8, $0ba, $07c, $03e, $08f
	.byte $03e, $04c, $0f8, $037, $0b3, $014, $037, $0f8
	.byte $02a, $05b, $07c, $0ad, $0de, $07c, $0ba, $0e8
	.byte $037, $085, $064, $091, $032, $0b3, $05, $0b3
	.byte $075, $037, $046, $0f8, $02a, $01e, $04b, $0ba
	.byte $078, $05, $0f, $0e1, $032, $0b3, $046, $0f8
	.byte $0ba, $07c, $0eb, $0ba, $08a, $0f8, $075, $075
	.byte $0b3, $0f, $0f1, $0b3, $094, $075, $037, $067
	.byte $0f8, $0ba, $0d, $03e, $0ba, $0f8, $037, $075
	.byte $0c3, $064, $027, $0f8, $0ba, $0ba, $0be, $0ff
	.byte $03e, $01e, $07d, $07c, $08c, $03c, $0b4, $023
	.byte $082, $04, $026, $05a, $0ad, $05d, $0ff, $05f
	.byte $0ff, $06f, $0ff, $07d, $0ad, $04b, $0a, $0f5
	.byte $035, $026, $0c8, $0ca, $01b, $06e, $0ff, $0ff
	.byte $08c, $0b9, $069, $037, $0a6, $0c3, $082, $02
	.byte $0c, $041, $0a, $041, $0d7, $0b4, $00, $05
	.byte $0c1, $021, $021, $06, $00, $0d2, $0c3, $0a6
	.byte $019, $055, $0d7, $08, $01, $05, $061, $0f
	.byte $00, $023, $00, $081, $032, $096, $0a4, $09
	.byte $0a5, $0eb, $087, $0a4, $026, $0c3, $01, $00
	.byte $032, $0c, $05, $06, $078, $0c9, $0db, $09b
	.byte $07d, $07d, $08f, $06e, $0ff, $0ad, $0db, $0db
	.byte $0c8, $0a5, $046, $014, $023, $055, $0a, $08c
	.byte $0ff, $0ff, $0af, $0cf, $06e, $0db, $089, $019
	; LineNumber: 9
palettes_greenvalues:	.byte $00, $011, $022, $033, $044, $055, $066, $077
	.byte $088, $099, $0aa, $0bb, $0cc, $0dd, $0ee, $0ff
	.byte $0f7, $0fb, $0ff, $0ff, $018, $00, $0f3, $00
	.byte $0f, $00, $0f3, $00, $018, $0c, $018, $00
	.byte $0f3, $00, $041, $0f3, $0f7, $0f7, $0fb, $0ff
	.byte $0ff, $0fb, $0f7, $0f7, $0fb, $0ff, $0ff, $0fb
	.byte $0f7, $0d7, $0fa, $0aa, $0a, $049, $028, $0e6
	.byte $096, $087, $0a8, $0b9, $0aa, $09b, $08c, $01e
	.byte $00, $0b3, $014, $055, $037, $0f8, $0ba, $02d
	.byte $07c, $0e9, $037, $075, $0d2, $014, $037, $0f8
	.byte $02a, $05b, $07c, $0ad, $0de, $03e, $07c, $0eb
	.byte $0f8, $0d7, $05, $0e1, $05, $075, $046, $037
	.byte $0f8, $0ba, $0c, $07c, $08d, $08f, $0ee, $03e
	.byte $04b, $0d7, $096, $0d2, $014, $037, $0ba, $07c
	.byte $03e, $01f, $02d, $07c, $09b, $0ba, $0f8, $037
	.byte $075, $091, $0f1, $0b3, $094, $075, $0e6, $067
	.byte $0f8, $0ba, $0ad, $03e, $0f8, $075, $075, $0b3
	.byte $032, $023, $04, $075, $075, $037, $0ca, $0cd
	.byte $07c, $09b, $0a, $0f8, $0d7, $0a5, $082, $061
	.byte $0a, $081, $081, $041, $02, $025, $0c3, $0a5
	.byte $026, $0db, $05a, $0b9, $0e6, $0a5, $0b4, $023
	.byte $05, $026, $08, $049, $01b, $05d, $05d, $0ae
	.byte $0ff, $0f, $0cd, $08c, $08a, $0e6, $043, $064
	.byte $0c5, $069, $07d, $06e, $0ff, $0f, $05c, $04b
	.byte $0c8, $083, $089, $04c, $0ed, $0be, $0ef, $0ff
	.byte $0be, $06e, $07d, $0ed, $0c9, $0a5, $0c2, $073
	.byte $0a4, $046, $025, $0a6, $087, $0d9, $04a, $0b
	.byte $05c, $09b, $0e6, $0a5, $014, $0c3, $0c1, $01
	.byte $01, $012, $01, $01, $023, $014, $026, $019
	.byte $05a, $03c, $06c, $037, $025, $02, $092, $01
	.byte $041, $081, $041, $00, $0a, $091, $091, $00
	.byte $05, $0a6, $0a, $0a3, $0e1, $01, $043, $041
	; LineNumber: 11
palettes_bluevalues:	.byte $00, $011, $022, $033, $044, $055, $066, $077
	.byte $088, $099, $0aa, $0bb, $0cc, $0dd, $0ee, $0ff
	.byte $0f7, $0fb, $0ff, $0ff, $0ff, $0ff, $0fb, $0f7
	.byte $05, $0f7, $0fb, $05f, $0ff, $0bc, $018, $00
	.byte $0f3, $00, $041, $00, $0f3, $00, $018, $0fb
	.byte $00, $0f3, $00, $00, $0f3, $00, $0fa, $0ff
	.byte $0ff, $08c, $0c, $098, $09, $049, $078, $06
	.byte $0f5, $027, $047, $0d7, $0c8, $0b9, $0fa, $02d
	.byte $0ff, $0b3, $0c3, $055, $037, $0f8, $0ba, $0ad
	.byte $0ba, $037, $075, $0b3, $0f1, $032, $0b3, $075
	.byte $055, $027, $0f8, $0ba, $07c, $0ba, $0f8, $055
	.byte $075, $0e3, $023, $0f, $073, $0b3, $05, $094
	.byte $075, $037, $028, $0f8, $02a, $0af, $0ac, $05c
	.byte $0e8, $0f5, $064, $032, $064, $037, $0ba, $07c
	.byte $03e, $01f, $0f, $03e, $0cd, $07c, $07c, $0f8
	.byte $037, $0d2, $0b3, $075, $037, $0f8, $0aa, $0ac
	.byte $07c, $03e, $08f, $0ff, $07c, $07c, $0f8, $037
	.byte $0c3, $064, $027, $0f8, $0ba, $0ba, $01e, $05f
	.byte $03e, $02d, $0eb, $09b, $0a, $019, $073, $032
	.byte $0e1, $011, $00, $0a, $01, $0a4, $0a, $023
	.byte $026, $013, $0c3, $0f, $0a, $00, $05, $041
	.byte $0a, $00, $0a5, $00, $0a, $0a5, $01, $0a4
	.byte $014, $064, $091, $05, $05, $041, $05, $08
	.byte $0c, $05, $0a, $0a, $037, $0a5, $041, $05
	.byte $0e4, $023, $08, $019, $0a6, $08a, $05a, $0dc
	.byte $0ff, $0ff, $0f, $05d, $0ed, $0c5, $025, $0d7
	.byte $0c9, $069, $06f, $0db, $0cd, $03c, $0ff, $0ff
	.byte $0ff, $0af, $0f, $0ff, $06f, $05f, $0ad, $0db
	.byte $049, $084, $0b, $0d, $02d, $0ff, $0ff, $0ff
	.byte $0ff, $0af, $0cf, $0ff, $0ff, $0e, $0ff, $05c
	.byte $0eb, $0b7, $046, $026, $064, $073, $028, $087
	.byte $0fb, $05c, $09b, $0c8, $087, $093, $0d4, $073
	; LineNumber: 7
blah:	.byte	$01
	; LineNumber: 10
varPrefixed_x:	.word	0
	; LineNumber: 11
addr:	.word	0
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
	; LineNumber: 17
mega65_setFCM:
	; LineNumber: 18
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
		
	
	; LineNumber: 68
	rts
end_procedure_mega65_setFCM:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_relocateScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 72
	; LineNumber: 71
mega65_p	= $04
	; LineNumber: 70
mega65_b:	.byte	0
	; LineNumber: 70
mega65_addr:	.word	0
mega65_relocateScreen_block11:
mega65_relocateScreen:
	; LineNumber: 73
	lda mega65_b
	; Calling storevariable on generic assign expression
	sta mega65_screenB
	; LineNumber: 74
	; integer assignment NodeVar
	ldy mega65_addr+1 ; keep
	lda mega65_addr
	; Calling storevariable on generic assign expression
	sta mega65_screenaddr
	sty mega65_screenaddr+1
	; LineNumber: 75
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
	; LineNumber: 76
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
	; LineNumber: 77
	; Poke
	; Optimization: shift is zero
	lda mega65_b
	sta $d062
	; LineNumber: 78
	rts
end_procedure_mega65_relocateScreen:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_SetRowSize
	;    Procedure type : User-defined procedure
	; LineNumber: 81
mega65_SetRowSize:
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
	
; // Aurora Palette
	; NodeProcedureDecl -1
	; ***********  Defining procedure : palettes_InitPalette
	;    Procedure type : User-defined procedure
	; LineNumber: 17
	; LineNumber: 15
palettes_i:	.byte	0
palettes_InitPalette_block17:
palettes_InitPalette:
	; LineNumber: 27
	lda #$0
	; Calling storevariable on generic assign expression
	sta palettes_i
palettes_InitPalette_forloop18:
	; LineNumber: 19
	; LineNumber: 20
	; Generic 16 bit op
	ldy #0
	lda palettes_i
palettes_InitPalette_rightvarInteger_var36 = $54
	sta palettes_InitPalette_rightvarInteger_var36
	sty palettes_InitPalette_rightvarInteger_var36+1
	; Integer constant assigning
	ldy #$d1
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var36
palettes_InitPalette_wordAdd34:
	sta palettes_InitPalette_rightvarInteger_var36
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var36+1
	tay
	lda palettes_InitPalette_rightvarInteger_var36
	sta palettes_p
	sty palettes_p+1
	; LineNumber: 21
	; Load Byte array
	ldx palettes_i
	lda palettes_redvalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 22
	; Generic 16 bit op
	ldy #0
	lda palettes_i
palettes_InitPalette_rightvarInteger_var39 = $54
	sta palettes_InitPalette_rightvarInteger_var39
	sty palettes_InitPalette_rightvarInteger_var39+1
	; Integer constant assigning
	ldy #$d2
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var39
palettes_InitPalette_wordAdd37:
	sta palettes_InitPalette_rightvarInteger_var39
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var39+1
	tay
	lda palettes_InitPalette_rightvarInteger_var39
	sta palettes_p
	sty palettes_p+1
	; LineNumber: 23
	; Load Byte array
	ldx palettes_i
	lda palettes_greenvalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 24
	; Generic 16 bit op
	ldy #0
	lda palettes_i
palettes_InitPalette_rightvarInteger_var42 = $54
	sta palettes_InitPalette_rightvarInteger_var42
	sty palettes_InitPalette_rightvarInteger_var42+1
	; Integer constant assigning
	ldy #$d3
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var42
palettes_InitPalette_wordAdd40:
	sta palettes_InitPalette_rightvarInteger_var42
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var42+1
	tay
	lda palettes_InitPalette_rightvarInteger_var42
	sta palettes_p
	sty palettes_p+1
	; LineNumber: 25
	; Load Byte array
	ldx palettes_i
	lda palettes_bluevalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 26
palettes_InitPalette_forloopcounter20:
palettes_InitPalette_loopstart21:
	; Test Inc dec D
	inc palettes_i
	lda #$ff
	cmp palettes_i ;keep
	beq palettes_InitPalette_loopdone43
palettes_InitPalette_loopnotdone44:
	jmp palettes_InitPalette_forloop18
palettes_InitPalette_loopdone43:
palettes_InitPalette_forloopend19:
palettes_InitPalette_loopend22:
	; LineNumber: 27
	rts
end_procedure_palettes_InitPalette:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : waitKey
	;    Procedure type : User-defined procedure
	; LineNumber: 16
waitKey:
	; LineNumber: 17
	; ****** Inline assembler section
	waitforkey:
		lda $D610
		beq waitforkey
	
	; LineNumber: 22
	rts
end_procedure_waitKey:
	
; // set tiles 2048 to 256 colors 
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initTiles
	;    Procedure type : User-defined procedure
	; LineNumber: 28
	; LineNumber: 26
col:	.byte	0
	; LineNumber: 27
addr1:	.word	0
initTiles_block46:
initTiles:
	; LineNumber: 29
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta addr1
	sty addr1+1
	; LineNumber: 30
	; Calling storevariable on generic assign expression
	sta col
	; LineNumber: 36
	; Calling storevariable on generic assign expression
	sta varPrefixed_x
	sty varPrefixed_x+1
initTiles_forloop47:
	; LineNumber: 32
	; LineNumber: 33
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_db1
	; integer assignment NodeVar
	ldy addr1+1 ; keep
	lda addr1
	; Calling storevariable on generic assign expression
	sta DMA_daddr1
	sty DMA_daddr1+1
	lda col
	; Calling storevariable on generic assign expression
	sta DMA_value1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	; Calling storevariable on generic assign expression
	sta DMA_count2
	sty DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 34
	; Test Inc dec D
	inc col
	; LineNumber: 35
	lda addr1
	clc
	adc #$40
	sta addr1+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd55
	inc addr1+1
initTiles_WordAdd55:
	; LineNumber: 36
initTiles_forloopcounter49:
initTiles_loopstart50:
	; Compare is onpage
	lda varPrefixed_x
	clc
	adc #$01
	sta varPrefixed_x+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd57
	inc varPrefixed_x+1
initTiles_WordAdd57:
	; Executing integer comparison #$ff
	; Binary clause INTEGER: NOTEQUALS
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda varPrefixed_x+1   ; compare high bytes
	cmp #$00 ;keep
	beq initTiles_pass163
	jmp initTiles_ConditionalTrueBlock59
initTiles_pass163:
	lda varPrefixed_x
	cmp #$ff ;keep
	beq initTiles_elsedoneblock61
	jmp initTiles_ConditionalTrueBlock59
initTiles_ConditionalTrueBlock59: ;Main true block ;keep:
	; LineNumber: 30
	; LineNumber: 31
	; ****** Inline assembler section
  jmp initTiles_forloop47
initTiles_elsedoneblock61:
initTiles_loopdone56: ;keep:
initTiles_forloopend48:
initTiles_loopend51:
	; LineNumber: 37
	rts
end_procedure_initTiles:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : demoDrawTiles
	;    Procedure type : User-defined procedure
	; LineNumber: 42
	; LineNumber: 40
t:	.word	0
	; LineNumber: 41
x1:	.byte	0
	; LineNumber: 41
y1:	.byte	0
demoDrawTiles_block65:
demoDrawTiles:
	; LineNumber: 43
	; Integer constant assigning
	ldy #$08
	lda #$00
	; Calling storevariable on generic assign expression
	sta t
	sty t+1
	; LineNumber: 57
	lda #$0
	; Calling storevariable on generic assign expression
	sta y1
demoDrawTiles_forloop66:
	; LineNumber: 45
	; LineNumber: 56
	lda #$0
	; Calling storevariable on generic assign expression
	sta x1
demoDrawTiles_forloop110:
	; LineNumber: 47
	; LineNumber: 49
	; Generic 16 bit op
	ldy #0
	; Mul 16x8 setup
	lda y1
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy mega65_LogicalRowSize+1
	lda mega65_LogicalRowSize
	sta mul16x8_num2
	jsr mul16x8_procedure
demoDrawTiles_rightvarInteger_var133 = $54
	sta demoDrawTiles_rightvarInteger_var133
	sty demoDrawTiles_rightvarInteger_var133+1
	; Generic 16 bit op
	ldy #0
	lda #$0
demoDrawTiles_rightvarInteger_var136 = $56
	sta demoDrawTiles_rightvarInteger_var136
	sty demoDrawTiles_rightvarInteger_var136+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda x1
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$2
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc demoDrawTiles_rightvarInteger_var136
demoDrawTiles_wordAdd134:
	sta demoDrawTiles_rightvarInteger_var136
	; High-bit binop
	tya
	adc demoDrawTiles_rightvarInteger_var136+1
	tay
	lda demoDrawTiles_rightvarInteger_var136
	; Low bit binop:
	clc
	adc demoDrawTiles_rightvarInteger_var133
demoDrawTiles_wordAdd131:
	sta demoDrawTiles_rightvarInteger_var133
	; High-bit binop
	tya
	adc demoDrawTiles_rightvarInteger_var133+1
	tay
	lda demoDrawTiles_rightvarInteger_var133
	; Calling storevariable on generic assign expression
	sta addr
	sty addr+1
	; LineNumber: 50
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; integer assignment NodeVar
	ldy addr+1 ; keep
	lda addr
	; Calling storevariable on generic assign expression
	sta DMA_addr1
	sty DMA_addr1+1
	; integer assignment NodeVar
	ldy t+1 ; keep
	lda t
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 51
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; INTEGER optimization: a=b+c 
	lda addr
	clc
	adc #$01
	sta DMA_addr1+0
	lda addr+1
	adc #$00
	sta DMA_addr1+1
	; integer assignment NodeVar
	ldy t+1 ; keep
	lda t
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 52
	lda t
	clc
	adc #$01
	sta t+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc demoDrawTiles_WordAdd138
	inc t+1
demoDrawTiles_WordAdd138:
	; LineNumber: 53
	; Binary clause INTEGER: GREATER
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda t+1   ; compare high bytes
	cmp #$08 ;keep
	bcc demoDrawTiles_elsedoneblock142
	bne demoDrawTiles_ConditionalTrueBlock140
	lda t
	cmp #$ff ;keep
	bcc demoDrawTiles_elsedoneblock142
	beq demoDrawTiles_elsedoneblock142
demoDrawTiles_ConditionalTrueBlock140: ;Main true block ;keep:
	; LineNumber: 53
	; Integer constant assigning
	ldy #$08
	lda #$00
	; Calling storevariable on generic assign expression
	sta t
	sty t+1
demoDrawTiles_elsedoneblock142:
	; LineNumber: 55
demoDrawTiles_forloopcounter112:
demoDrawTiles_loopstart113:
	; Test Inc dec D
	inc x1
	lda #$27
	cmp x1 ;keep
	beq demoDrawTiles_loopdone145
demoDrawTiles_loopnotdone146:
	jmp demoDrawTiles_forloop110
demoDrawTiles_loopdone145:
demoDrawTiles_forloopend111:
demoDrawTiles_loopend114:
	; LineNumber: 56
demoDrawTiles_forloopcounter68:
demoDrawTiles_loopstart69:
	; Test Inc dec D
	inc y1
	lda #$18
	cmp y1 ;keep
	beq demoDrawTiles_loopdone147
demoDrawTiles_loopnotdone148:
	jmp demoDrawTiles_forloop66
demoDrawTiles_loopdone147:
demoDrawTiles_forloopend67:
demoDrawTiles_loopend70:
	; LineNumber: 57
	rts
end_procedure_demoDrawTiles:
block1:
main_block_begin_:
	; LineNumber: 60
	jsr mega65_setFCM
	; LineNumber: 61
	lda #$5
	; Calling storevariable on generic assign expression
	sta mega65_b
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta mega65_addr
	sty mega65_addr+1
	jsr mega65_relocateScreen
	; LineNumber: 62
	jsr mega65_SetRowSize
	; LineNumber: 63
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
	; LineNumber: 64
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
	ldy #$07
	lda #$d0
	; Calling storevariable on generic assign expression
	sta DMA_count2
	sty DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 65
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
	; LineNumber: 67
	jsr palettes_InitPalette
	; LineNumber: 68
	jsr initTiles
	; LineNumber: 71
	jsr demoDrawTiles
	; LineNumber: 74
	jsr waitKey
	; LineNumber: 76
MainProgram_while149:
MainProgram_loopstart153:
	; Binary clause Simplified: EQUALS
	lda blah
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elsedoneblock152
MainProgram_ConditionalTrueBlock150: ;Main true block ;keep:
	; LineNumber: 77
	; LineNumber: 78
	jmp MainProgram_while149
MainProgram_elsedoneblock152:
MainProgram_loopend154:
	; LineNumber: 79
main_block_end_:
	; End of program
	; Ending memory block at $2001
	; Ending memory block at $2001
EndBlock2001:

