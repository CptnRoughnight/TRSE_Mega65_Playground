
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
	; LineNumber: 276
	jmp block1
	; LineNumber: 5
Memory_zpLo	= $90
	; LineNumber: 6
Memory_zpHi	= $92
	; LineNumber: 7
Memory_pa:	.byte	0
	; LineNumber: 7
Memory_pb:	.byte	0
	; LineNumber: 24
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
	; LineNumber: 10
RRB_spriteData:	.res	62,0
	; LineNumber: 11
RRB_spriteBank:	.res	31,0
	; LineNumber: 12
RRB_spriteTile:	.res	62,0
	; LineNumber: 13
RRB_spriteX:	.res	62,0
	; LineNumber: 14
RRB_spriteY:	.res	62,0
	; LineNumber: 15
RRB_rLogSprRow:	.res	62,0
	; LineNumber: 16
RRB_spriteLastRow:	.res	31,0
	; LineNumber: 17
RRB_lastSprite:	.byte	$00
	; LineNumber: 18
RRB_addr:	.word	0
	; LineNumber: 20
RRB_tileLayerAddr:	.word	0
	; LineNumber: 21
RRB_tileLayerBank:	.byte	0
	; LineNumber: 22
RRB_tileLayerWidth:	.word	0
	; LineNumber: 23
RRB_tileLayerBase:	.word	0
	; LineNumber: 26
RRB_screenMap = $3000
	; LineNumber: 15
blah:	.byte	$01
	; LineNumber: 18
varPrefixed_x:	.word	0
	; LineNumber: 19
addr:	.word	0
	; LineNumber: 24
sprites:	.res	64,0
	; LineNumber: 27
tile1:	.byte $069, $069, $06a, $069, $069, $069, $069, $06a
	.byte $069, $069, $069, $069, $069, $06a, $069, $069
	.byte $04a, $04a, $04a, $069, $069, $069, $069, $04a
	.byte $04b, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04a, $04a, $04b, $04a, $04a, $04a, $04a
	.byte $04a, $04b, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	; LineNumber: 29
tile2:	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04b, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04b, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04b, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	; LineNumber: 31
tile3:	.byte $06, $06, $07, $07, $07, $07, $06, $06
	.byte $06, $07, $09, $09, $09, $09, $07, $06
	.byte $07, $09, $09, $09, $09, $05, $05, $07
	.byte $07, $09, $09, $09, $05, $05, $05, $07
	.byte $07, $09, $09, $05, $05, $05, $05, $07
	.byte $07, $09, $09, $05, $05, $05, $05, $07
	.byte $06, $07, $05, $05, $05, $05, $07, $06
	.byte $06, $06, $07, $07, $07, $07, $06, $06
	; LineNumber: 34
sprite:	.byte $00, $00, $00, $071, $071, $00, $00, $00
	.byte $00, $00, $071, $0c8, $0c8, $071, $00, $00
	.byte $00, $00, $071, $0c8, $0c8, $071, $00, $00
	.byte $00, $00, $00, $071, $071, $00, $00, $00
	.byte $0e8, $00, $0e8, $0d4, $0d4, $0e8, $00, $0e8
	.byte $00, $0e8, $0d6, $0d4, $0d4, $0d5, $0e8, $00
	.byte $00, $0e8, $0d6, $0d4, $0d4, $0d5, $0e8, $00
	.byte $00, $00, $0e8, $0e8, $0e8, $0e8, $00, $00
	; LineNumber: 38
tilemap:	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $01, $01, $01, $01, $01, $01, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $01
	.byte $01, $02, $02, $02, $02, $02, $02, $01
	.byte $01, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $02
	.byte $02, $02, $00, $00, $02, $02, $02, $02
	.byte $02, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $01, $01
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $01, $02, $02
	.byte $01, $01, $01, $01, $01, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $03, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $01, $01, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $01, $01, $01
	.byte $01, $00, $00, $00, $00, $00, $00, $03
	.byte $03, $03, $03, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $01, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $01, $01, $01, $00, $00, $03, $03
	.byte $03, $03, $03, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $01, $01, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $01, $01, $01, $01
	.byte $01, $01, $01, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $01
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $01, $01, $01, $01, $01
	.byte $01, $00, $00, $00, $01, $01, $01, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $01, $01, $01, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $03, $03, $03, $03, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $03, $03, $03, $03, $03, $03
	.byte $03, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $03, $03, $03, $03
	.byte $03, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $03, $03, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $03, $03, $03, $03
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $03
	.byte $03, $03, $03, $03, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $03, $03
	.byte $03, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $03, $03, $03, $03, $03
	.byte $03, $03, $03, $03, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $03
	.byte $03, $03, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $03, $03, $03, $02, $02, $02, $03
	.byte $03, $03, $03, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $03, $03, $03, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $03, $03, $03, $03, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	; LineNumber: 273
sprCount:	.byte	0
	; LineNumber: 274
k:	.byte	0
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
initdiv16x8_divisor = $4c     ;$59 used for hi-byte
initdiv16x8_dividend = $4e	  ;$fc used for hi-byte
initdiv16x8_remainder = $50	  ;$fe used for hi-byte
initdiv16x8_result = $4e ;save memory by reusing divident to store the result
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
mul16x8_num1Hi = $4c
mul16x8_num1 = $4e
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
div8x8_c = $4c
div8x8_d = $4e
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
multiplier = $4c
multiplier_a = $4e
multiply_eightbit:
	cpx #$00
	beq mul_end
	dex
	stx $4e
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
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Memory_Poke32
	;    Procedure type : User-defined procedure
	; LineNumber: 26
Memory_Poke32_block3:
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
	
; // Index constants for dmalist
; // 16 bit
; // 16 bit
; // 16 bit
; // Helper functions, don't know if TRSE has something build in.. couldnt find it :)
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_hiByte
	;    Procedure type : User-defined procedure
	; LineNumber: 28
	; LineNumber: 27
DMA_val1:	.word	0
DMA_hiByte_block4:
DMA_hiByte:
	; LineNumber: 30
	; LineNumber: 30
	; integer assignment NodeVar
	ldy DMA_val1+1 ; keep
	lda DMA_val1
DMA_hiByte_tempVarShift_var5 = $54
	sta DMA_hiByte_tempVarShift_var5
	sty DMA_hiByte_tempVarShift_var5+1
	; COUNT : 8
		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

		lsr DMA_hiByte_tempVarShift_var5+1 ;keep
	ror DMA_hiByte_tempVarShift_var5+0 ;keep

	lda DMA_hiByte_tempVarShift_var5
	ldy DMA_hiByte_tempVarShift_var5+1
	rts
end_procedure_DMA_hiByte:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_loByte
	;    Procedure type : User-defined procedure
	; LineNumber: 33
	; LineNumber: 32
DMA_val2:	.word	0
DMA_loByte_block6:
DMA_loByte:
	; LineNumber: 35
	; LineNumber: 35
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
	; ***********  Defining procedure : DMA_poke16
	;    Procedure type : User-defined procedure
	; LineNumber: 39
	; LineNumber: 38
DMA_pa:	.word	0
	; LineNumber: 38
DMA_pb:	.word	0
	; LineNumber: 38
DMA_val:	.word	0
DMA_poke16_block8:
DMA_poke16:
	; LineNumber: 43
	
; //     zphi zplo
; //     xxxx xxxx
; // bsp$0FF8 0000	- color ram
	lda DMA_pb
	ldx DMA_pb+1
	sta Memory_zpLo
	stx Memory_zpLo+1
	; LineNumber: 44
	lda DMA_pa
	ldx DMA_pa+1
	sta Memory_zpHi
	stx Memory_zpHi+1
	; LineNumber: 45
	
; // 32 bit addressing through pointers
	lda #$0
	; Calling storevariable on generic assign expression
	sta Memory_pa
	; integer assignment NodeVar
	ldy DMA_val+1 ; keep
	lda DMA_val
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta Memory_pb
	jsr Memory_Poke32
	; LineNumber: 46
	lda #$1
	; Calling storevariable on generic assign expression
	sta Memory_pa
	; integer assignment NodeVar
	ldy DMA_val+1 ; keep
	lda DMA_val
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta Memory_pb
	jsr Memory_Poke32
	; LineNumber: 47
	rts
end_procedure_DMA_poke16:
	
; // Start the DMA process... don't call unless you populatet the dmalist array
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_do_dma
	;    Procedure type : User-defined procedure
	; LineNumber: 52
DMA_do_dma:
	; LineNumber: 53
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $d702
	; LineNumber: 54
	; Poke
	; Optimization: shift is zero
	sta $d704
	; LineNumber: 55
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	sta $d701
	; LineNumber: 56
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	sta $d705
	; LineNumber: 57
	rts
end_procedure_DMA_do_dma:
	
; // peeks a value to address [mb][b][addr]
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lpoke
	;    Procedure type : User-defined procedure
	; LineNumber: 94
	; LineNumber: 93
DMA_dma_byte1:	.byte	0
	; LineNumber: 92
DMA_mb1:	.byte	0
	; LineNumber: 92
DMA_b1:	.byte	0
	; LineNumber: 92
DMA_addr1:	.word	0
	; LineNumber: 92
DMA_value:	.byte	0
DMA_lpoke_block10:
DMA_lpoke:
	; LineNumber: 95
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 96
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 97
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 99
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 100
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 101
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 102
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 105
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 106
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 107
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 109
	lda DMA_value
	; Calling storevariable on generic assign expression
	sta DMA_dma_byte1
	; LineNumber: 111
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 112
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 113
	lda #<DMA_dma_byte1
	ldy #>DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 114
	lda #<DMA_dma_byte1
	ldy #>DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 116
	lda DMA_mb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 117
	lda DMA_b1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 118
	; integer assignment NodeVar
	ldy DMA_addr1+1 ; keep
	lda DMA_addr1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 119
	; integer assignment NodeVar
	ldy DMA_addr1+1 ; keep
	lda DMA_addr1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 122
	jsr DMA_do_dma
	; LineNumber: 123
	rts
end_procedure_DMA_lpoke:
	
; // copy count1 bytes from [smb][sb][saddr] to [dmb][db][daddr]
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lcopy
	;    Procedure type : User-defined procedure
	; LineNumber: 127
	; LineNumber: 126
DMA_smb:	.byte	0
	; LineNumber: 126
DMA_sb:	.byte	0
	; LineNumber: 126
DMA_saddr:	.word	0
	; LineNumber: 126
DMA_dmb:	.byte	0
	; LineNumber: 126
DMA_db:	.byte	0
	; LineNumber: 126
DMA_daddr:	.word	0
	; LineNumber: 126
DMA_count1:	.word	0
DMA_lcopy_block11:
DMA_lcopy:
	; LineNumber: 128
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 129
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 130
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 131
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 132
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 133
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 134
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 135
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 137
	; integer assignment NodeVar
	ldy DMA_count1+1 ; keep
	lda DMA_count1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 138
	; integer assignment NodeVar
	ldy DMA_count1+1 ; keep
	lda DMA_count1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 140
	lda DMA_smb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 141
	lda DMA_sb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 142
	; integer assignment NodeVar
	ldy DMA_saddr+1 ; keep
	lda DMA_saddr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 143
	; integer assignment NodeVar
	ldy DMA_saddr+1 ; keep
	lda DMA_saddr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 145
	lda DMA_dmb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 146
	lda DMA_db
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 147
	; integer assignment NodeVar
	ldy DMA_daddr+1 ; keep
	lda DMA_daddr
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 148
	; integer assignment NodeVar
	ldy DMA_daddr+1 ; keep
	lda DMA_daddr
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 150
	jsr DMA_do_dma
	; LineNumber: 151
	rts
end_procedure_DMA_lcopy:
	
; // fill count2 bytes at address [dmb1][db1][daddr1]
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lfill
	;    Procedure type : User-defined procedure
	; LineNumber: 155
	; LineNumber: 154
DMA_dmb1:	.byte	0
	; LineNumber: 154
DMA_db1:	.byte	0
	; LineNumber: 154
DMA_daddr1:	.word	0
	; LineNumber: 154
DMA_value1:	.byte	0
	; LineNumber: 154
DMA_count2:	.word	0
DMA_lfill_block12:
DMA_lfill:
	; LineNumber: 156
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 157
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 158
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 159
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 160
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 161
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 162
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 163
	lda #$3
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 165
	; integer assignment NodeVar
	ldy DMA_count2+1 ; keep
	lda DMA_count2
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 166
	; integer assignment NodeVar
	ldy DMA_count2+1 ; keep
	lda DMA_count2
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 168
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 169
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 170
	lda DMA_value1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 171
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 173
	lda DMA_dmb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 174
	lda DMA_db1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 175
	; integer assignment NodeVar
	ldy DMA_daddr1+1 ; keep
	lda DMA_daddr1
	; Calling storevariable on generic assign expression
	sta DMA_val2
	sty DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 176
	; integer assignment NodeVar
	ldy DMA_daddr1+1 ; keep
	lda DMA_daddr1
	; Calling storevariable on generic assign expression
	sta DMA_val1
	sty DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 178
	jsr DMA_do_dma
	; LineNumber: 179
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
mega65_p	= $04
	; LineNumber: 69
mega65_b:	.byte	0
	; LineNumber: 69
mega65_addr:	.word	0
mega65_relocateScreen_block15:
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
mega65_relocateScreen_tempVarShift_var16 = $54
	sta mega65_relocateScreen_tempVarShift_var16
	sty mega65_relocateScreen_tempVarShift_var16+1
	; COUNT : 8
		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

		lsr mega65_relocateScreen_tempVarShift_var16+1 ;keep
	ror mega65_relocateScreen_tempVarShift_var16+0 ;keep

	lda mega65_relocateScreen_tempVarShift_var16
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
mega65_SetRowSize_block18:
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
mega65_SetRowSize_tempVarShift_var19 = $54
	sta mega65_SetRowSize_tempVarShift_var19
	sty mega65_SetRowSize_tempVarShift_var19+1
	; COUNT : 8
		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

		lsr mega65_SetRowSize_tempVarShift_var19+1 ;keep
	ror mega65_SetRowSize_tempVarShift_var19+0 ;keep

	lda mega65_SetRowSize_tempVarShift_var19
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
palettes_InitPalette_block21:
palettes_InitPalette:
	; LineNumber: 27
	lda #$0
	; Calling storevariable on generic assign expression
	sta palettes_i
palettes_InitPalette_forloop22:
	; LineNumber: 19
	; LineNumber: 20
	; Generic 16 bit op
	ldy #0
	lda palettes_i
palettes_InitPalette_rightvarInteger_var40 = $54
	sta palettes_InitPalette_rightvarInteger_var40
	sty palettes_InitPalette_rightvarInteger_var40+1
	; Integer constant assigning
	ldy #$d1
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var40
palettes_InitPalette_wordAdd38:
	sta palettes_InitPalette_rightvarInteger_var40
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var40+1
	tay
	lda palettes_InitPalette_rightvarInteger_var40
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
palettes_InitPalette_rightvarInteger_var43 = $54
	sta palettes_InitPalette_rightvarInteger_var43
	sty palettes_InitPalette_rightvarInteger_var43+1
	; Integer constant assigning
	ldy #$d2
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var43
palettes_InitPalette_wordAdd41:
	sta palettes_InitPalette_rightvarInteger_var43
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var43+1
	tay
	lda palettes_InitPalette_rightvarInteger_var43
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
palettes_InitPalette_rightvarInteger_var46 = $54
	sta palettes_InitPalette_rightvarInteger_var46
	sty palettes_InitPalette_rightvarInteger_var46+1
	; Integer constant assigning
	ldy #$d3
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var46
palettes_InitPalette_wordAdd44:
	sta palettes_InitPalette_rightvarInteger_var46
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var46+1
	tay
	lda palettes_InitPalette_rightvarInteger_var46
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
palettes_InitPalette_forloopcounter24:
palettes_InitPalette_loopstart25:
	; Test Inc dec D
	inc palettes_i
	lda #$ff
	cmp palettes_i ;keep
	beq palettes_InitPalette_loopdone47
palettes_InitPalette_loopnotdone48:
	jmp palettes_InitPalette_forloop22
palettes_InitPalette_loopdone47:
palettes_InitPalette_forloopend23:
palettes_InitPalette_loopend26:
	; LineNumber: 27
	rts
end_procedure_palettes_InitPalette:
	
; // reserve screen map data for rrb
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_copySpriteTileOffset
	;    Procedure type : User-defined procedure
	; LineNumber: 29
	; LineNumber: 28
RRB_tilenum:	.word	0
	; LineNumber: 28
RRB__offset:	.byte	0
	; LineNumber: 28
RRB_sprData:	.word	0
RRB_copySpriteTileOffset_block49:
RRB_copySpriteTileOffset:
	; LineNumber: 32
	
; // erase 2 tiles(tilenum, tilenum + 1)
; // lfill(dmb1:byte;db1:byte;daddr1:integer;value1:byte;count2:integer)
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_db1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy RRB_tilenum+1
	lda RRB_tilenum
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Calling storevariable on generic assign expression
	sta DMA_daddr1
	sty DMA_daddr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_value1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_count2
	sty DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 37
	
; // copy sprite tile data with offset(_offset) to this space
; // Sprite Data at $1F000
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_smb
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_sb
	; integer assignment NodeVar
	ldy RRB_sprData+1 ; keep
	lda RRB_sprData
	; Calling storevariable on generic assign expression
	sta DMA_saddr
	sty DMA_saddr+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmb
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_db
	; Generic 16 bit op
	ldy #0
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	lda RRB__offset
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$8
	sta mul16x8_num2
	jsr mul16x8_procedure
RRB_copySpriteTileOffset_rightvarInteger_var52 = $54
	sta RRB_copySpriteTileOffset_rightvarInteger_var52
	sty RRB_copySpriteTileOffset_rightvarInteger_var52+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy RRB_tilenum+1
	lda RRB_tilenum
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc RRB_copySpriteTileOffset_rightvarInteger_var52
RRB_copySpriteTileOffset_wordAdd50:
	sta RRB_copySpriteTileOffset_rightvarInteger_var52
	; High-bit binop
	tya
	adc RRB_copySpriteTileOffset_rightvarInteger_var52+1
	tay
	lda RRB_copySpriteTileOffset_rightvarInteger_var52
	; Calling storevariable on generic assign expression
	sta DMA_daddr
	sty DMA_daddr+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	; Calling storevariable on generic assign expression
	sta DMA_count1
	sty DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 39
	rts
end_procedure_RRB_copySpriteTileOffset:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_addSpriteLayer
	;    Procedure type : User-defined procedure
	; LineNumber: 43
	; LineNumber: 42
RRB__spriteTile:	.word	0
	; LineNumber: 42
RRB_sprDBank:	.byte	0
	; LineNumber: 42
RRB__sprData:	.word	0
RRB_addSpriteLayer_block53:
RRB_addSpriteLayer:
	; LineNumber: 44
	; Binary clause Simplified: LESS
	lda RRB_lastSprite
	; Compare with pure num / var optimization
	cmp #$1f;keep
	bcs RRB_addSpriteLayer_elsedoneblock57
RRB_addSpriteLayer_ConditionalTrueBlock55: ;Main true block ;keep:
	; LineNumber: 45
	; LineNumber: 46
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	pha
	lda RRB_lastSprite
	asl
	tax
	pla
	sta RRB_spriteX,x
	tya
	sta RRB_spriteX+1,x
	; LineNumber: 47
	lda #$0
	; Calling storevariable on generic assign expression
	pha
	lda RRB_lastSprite
	asl
	tax
	pla
	sta RRB_spriteY,x
	tya
	sta RRB_spriteY+1,x
	; LineNumber: 48
	; integer assignment NodeVar
	ldy RRB__sprData+1 ; keep
	lda RRB__sprData
	; Calling storevariable on generic assign expression
	pha
	lda RRB_lastSprite
	asl
	tax
	pla
	sta RRB_spriteData,x
	tya
	sta RRB_spriteData+1,x
	; LineNumber: 49
	lda RRB_sprDBank
	; Calling storevariable on generic assign expression
	ldx RRB_lastSprite ; optimized, look out for bugs
	sta RRB_spriteBank,x
	; LineNumber: 50
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy RRB__spriteTile+1 ; keep
	lda RRB__spriteTile
	clc
	adc #$ff
	; Testing for byte:  #$07
	; RHS is word, no optimization
	pha 
	tya 
	adc #$07
	tay 
	pla 
	; Calling storevariable on generic assign expression
	pha
	lda RRB_lastSprite
	asl
	tax
	pla
	sta RRB_spriteTile,x
	tya
	sta RRB_spriteTile+1,x
	; LineNumber: 51
	lda #$0
	; Calling storevariable on generic assign expression
	ldx RRB_lastSprite ; optimized, look out for bugs
	sta RRB_spriteLastRow,x
	; LineNumber: 52
	; Test Inc dec D
	inc RRB_lastSprite
	; LineNumber: 54
	; LineNumber: 54
RRB_addSpriteLayer_elsedoneblock57:
	; LineNumber: 55
	; 8 bit binop
	; Add/sub where right value is constant number
	lda RRB_lastSprite
	sec
	sbc #$1
	 ; end add / sub var with constant
	rts
end_procedure_RRB_addSpriteLayer:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_addTileLayer
	;    Procedure type : User-defined procedure
	; LineNumber: 58
	; LineNumber: 57
RRB_madrBank:	.byte	0
	; LineNumber: 57
RRB_mapAddress:	.word	0
	; LineNumber: 57
RRB_mapWidth:	.word	0
	; LineNumber: 57
RRB_tileBase:	.word	0
RRB_addTileLayer_block62:
RRB_addTileLayer:
	; LineNumber: 59
	; integer assignment NodeVar
	ldy RRB_mapAddress+1 ; keep
	lda RRB_mapAddress
	; Calling storevariable on generic assign expression
	sta RRB_tileLayerAddr
	sty RRB_tileLayerAddr+1
	; LineNumber: 60
	lda RRB_madrBank
	; Calling storevariable on generic assign expression
	sta RRB_tileLayerBank
	; LineNumber: 61
	; integer assignment NodeVar
	ldy RRB_mapWidth+1 ; keep
	lda RRB_mapWidth
	; Calling storevariable on generic assign expression
	sta RRB_tileLayerWidth
	sty RRB_tileLayerWidth+1
	; LineNumber: 62
	; integer assignment NodeVar
	ldy RRB_tileBase+1 ; keep
	lda RRB_tileBase
	; Calling storevariable on generic assign expression
	sta RRB_tileLayerBase
	sty RRB_tileLayerBase+1
	; LineNumber: 63
	rts
end_procedure_RRB_addTileLayer:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_UpdateSprite
	;    Procedure type : User-defined procedure
	; LineNumber: 72
	; LineNumber: 68
RRB_sprYOffset:	.byte	0
	; LineNumber: 69
RRB_sprY:	.byte	0
	; LineNumber: 70
RRB_sprNum:	.word	0
	; LineNumber: 71
RRB_lastRow:	.byte	0
	; LineNumber: 66
RRB_spriteNum:	.byte	0
RRB_UpdateSprite_block63:
RRB_UpdateSprite:
	; LineNumber: 73
	; Load Byte array
	ldx RRB_spriteNum
	lda RRB_spriteLastRow,x
	; Calling storevariable on generic assign expression
	sta RRB_lastRow
	; LineNumber: 74
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda RRB_spriteNum
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$4
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Calling storevariable on generic assign expression
	sta RRB_sprNum
	sty RRB_sprNum+1
	; LineNumber: 75
	; Modulo
	lda #$8
RRB_UpdateSprite_val_var64 = $54
	sta RRB_UpdateSprite_val_var64
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteY,x
	ldy RRB_spriteY+1,x
	sec
RRB_UpdateSprite_modulo65:
	sbc RRB_UpdateSprite_val_var64
	bcs RRB_UpdateSprite_modulo65
	adc RRB_UpdateSprite_val_var64
	; Calling storevariable on generic assign expression
	sta RRB_sprYOffset
	; LineNumber: 76
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteY,x
	ldy RRB_spriteY+1,x
RRB_UpdateSprite_int_shift_var66 = $54
	sta RRB_UpdateSprite_int_shift_var66
	sty RRB_UpdateSprite_int_shift_var66+1
		lsr RRB_UpdateSprite_int_shift_var66+1
	ror RRB_UpdateSprite_int_shift_var66+0

		lsr RRB_UpdateSprite_int_shift_var66+1
	ror RRB_UpdateSprite_int_shift_var66+0

		lsr RRB_UpdateSprite_int_shift_var66+1
	ror RRB_UpdateSprite_int_shift_var66+0

	lda RRB_UpdateSprite_int_shift_var66
	; Calling storevariable on generic assign expression
	sta RRB_sprY
	; LineNumber: 78
	; Generic 16 bit op
	ldy #0
	lda #$2
RRB_UpdateSprite_rightvarInteger_var69 = $54
	sta RRB_UpdateSprite_rightvarInteger_var69
	sty RRB_UpdateSprite_rightvarInteger_var69+1
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy RRB_sprNum+1 ; keep
	lda RRB_sprNum
RRB_UpdateSprite_rightvarInteger_var72 = $56
	sta RRB_UpdateSprite_rightvarInteger_var72
	sty RRB_UpdateSprite_rightvarInteger_var72+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda RRB_lastRow
	asl
	tax
	lda RRB_rLogSprRow,x
	ldy RRB_rLogSprRow+1,x
	clc
	adc #$50
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var72
RRB_UpdateSprite_wordAdd70:
	sta RRB_UpdateSprite_rightvarInteger_var72
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var72+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var72
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var69
RRB_UpdateSprite_wordAdd67:
	sta RRB_UpdateSprite_rightvarInteger_var69
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var69+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var69
	; Calling storevariable on generic assign expression
	sta RRB_addr
	sty RRB_addr+1
	; LineNumber: 81
	
; // clear sprite row and row+1 
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; Integer constant assigning
	ldy #$07
	lda #$ff
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 82
	lda RRB_addr
	clc
	adc mega65_LogicalRowSize
	sta RRB_addr+0
	lda RRB_addr+1
	adc mega65_LogicalRowSize+1
	sta RRB_addr+1
	; LineNumber: 83
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; Integer constant assigning
	ldy #$07
	lda #$ff
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 85
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteTile,x
	ldy RRB_spriteTile+1,x
	; Calling storevariable on generic assign expression
	sta RRB_tilenum
	sty RRB_tilenum+1
	lda RRB_sprYOffset
	; Calling storevariable on generic assign expression
	sta RRB__offset
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteData,x
	ldy RRB_spriteData+1,x
	; Calling storevariable on generic assign expression
	sta RRB_sprData
	sty RRB_sprData+1
	jsr RRB_copySpriteTileOffset
	; LineNumber: 87
	lda RRB_sprY
	; Calling storevariable on generic assign expression
	ldx RRB_spriteNum ; optimized, look out for bugs
	sta RRB_spriteLastRow,x
	; LineNumber: 89
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy RRB_sprNum+1 ; keep
	lda RRB_sprNum
RRB_UpdateSprite_rightvarInteger_var77 = $54
	sta RRB_UpdateSprite_rightvarInteger_var77
	sty RRB_UpdateSprite_rightvarInteger_var77+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda RRB_sprY
	asl
	tax
	lda RRB_rLogSprRow,x
	ldy RRB_rLogSprRow+1,x
	clc
	adc #$50
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var77
RRB_UpdateSprite_wordAdd75:
	sta RRB_UpdateSprite_rightvarInteger_var77
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var77+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var77
	; Calling storevariable on generic assign expression
	sta RRB_addr
	sty RRB_addr+1
	; LineNumber: 90
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteX,x
	ldy RRB_spriteX+1,x
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 91
	lda RRB_addr
	clc
	adc #$02
	sta RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_UpdateSprite_WordAdd79
	inc RRB_addr+1
RRB_UpdateSprite_WordAdd79:
	; LineNumber: 92
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteTile,x
	ldy RRB_spriteTile+1,x
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 94
	; Generic 16 bit op
	ldy #0
	lda #$2
RRB_UpdateSprite_rightvarInteger_var82 = $54
	sta RRB_UpdateSprite_rightvarInteger_var82
	sty RRB_UpdateSprite_rightvarInteger_var82+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	clc
	adc mega65_LogicalRowSize
	; Testing for byte:  mega65_LogicalRowSize+1
	; RHS is word, no optimization
	pha 
	tya 
	adc mega65_LogicalRowSize+1
	tay 
	pla 
	; Low bit binop:
	sec
	sbc RRB_UpdateSprite_rightvarInteger_var82
RRB_UpdateSprite_wordAdd80:
	sta RRB_UpdateSprite_rightvarInteger_var82
	; High-bit binop
	tya
	sbc RRB_UpdateSprite_rightvarInteger_var82+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var82
	; Calling storevariable on generic assign expression
	sta RRB_addr
	sty RRB_addr+1
	; LineNumber: 95
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteX,x
	ldy RRB_spriteX+1,x
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 96
	lda RRB_addr
	clc
	adc #$02
	sta RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_UpdateSprite_WordAdd84
	inc RRB_addr+1
RRB_UpdateSprite_WordAdd84:
	; LineNumber: 97
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda RRB_spriteNum
	asl
	tax
	lda RRB_spriteTile,x
	ldy RRB_spriteTile+1,x
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
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 99
	rts
end_procedure_RRB_UpdateSprite:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_CreateRRB
	;    Procedure type : User-defined procedure
	; LineNumber: 108
	; LineNumber: 102
RRB_row:	.byte	0
	; LineNumber: 103
RRB_dummy:	.word	0
	; LineNumber: 104
RRB_tx:	.byte	0
	; LineNumber: 105
RRB_taddr:	.word	0
	; LineNumber: 107
RRB_sprite:	.byte	0
RRB_CreateRRB_block86:
RRB_CreateRRB:
	; LineNumber: 109
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda RRB_lastSprite
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc RRB_CreateRRB_elseblock89
RRB_CreateRRB_ConditionalTrueBlock88: ;Main true block ;keep:
	; LineNumber: 110
	; LineNumber: 111
	; 8 bit binop
	; Add/sub where right value is constant number
	; 8 bit binop
	; Add/sub where right value is constant number
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	lda RRB_lastSprite
	asl
	clc
	adc #$28
	 ; end add / sub var with constant
	clc
	adc #$2
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta RRB_row
	; LineNumber: 112
	; Calling storevariable on generic assign expression
	sta mega65_newRowSize
	jsr mega65_SetRowSize
	; LineNumber: 113
	jmp RRB_CreateRRB_elsedoneblock90
RRB_CreateRRB_elseblock89:
	; LineNumber: 114
	; LineNumber: 115
	lda #$28
	; Calling storevariable on generic assign expression
	sta mega65_newRowSize
	jsr mega65_SetRowSize
	; LineNumber: 116
RRB_CreateRRB_elsedoneblock90:
	; LineNumber: 118
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta RRB_dummy
	sty RRB_dummy+1
	; LineNumber: 181
	; Calling storevariable on generic assign expression
	sta RRB_row
RRB_CreateRRB_forloop95:
	; LineNumber: 120
	; LineNumber: 122
	
; // save the beginning of each row for later
	; integer assignment NodeVar
	ldy RRB_dummy+1 ; keep
	lda RRB_dummy
	; Calling storevariable on generic assign expression
	pha
	lda RRB_row
	asl
	tax
	pla
	sta RRB_rLogSprRow,x
	tya
	sta RRB_rLogSprRow+1,x
	; LineNumber: 125
	
; // advance the source map layer pointer 
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy RRB_tileLayerAddr+1 ; keep
	lda RRB_tileLayerAddr
RRB_CreateRRB_rightvarInteger_var158 = $54
	sta RRB_CreateRRB_rightvarInteger_var158
	sty RRB_CreateRRB_rightvarInteger_var158+1
	; Mul 16x8 setup
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda RRB_row
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$2
	sta mul16x8_num2
	jsr mul16x8_procedure
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy RRB_tileLayerWidth+1
	lda RRB_tileLayerWidth
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc RRB_CreateRRB_rightvarInteger_var158
RRB_CreateRRB_wordAdd156:
	sta RRB_CreateRRB_rightvarInteger_var158
	; High-bit binop
	tya
	adc RRB_CreateRRB_rightvarInteger_var158+1
	tay
	lda RRB_CreateRRB_rightvarInteger_var158
	; Calling storevariable on generic assign expression
	sta RRB_taddr
	sty RRB_taddr+1
	; LineNumber: 128
	
; // advance the screen pointer
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy RRB_dummy+1 ; keep
	lda RRB_dummy
RRB_CreateRRB_rightvarInteger_var161 = $54
	sta RRB_CreateRRB_rightvarInteger_var161
	sty RRB_CreateRRB_rightvarInteger_var161+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Low bit binop:
	clc
	adc RRB_CreateRRB_rightvarInteger_var161
RRB_CreateRRB_wordAdd159:
	sta RRB_CreateRRB_rightvarInteger_var161
	; High-bit binop
	tya
	adc RRB_CreateRRB_rightvarInteger_var161+1
	tay
	lda RRB_CreateRRB_rightvarInteger_var161
	; Calling storevariable on generic assign expression
	sta RRB_addr
	sty RRB_addr+1
	; LineNumber: 130
	lda RRB_dummy
	clc
	adc mega65_LogicalRowSize
	sta RRB_dummy+0
	lda RRB_dummy+1
	adc mega65_LogicalRowSize+1
	sta RRB_dummy+1
	; LineNumber: 140
	lda #$0
	; Calling storevariable on generic assign expression
	sta RRB_tx
RRB_CreateRRB_forloop163:
	; LineNumber: 133
	; LineNumber: 136
	
; // Draw Tile Layer
; // copy 2 bytes from tilemap address to screen addresstable(,,);
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_smb
	lda RRB_tileLayerBank
	; Calling storevariable on generic assign expression
	sta DMA_sb
	; integer assignment NodeVar
	ldy RRB_taddr+1 ; keep
	lda RRB_taddr
	; Calling storevariable on generic assign expression
	sta DMA_saddr
	sty DMA_saddr+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmb
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_db
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_daddr
	sty DMA_daddr+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_count1
	sty DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 137
	lda RRB_taddr
	clc
	adc #$02
	sta RRB_taddr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd172
	inc RRB_taddr+1
RRB_CreateRRB_WordAdd172:
	; LineNumber: 138
	lda RRB_addr
	clc
	adc #$02
	sta RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd173
	inc RRB_addr+1
RRB_CreateRRB_WordAdd173:
	; LineNumber: 139
RRB_CreateRRB_forloopcounter165:
RRB_CreateRRB_loopstart166:
	; Compare is onpage
	; Test Inc dec D
	inc RRB_tx
	; integer assignment NodeVar
	ldy RRB_tileLayerWidth+1 ; keep
	lda RRB_tileLayerWidth
	cmp RRB_tx ;keep
	bne RRB_CreateRRB_forloop163
RRB_CreateRRB_loopdone174: ;keep:
RRB_CreateRRB_forloopend164:
RRB_CreateRRB_loopend167:
	; LineNumber: 141
	; Binary clause Simplified: GREATEREQUAL
	lda RRB_lastSprite
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc RRB_CreateRRB_localfailed194
	jmp RRB_CreateRRB_ConditionalTrueBlock176
RRB_CreateRRB_localfailed194:
	jmp RRB_CreateRRB_elsedoneblock178
RRB_CreateRRB_ConditionalTrueBlock176: ;Main true block ;keep:
	; LineNumber: 142
	; LineNumber: 144
	lda #$0
	; Calling storevariable on generic assign expression
	sta RRB_sprite
	; LineNumber: 145
RRB_CreateRRB_while196:
RRB_CreateRRB_loopstart200:
	; Binary clause Simplified: LESS
	lda RRB_sprite
	; Compare with pure num / var optimization
	cmp RRB_lastSprite;keep
	bcs RRB_CreateRRB_localfailed205
	jmp RRB_CreateRRB_ConditionalTrueBlock197
RRB_CreateRRB_localfailed205:
	jmp RRB_CreateRRB_elsedoneblock199
RRB_CreateRRB_ConditionalTrueBlock197: ;Main true block ;keep:
	; LineNumber: 146
	; LineNumber: 148
	
; // GOTOX
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$90
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 149
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 150
	lda RRB_addr
	clc
	adc #$02
	sta RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd207
	inc RRB_addr+1
RRB_CreateRRB_WordAdd207:
	; LineNumber: 152
	
; // SPRITE
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 153
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; Integer constant assigning
	ldy #$07
	lda #$ff
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 154
	lda RRB_addr
	clc
	adc #$02
	sta RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd208
	inc RRB_addr+1
RRB_CreateRRB_WordAdd208:
	; LineNumber: 155
	; Test Inc dec D
	inc RRB_sprite
	; LineNumber: 156
	jmp RRB_CreateRRB_while196
RRB_CreateRRB_elsedoneblock199:
RRB_CreateRRB_loopend201:
	; LineNumber: 171
	;			for sprite := 0 to lastSprite do
; //			begin
; //				
; // GOTOX
; //				DMA::poke16($0ff8,addr,$90);
; //				DMA::poke16($0005,addr,0);
; //				addr := addr + 2;
; //				
; // SPRITE
; //				DMA::poke16($0ff8,addr,0);
; //				DMA::poke16($0005,addr,2047);
; //				addr := addr + 2;
; //			end;
; // GOTOX - 320
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$90
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 172
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; Integer constant assigning
	ldy #$01
	lda #$40
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 174
	lda RRB_addr
	clc
	adc #$02
	sta RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd209
	inc RRB_addr+1
RRB_CreateRRB_WordAdd209:
	; LineNumber: 177
	
; // Finish Char
	; Integer constant assigning
	ldy #$0f
	lda #$f8
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 178
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy RRB_addr+1 ; keep
	lda RRB_addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 179
RRB_CreateRRB_elsedoneblock178:
	; LineNumber: 180
RRB_CreateRRB_forloopcounter97:
RRB_CreateRRB_loopstart98:
	; Test Inc dec D
	inc RRB_row
	lda #$19
	cmp RRB_row ;keep
	beq RRB_CreateRRB_loopdone210
RRB_CreateRRB_loopnotdone211:
	jmp RRB_CreateRRB_forloop95
RRB_CreateRRB_loopdone210:
RRB_CreateRRB_forloopend96:
RRB_CreateRRB_loopend99:
	; LineNumber: 181
	rts
end_procedure_RRB_CreateRRB:
	
; // set tiles 2048 to 256 colors 
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initTiles
	;    Procedure type : User-defined procedure
	; LineNumber: 76
	; LineNumber: 73
col:	.byte	0
	; LineNumber: 74
addr1:	.word	0
initTiles_block212:
initTiles:
	; LineNumber: 77
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta addr1
	sty addr1+1
	; LineNumber: 79
	; Calling storevariable on generic assign expression
	sta col
	; LineNumber: 85
	; Calling storevariable on generic assign expression
	sta varPrefixed_x
	sty varPrefixed_x+1
initTiles_forloop213:
	; LineNumber: 81
	; LineNumber: 82
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
	; LineNumber: 83
	; Test Inc dec D
	inc col
	; LineNumber: 84
	lda addr1
	clc
	adc #$40
	sta addr1+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd221
	inc addr1+1
initTiles_WordAdd221:
	; LineNumber: 85
initTiles_forloopcounter215:
initTiles_loopstart216:
	; Compare is onpage
	lda varPrefixed_x
	clc
	adc #$01
	sta varPrefixed_x+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd223
	inc varPrefixed_x+1
initTiles_WordAdd223:
	; Executing integer comparison #$ff
	; Binary clause INTEGER: NOTEQUALS
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda varPrefixed_x+1   ; compare high bytes
	cmp #$00 ;keep
	beq initTiles_pass1229
	jmp initTiles_ConditionalTrueBlock225
initTiles_pass1229:
	lda varPrefixed_x
	cmp #$ff ;keep
	beq initTiles_elsedoneblock227
	jmp initTiles_ConditionalTrueBlock225
initTiles_ConditionalTrueBlock225: ;Main true block ;keep:
	; LineNumber: 79
	; LineNumber: 80
	; ****** Inline assembler section
  jmp initTiles_forloop213
initTiles_elsedoneblock227:
initTiles_loopdone222: ;keep:
initTiles_forloopend214:
initTiles_loopend217:
	; LineNumber: 86
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta addr1
	sty addr1+1
	; LineNumber: 93
	; Calling storevariable on generic assign expression
	sta col
initTiles_forloop231:
	; LineNumber: 88
	; LineNumber: 89
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; INTEGER optimization: a=b+c 
	lda addr1
	clc
	adc col
	sta DMA_addr1+0
	lda addr1+1
	adc #0
	sta DMA_addr1+1
	; Load Byte array
	ldx col
	lda tile1,x
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 90
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; Generic 16 bit op
	ldy #0
	lda col
initTiles_rightvarInteger_var250 = $54
	sta initTiles_rightvarInteger_var250
	sty initTiles_rightvarInteger_var250+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy addr1+1 ; keep
	lda addr1
	clc
	adc #$40
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	; Low bit binop:
	clc
	adc initTiles_rightvarInteger_var250
initTiles_wordAdd248:
	sta initTiles_rightvarInteger_var250
	; High-bit binop
	tya
	adc initTiles_rightvarInteger_var250+1
	tay
	lda initTiles_rightvarInteger_var250
	; Calling storevariable on generic assign expression
	sta DMA_addr1
	sty DMA_addr1+1
	; Load Byte array
	ldx col
	lda tile2,x
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 91
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; Generic 16 bit op
	ldy #0
	lda col
initTiles_rightvarInteger_var254 = $54
	sta initTiles_rightvarInteger_var254
	sty initTiles_rightvarInteger_var254+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy addr1+1 ; keep
	lda addr1
	clc
	adc #$80
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	; Low bit binop:
	clc
	adc initTiles_rightvarInteger_var254
initTiles_wordAdd252:
	sta initTiles_rightvarInteger_var254
	; High-bit binop
	tya
	adc initTiles_rightvarInteger_var254+1
	tay
	lda initTiles_rightvarInteger_var254
	; Calling storevariable on generic assign expression
	sta DMA_addr1
	sty DMA_addr1+1
	; Load Byte array
	ldx col
	lda tile3,x
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 92
initTiles_forloopcounter233:
initTiles_loopstart234:
	; Test Inc dec D
	inc col
	lda #$40
	cmp col ;keep
	beq initTiles_loopdone256
initTiles_loopnotdone257:
	jmp initTiles_forloop231
initTiles_loopdone256:
initTiles_forloopend232:
initTiles_loopend235:
	; LineNumber: 95
	
; // Sprites
	; Integer constant assigning
	ldy #$01
	lda #$00
	; Calling storevariable on generic assign expression
	sta addr1
	sty addr1+1
	; LineNumber: 104
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta varPrefixed_x
	sty varPrefixed_x+1
initTiles_forloop258:
	; LineNumber: 97
	; LineNumber: 102
	lda #$0
	; Calling storevariable on generic assign expression
	sta col
initTiles_forloop276:
	; LineNumber: 99
	; LineNumber: 100
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; INTEGER optimization: a=b+c 
	lda addr1
	clc
	adc col
	sta DMA_addr1+0
	lda addr1+1
	adc #0
	sta DMA_addr1+1
	; Load Byte array
	ldx col
	lda sprite,x
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 101
initTiles_forloopcounter278:
initTiles_loopstart279:
	; Compare is onpage
	; Test Inc dec D
	inc col
	lda #$40
	cmp col ;keep
	bne initTiles_forloop276
initTiles_loopdone285: ;keep:
initTiles_forloopend277:
initTiles_loopend280:
	; LineNumber: 102
	lda addr1
	clc
	adc #$80
	sta addr1+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd286
	inc addr1+1
initTiles_WordAdd286:
	; LineNumber: 103
initTiles_forloopcounter260:
initTiles_loopstart261:
	; Compare is onpage
	lda varPrefixed_x
	clc
	adc #$01
	sta varPrefixed_x+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd288
	inc varPrefixed_x+1
initTiles_WordAdd288:
	; Executing integer comparison #$20
	; Binary clause INTEGER: NOTEQUALS
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda varPrefixed_x+1   ; compare high bytes
	cmp #$00 ;keep
	beq initTiles_pass1294
	jmp initTiles_ConditionalTrueBlock290
initTiles_pass1294:
	lda varPrefixed_x
	cmp #$20 ;keep
	beq initTiles_elsedoneblock292
	jmp initTiles_ConditionalTrueBlock290
initTiles_ConditionalTrueBlock290: ;Main true block ;keep:
	; LineNumber: 95
	; LineNumber: 96
	; ****** Inline assembler section
  jmp initTiles_forloop258
initTiles_elsedoneblock292:
initTiles_loopdone287: ;keep:
initTiles_forloopend259:
initTiles_loopend262:
	; LineNumber: 104
	rts
end_procedure_initTiles:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : CopyData
	;    Procedure type : User-defined procedure
	; LineNumber: 248
	; LineNumber: 246
index:	.word	0
	; LineNumber: 247
p	= $04
CopyData_block296:
CopyData:
	; LineNumber: 250
	
; // Copy sprites to $1F000	
	; Integer constant assigning
	ldy #$f0
	lda #$00
	; Calling storevariable on generic assign expression
	sta addr
	sty addr+1
	; LineNumber: 257
	lda #$0
	; Calling storevariable on generic assign expression
	sta blah
CopyData_forloop297:
	; LineNumber: 252
	; LineNumber: 254
	
; // lpoke(mb1:byte;b1:byte;addr1:integer;value:byte);
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_mb1
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_b1
	; integer assignment NodeVar
	ldy addr+1 ; keep
	lda addr
	; Calling storevariable on generic assign expression
	sta DMA_addr1
	sty DMA_addr1+1
	; Load Byte array
	ldx blah
	lda sprite,x
	; Calling storevariable on generic assign expression
	sta DMA_value
	jsr DMA_lpoke
	; LineNumber: 255
	lda addr
	clc
	adc #$01
	sta addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd305
	inc addr+1
CopyData_WordAdd305:
	; LineNumber: 256
CopyData_forloopcounter299:
CopyData_loopstart300:
	; Compare is onpage
	; Test Inc dec D
	inc blah
	lda #$40
	cmp blah ;keep
	bne CopyData_forloop297
CopyData_loopdone306: ;keep:
CopyData_forloopend298:
CopyData_loopend301:
	; LineNumber: 259
	
; // Copy Map to $10000
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta addr
	sty addr+1
	; LineNumber: 260
	lda #<tilemap
	ldx #>tilemap
	sta p
	stx p+1
	; LineNumber: 271
	;		addr := addr + 1; 
; //		DMA::lpoke(0,$01,addr,hi(index));		
	lda #$0
	; Calling storevariable on generic assign expression
	sta varPrefixed_x
	sty varPrefixed_x+1
CopyData_forloop307:
	; LineNumber: 262
	; LineNumber: 263
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load pointer array
	ldy #$0
	lda (p),y
	ldy #0 ; Loading 8-bit pointer, but return type should be integer
	clc
	adc #$ff
	; Testing for byte:  #$07
	; RHS is word, no optimization
	pha 
	tya 
	adc #$07
	tay 
	pla 
	; Calling storevariable on generic assign expression
	sta index
	sty index+1
	; LineNumber: 264
	lda p
	clc
	adc #$01
	sta p+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd318
	inc p+1
CopyData_WordAdd318:
	; LineNumber: 266
	
; //DMA::lpoke(0,$01,addr,lo(index));
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_pa
	sty DMA_pa+1
	; integer assignment NodeVar
	ldy addr+1 ; keep
	lda addr
	; Calling storevariable on generic assign expression
	sta DMA_pb
	sty DMA_pb+1
	; integer assignment NodeVar
	ldy index+1 ; keep
	lda index
	; Calling storevariable on generic assign expression
	sta DMA_val
	sty DMA_val+1
	jsr DMA_poke16
	; LineNumber: 267
	lda addr
	clc
	adc #$02
	sta addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd319
	inc addr+1
CopyData_WordAdd319:
	; LineNumber: 270
CopyData_forloopcounter309:
CopyData_loopstart310:
	; Compare is onpage
	lda varPrefixed_x
	clc
	adc #$01
	sta varPrefixed_x+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd321
	inc varPrefixed_x+1
CopyData_WordAdd321:
	; Executing integer comparison #$3e8
	; Binary clause INTEGER: NOTEQUALS
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda varPrefixed_x+1   ; compare high bytes
	cmp #$03 ;keep
	beq CopyData_pass1327
	jmp CopyData_ConditionalTrueBlock323
CopyData_pass1327:
	lda varPrefixed_x
	cmp #$e8 ;keep
	beq CopyData_elsedoneblock325
	jmp CopyData_ConditionalTrueBlock323
CopyData_ConditionalTrueBlock323: ;Main true block ;keep:
	; LineNumber: 260
	; LineNumber: 261
	; ****** Inline assembler section
  jmp CopyData_forloop307
CopyData_elsedoneblock325:
CopyData_loopdone320: ;keep:
CopyData_forloopend308:
CopyData_loopend311:
	; LineNumber: 271
	rts
end_procedure_CopyData:
block1:
main_block_begin_:
	; LineNumber: 277
	jsr mega65_init
	; LineNumber: 278
	jsr mega65_setFCM
	; LineNumber: 279
	lda #$5
	; Calling storevariable on generic assign expression
	sta mega65_b
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta mega65_addr
	sty mega65_addr+1
	jsr mega65_relocateScreen
	; LineNumber: 281
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
	; LineNumber: 282
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
	; LineNumber: 283
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
	; LineNumber: 306
	
; // uncomment next 4 lines for tile demo_LogicalRowSize
; // mega65::SetRowSize();
; // palettes::InitPalette();			
; // for chars(demoRRB) the palette doesnt fit, as the first 16 colors are grey shades
; // initTiles();
; // demoDrawTiles();
; // RRB Demo
; //	palettes::InitPalette();			
; //	initTiles();
; //	poke(^$D021,0,19);
; //	demoRRB();
; // Keyboard Demo - input 
; //mega65::SetRowSize(40);
; //testKeyboard();	
; //palettes::InitPalette();
; //mega65::SetRowSize(40);
; //SmootScrollDemo();
	jsr palettes_InitPalette
	; LineNumber: 307
	jsr initTiles
	; LineNumber: 308
	; Poke
	; Optimization: shift is zero
	lda #$16
	sta $d021
	; LineNumber: 310
	jsr CopyData
	; LineNumber: 315
	
; //	DMA::lcopy($00,$01,$0000,$00,$05,$0000,1000);
	lda #$1
	; Calling storevariable on generic assign expression
	sta RRB_madrBank
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta RRB_mapAddress
	sty RRB_mapAddress+1
	lda #$28
	; Calling storevariable on generic assign expression
	sta RRB_mapWidth
	sty RRB_mapWidth+1
	; Integer constant assigning
	ldy #$08
	lda #$00
	; Calling storevariable on generic assign expression
	sta RRB_tileBase
	sty RRB_tileBase+1
	jsr RRB_addTileLayer
	; LineNumber: 324
	lda #$0
	; Calling storevariable on generic assign expression
	sta sprCount
MainProgram_forloop329:
	; LineNumber: 317
	; LineNumber: 318
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	lda sprCount
	asl
	; Calling storevariable on generic assign expression
	sta k
	; LineNumber: 319
	; Generic 16 bit op
	ldy #0
	lda k
MainProgram_rightvarInteger_var344 = $54
	sta MainProgram_rightvarInteger_var344
	sty MainProgram_rightvarInteger_var344+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$5
	; Low bit binop:
	clc
	adc MainProgram_rightvarInteger_var344
MainProgram_wordAdd342:
	sta MainProgram_rightvarInteger_var344
	; High-bit binop
	tya
	adc MainProgram_rightvarInteger_var344+1
	tay
	lda MainProgram_rightvarInteger_var344
	; Calling storevariable on generic assign expression
	sta RRB__spriteTile
	sty RRB__spriteTile+1
	lda #$1
	; Calling storevariable on generic assign expression
	sta RRB_sprDBank
	; Integer constant assigning
	ldy #$f0
	lda #$00
	; Calling storevariable on generic assign expression
	sta RRB__sprData
	sty RRB__sprData+1
	jsr RRB_addSpriteLayer
	; Calling storevariable on generic assign expression
	ldx sprCount ; optimized, look out for bugs
	sta sprites,x
	; LineNumber: 320
	; Generic 16 bit op
	ldy #0
	lda #$a
MainProgram_rightvarInteger_var347 = $54
	sta MainProgram_rightvarInteger_var347
	sty MainProgram_rightvarInteger_var347+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda sprCount
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$9
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc MainProgram_rightvarInteger_var347
MainProgram_wordAdd345:
	sta MainProgram_rightvarInteger_var347
	; High-bit binop
	tya
	adc MainProgram_rightvarInteger_var347+1
	tay
	lda MainProgram_rightvarInteger_var347
	; Calling storevariable on generic assign expression
	pha
	lda sprCount
	asl
	tax
	pla
	sta RRB_spriteX,x
	tya
	sta RRB_spriteX+1,x
	; LineNumber: 321
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$aa
	; Calling storevariable on generic assign expression
	pha
	lda sprCount
	asl
	tax
	pla
	sta RRB_spriteY,x
	tya
	sta RRB_spriteY+1,x
	; LineNumber: 323
MainProgram_forloopcounter331:
MainProgram_loopstart332:
	; Test Inc dec D
	inc sprCount
	lda #$12
	cmp sprCount ;keep
	beq MainProgram_loopdone348
MainProgram_loopnotdone349:
	jmp MainProgram_forloop329
MainProgram_loopdone348:
MainProgram_forloopend330:
MainProgram_loopend333:
	; LineNumber: 325
	jsr RRB_CreateRRB
	; LineNumber: 327
MainProgram_while350:
MainProgram_loopstart354:
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_localfailed398
	jmp MainProgram_ConditionalTrueBlock351
MainProgram_localfailed398:
	jmp MainProgram_elsedoneblock353
MainProgram_ConditionalTrueBlock351: ;Main true block ;keep:
	; LineNumber: 328
	; LineNumber: 329
	; wait for raster
	ldx #$0 ; optimized, look out for bugs
	cpx $d012
	bne *-3
	; LineNumber: 330
	; ****** Inline assembler section
			lda #23
			sta $D020
		
	; LineNumber: 347
	lda #$0
	; Calling storevariable on generic assign expression
	sta sprCount
MainProgram_forloop400:
	; LineNumber: 336
	; LineNumber: 337
	lda sprCount
	; Calling storevariable on generic assign expression
	sta RRB_spriteNum
	jsr RRB_UpdateSprite
	; LineNumber: 339
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda sprCount
	asl
	tax
	lda RRB_spriteY,x
	ldy RRB_spriteY+1,x
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
	lda sprCount
	asl
	tax
	pla
	sta RRB_spriteY,x
	tya
	sta RRB_spriteY+1,x
	; LineNumber: 340
	; Binary clause INTEGER: GREATER
	; Load Integer array
	lda sprCount
	asl
	tax
	lda RRB_spriteY,x
	ldy RRB_spriteY+1,x
	sta MainProgram_rightvarInteger_var429
	sty MainProgram_rightvarInteger_var429+1
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda MainProgram_rightvarInteger_var429+1   ; compare high bytes
	cmp #$00 ;keep
	bcc MainProgram_elsedoneblock427
	bne MainProgram_ConditionalTrueBlock425
	lda MainProgram_rightvarInteger_var429
	cmp #$c8 ;keep
	bcc MainProgram_elsedoneblock427
	beq MainProgram_elsedoneblock427
MainProgram_ConditionalTrueBlock425: ;Main true block ;keep:
	; LineNumber: 340
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	pha
	lda sprCount
	asl
	tax
	pla
	sta RRB_spriteY,x
	tya
	sta RRB_spriteY+1,x
MainProgram_elsedoneblock427:
	; LineNumber: 344
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda sprCount
	asl
	tax
	lda RRB_spriteX,x
	ldy RRB_spriteX+1,x
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
	lda sprCount
	asl
	tax
	pla
	sta RRB_spriteX,x
	tya
	sta RRB_spriteX+1,x
	; LineNumber: 345
	; Binary clause INTEGER: GREATER
	; Load Integer array
	lda sprCount
	asl
	tax
	lda RRB_spriteX,x
	ldy RRB_spriteX+1,x
	sta MainProgram_rightvarInteger_var437
	sty MainProgram_rightvarInteger_var437+1
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda MainProgram_rightvarInteger_var437+1   ; compare high bytes
	cmp #$01 ;keep
	bcc MainProgram_elsedoneblock435
	bne MainProgram_ConditionalTrueBlock433
	lda MainProgram_rightvarInteger_var437
	cmp #$40 ;keep
	bcc MainProgram_elsedoneblock435
	beq MainProgram_elsedoneblock435
MainProgram_ConditionalTrueBlock433: ;Main true block ;keep:
	; LineNumber: 345
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	pha
	lda sprCount
	asl
	tax
	pla
	sta RRB_spriteX,x
	tya
	sta RRB_spriteX+1,x
MainProgram_elsedoneblock435:
	; LineNumber: 347
MainProgram_forloopcounter402:
MainProgram_loopstart403:
	; Test Inc dec D
	inc sprCount
	lda #$12
	cmp sprCount ;keep
	beq MainProgram_loopdone439
MainProgram_loopnotdone440:
	jmp MainProgram_forloop400
MainProgram_loopdone439:
MainProgram_forloopend401:
MainProgram_loopend404:
	; LineNumber: 348
	; ****** Inline assembler section
			lda #00
			sta $D020
		
	; LineNumber: 352
	jmp MainProgram_while350
MainProgram_elsedoneblock353:
MainProgram_loopend355:
	; LineNumber: 354
main_block_end_:
	; End of program
	; Ending memory block at $2001
	; Ending memory block at $2001
MainProgram_rightvarInteger_var429:	.word	0 
MainProgram_rightvarInteger_var437:	.word	0 
EndBlock2001:

