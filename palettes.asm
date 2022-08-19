
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
palettes:
	; LineNumber: 31
	jmp block1
	; LineNumber: 3
DMA_p	= $02
	; LineNumber: 23
DMA_dmalist:	.res	20,0
	; LineNumber: 5
palettes_p	= $04
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
DMA_hiByte_block2:
DMA_hiByte:
	; LineNumber: 29
	; LineNumber: 29
	; integer assignment NodeVar
	ldy DMA_val1+1 ; keep
	lda DMA_val1
DMA_hiByte_tempVarShift_var3 = $54
	sta DMA_hiByte_tempVarShift_var3
	sty DMA_hiByte_tempVarShift_var3+1
	; COUNT : 8
		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

		lsr DMA_hiByte_tempVarShift_var3+1 ;keep
	ror DMA_hiByte_tempVarShift_var3+0 ;keep

	lda DMA_hiByte_tempVarShift_var3
	ldy DMA_hiByte_tempVarShift_var3+1
	rts
end_procedure_DMA_hiByte:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_loByte
	;    Procedure type : User-defined procedure
	; LineNumber: 32
	; LineNumber: 31
DMA_val2:	.word	0
DMA_loByte_block4:
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
	
; // peeks a value at address [mb][b][addr]
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lpeek
	;    Procedure type : User-defined procedure
	; LineNumber: 48
	; LineNumber: 47
DMA_dma_byte:	.byte	0
	; LineNumber: 46
DMA_mb:	.byte	0
	; LineNumber: 46
DMA_b:	.byte	0
	; LineNumber: 46
DMA_addr:	.word	0
DMA_lpeek_block7:
DMA_lpeek:
	; LineNumber: 49
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 50
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 51
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 52
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 53
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 54
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 55
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 56
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 58
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 59
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 61
	lda DMA_mb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 62
	lda DMA_b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 63
	; integer assignment NodeVar
	ldy DMA_addr+1 ; keep
	lda DMA_addr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 64
	; integer assignment NodeVar
	ldy DMA_addr+1 ; keep
	lda DMA_addr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 67
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 68
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 69
	lda #<DMA_dma_byte
	ldy #>DMA_dma_byte
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 70
	lda #<DMA_dma_byte
	ldy #>DMA_dma_byte
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 72
	jsr DMA_do_dma
	; LineNumber: 75
	; LineNumber: 75
	lda DMA_dma_byte
	rts
end_procedure_DMA_lpeek:
	
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
	
; // copy count1 bytes from [smb][sb][saddr] to [dmb][db][daddr]
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lcopy
	;    Procedure type : User-defined procedure
	; LineNumber: 113
	; LineNumber: 112
DMA_smb:	.byte	0
	; LineNumber: 112
DMA_sb:	.byte	0
	; LineNumber: 112
DMA_saddr:	.word	0
	; LineNumber: 112
DMA_dmb:	.byte	0
	; LineNumber: 112
DMA_db:	.byte	0
	; LineNumber: 112
DMA_daddr:	.word	0
	; LineNumber: 112
DMA_count1:	.word	0
DMA_lcopy_block9:
DMA_lcopy:
	; LineNumber: 114
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 115
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 116
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 117
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 118
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 119
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 120
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 121
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 123
	; integer assignment NodeVar
	ldy DMA_count1+1 ; keep
	lda DMA_count1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 124
	; integer assignment NodeVar
	ldy DMA_count1+1 ; keep
	lda DMA_count1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 126
	lda DMA_smb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 127
	lda DMA_sb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 128
	; integer assignment NodeVar
	ldy DMA_saddr+1 ; keep
	lda DMA_saddr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 129
	; integer assignment NodeVar
	ldy DMA_saddr+1 ; keep
	lda DMA_saddr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 131
	lda DMA_dmb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 132
	lda DMA_db
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 133
	; integer assignment NodeVar
	ldy DMA_daddr+1 ; keep
	lda DMA_daddr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 134
	; integer assignment NodeVar
	ldy DMA_daddr+1 ; keep
	lda DMA_daddr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 136
	jsr DMA_do_dma
	; LineNumber: 137
	rts
end_procedure_DMA_lcopy:
	
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
DMA_lfill_block10:
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
	
; // Aurora Palette
	; NodeProcedureDecl -1
	; ***********  Defining procedure : palettes_InitPalette
	;    Procedure type : User-defined procedure
	; LineNumber: 17
	; LineNumber: 15
palettes_i:	.byte	0
palettes_InitPalette_block11:
palettes_InitPalette:
	; LineNumber: 30
	lda #$0
	; Calling storevariable on generic assign expression
	sta palettes_i
palettes_InitPalette_forloop12:
	; LineNumber: 19
	; LineNumber: 20
	; Generic 16 bit op
	ldy #0
	lda palettes_i
palettes_InitPalette_rightvarInteger_var33 = $54
	sta palettes_InitPalette_rightvarInteger_var33
	sty palettes_InitPalette_rightvarInteger_var33+1
	; Integer constant assigning
	ldy #$d1
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var33
palettes_InitPalette_wordAdd31:
	sta palettes_InitPalette_rightvarInteger_var33
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var33+1
	tay
	lda palettes_InitPalette_rightvarInteger_var33
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
	; LineNumber: 23
	
; //		DMA::lpoke($00,$00,$D100+i,redvalues[i]);
	; Generic 16 bit op
	ldy #0
	lda palettes_i
palettes_InitPalette_rightvarInteger_var36 = $54
	sta palettes_InitPalette_rightvarInteger_var36
	sty palettes_InitPalette_rightvarInteger_var36+1
	; Integer constant assigning
	ldy #$d2
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
	; LineNumber: 24
	; Load Byte array
	ldx palettes_i
	lda palettes_greenvalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 26
	
; //		DMA::lpoke($00,$00,$D200+i,greenvalues[i]);
	; Generic 16 bit op
	ldy #0
	lda palettes_i
palettes_InitPalette_rightvarInteger_var39 = $54
	sta palettes_InitPalette_rightvarInteger_var39
	sty palettes_InitPalette_rightvarInteger_var39+1
	; Integer constant assigning
	ldy #$d3
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
	; LineNumber: 27
	; Load Byte array
	ldx palettes_i
	lda palettes_bluevalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 28
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	; Calling storevariable on generic assign expression
	sta DMA_b1
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
	; Calling storevariable on generic assign expression
	sta DMA_addr1
	sty DMA_addr1+1
	; Load Byte array
	ldx palettes_i
	lda palettes_bluevalues,x
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 29
palettes_InitPalette_forloopcounter14:
palettes_InitPalette_loopstart15:
	; Test Inc dec D
	inc palettes_i
	lda #$ff
	cmp palettes_i ;keep
	beq palettes_InitPalette_loopdone43
palettes_InitPalette_loopnotdone44:
	jmp palettes_InitPalette_forloop12
palettes_InitPalette_loopdone43:
palettes_InitPalette_forloopend13:
palettes_InitPalette_loopend16:
	; LineNumber: 30
	rts
end_procedure_palettes_InitPalette:
block1:
main_block_begin_:
main_block_end_:
	; End of program
	; Ending memory block at $2001
	; Ending memory block at $2001
EndBlock2001:

