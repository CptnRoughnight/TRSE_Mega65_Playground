
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
DMA:
	; LineNumber: 147
	jmp block1
	; LineNumber: 3
DMA_p	= $02
	; LineNumber: 23
DMA_dmalist:	.res	20,0
	
; // Index constants for dmalist
; // 16 bit
; // 16 bit
; // 16 bit
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
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_do_dma
	;    Procedure type : User-defined procedure
	; LineNumber: 37
DMA_do_dma:
	; LineNumber: 38
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $d702
	; LineNumber: 39
	; Poke
	; Optimization: shift is zero
	sta $d704
	; LineNumber: 40
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	sta $d701
	; LineNumber: 41
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	sta $d705
	; LineNumber: 42
	rts
end_procedure_DMA_do_dma:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lpeek
	;    Procedure type : User-defined procedure
	; LineNumber: 46
	; LineNumber: 45
DMA_dma_byte:	.byte	0
	; LineNumber: 44
DMA_mb:	.byte	0
	; LineNumber: 44
DMA_b:	.byte	0
	; LineNumber: 44
DMA_addr:	.word	0
DMA_lpeek_block7:
DMA_lpeek:
	; LineNumber: 47
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 48
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 49
	lda DMA_mb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 50
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 51
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
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
	; LineNumber: 57
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 58
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 59
	; integer assignment NodeVar
	ldy DMA_addr+1 ; keep
	lda DMA_addr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 60
	; integer assignment NodeVar
	ldy DMA_addr+1 ; keep
	lda DMA_addr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 61
	lda DMA_b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 62
	lda #<DMA_dma_byte
	ldy #>DMA_dma_byte
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 63
	lda #<DMA_dma_byte
	ldy #>DMA_dma_byte
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 64
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 66
	jsr DMA_do_dma
	; LineNumber: 69
	; LineNumber: 69
	lda DMA_dma_byte
	rts
end_procedure_DMA_lpeek:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lpoke
	;    Procedure type : User-defined procedure
	; LineNumber: 73
	; LineNumber: 72
DMA_dma_byte1:	.byte	0
	; LineNumber: 71
DMA_mb1:	.byte	0
	; LineNumber: 71
DMA_b1:	.byte	0
	; LineNumber: 71
DMA_addr1:	.word	0
	; LineNumber: 71
DMA_value:	.byte	0
DMA_lpoke_block8:
DMA_lpoke:
	; LineNumber: 74
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 75
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 76
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 77
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 78
	lda DMA_mb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 79
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 80
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 81
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 82
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 84
	lda DMA_value
	; Calling storevariable on generic assign expression
	sta DMA_dma_byte
	; LineNumber: 85
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 86
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 87
	lda #<DMA_dma_byte1
	ldy #>DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 88
	lda #<DMA_dma_byte1
	ldy #>DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 90
	; integer assignment NodeVar
	ldy DMA_addr1+1 ; keep
	lda DMA_addr1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 91
	; integer assignment NodeVar
	ldy DMA_addr1+1 ; keep
	lda DMA_addr1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 92
	lda DMA_b1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 94
	jsr DMA_do_dma
	; LineNumber: 95
	rts
end_procedure_DMA_lpoke:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lcopy
	;    Procedure type : User-defined procedure
	; LineNumber: 98
	; LineNumber: 97
DMA_smb:	.byte	0
	; LineNumber: 97
DMA_sb:	.byte	0
	; LineNumber: 97
DMA_saddr:	.word	0
	; LineNumber: 97
DMA_dmb:	.byte	0
	; LineNumber: 97
DMA_db:	.byte	0
	; LineNumber: 97
DMA_daddr:	.word	0
	; LineNumber: 97
DMA_count1:	.word	0
DMA_lcopy_block9:
DMA_lcopy:
	; LineNumber: 99
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 100
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 101
	lda DMA_smb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 102
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 103
	lda DMA_dmb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 104
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 105
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 106
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 107
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 109
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 110
	; integer assignment NodeVar
	ldy DMA_count1+1 ; keep
	lda DMA_count1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 111
	; integer assignment NodeVar
	ldy DMA_count1+1 ; keep
	lda DMA_count1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 112
	; integer assignment NodeVar
	ldy DMA_saddr+1 ; keep
	lda DMA_saddr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 113
	; integer assignment NodeVar
	ldy DMA_saddr+1 ; keep
	lda DMA_saddr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 114
	; integer assignment NodeVar
	ldy DMA_daddr+1 ; keep
	lda DMA_daddr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 115
	; integer assignment NodeVar
	ldy DMA_daddr+1 ; keep
	lda DMA_daddr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 116
	lda DMA_db
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 118
	jsr DMA_do_dma
	; LineNumber: 119
	rts
end_procedure_DMA_lcopy:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lfill
	;    Procedure type : User-defined procedure
	; LineNumber: 122
	; LineNumber: 121
DMA_dmb1:	.byte	0
	; LineNumber: 121
DMA_db1:	.byte	0
	; LineNumber: 121
DMA_daddr1:	.word	0
	; LineNumber: 121
DMA_value1:	.byte	0
	; LineNumber: 121
DMA_count2:	.word	0
DMA_lfill_block10:
DMA_lfill:
	; LineNumber: 123
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 124
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 125
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 126
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 127
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 128
	lda DMA_dmb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 130
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 131
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 132
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 133
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 135
	lda #$3
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 136
	; integer assignment NodeVar
	ldy DMA_count2+1 ; keep
	lda DMA_count2
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 137
	; integer assignment NodeVar
	ldy DMA_count2+1 ; keep
	lda DMA_count2
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 138
	lda DMA_value1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 139
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 140
	; integer assignment NodeVar
	ldy DMA_daddr1+1 ; keep
	lda DMA_daddr1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 141
	; integer assignment NodeVar
	ldy DMA_daddr1+1 ; keep
	lda DMA_daddr1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 142
	lda DMA_db1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 144
	jsr DMA_do_dma
	; LineNumber: 145
	rts
end_procedure_DMA_lfill:
block1:
main_block_begin_:
main_block_end_:
	; End of program
	; Ending memory block at $2001
	; Ending memory block at $2001
EndBlock2001:

