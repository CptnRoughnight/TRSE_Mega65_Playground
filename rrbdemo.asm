
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
rrbDemo:
	; LineNumber: 220
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
	; LineNumber: 7
RRB_maxSpritesPerRow:	.byte	$00
	; LineNumber: 11
RRB_rrbModLookUp:	.res	200,0
	; LineNumber: 12
RRB_rrbRowLookUp:	.res	200,0
	; LineNumber: 13
RRB_rrbSprRowLookUp:	.res	30,0
	; LineNumber: 14
RRB_rrbOffsetLookUp:	.res	8,0
	; LineNumber: 15
RRB_scrMemRowLookUp:	.res	50,0
	; LineNumber: 18
RRB_tileLayerAddr:	.word	0
	; LineNumber: 19
RRB_tileLayerBank:	.byte	0
	; LineNumber: 20
RRB_tileLayerWidth:	.word	0
	; LineNumber: 22
RRB_screenMapBank:	.byte	0
	; LineNumber: 23
RRB_screenMapAddress:	.word	0
	; LineNumber: 25
RRB_colorMapBank:	.byte	0
	; LineNumber: 26
RRB_colorMapAddress:	.word	0
	; LineNumber: 28
RRB_sprDataBank:	.byte	0
	; LineNumber: 29
RRB_sprDataAddress:	.word	0
	; LineNumber: 31
RRB_transparentTile:	.word	0
	; LineNumber: 32
RRB_screenSize:	.word	0
	; LineNumber: 5
palettes_p	= $02
	; LineNumber: 8
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
	; LineNumber: 10
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
	; LineNumber: 12
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
	; LineNumber: 65
sinetable:	.byte $040, $075, $07a, $049, $0f, $02, $02e, $06a
	.byte $07f, $05a, $01d, $00, $01d, $05a, $07f, $069
	.byte $02d, $02, $0f, $049, $07a, $075, $03f, $09
	.byte $06, $037, $070, $07d, $051, $015, $00, $026
	.byte $063, $07f, $061, $024, $00, $016, $052, $07d
	.byte $06f, $035, $05, $0a, $041, $076, $079, $047
	.byte $0e, $02, $02f, $06a, $07f, $059, $01c, $00
	.byte $01e, $05b, $07f, $068, $02c, $02, $010, $04a
	.byte $07a, $074, $03e, $09, $06, $038, $071, $07c
	.byte $050, $014, $00, $027, $064, $07f, $060, $023
	.byte $00, $017, $054, $07d, $06e, $034, $04, $0b
	.byte $042, $077, $079, $046, $0e, $03, $030, $06b
	.byte $07e, $058, $01b, $00, $01f, $05c, $07f, $067
	.byte $02b, $01, $011, $04b, $07b, $074, $03d, $08
	.byte $07, $039, $072, $07c, $04f, $013, $01, $028
	.byte $065, $07f, $05f, $022, $00, $018, $055, $07e
	.byte $06e, $033, $04, $0c, $043, $077, $078, $045
	.byte $0d, $03, $031, $06c, $07e, $057, $01a, $00
	.byte $020, $05d, $07f, $066, $02a, $01, $012, $04c
	.byte $07b, $073, $03c, $08, $07, $03a, $072, $07c
	.byte $04e, $013, $01, $029, $066, $07f, $05e, $021
	.byte $00, $019, $056, $07e, $06d, $032, $04, $0c
	.byte $044, $078, $078, $044, $0c, $04, $032, $06d
	.byte $07e, $056, $019, $00, $021, $05e, $07f, $066
	.byte $029, $01, $013, $04e, $07c, $072, $03a, $07
	.byte $08, $03c, $073, $07b, $04c, $012, $01, $02a
	.byte $066, $07f, $05d, $020, $00, $01a, $057, $07e
	.byte $06c, $031, $03, $0d, $045, $078, $077, $043
	.byte $0c, $04, $033, $06e, $07e, $055, $018, $00
	.byte $022, $05f, $07f, $065, $028, $01, $013, $04f
	.byte $07c, $072, $039, $07, $08, $03d, $074, $07b
	.byte $04b, $011, $01, $02b, $067, $07f, $05c, $01f
	; LineNumber: 67
costable:	.byte $080, $062, $025, $00, $016, $052, $07d, $070
	.byte $036, $05, $0a, $040, $076, $07a, $048, $0f
	.byte $02, $02e, $06a, $07f, $05a, $01c, $00, $01d
	.byte $05b, $07f, $069, $02d, $02, $010, $049, $07a
	.byte $075, $03f, $09, $06, $037, $070, $07d, $051
	.byte $015, $00, $026, $063, $07f, $061, $024, $00
	.byte $017, $053, $07d, $06f, $035, $05, $0a, $041
	.byte $076, $079, $047, $0e, $03, $02f, $06b, $07f
	.byte $059, $01c, $00, $01e, $05c, $07f, $068, $02c
	.byte $02, $010, $04a, $07a, $074, $03e, $09, $06
	.byte $038, $071, $07c, $04f, $014, $00, $027, $064
	.byte $07f, $060, $023, $00, $017, $054, $07e, $06e
	.byte $034, $04, $0b, $042, $077, $079, $046, $0d
	.byte $03, $030, $06b, $07e, $058, $01b, $00, $01f
	.byte $05d, $07f, $067, $02b, $01, $011, $04c, $07b
	.byte $074, $03c, $08, $07, $03a, $072, $07c, $04e
	.byte $013, $01, $028, $065, $07f, $05f, $022, $00
	.byte $018, $055, $07e, $06d, $033, $04, $0c, $043
	.byte $077, $078, $045, $0d, $03, $031, $06c, $07e
	.byte $056, $01a, $00, $020, $05e, $07f, $066, $02a
	.byte $01, $012, $04d, $07b, $073, $03b, $07, $07
	.byte $03b, $073, $07c, $04d, $012, $01, $029, $066
	.byte $07f, $05e, $021, $00, $019, $056, $07e, $06d
	.byte $032, $03, $0c, $044, $078, $078, $044, $0c
	.byte $04, $032, $06d, $07e, $055, $019, $00, $021
	.byte $05f, $07f, $065, $029, $01, $013, $04e, $07c
	.byte $072, $03a, $07, $08, $03c, $073, $07b, $04c
	.byte $012, $01, $02a, $067, $07f, $05d, $020, $00
	.byte $01a, $057, $07e, $06c, $031, $03, $0d, $045
	.byte $078, $077, $043, $0b, $04, $033, $06e, $07e
	.byte $054, $018, $00, $022, $060, $07f, $064, $027
	.byte $01, $014, $04f, $07c, $072, $039, $06, $08
	; LineNumber: 69
wobble:	.byte $064, $07e, $081, $068, $04b, $045, $05b, $079
	.byte $083, $071, $052, $044, $052, $071, $083, $078
	.byte $05a, $045, $04b, $068, $081, $07e, $063, $048
	.byte $047, $05f, $07c, $082, $06c, $04e, $044, $057
	.byte $075, $083, $074, $056, $044, $04f, $06d, $082
	.byte $07b, $05e, $046, $049, $064, $07f, $080, $067
	.byte $04b, $045, $05b, $079, $083, $070, $052, $044
	.byte $053, $071, $083, $078, $05a, $045, $04c, $069
	.byte $081, $07e, $063, $048, $047, $060, $07c, $082
	.byte $06c, $04e, $044, $057, $076, $083, $074, $055
	.byte $044, $04f, $06e, $082, $07b, $05e, $046, $049
	.byte $065, $07f, $080, $067, $04b, $045, $05c, $079
	.byte $083, $070, $051, $044, $053, $072, $083, $077
	.byte $059, $044, $04c, $069, $081, $07e, $062, $048
	.byte $047, $060, $07d, $082, $06b, $04d, $044, $058
	.byte $076, $083, $073, $055, $044, $050, $06e, $083
	.byte $07b, $05d, $046, $04a, $065, $07f, $080, $066
	.byte $04a, $045, $05c, $07a, $083, $06f, $051, $044
	.byte $054, $072, $083, $077, $059, $044, $04d, $06a
	.byte $081, $07d, $062, $048, $047, $061, $07d, $082
	.byte $06b, $04d, $044, $058, $077, $083, $073, $054
	.byte $044, $050, $06f, $083, $07a, $05d, $046, $04a
	.byte $066, $080, $080, $066, $04a, $046, $05d, $07a
	.byte $083, $06f, $050, $044, $054, $073, $083, $077
	.byte $058, $044, $04d, $06b, $082, $07d, $061, $047
	.byte $048, $062, $07d, $081, $06a, $04d, $044, $059
	.byte $077, $083, $072, $054, $044, $051, $06f, $083
	.byte $07a, $05c, $045, $04a, $066, $080, $07f, $065
	.byte $04a, $046, $05d, $07b, $083, $06e, $050, $044
	.byte $055, $073, $083, $076, $058, $044, $04d, $06b
	.byte $082, $07d, $060, $047, $048, $062, $07e, $081
	.byte $069, $04c, $044, $059, $077, $083, $072, $053
	; LineNumber: 72
cindex:	.byte	$00
	; LineNumber: 75
tile1:	.byte $069, $069, $06a, $069, $069, $069, $069, $06a
	.byte $069, $069, $069, $069, $069, $06a, $069, $069
	.byte $04a, $04a, $04a, $069, $069, $069, $069, $04a
	.byte $04b, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04a, $04a, $04b, $04a, $04a, $04a, $04a
	.byte $04a, $04b, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	; LineNumber: 77
tile2:	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04b, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04b, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04b, $04a
	.byte $04a, $04b, $04a, $04a, $04a, $04a, $04a, $04a
	.byte $04a, $04a, $04a, $04a, $04a, $04a, $04a, $04a
	; LineNumber: 79
tile3:	.byte $06, $06, $07, $07, $07, $07, $06, $06
	.byte $06, $07, $09, $09, $09, $09, $07, $06
	.byte $07, $09, $09, $09, $09, $05, $05, $07
	.byte $07, $09, $09, $09, $05, $05, $05, $07
	.byte $07, $09, $09, $05, $05, $05, $05, $07
	.byte $07, $09, $09, $05, $05, $05, $05, $07
	.byte $06, $07, $05, $05, $05, $05, $07, $06
	.byte $06, $06, $07, $07, $07, $07, $06, $06
	; LineNumber: 82
sprite:	.byte $00, $00, $00, $071, $071, $00, $00, $00
	.byte $00, $00, $071, $0c8, $0c8, $071, $00, $00
	.byte $00, $00, $071, $0c8, $0c8, $071, $00, $00
	.byte $00, $00, $00, $071, $071, $00, $00, $00
	.byte $0e8, $00, $0e8, $0d4, $0d4, $0e8, $00, $0e8
	.byte $00, $0e8, $0d6, $0d4, $0d4, $0d5, $0e8, $00
	.byte $00, $0e8, $0d6, $0d4, $0d4, $0d5, $0e8, $00
	.byte $00, $00, $0e8, $0e8, $0e8, $0e8, $00, $00
	; LineNumber: 86
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
	; LineNumber: 209
dy:	.byte	0
	; LineNumber: 210
sprX:	.res	60,0
	; LineNumber: 211
sprY:	.res	60,0
	; LineNumber: 212
lastRow:	.res	30,0
	; LineNumber: 213
tilenum:	.res	60,0
	; LineNumber: 214
rrbIndex:	.res	30,0
	; LineNumber: 215
tileNumBased:	.res	60,0
	; LineNumber: 216
spta:	.word	0
	; LineNumber: 217
windex:	.byte	0
	; LineNumber: 218
d:	.byte	0
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
	; ***********  Defining procedure : initmoveto
	;    Procedure type : Built-in function
	;    Requires initialization : no
	jmp initmoveto_moveto3
screenmemory =  $fe
colormemory =  $fb
screen_x = $4c
screen_y = $4e
SetScreenPosition:
	sta screenmemory+1
	lda #0
	sta screenmemory
	ldy screen_y
	beq sydone
syloop:
	clc
	adc #80
	bcc sskip
	inc screenmemory+1
sskip:
	dey
	bne syloop
sydone:
	ldx screen_x
	beq sxdone
	clc
	adc screen_x
	bcc sxdone
	inc screenmemory+1
sxdone:
	sta screenmemory
	rts
initmoveto_moveto3:
	rts
end_procedure_initmoveto:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Memory_Poke32
	;    Procedure type : User-defined procedure
	; LineNumber: 26
Memory_Poke32_block4:
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
; // Helper functions, I had problems with hi and lo
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_hiByte
	;    Procedure type : User-defined procedure
	; LineNumber: 28
	; LineNumber: 27
localVariable_DMA_hiByte_DMA_val1:	.word	0
DMA_hiByte_block5:
DMA_hiByte:
	; LineNumber: 30
	; LineNumber: 30
	; integer assignment NodeVar
	ldy localVariable_DMA_hiByte_DMA_val1+1 ; keep
	lda localVariable_DMA_hiByte_DMA_val1
DMA_hiByte_tempVarShift_var6 = $54
	sta DMA_hiByte_tempVarShift_var6
	sty DMA_hiByte_tempVarShift_var6+1
	; COUNT : 8
		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

		lsr DMA_hiByte_tempVarShift_var6+1 ;keep
	ror DMA_hiByte_tempVarShift_var6+0 ;keep

	lda DMA_hiByte_tempVarShift_var6
	ldy DMA_hiByte_tempVarShift_var6+1
	rts
end_procedure_DMA_hiByte:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_loByte
	;    Procedure type : User-defined procedure
	; LineNumber: 33
	; LineNumber: 32
localVariable_DMA_loByte_DMA_val2:	.word	0
DMA_loByte_block7:
DMA_loByte:
	; LineNumber: 35
	; LineNumber: 35
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy localVariable_DMA_loByte_DMA_val2+1 ; keep
	lda localVariable_DMA_loByte_DMA_val2
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
	; LineNumber: 46
	; LineNumber: 45
localVariable_DMA_poke16_DMA_pa:	.word	0
	; LineNumber: 45
localVariable_DMA_poke16_DMA_pb:	.word	0
	; LineNumber: 45
localVariable_DMA_poke16_DMA_val:	.word	0
DMA_poke16_block9:
DMA_poke16:
	; LineNumber: 51
	
; //       pa   pb
; //     zphi zplo
; //     xxxx xxxx
; // bsp$0FF8 0000	- color ram
	lda localVariable_DMA_poke16_DMA_pb
	ldx localVariable_DMA_poke16_DMA_pb+1
	sta Memory_zpLo
	stx Memory_zpLo+1
	; LineNumber: 52
	lda localVariable_DMA_poke16_DMA_pa
	ldx localVariable_DMA_poke16_DMA_pa+1
	sta Memory_zpHi
	stx Memory_zpHi+1
	; LineNumber: 53
	
; // 32 bit addressing through pointers
	lda #$0
	; Calling storevariable on generic assign expression
	sta Memory_pa
	; integer assignment NodeVar
	ldy localVariable_DMA_poke16_DMA_val+1 ; keep
	lda localVariable_DMA_poke16_DMA_val
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta Memory_pb
	jsr Memory_Poke32
	; LineNumber: 54
	lda #$1
	; Calling storevariable on generic assign expression
	sta Memory_pa
	; integer assignment NodeVar
	ldy localVariable_DMA_poke16_DMA_val+1 ; keep
	lda localVariable_DMA_poke16_DMA_val
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta Memory_pb
	jsr Memory_Poke32
	; LineNumber: 55
	rts
end_procedure_DMA_poke16:
	
; // Start the DMA process... don't call unless you populatet the dmalist array
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_do_dma
	;    Procedure type : User-defined procedure
	; LineNumber: 60
DMA_do_dma:
	; LineNumber: 61
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $d702
	; LineNumber: 62
	; Poke
	; Optimization: shift is zero
	sta $d704
	; LineNumber: 63
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	sta $d701
	; LineNumber: 64
	; Poke
	; Optimization: shift is zero
	lda #<DMA_dmalist
	ldy #>DMA_dmalist
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	sta $d705
	; LineNumber: 65
	rts
end_procedure_DMA_do_dma:
	;******************************************************************* 
; //	lpoke
; //	pokes a byte into anywhere in the 256MB range
; // ******************************************************************** 
; //	mb1				- Megabyte
; //	b1				- Bank
; //	addr1			- address word
; //	value 			- value to poke
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lpoke
	;    Procedure type : User-defined procedure
	; LineNumber: 119
	; LineNumber: 118
localVariable_DMA_lpoke_DMA_dma_byte1:	.byte	0
	; LineNumber: 117
localVariable_DMA_lpoke_DMA_mb1:	.byte	0
	; LineNumber: 117
localVariable_DMA_lpoke_DMA_b1:	.byte	0
	; LineNumber: 117
localVariable_DMA_lpoke_DMA_addr1:	.word	0
	; LineNumber: 117
localVariable_DMA_lpoke_DMA_value:	.byte	0
DMA_lpoke_block11:
DMA_lpoke:
	; LineNumber: 120
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 121
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 122
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 124
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 125
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 126
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 127
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 130
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 131
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 132
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 134
	lda localVariable_DMA_lpoke_DMA_value
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_dma_byte1
	; LineNumber: 136
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 137
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 138
	lda #<localVariable_DMA_lpoke_DMA_dma_byte1
	ldy #>localVariable_DMA_lpoke_DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 139
	lda #<localVariable_DMA_lpoke_DMA_dma_byte1
	ldy #>localVariable_DMA_lpoke_DMA_dma_byte1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 141
	lda localVariable_DMA_lpoke_DMA_mb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 142
	lda localVariable_DMA_lpoke_DMA_b1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 143
	; integer assignment NodeVar
	ldy localVariable_DMA_lpoke_DMA_addr1+1 ; keep
	lda localVariable_DMA_lpoke_DMA_addr1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 144
	; integer assignment NodeVar
	ldy localVariable_DMA_lpoke_DMA_addr1+1 ; keep
	lda localVariable_DMA_lpoke_DMA_addr1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 147
	jsr DMA_do_dma
	; LineNumber: 148
	rts
end_procedure_DMA_lpoke:
	;******************************************************************* 
; //	lcopy
; //	DMA job to copy count1 bytes from [smb][sb][saddr] to 
; //	[dmb][db][daddr]
; // ******************************************************************** 
; //	smb				- Source Megabyte
; //	sb				- Source Bank
; //	saddr			- Source address word
; //	dmb				- Destination Megabyte
; //	db				- Destination Bank
; //	daddr			- Destination Address
; //	count1			- how many bytes to copy
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lcopy
	;    Procedure type : User-defined procedure
	; LineNumber: 165
	; LineNumber: 164
localVariable_DMA_lcopy_DMA_smb:	.byte	0
	; LineNumber: 164
localVariable_DMA_lcopy_DMA_sb:	.byte	0
	; LineNumber: 164
localVariable_DMA_lcopy_DMA_saddr:	.word	0
	; LineNumber: 164
localVariable_DMA_lcopy_DMA_dmb:	.byte	0
	; LineNumber: 164
localVariable_DMA_lcopy_DMA_db:	.byte	0
	; LineNumber: 164
localVariable_DMA_lcopy_DMA_daddr:	.word	0
	; LineNumber: 164
localVariable_DMA_lcopy_DMA_count1:	.word	0
DMA_lcopy_block12:
DMA_lcopy:
	; LineNumber: 166
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 167
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 168
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 169
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 170
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 171
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 172
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 173
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 175
	; integer assignment NodeVar
	ldy localVariable_DMA_lcopy_DMA_count1+1 ; keep
	lda localVariable_DMA_lcopy_DMA_count1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 176
	; integer assignment NodeVar
	ldy localVariable_DMA_lcopy_DMA_count1+1 ; keep
	lda localVariable_DMA_lcopy_DMA_count1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 178
	lda localVariable_DMA_lcopy_DMA_smb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 179
	lda localVariable_DMA_lcopy_DMA_sb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 180
	; integer assignment NodeVar
	ldy localVariable_DMA_lcopy_DMA_saddr+1 ; keep
	lda localVariable_DMA_lcopy_DMA_saddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 181
	; integer assignment NodeVar
	ldy localVariable_DMA_lcopy_DMA_saddr+1 ; keep
	lda localVariable_DMA_lcopy_DMA_saddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 183
	lda localVariable_DMA_lcopy_DMA_dmb
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 184
	lda localVariable_DMA_lcopy_DMA_db
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 185
	; integer assignment NodeVar
	ldy localVariable_DMA_lcopy_DMA_daddr+1 ; keep
	lda localVariable_DMA_lcopy_DMA_daddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 186
	; integer assignment NodeVar
	ldy localVariable_DMA_lcopy_DMA_daddr+1 ; keep
	lda localVariable_DMA_lcopy_DMA_daddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 188
	jsr DMA_do_dma
	; LineNumber: 189
	rts
end_procedure_DMA_lcopy:
	;******************************************************************* 
; //	lfill
; //	DMA job to fill count2 bytes to [dmb1][db1][daddr1]
; // ******************************************************************** 
; //	dmb1				- Destination Megabyte
; //	db1				- Destination Bank
; //	daddr1			- Destination Address
; //	value1			- fill with this value
; //	count2			- how many bytes to fill
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : DMA_lfill
	;    Procedure type : User-defined procedure
	; LineNumber: 203
	; LineNumber: 202
localVariable_DMA_lfill_DMA_dmb1:	.byte	0
	; LineNumber: 202
localVariable_DMA_lfill_DMA_db1:	.byte	0
	; LineNumber: 202
localVariable_DMA_lfill_DMA_daddr1:	.word	0
	; LineNumber: 202
localVariable_DMA_lfill_DMA_value1:	.byte	0
	; LineNumber: 202
localVariable_DMA_lfill_DMA_count2:	.word	0
DMA_lfill_block13:
DMA_lfill:
	; LineNumber: 204
	lda #$b
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$0
	; LineNumber: 205
	lda #$80
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$1
	; LineNumber: 206
	lda #$81
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$3
	; LineNumber: 207
	lda #$85
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$5
	; LineNumber: 208
	lda #$1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$6
	; LineNumber: 209
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$7
	; LineNumber: 210
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$11
	; LineNumber: 211
	lda #$3
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$8
	; LineNumber: 213
	; integer assignment NodeVar
	ldy localVariable_DMA_lfill_DMA_count2+1 ; keep
	lda localVariable_DMA_lfill_DMA_count2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$9
	; LineNumber: 214
	; integer assignment NodeVar
	ldy localVariable_DMA_lfill_DMA_count2+1 ; keep
	lda localVariable_DMA_lfill_DMA_count2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$a
	; LineNumber: 216
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$2
	; LineNumber: 217
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$d
	; LineNumber: 218
	lda localVariable_DMA_lfill_DMA_value1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$b
	; LineNumber: 219
	lda #$0
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$c
	; LineNumber: 221
	lda localVariable_DMA_lfill_DMA_dmb1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$4
	; LineNumber: 222
	lda localVariable_DMA_lfill_DMA_db1
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$10
	; LineNumber: 223
	; integer assignment NodeVar
	ldy localVariable_DMA_lfill_DMA_daddr1+1 ; keep
	lda localVariable_DMA_lfill_DMA_daddr1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$e
	; LineNumber: 224
	; integer assignment NodeVar
	ldy localVariable_DMA_lfill_DMA_daddr1+1 ; keep
	lda localVariable_DMA_lfill_DMA_daddr1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta DMA_dmalist+$f
	; LineNumber: 226
	jsr DMA_do_dma
	; LineNumber: 227
	rts
end_procedure_DMA_lfill:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_setFCM
	;    Procedure type : User-defined procedure
	; LineNumber: 58
mega65_setFCM:
	; LineNumber: 59
	; ****** Inline assembler section
	 sei
      lda #$35
      sta $01
      ; enable 40Mhz
      lda #$41
      sta $00
      ; enable VIC4
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
      ; disable CIA interrupts
      lda #$7f
      sta $dc0d
      sta $dd0d
      ; disable C65 Rom
      lda #$70
      sta $d640
      eom
      ; disable IRQ raster
      lda #$00
      sta $d01a
      ; Unmap C65 Roms
      lda #%11111000
      trb $d030
      cli
      ;Change VIC2 stuff here to save having to disable hot registers
      lda #%00000111
		  trb $d016
      ; 40 cols
      lda #%10100000		;Clear bit7=40 column, bit5=disable extended attribute
      trb $d031
      ;Setup up FCM 
      lda #%00000101  ;Enable 16 bit char numbers(bit0) and 
		  sta $d054       ;full color for chars>$ff(bit2)
    
      lda #$00
      sta $d020
      sta $d021
		; set double buffer
		lda #%10000000
		trb $D051
	
	; LineNumber: 137
	rts
end_procedure_mega65_setFCM:
	;	asm("
; //		lda #%00000111
; //		trb $d016
; //		
; //		lda #%10100000
; //		trb $d031
; //		
; //		lda #%00000101
; //		sta $d054
; //		
; //		lda #$00
; //		sta $d020
; //		sta $d021
; //		
; //	");	
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_relocateScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 141
	; LineNumber: 140
localVariable_mega65_relocateScreen_mega65_p	= $04
	; LineNumber: 139
localVariable_mega65_relocateScreen_mega65_b:	.byte	0
	; LineNumber: 139
localVariable_mega65_relocateScreen_mega65_addr:	.word	0
mega65_relocateScreen_block15:
mega65_relocateScreen:
	; LineNumber: 142
	lda localVariable_mega65_relocateScreen_mega65_b
	; Calling storevariable on generic assign expression
	sta mega65_screenB
	; LineNumber: 143
	; integer assignment NodeVar
	ldy localVariable_mega65_relocateScreen_mega65_addr+1 ; keep
	lda localVariable_mega65_relocateScreen_mega65_addr
	; Calling storevariable on generic assign expression
	sta mega65_screenaddr
	sty mega65_screenaddr+1
	; LineNumber: 144
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
	; LineNumber: 145
	; Poke
	; Optimization: shift is zero
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy localVariable_mega65_relocateScreen_mega65_addr+1 ; keep
	lda localVariable_mega65_relocateScreen_mega65_addr
	and #$ff
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	and #$00
	tay 
	pla 
	sta $d060
	; LineNumber: 146
	; Poke
	; Optimization: shift is zero
	lda localVariable_mega65_relocateScreen_mega65_b
	sta $d062
	; LineNumber: 147
	rts
end_procedure_mega65_relocateScreen:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : mega65_SetRowSize
	;    Procedure type : User-defined procedure
	; LineNumber: 150
	; LineNumber: 149
localVariable_mega65_SetRowSize_mega65_newRowSize:	.byte	0
mega65_SetRowSize_block18:
mega65_SetRowSize:
	; LineNumber: 151
	lda localVariable_mega65_SetRowSize_mega65_newRowSize
	; Calling storevariable on generic assign expression
	sta mega65_RowSize
	; LineNumber: 152
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
	; LineNumber: 153
	; Poke
	; Optimization: shift is zero
	lda mega65_RowSize
	sta $d05e
	; LineNumber: 154
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
	; LineNumber: 155
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
	; LineNumber: 156
	rts
end_procedure_mega65_SetRowSize:
	
; // 0..29 - 30 SPRITES PER ROW MAX, cause FCM, NCM will follow with more Sprites
; // look up tables
; // Addresses******************************************************************* 
; //	setTransparentTile 
; // ******************************************************************** 
; //	defines the transparent tile
; //	
; //	e.g. t=2048 
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_setTransparentTile
	;    Procedure type : User-defined procedure
	; LineNumber: 44
	; LineNumber: 43
localVariable_RRB_setTransparentTile_RRB_t:	.word	0
RRB_setTransparentTile_block21:
RRB_setTransparentTile:
	; LineNumber: 45
	; integer assignment NodeVar
	ldy localVariable_RRB_setTransparentTile_RRB_t+1 ; keep
	lda localVariable_RRB_setTransparentTile_RRB_t
	; Calling storevariable on generic assign expression
	sta RRB_transparentTile
	sty RRB_transparentTile+1
	; LineNumber: 46
	rts
end_procedure_RRB_setTransparentTile:
	;******************************************************************* 
; //	copySpriteTileOffset 
; // ******************************************************************** 
; //	In order to put a sprite off grid you have to use 2 tiles and
; //	copy the original sprite data in these tiles 
; //	
; //	e.g. sprNum=2052 
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_copySpriteTileOffset
	;    Procedure type : User-defined procedure
	; LineNumber: 57
	; LineNumber: 56
localVariable_RRB_copySpriteTileOffset_RRB_sprNum:	.word	0
	; LineNumber: 56
localVariable_RRB_copySpriteTileOffset_RRB__offset:	.byte	0
RRB_copySpriteTileOffset_block22:
RRB_copySpriteTileOffset:
	; LineNumber: 59
	
; // lfill(dmb1:byte;db1:byte;daddr1:integer;value1:byte;count2:integer)
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_dmb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_db1
	; integer assignment NodeVar
	ldy localVariable_RRB_copySpriteTileOffset_RRB_sprNum+1 ; keep
	lda localVariable_RRB_copySpriteTileOffset_RRB_sprNum
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_daddr1
	sty localVariable_DMA_lfill_DMA_daddr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_value1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$80
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_count2
	sty localVariable_DMA_lfill_DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 62
	
; // copy sprite tile data with offset(_offset) to this space
; // Sprite Data at $1F000
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_smb
	lda RRB_sprDataBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_sb
	; integer assignment NodeVar
	ldy RRB_sprDataAddress+1 ; keep
	lda RRB_sprDataAddress
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_saddr
	sty localVariable_DMA_lcopy_DMA_saddr+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_dmb
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_db
	; HandleVarBinopB16bit
	ldy #0 ; ::HandleVarBinopB16bit 0
	; RHS is pure, optimization
	; Load Byte array
	ldx localVariable_RRB_copySpriteTileOffset_RRB__offset
	lda RRB_rrbOffsetLookUp,x
	clc
	adc localVariable_RRB_copySpriteTileOffset_RRB_sprNum
	; Testing for byte:  localVariable_RRB_copySpriteTileOffset_RRB_sprNum+1
	; RHS is word, no optimization
	pha 
	tya 
	adc localVariable_RRB_copySpriteTileOffset_RRB_sprNum+1
	tay 
	pla 
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_daddr
	sty localVariable_DMA_lcopy_DMA_daddr+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_count1
	sty localVariable_DMA_lcopy_DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 63
	rts
end_procedure_RRB_copySpriteTileOffset:
	;******************************************************************* 
; //	myMod 
; // ******************************************************************** 
; //	calcs the modulo of num%modulus
; //	- just a test, don't know if it's faster than mod
; //	
; //	e.g. num=6,modulus=8 => 6 
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_myMod
	;    Procedure type : User-defined procedure
	; LineNumber: 75
	; LineNumber: 74
localVariable_RRB_myMod_RRB_ret:	.byte	0
	; LineNumber: 73
localVariable_RRB_myMod_RRB_num:	.byte	0
	; LineNumber: 73
localVariable_RRB_myMod_RRB_modulus:	.byte	0
RRB_myMod_block24:
RRB_myMod:
	; LineNumber: 76
	; ****** Inline assembler section
		lda localVariable_RRB_myMod_RRB_num
		sec
	modu:
		sbc localVariable_RRB_myMod_RRB_modulus
		bcs modu
		adc localVariable_RRB_myMod_RRB_modulus
		sta localVariable_RRB_myMod_RRB_ret
		
	
	; LineNumber: 87
	; LineNumber: 87
	rts
end_procedure_RRB_myMod:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_UpdateSprite
	;    Procedure type : User-defined procedure
	; LineNumber: 107
	; LineNumber: 103
localVariable_RRB_UpdateSprite_RRB_row:	.byte	0
	; LineNumber: 104
localVariable_RRB_UpdateSprite_RRB_yoffset:	.byte	0
	; LineNumber: 105
localVariable_RRB_UpdateSprite_RRB_sprAddr:	.word	0
	; LineNumber: 106
localVariable_RRB_UpdateSprite_RRB_sprRow:	.word	0
	; LineNumber: 102
localVariable_RRB_UpdateSprite_RRB_tilenum:	.word	0
	; LineNumber: 102
localVariable_RRB_UpdateSprite_RRB_sprNum:	.word	0
	; LineNumber: 102
localVariable_RRB_UpdateSprite_RRB_lastrow:	.byte	0
	; LineNumber: 102
localVariable_RRB_UpdateSprite_RRB_x:	.word	0
	; LineNumber: 102
localVariable_RRB_UpdateSprite_RRB_y:	.word	0
	; LineNumber: 102
localVariable_RRB_UpdateSprite_RRB_rrbIndex:	.byte	0
RRB_UpdateSprite_block25:
RRB_UpdateSprite:
	; LineNumber: 108
	; Load Byte array
	ldx localVariable_RRB_UpdateSprite_RRB_y
	lda RRB_rrbRowLookUp,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_row
	; LineNumber: 109
	; Load Byte array
	lda RRB_rrbModLookUp,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_yoffset
	; LineNumber: 110
	; Load Byte array
	ldy #0 ; lhs is byte, but integer required
	ldx localVariable_RRB_UpdateSprite_RRB_rrbIndex
	lda RRB_rrbSprRowLookUp,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_sprRow
	sty localVariable_RRB_UpdateSprite_RRB_sprRow+1
	; LineNumber: 113
	
; // clear sprite last position = lastrow
	; Generic 16 bit op
	lda #$2
RRB_UpdateSprite_rightvarInteger_var28 = $54
	sta RRB_UpdateSprite_rightvarInteger_var28
	sty RRB_UpdateSprite_rightvarInteger_var28+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda localVariable_RRB_UpdateSprite_RRB_lastrow
	asl
	tax
	lda RRB_scrMemRowLookUp,x
	ldy RRB_scrMemRowLookUp+1,x
	clc
	adc localVariable_RRB_UpdateSprite_RRB_sprRow
	; Testing for byte:  localVariable_RRB_UpdateSprite_RRB_sprRow+1
	; RHS is word, no optimization
	pha 
	tya 
	adc localVariable_RRB_UpdateSprite_RRB_sprRow+1
	tay 
	pla 
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var28
RRB_UpdateSprite_wordAdd26:
	sta RRB_UpdateSprite_rightvarInteger_var28
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var28+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var28
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr
	sty localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	; LineNumber: 114
	; Generic 16 bit op
	ldy #0
	lda RRB_screenMapBank
RRB_UpdateSprite_rightvarInteger_var32 = $54
	sta RRB_UpdateSprite_rightvarInteger_var32
	sty RRB_UpdateSprite_rightvarInteger_var32+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var32
RRB_UpdateSprite_wordAdd30:
	sta RRB_UpdateSprite_rightvarInteger_var32
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var32+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var32
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pa
	sty localVariable_DMA_poke16_DMA_pa+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_sprAddr+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pb
	sty localVariable_DMA_poke16_DMA_pb+1
	; integer assignment NodeVar
	ldy RRB_transparentTile+1 ; keep
	lda RRB_transparentTile
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_val
	sty localVariable_DMA_poke16_DMA_val+1
	jsr DMA_poke16
	; LineNumber: 116
	
; // next line	
	; Generic 16 bit op
	ldy #0
	lda #$2
RRB_UpdateSprite_rightvarInteger_var35 = $54
	sta RRB_UpdateSprite_rightvarInteger_var35
	sty RRB_UpdateSprite_rightvarInteger_var35+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_RRB_UpdateSprite_RRB_lastrow
	clc
	adc #$1
	 ; end add / sub var with constant
	asl
	tax
	lda RRB_scrMemRowLookUp,x
	ldy RRB_scrMemRowLookUp+1,x
	clc
	adc localVariable_RRB_UpdateSprite_RRB_sprRow
	; Testing for byte:  localVariable_RRB_UpdateSprite_RRB_sprRow+1
	; RHS is word, no optimization
	pha 
	tya 
	adc localVariable_RRB_UpdateSprite_RRB_sprRow+1
	tay 
	pla 
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var35
RRB_UpdateSprite_wordAdd33:
	sta RRB_UpdateSprite_rightvarInteger_var35
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var35+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var35
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr
	sty localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	; LineNumber: 117
	; Generic 16 bit op
	ldy #0
	lda RRB_screenMapBank
RRB_UpdateSprite_rightvarInteger_var39 = $54
	sta RRB_UpdateSprite_rightvarInteger_var39
	sty RRB_UpdateSprite_rightvarInteger_var39+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var39
RRB_UpdateSprite_wordAdd37:
	sta RRB_UpdateSprite_rightvarInteger_var39
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var39+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var39
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pa
	sty localVariable_DMA_poke16_DMA_pa+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_sprAddr+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pb
	sty localVariable_DMA_poke16_DMA_pb+1
	; integer assignment NodeVar
	ldy RRB_transparentTile+1 ; keep
	lda RRB_transparentTile
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_val
	sty localVariable_DMA_poke16_DMA_val+1
	jsr DMA_poke16
	; LineNumber: 121
	
; // copy Sprite Data to SpriteTile with offset
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_sprNum+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_sprNum
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_copySpriteTileOffset_RRB_sprNum
	sty localVariable_RRB_copySpriteTileOffset_RRB_sprNum+1
	lda localVariable_RRB_UpdateSprite_RRB_yoffset
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_copySpriteTileOffset_RRB__offset
	jsr RRB_copySpriteTileOffset
	; LineNumber: 126
	
; // Draw at new position
; // lookup RRB position of sprite	- ScreenMemory
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda localVariable_RRB_UpdateSprite_RRB_row
	asl
	tax
	lda RRB_scrMemRowLookUp,x
	ldy RRB_scrMemRowLookUp+1,x
	clc
	adc localVariable_RRB_UpdateSprite_RRB_sprRow
	; Testing for byte:  localVariable_RRB_UpdateSprite_RRB_sprRow+1
	; RHS is word, no optimization
	pha 
	tya 
	adc localVariable_RRB_UpdateSprite_RRB_sprRow+1
	tay 
	pla 
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr
	sty localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	; LineNumber: 128
	
; // Insert new X Position
	; Generic 16 bit op
	ldy #0
	lda RRB_screenMapBank
RRB_UpdateSprite_rightvarInteger_var43 = $54
	sta RRB_UpdateSprite_rightvarInteger_var43
	sty RRB_UpdateSprite_rightvarInteger_var43+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var43
RRB_UpdateSprite_wordAdd41:
	sta RRB_UpdateSprite_rightvarInteger_var43
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var43+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var43
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pa
	sty localVariable_DMA_poke16_DMA_pa+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_sprAddr+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pb
	sty localVariable_DMA_poke16_DMA_pb+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_x+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_x
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_val
	sty localVariable_DMA_poke16_DMA_val+1
	jsr DMA_poke16
	; LineNumber: 131
	
; // next Line also
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	clc
	adc mega65_LogicalRowSize
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr+0
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	adc mega65_LogicalRowSize+1
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	; LineNumber: 133
	
; // Insert new X Position
	; Generic 16 bit op
	ldy #0
	lda RRB_screenMapBank
RRB_UpdateSprite_rightvarInteger_var47 = $54
	sta RRB_UpdateSprite_rightvarInteger_var47
	sty RRB_UpdateSprite_rightvarInteger_var47+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var47
RRB_UpdateSprite_wordAdd45:
	sta RRB_UpdateSprite_rightvarInteger_var47
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var47+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var47
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pa
	sty localVariable_DMA_poke16_DMA_pa+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_sprAddr+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pb
	sty localVariable_DMA_poke16_DMA_pb+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_x+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_x
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_val
	sty localVariable_DMA_poke16_DMA_val+1
	jsr DMA_poke16
	; LineNumber: 136
	
; // lookup the RRB Address for Sprite Tile
	; Generic 16 bit op
	ldy #0
	lda #$2
RRB_UpdateSprite_rightvarInteger_var50 = $54
	sta RRB_UpdateSprite_rightvarInteger_var50
	sty RRB_UpdateSprite_rightvarInteger_var50+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	lda localVariable_RRB_UpdateSprite_RRB_row
	asl
	tax
	lda RRB_scrMemRowLookUp,x
	ldy RRB_scrMemRowLookUp+1,x
	clc
	adc localVariable_RRB_UpdateSprite_RRB_sprRow
	; Testing for byte:  localVariable_RRB_UpdateSprite_RRB_sprRow+1
	; RHS is word, no optimization
	pha 
	tya 
	adc localVariable_RRB_UpdateSprite_RRB_sprRow+1
	tay 
	pla 
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var50
RRB_UpdateSprite_wordAdd48:
	sta RRB_UpdateSprite_rightvarInteger_var50
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var50+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var50
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr
	sty localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	; LineNumber: 138
	
; // Insert new SpriteTile
	; Generic 16 bit op
	ldy #0
	lda RRB_screenMapBank
RRB_UpdateSprite_rightvarInteger_var54 = $54
	sta RRB_UpdateSprite_rightvarInteger_var54
	sty RRB_UpdateSprite_rightvarInteger_var54+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var54
RRB_UpdateSprite_wordAdd52:
	sta RRB_UpdateSprite_rightvarInteger_var54
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var54+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var54
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pa
	sty localVariable_DMA_poke16_DMA_pa+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_sprAddr+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pb
	sty localVariable_DMA_poke16_DMA_pb+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_tilenum+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_tilenum
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_val
	sty localVariable_DMA_poke16_DMA_val+1
	jsr DMA_poke16
	; LineNumber: 140
	
; // next line also
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	clc
	adc mega65_LogicalRowSize
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr+0
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	adc mega65_LogicalRowSize+1
	sta localVariable_RRB_UpdateSprite_RRB_sprAddr+1
	; LineNumber: 141
	; Generic 16 bit op
	ldy #0
	lda RRB_screenMapBank
RRB_UpdateSprite_rightvarInteger_var58 = $54
	sta RRB_UpdateSprite_rightvarInteger_var58
	sty RRB_UpdateSprite_rightvarInteger_var58+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Low bit binop:
	clc
	adc RRB_UpdateSprite_rightvarInteger_var58
RRB_UpdateSprite_wordAdd56:
	sta RRB_UpdateSprite_rightvarInteger_var58
	; High-bit binop
	tya
	adc RRB_UpdateSprite_rightvarInteger_var58+1
	tay
	lda RRB_UpdateSprite_rightvarInteger_var58
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pa
	sty localVariable_DMA_poke16_DMA_pa+1
	; integer assignment NodeVar
	ldy localVariable_RRB_UpdateSprite_RRB_sprAddr+1 ; keep
	lda localVariable_RRB_UpdateSprite_RRB_sprAddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pb
	sty localVariable_DMA_poke16_DMA_pb+1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_UpdateSprite_RRB_tilenum
	clc
	adc #$01
	sta localVariable_DMA_poke16_DMA_val+0
	lda localVariable_RRB_UpdateSprite_RRB_tilenum+1
	adc #$00
	sta localVariable_DMA_poke16_DMA_val+1
	jsr DMA_poke16
	; LineNumber: 142
	rts
end_procedure_RRB_UpdateSprite:
	;******************************************************************* 
; //	AddSpriteLayer 
; // ******************************************************************** 
; //	Adds a Sprite Layer with n Sprites per Row
; //
; //	n		 		- number of Sprites
; //	sprDBank			- Bank of Sprite Memory
; //	sprDAddr			- Startaddress of Sprite Memory
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_addSpriteLayer
	;    Procedure type : User-defined procedure
	; LineNumber: 154
	; LineNumber: 153
localVariable_RRB_addSpriteLayer_RRB_n:	.byte	0
	; LineNumber: 153
localVariable_RRB_addSpriteLayer_RRB_sprDBank:	.byte	0
	; LineNumber: 153
localVariable_RRB_addSpriteLayer_RRB_sprDAddr:	.word	0
RRB_addSpriteLayer_block60:
RRB_addSpriteLayer:
	; LineNumber: 155
	lda localVariable_RRB_addSpriteLayer_RRB_sprDBank
	; Calling storevariable on generic assign expression
	sta RRB_sprDataBank
	; LineNumber: 156
	; integer assignment NodeVar
	ldy localVariable_RRB_addSpriteLayer_RRB_sprDAddr+1 ; keep
	lda localVariable_RRB_addSpriteLayer_RRB_sprDAddr
	; Calling storevariable on generic assign expression
	sta RRB_sprDataAddress
	sty RRB_sprDataAddress+1
	; LineNumber: 157
	; Binary clause Simplified: LESS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda RRB_maxSpritesPerRow
	clc
	adc localVariable_RRB_addSpriteLayer_RRB_n
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1d;keep
	bcs RRB_addSpriteLayer_elseblock63
RRB_addSpriteLayer_ConditionalTrueBlock62: ;Main true block ;keep:
	; LineNumber: 158
	; LineNumber: 159
	; 8 bit binop
	; Add/sub where right value is constant number
	lda RRB_maxSpritesPerRow
	clc
	adc localVariable_RRB_addSpriteLayer_RRB_n
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta RRB_maxSpritesPerRow
	; LineNumber: 160
	jmp RRB_addSpriteLayer_elsedoneblock64
RRB_addSpriteLayer_elseblock63:
	; LineNumber: 161
	; LineNumber: 162
	lda #$1d
	; Calling storevariable on generic assign expression
	sta RRB_maxSpritesPerRow
	; LineNumber: 163
RRB_addSpriteLayer_elsedoneblock64:
	; LineNumber: 164
	rts
end_procedure_RRB_addSpriteLayer:
	;******************************************************************* 
; //	addTileLayer
; // ******************************************************************** 
; //	madrBank 			- Bank of Screen Buffer
; //	mapAddress 		- StartAddress of Screen Buffer
; //	mapWidth			- Width of the Screen Buffer
; //
; //	TileBase is currently fixed at [2048] - $20000
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_addTileLayer
	;    Procedure type : User-defined procedure
	; LineNumber: 177
	; LineNumber: 176
localVariable_RRB_addTileLayer_RRB_madrBank:	.byte	0
	; LineNumber: 176
localVariable_RRB_addTileLayer_RRB_mapAddress:	.word	0
	; LineNumber: 176
localVariable_RRB_addTileLayer_RRB_mapWidth:	.word	0
RRB_addTileLayer_block69:
RRB_addTileLayer:
	; LineNumber: 178
	; integer assignment NodeVar
	ldy localVariable_RRB_addTileLayer_RRB_mapAddress+1 ; keep
	lda localVariable_RRB_addTileLayer_RRB_mapAddress
	; Calling storevariable on generic assign expression
	sta RRB_tileLayerAddr
	sty RRB_tileLayerAddr+1
	; LineNumber: 179
	lda localVariable_RRB_addTileLayer_RRB_madrBank
	; Calling storevariable on generic assign expression
	sta RRB_tileLayerBank
	; LineNumber: 180
	; integer assignment NodeVar
	ldy localVariable_RRB_addTileLayer_RRB_mapWidth+1 ; keep
	lda localVariable_RRB_addTileLayer_RRB_mapWidth
	; Calling storevariable on generic assign expression
	sta RRB_tileLayerWidth
	sty RRB_tileLayerWidth+1
	; LineNumber: 181
	rts
end_procedure_RRB_addTileLayer:
	;******************************************************************* 
; //	UpdateRRB
; //	Update the Raster Rewrite Buffer
; // ******************************************************************** 
; //
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_UpdateRRB
	;    Procedure type : User-defined procedure
	; LineNumber: 191
RRB_UpdateRRB:
	; LineNumber: 192
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_smb
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_sb
	; integer assignment NodeVar
	ldy RRB_colorMapAddress+1 ; keep
	lda RRB_colorMapAddress
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_saddr
	sty localVariable_DMA_lcopy_DMA_saddr+1
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_dmb
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_db
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_daddr
	sty localVariable_DMA_lcopy_DMA_daddr+1
	; integer assignment NodeVar
	ldy RRB_screenSize+1 ; keep
	lda RRB_screenSize
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_count1
	sty localVariable_DMA_lcopy_DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 193
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_smb
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_sb
	; integer assignment NodeVar
	ldy RRB_screenMapAddress+1 ; keep
	lda RRB_screenMapAddress
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_saddr
	sty localVariable_DMA_lcopy_DMA_saddr+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_dmb
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_db
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_daddr
	sty localVariable_DMA_lcopy_DMA_daddr+1
	; integer assignment NodeVar
	ldy RRB_screenSize+1 ; keep
	lda RRB_screenSize
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_count1
	sty localVariable_DMA_lcopy_DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 194
	rts
end_procedure_RRB_UpdateRRB:
	;******************************************************************* 
; //	CreateRRB
; //	Calculates the Raster Rewrite Buffer
; // ******************************************************************** 
; //	scrMBank			- Bank of Screen Buffer
; //	scrMAddr			- Startaddress of Screen Buffer
; //	clrMBank			- Bank of Color Buffer
; //	clrMAddr			- Startaddress of Color Buffer
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : RRB_CreateRRB
	;    Procedure type : User-defined procedure
	; LineNumber: 213
	; LineNumber: 206
localVariable_RRB_CreateRRB_RRB_row:	.byte	0
	; LineNumber: 207
localVariable_RRB_CreateRRB_RRB_tx:	.byte	0
	; LineNumber: 208
localVariable_RRB_CreateRRB_RRB_taddr:	.word	0
	; LineNumber: 209
localVariable_RRB_CreateRRB_RRB_addr:	.word	0
	; LineNumber: 210
localVariable_RRB_CreateRRB_RRB_caddr:	.word	0
	; LineNumber: 211
localVariable_RRB_CreateRRB_RRB_staddr:	.word	0
	; LineNumber: 212
localVariable_RRB_CreateRRB_RRB_rrbSize:	.word	0
	; LineNumber: 205
localVariable_RRB_CreateRRB_RRB_scrMBank:	.byte	0
	; LineNumber: 205
localVariable_RRB_CreateRRB_RRB_scrMAddr:	.word	0
	; LineNumber: 205
localVariable_RRB_CreateRRB_RRB_clrMBank:	.byte	0
	; LineNumber: 205
localVariable_RRB_CreateRRB_RRB_clrMAddr:	.word	0
RRB_CreateRRB_block71:
RRB_CreateRRB:
	; LineNumber: 214
	lda localVariable_RRB_CreateRRB_RRB_scrMBank
	; Calling storevariable on generic assign expression
	sta RRB_screenMapBank
	; LineNumber: 215
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_scrMAddr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_scrMAddr
	; Calling storevariable on generic assign expression
	sta RRB_screenMapAddress
	sty RRB_screenMapAddress+1
	; LineNumber: 216
	lda localVariable_RRB_CreateRRB_RRB_clrMBank
	; Calling storevariable on generic assign expression
	sta RRB_colorMapBank
	; LineNumber: 217
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_clrMAddr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_clrMAddr
	; Calling storevariable on generic assign expression
	sta RRB_colorMapAddress
	sty RRB_colorMapAddress+1
	; LineNumber: 225
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_tx
RRB_CreateRRB_forloop72:
	; LineNumber: 221
	; LineNumber: 222
	
; // Calc lookup tables
	lda localVariable_RRB_CreateRRB_RRB_tx
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_myMod_RRB_num
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_myMod_RRB_modulus
	jsr RRB_myMod
	; Calling storevariable on generic assign expression
	ldx localVariable_RRB_CreateRRB_RRB_tx ; optimized, look out for bugs
	sta RRB_rrbModLookUp,x
	; LineNumber: 223
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	lda localVariable_RRB_CreateRRB_RRB_tx
	lsr
	lsr
	lsr
	; Calling storevariable on generic assign expression
	sta RRB_rrbRowLookUp,x
	; LineNumber: 224
RRB_CreateRRB_forloopcounter74:
RRB_CreateRRB_loopstart75:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_RRB_CreateRRB_RRB_tx
	lda #$c8
	cmp localVariable_RRB_CreateRRB_RRB_tx ;keep
	bne RRB_CreateRRB_forloop72
RRB_CreateRRB_loopdone79: ;keep:
RRB_CreateRRB_forloopend73:
RRB_CreateRRB_loopend76:
	; LineNumber: 230
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_tx
RRB_CreateRRB_forloop80:
	; LineNumber: 227
	; LineNumber: 228
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	lda localVariable_RRB_CreateRRB_RRB_tx
	asl
	asl
	; Calling storevariable on generic assign expression
	ldx localVariable_RRB_CreateRRB_RRB_tx ; optimized, look out for bugs
	sta RRB_rrbSprRowLookUp,x
	; LineNumber: 229
RRB_CreateRRB_forloopcounter82:
RRB_CreateRRB_loopstart83:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_RRB_CreateRRB_RRB_tx
	lda #$1e
	cmp localVariable_RRB_CreateRRB_RRB_tx ;keep
	bne RRB_CreateRRB_forloop80
RRB_CreateRRB_loopdone87: ;keep:
RRB_CreateRRB_forloopend81:
RRB_CreateRRB_loopend84:
	; LineNumber: 235
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_tx
RRB_CreateRRB_forloop88:
	; LineNumber: 232
	; LineNumber: 233
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	lda localVariable_RRB_CreateRRB_RRB_tx
	asl
	asl
	asl
	; Calling storevariable on generic assign expression
	ldx localVariable_RRB_CreateRRB_RRB_tx ; optimized, look out for bugs
	sta RRB_rrbOffsetLookUp,x
	; LineNumber: 234
RRB_CreateRRB_forloopcounter90:
RRB_CreateRRB_loopstart91:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_RRB_CreateRRB_RRB_tx
	lda #$8
	cmp localVariable_RRB_CreateRRB_RRB_tx ;keep
	bne RRB_CreateRRB_forloop88
RRB_CreateRRB_loopdone95: ;keep:
RRB_CreateRRB_forloopend89:
RRB_CreateRRB_loopend92:
	; LineNumber: 236
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda RRB_maxSpritesPerRow
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc RRB_CreateRRB_elseblock98
RRB_CreateRRB_ConditionalTrueBlock97: ;Main true block ;keep:
	; LineNumber: 237
	; LineNumber: 238
	; 8 bit binop
	; Add/sub where right value is constant number
	; 8 bit binop
	; Add/sub where right value is constant number
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	; 8 bit binop
	; Add/sub where right value is constant number
	lda RRB_maxSpritesPerRow
	clc
	adc #$1
	 ; end add / sub var with constant
	asl
	clc
	adc #$28
	 ; end add / sub var with constant
	clc
	adc #$2
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_row
	; LineNumber: 239
	; Calling storevariable on generic assign expression
	sta localVariable_mega65_SetRowSize_mega65_newRowSize
	jsr mega65_SetRowSize
	; LineNumber: 240
	jmp RRB_CreateRRB_elsedoneblock99
RRB_CreateRRB_elseblock98:
	; LineNumber: 241
	; LineNumber: 242
	lda #$28
	; Calling storevariable on generic assign expression
	sta localVariable_mega65_SetRowSize_mega65_newRowSize
	jsr mega65_SetRowSize
	; LineNumber: 243
RRB_CreateRRB_elsedoneblock99:
	; LineNumber: 245
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_taddr
	sty localVariable_RRB_CreateRRB_RRB_taddr+1
	; LineNumber: 246
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_addr
	sty localVariable_RRB_CreateRRB_RRB_addr+1
	; LineNumber: 247
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_staddr
	sty localVariable_RRB_CreateRRB_RRB_staddr+1
	; LineNumber: 307
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_row
RRB_CreateRRB_forloop104:
	; LineNumber: 252
	; LineNumber: 253
	
; // Background - Tilelayer 
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy RRB_tileLayerAddr+1 ; keep
	lda RRB_tileLayerAddr
RRB_CreateRRB_rightvarInteger_var202 = $54
	sta RRB_CreateRRB_rightvarInteger_var202
	sty RRB_CreateRRB_rightvarInteger_var202+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	; Mul 16x8 setup
	ldy #0
	lda localVariable_RRB_CreateRRB_RRB_row
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy RRB_tileLayerWidth+1
	lda RRB_tileLayerWidth
	sta mul16x8_num2
	jsr mul16x8_procedure
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$2
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc RRB_CreateRRB_rightvarInteger_var202
RRB_CreateRRB_wordAdd200:
	sta RRB_CreateRRB_rightvarInteger_var202
	; High-bit binop
	tya
	adc RRB_CreateRRB_rightvarInteger_var202+1
	tay
	lda RRB_CreateRRB_rightvarInteger_var202
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_taddr
	sty localVariable_RRB_CreateRRB_RRB_taddr+1
	; LineNumber: 255
	; INTEGER optimization: a=b+c 
	lda RRB_screenMapAddress
	clc
	adc localVariable_RRB_CreateRRB_RRB_staddr
	sta localVariable_RRB_CreateRRB_RRB_addr+0
	lda RRB_screenMapAddress+1
	adc localVariable_RRB_CreateRRB_RRB_staddr+1
	sta localVariable_RRB_CreateRRB_RRB_addr+1
	; LineNumber: 256
	; INTEGER optimization: a=b+c 
	lda RRB_colorMapAddress
	clc
	adc localVariable_RRB_CreateRRB_RRB_staddr
	sta localVariable_RRB_CreateRRB_RRB_caddr+0
	lda RRB_colorMapAddress+1
	adc localVariable_RRB_CreateRRB_RRB_staddr+1
	sta localVariable_RRB_CreateRRB_RRB_caddr+1
	; LineNumber: 257
	lda localVariable_RRB_CreateRRB_RRB_staddr
	clc
	adc mega65_LogicalRowSize
	sta localVariable_RRB_CreateRRB_RRB_staddr+0
	lda localVariable_RRB_CreateRRB_RRB_staddr+1
	adc mega65_LogicalRowSize+1
	sta localVariable_RRB_CreateRRB_RRB_staddr+1
	; LineNumber: 269
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_tx
RRB_CreateRRB_forloop206:
	; LineNumber: 259
	; LineNumber: 262
	
; // copy 2 bytes from tilemap address to screen addresstable(,,);
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_smb
	lda RRB_tileLayerBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_sb
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_taddr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_taddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_saddr
	sty localVariable_DMA_lcopy_DMA_saddr+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_dmb
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_db
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_addr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_addr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_daddr
	sty localVariable_DMA_lcopy_DMA_daddr+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_count1
	sty localVariable_DMA_lcopy_DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 264
	
; // advance addresses(2 byte for fcm)
	lda localVariable_RRB_CreateRRB_RRB_taddr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_taddr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd216
	inc localVariable_RRB_CreateRRB_RRB_taddr+1
RRB_CreateRRB_WordAdd216:
	; LineNumber: 265
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd217
	inc localVariable_RRB_CreateRRB_RRB_addr+1
RRB_CreateRRB_WordAdd217:
	; LineNumber: 266
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_caddr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd218
	inc localVariable_RRB_CreateRRB_RRB_caddr+1
RRB_CreateRRB_WordAdd218:
	; LineNumber: 268
RRB_CreateRRB_forloopcounter208:
RRB_CreateRRB_loopstart209:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_RRB_CreateRRB_RRB_tx
	; integer assignment NodeVar
	ldy RRB_tileLayerWidth+1 ; keep
	lda RRB_tileLayerWidth
	cmp localVariable_RRB_CreateRRB_RRB_tx ;keep
	bne RRB_CreateRRB_forloop206
RRB_CreateRRB_loopdone219: ;keep:
RRB_CreateRRB_forloopend207:
RRB_CreateRRB_loopend210:
	; LineNumber: 270
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_addr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_addr
	; Calling storevariable on generic assign expression
	pha
	lda localVariable_RRB_CreateRRB_RRB_row
	asl
	tax
	pla
	sta RRB_scrMemRowLookUp,x
	tya
	sta RRB_scrMemRowLookUp+1,x
	; LineNumber: 272
	; Binary clause Simplified: GREATEREQUAL
	lda RRB_maxSpritesPerRow
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc RRB_CreateRRB_localfailed256
	jmp RRB_CreateRRB_ConditionalTrueBlock221
RRB_CreateRRB_localfailed256:
	jmp RRB_CreateRRB_elsedoneblock223
RRB_CreateRRB_ConditionalTrueBlock221: ;Main true block ;keep:
	; LineNumber: 273
	; LineNumber: 290
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_tx
RRB_CreateRRB_forloop258:
	; LineNumber: 275
	; LineNumber: 276
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_caddr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_caddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$90
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 277
	
; // GOTOX+TRANSPARENT
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_caddr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$90
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 278
	
; // GOTOX+TRANSPARENT
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_addr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_addr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 279
	
; // position
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_addr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 281
	
; // position
; // advance addresses(2 byte for fcm)
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_caddr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd275
	inc localVariable_RRB_CreateRRB_RRB_caddr+1
RRB_CreateRRB_WordAdd275:
	; LineNumber: 282
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd276
	inc localVariable_RRB_CreateRRB_RRB_addr+1
RRB_CreateRRB_WordAdd276:
	; LineNumber: 283
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_caddr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_caddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 284
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_caddr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 285
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_addr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_addr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	; integer assignment NodeVar
	ldy RRB_transparentTile+1 ; keep
	lda RRB_transparentTile
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 286
	
; // transparentes sprite
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_addr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	; integer assignment NodeVar
	ldy RRB_transparentTile+1 ; keep
	lda RRB_transparentTile
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 287
	
; // transparentes sprite
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_caddr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd279
	inc localVariable_RRB_CreateRRB_RRB_caddr+1
RRB_CreateRRB_WordAdd279:
	; LineNumber: 288
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd280
	inc localVariable_RRB_CreateRRB_RRB_addr+1
RRB_CreateRRB_WordAdd280:
	; LineNumber: 289
RRB_CreateRRB_forloopcounter260:
RRB_CreateRRB_loopstart261:
	; Test Inc dec D
	inc localVariable_RRB_CreateRRB_RRB_tx
	lda RRB_maxSpritesPerRow
	cmp localVariable_RRB_CreateRRB_RRB_tx ;keep
	beq RRB_CreateRRB_loopdone281
RRB_CreateRRB_loopnotdone282:
	jmp RRB_CreateRRB_forloop258
RRB_CreateRRB_loopdone281:
RRB_CreateRRB_forloopend259:
RRB_CreateRRB_loopend262:
	; LineNumber: 290
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_caddr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_caddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 291
	
; // GotoX
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_caddr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 293
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_addr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_addr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	; Integer constant assigning
	ldy #$01
	lda #$40
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_loByte_DMA_val2
	sty localVariable_DMA_loByte_DMA_val2+1
	jsr DMA_loByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 294
	
; // GotoX - 320
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_addr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	; Integer constant assigning
	ldy #$01
	lda #$40
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_hiByte_DMA_val1
	sty localVariable_DMA_hiByte_DMA_val1+1
	jsr DMA_hiByte
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 296
	
; // GotoX - 320
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_caddr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd285
	inc localVariable_RRB_CreateRRB_RRB_caddr+1
RRB_CreateRRB_WordAdd285:
	; LineNumber: 297
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$02
	sta localVariable_RRB_CreateRRB_RRB_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc RRB_CreateRRB_WordAdd286
	inc localVariable_RRB_CreateRRB_RRB_addr+1
RRB_CreateRRB_WordAdd286:
	; LineNumber: 300
	
; // End char
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_caddr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_caddr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 301
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_caddr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_caddr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 303
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; integer assignment NodeVar
	ldy localVariable_RRB_CreateRRB_RRB_addr+1 ; keep
	lda localVariable_RRB_CreateRRB_RRB_addr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 304
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_RRB_CreateRRB_RRB_addr
	clc
	adc #$01
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_RRB_CreateRRB_RRB_addr+1
	adc #$00
	sta localVariable_DMA_lpoke_DMA_addr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 305
RRB_CreateRRB_elsedoneblock223:
	; LineNumber: 306
RRB_CreateRRB_forloopcounter106:
RRB_CreateRRB_loopstart107:
	; Test Inc dec D
	inc localVariable_RRB_CreateRRB_RRB_row
	lda #$19
	cmp localVariable_RRB_CreateRRB_RRB_row ;keep
	beq RRB_CreateRRB_loopdone289
RRB_CreateRRB_loopnotdone290:
	jmp RRB_CreateRRB_forloop104
RRB_CreateRRB_loopdone289:
RRB_CreateRRB_forloopend105:
RRB_CreateRRB_loopend108:
	; LineNumber: 307
	; Generic 16 bit op
	ldy #0
	lda #$4
RRB_CreateRRB_rightvarInteger_var293 = $54
	sta RRB_CreateRRB_rightvarInteger_var293
	sty RRB_CreateRRB_rightvarInteger_var293+1
	; Generic 16 bit op
	ldy #0
	lda #$50
RRB_CreateRRB_rightvarInteger_var296 = $56
	sta RRB_CreateRRB_rightvarInteger_var296
	sty RRB_CreateRRB_rightvarInteger_var296+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	; HandleVarBinopB16bit
	ldy #0 ; ::HandleVarBinopB16bit 0
	; RHS is pure, optimization
	lda RRB_maxSpritesPerRow
	clc
	adc #$01
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$4
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc RRB_CreateRRB_rightvarInteger_var296
RRB_CreateRRB_wordAdd294:
	sta RRB_CreateRRB_rightvarInteger_var296
	; High-bit binop
	tya
	adc RRB_CreateRRB_rightvarInteger_var296+1
	tay
	lda RRB_CreateRRB_rightvarInteger_var296
	; Low bit binop:
	clc
	adc RRB_CreateRRB_rightvarInteger_var293
RRB_CreateRRB_wordAdd291:
	sta RRB_CreateRRB_rightvarInteger_var293
	; High-bit binop
	tya
	adc RRB_CreateRRB_rightvarInteger_var293+1
	tay
	lda RRB_CreateRRB_rightvarInteger_var293
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_rrbSize
	sty localVariable_RRB_CreateRRB_RRB_rrbSize+1
	; LineNumber: 308
	
; // line size
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy localVariable_RRB_CreateRRB_RRB_rrbSize+1
	lda localVariable_RRB_CreateRRB_RRB_rrbSize
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$19
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Calling storevariable on generic assign expression
	sta RRB_screenSize
	sty RRB_screenSize+1
	; LineNumber: 310
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_smb
	lda RRB_colorMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_sb
	; integer assignment NodeVar
	ldy RRB_colorMapAddress+1 ; keep
	lda RRB_colorMapAddress
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_saddr
	sty localVariable_DMA_lcopy_DMA_saddr+1
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_dmb
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_db
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_daddr
	sty localVariable_DMA_lcopy_DMA_daddr+1
	; integer assignment NodeVar
	ldy RRB_screenSize+1 ; keep
	lda RRB_screenSize
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_count1
	sty localVariable_DMA_lcopy_DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 311
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_smb
	lda RRB_screenMapBank
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_sb
	; integer assignment NodeVar
	ldy RRB_screenMapAddress+1 ; keep
	lda RRB_screenMapAddress
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_saddr
	sty localVariable_DMA_lcopy_DMA_saddr+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_dmb
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_db
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_daddr
	sty localVariable_DMA_lcopy_DMA_daddr+1
	; integer assignment NodeVar
	ldy RRB_screenSize+1 ; keep
	lda RRB_screenSize
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lcopy_DMA_count1
	sty localVariable_DMA_lcopy_DMA_count1+1
	jsr DMA_lcopy
	; LineNumber: 312
	rts
end_procedure_RRB_CreateRRB:
	
; // Aurora Palette - alter values to your palette******************************************************************* 
; //	InitPalette
; //	copies the values of redvalues,greenvalues,bluevalues to the
; //	m65-registers
; // ******************************************************************** 
; //
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : palettes_InitPalette
	;    Procedure type : User-defined procedure
	; LineNumber: 25
	; LineNumber: 23
localVariable_palettes_InitPalette_palettes_i:	.byte	0
palettes_InitPalette_block298:
palettes_InitPalette:
	; LineNumber: 35
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_palettes_InitPalette_palettes_i
palettes_InitPalette_forloop299:
	; LineNumber: 27
	; LineNumber: 28
	; Generic 16 bit op
	ldy #0
	lda localVariable_palettes_InitPalette_palettes_i
palettes_InitPalette_rightvarInteger_var317 = $54
	sta palettes_InitPalette_rightvarInteger_var317
	sty palettes_InitPalette_rightvarInteger_var317+1
	; Integer constant assigning
	ldy #$d1
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var317
palettes_InitPalette_wordAdd315:
	sta palettes_InitPalette_rightvarInteger_var317
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var317+1
	tay
	lda palettes_InitPalette_rightvarInteger_var317
	sta palettes_p
	sty palettes_p+1
	; LineNumber: 29
	; Load Byte array
	ldx localVariable_palettes_InitPalette_palettes_i
	lda palettes_redvalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 30
	; Generic 16 bit op
	ldy #0
	lda localVariable_palettes_InitPalette_palettes_i
palettes_InitPalette_rightvarInteger_var320 = $54
	sta palettes_InitPalette_rightvarInteger_var320
	sty palettes_InitPalette_rightvarInteger_var320+1
	; Integer constant assigning
	ldy #$d2
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var320
palettes_InitPalette_wordAdd318:
	sta palettes_InitPalette_rightvarInteger_var320
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var320+1
	tay
	lda palettes_InitPalette_rightvarInteger_var320
	sta palettes_p
	sty palettes_p+1
	; LineNumber: 31
	; Load Byte array
	ldx localVariable_palettes_InitPalette_palettes_i
	lda palettes_greenvalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 32
	; Generic 16 bit op
	ldy #0
	lda localVariable_palettes_InitPalette_palettes_i
palettes_InitPalette_rightvarInteger_var323 = $54
	sta palettes_InitPalette_rightvarInteger_var323
	sty palettes_InitPalette_rightvarInteger_var323+1
	; Integer constant assigning
	ldy #$d3
	lda #$00
	; Low bit binop:
	clc
	adc palettes_InitPalette_rightvarInteger_var323
palettes_InitPalette_wordAdd321:
	sta palettes_InitPalette_rightvarInteger_var323
	; High-bit binop
	tya
	adc palettes_InitPalette_rightvarInteger_var323+1
	tay
	lda palettes_InitPalette_rightvarInteger_var323
	sta palettes_p
	sty palettes_p+1
	; LineNumber: 33
	; Load Byte array
	ldx localVariable_palettes_InitPalette_palettes_i
	lda palettes_bluevalues,x
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (palettes_p),y
	; LineNumber: 34
palettes_InitPalette_forloopcounter301:
palettes_InitPalette_loopstart302:
	; Test Inc dec D
	inc localVariable_palettes_InitPalette_palettes_i
	lda #$ff
	cmp localVariable_palettes_InitPalette_palettes_i ;keep
	beq palettes_InitPalette_loopdone324
palettes_InitPalette_loopnotdone325:
	jmp palettes_InitPalette_forloop299
palettes_InitPalette_loopdone324:
palettes_InitPalette_forloopend300:
palettes_InitPalette_loopend303:
	; LineNumber: 35
	rts
end_procedure_palettes_InitPalette:
	;******************************************************************* 
; //	rrbDemo
; //	
; //	demonstrates the use of the Raster Rewrite Buffer
; //	This program sets up Full Color-Character Mode
; //	There will be 2 bytes per char on screenmem and colormem,
; //	this allows us to use more than 256 different chars
; //	
; //	This demo is setup to use the memory above $20000 for tile
; //	definitions(charNums > 2048)
; //	
; //	the RRB is build as followed :
; //	1 Line :
; //		80 bytes screen chars(tilemap 40 chars * 2 bytes)
; //		MAXSPRITES*4 byte for RRB Definition
; //		4 byte termination code for RRB
; //		
; //	Screen(MAXSPRITE=30):
; //		5100 bytes ScreenRam
; //		5100 bytes ColorRam
; //		
; //	Screen Ram is repositioned to $50000
; //	Color Ram is at $0ff80000
; //	
; //	Sprite Data - $1F000
; //		Sprite Data holds the plain sprite data, currently only 1 sprite
; //	
; //	Tile Data - $20000
; //		Tile Data, first 4 are Transparent,Tile1,Tile2,Tile3
; //		after num 2052(4):
; //			2 Tiles per sprite to allow pixel perfect y positioning
; //			You can only draw Sprites/Tiles per raster, but if you draw 2
; //			Tiles underneath each other and copy the SpriteData from $1F000
; //			with a mod-y-offset to this location the sprite is draw at the
; //			y position
; //	
; //	The RRB.tru is highly depending on lookup tables, this increases Memory usage but it's quiet fast
; //	
; //	With FCM(320x200x256 colors) the raster will have time for a 40x25 tilemap and max. 30
; //	Sprites per row
; //	This means, you can go up to 750 Sprites per Screen, the rrbIndex of a sprite can't be higher than
; //	MAXSPRITE!!!
; //	
; //	TODO:
; //		NCM:
; //		the next things will be NCM mode to increase stuff that can be rendered per row, so
; //		you can have more Layers of tilemaps and more Sprites per row
; //		
; //		FILEIO:
; //		Implementation of the MEGA65 FileIO to load data into 256MB range
; // ******************************************************************** 
; //
; // *******************************************************************
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initTiles
	;    Procedure type : User-defined procedure
	; LineNumber: 123
	; LineNumber: 120
localVariable_initTiles_col:	.byte	0
	; LineNumber: 121
localVariable_initTiles_addr1:	.word	0
	; LineNumber: 122
localVariable_initTiles_varPrefixed_x:	.byte	0
initTiles_block326:
initTiles:
	; LineNumber: 124
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_addr1
	sty localVariable_initTiles_addr1+1
	; LineNumber: 126
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_col
	; LineNumber: 132
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_varPrefixed_x
initTiles_forloop327:
	; LineNumber: 128
	; LineNumber: 129
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_dmb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_db1
	; integer assignment NodeVar
	ldy localVariable_initTiles_addr1+1 ; keep
	lda localVariable_initTiles_addr1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_daddr1
	sty localVariable_DMA_lfill_DMA_daddr1+1
	lda localVariable_initTiles_col
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_value1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_count2
	sty localVariable_DMA_lfill_DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 130
	; Test Inc dec D
	inc localVariable_initTiles_col
	; LineNumber: 131
	lda localVariable_initTiles_addr1
	clc
	adc #$40
	sta localVariable_initTiles_addr1+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd335
	inc localVariable_initTiles_addr1+1
initTiles_WordAdd335:
	; LineNumber: 132
initTiles_forloopcounter329:
initTiles_loopstart330:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_initTiles_varPrefixed_x
	lda #$ff
	cmp localVariable_initTiles_varPrefixed_x ;keep
	bne initTiles_forloop327
initTiles_loopdone336: ;keep:
initTiles_forloopend328:
initTiles_loopend331:
	; LineNumber: 133
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_addr1
	sty localVariable_initTiles_addr1+1
	; LineNumber: 140
	
; // 2051 0x803
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_col
initTiles_forloop337:
	; LineNumber: 135
	; LineNumber: 136
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_initTiles_addr1
	clc
	adc localVariable_initTiles_col
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_initTiles_addr1+1
	adc #0
	sta localVariable_DMA_lpoke_DMA_addr1+1
	; Load Byte array
	ldx localVariable_initTiles_col
	lda tile1,x
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 137
	
; // 2049 0x801
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; Generic 16 bit op
	ldy #0
	lda localVariable_initTiles_col
initTiles_rightvarInteger_var356 = $54
	sta initTiles_rightvarInteger_var356
	sty initTiles_rightvarInteger_var356+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy localVariable_initTiles_addr1+1 ; keep
	lda localVariable_initTiles_addr1
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
	adc initTiles_rightvarInteger_var356
initTiles_wordAdd354:
	sta initTiles_rightvarInteger_var356
	; High-bit binop
	tya
	adc initTiles_rightvarInteger_var356+1
	tay
	lda initTiles_rightvarInteger_var356
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	; Load Byte array
	ldx localVariable_initTiles_col
	lda tile2,x
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 138
	
; // 2050 0x802
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; Generic 16 bit op
	ldy #0
	lda localVariable_initTiles_col
initTiles_rightvarInteger_var360 = $54
	sta initTiles_rightvarInteger_var360
	sty initTiles_rightvarInteger_var360+1
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; integer assignment NodeVar
	ldy localVariable_initTiles_addr1+1 ; keep
	lda localVariable_initTiles_addr1
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
	adc initTiles_rightvarInteger_var360
initTiles_wordAdd358:
	sta initTiles_rightvarInteger_var360
	; High-bit binop
	tya
	adc initTiles_rightvarInteger_var360+1
	tay
	lda initTiles_rightvarInteger_var360
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	; Load Byte array
	ldx localVariable_initTiles_col
	lda tile3,x
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 139
initTiles_forloopcounter339:
initTiles_loopstart340:
	; Test Inc dec D
	inc localVariable_initTiles_col
	lda #$40
	cmp localVariable_initTiles_col ;keep
	beq initTiles_loopdone362
initTiles_loopnotdone363:
	jmp initTiles_forloop337
initTiles_loopdone362:
initTiles_forloopend338:
initTiles_loopend341:
	; LineNumber: 142
	
; // Sprites
	; Integer constant assigning
	ldy #$01
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_addr1
	sty localVariable_initTiles_addr1+1
	; LineNumber: 151
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_varPrefixed_x
initTiles_forloop364:
	; LineNumber: 144
	; LineNumber: 149
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_initTiles_col
initTiles_forloop382:
	; LineNumber: 146
	; LineNumber: 147
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; INTEGER optimization: a=b+c 
	lda localVariable_initTiles_addr1
	clc
	adc localVariable_initTiles_col
	sta localVariable_DMA_lpoke_DMA_addr1+0
	lda localVariable_initTiles_addr1+1
	adc #0
	sta localVariable_DMA_lpoke_DMA_addr1+1
	; Load Byte array
	ldx localVariable_initTiles_col
	lda sprite,x
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 148
initTiles_forloopcounter384:
initTiles_loopstart385:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_initTiles_col
	lda #$40
	cmp localVariable_initTiles_col ;keep
	bne initTiles_forloop382
initTiles_loopdone391: ;keep:
initTiles_forloopend383:
initTiles_loopend386:
	; LineNumber: 149
	lda localVariable_initTiles_addr1
	clc
	adc #$80
	sta localVariable_initTiles_addr1+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc initTiles_WordAdd392
	inc localVariable_initTiles_addr1+1
initTiles_WordAdd392:
	; LineNumber: 150
initTiles_forloopcounter366:
initTiles_loopstart367:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_initTiles_varPrefixed_x
	lda #$20
	cmp localVariable_initTiles_varPrefixed_x ;keep
	bne initTiles_forloop364
initTiles_loopdone393: ;keep:
initTiles_forloopend365:
initTiles_loopend368:
	; LineNumber: 151
	rts
end_procedure_initTiles:
	; NodeProcedureDecl -1
	; ***********  Defining procedure : CopyData
	;    Procedure type : User-defined procedure
	; LineNumber: 160
	; LineNumber: 155
localVariable_CopyData_index:	.word	0
	; LineNumber: 156
localVariable_CopyData_p	= $04
	; LineNumber: 157
localVariable_CopyData_addr:	.word	0
	; LineNumber: 158
localVariable_CopyData_varPrefixed_x:	.word	0
	; LineNumber: 159
localVariable_CopyData_varPrefixed_a:	.byte	0
	; LineNumber: 159
localVariable_CopyData_b:	.byte	0
CopyData_block394:
CopyData:
	; LineNumber: 162
	
; // Copy sprites to $1F000	
	; Integer constant assigning
	ldy #$f0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_CopyData_addr
	sty localVariable_CopyData_addr+1
	; LineNumber: 171
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CopyData_varPrefixed_x
	sty localVariable_CopyData_varPrefixed_x+1
CopyData_forloop395:
	; LineNumber: 164
	; LineNumber: 168
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CopyData_varPrefixed_a
CopyData_forloop417:
	; LineNumber: 166
	; LineNumber: 167
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_mb1
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_b1
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy localVariable_CopyData_addr+1 ; keep
	lda localVariable_CopyData_addr
CopyData_rightvarInteger_var429 = $54
	sta CopyData_rightvarInteger_var429
	sty CopyData_rightvarInteger_var429+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda localVariable_CopyData_varPrefixed_a
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$80
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc CopyData_rightvarInteger_var429
CopyData_wordAdd427:
	sta CopyData_rightvarInteger_var429
	; High-bit binop
	tya
	adc CopyData_rightvarInteger_var429+1
	tay
	lda CopyData_rightvarInteger_var429
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_addr1
	sty localVariable_DMA_lpoke_DMA_addr1+1
	; Load Byte array
	ldx localVariable_CopyData_varPrefixed_x
	lda sprite,x
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lpoke_DMA_value
	jsr DMA_lpoke
	; LineNumber: 168
CopyData_forloopcounter419:
CopyData_loopstart420:
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_CopyData_varPrefixed_a
	lda #$3c
	cmp localVariable_CopyData_varPrefixed_a ;keep
	bne CopyData_forloop417
CopyData_loopdone430: ;keep:
CopyData_forloopend418:
CopyData_loopend421:
	; LineNumber: 169
	lda localVariable_CopyData_addr
	clc
	adc #$01
	sta localVariable_CopyData_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd431
	inc localVariable_CopyData_addr+1
CopyData_WordAdd431:
	; LineNumber: 170
CopyData_forloopcounter397:
CopyData_loopstart398:
	; Compare is onpage
	lda localVariable_CopyData_varPrefixed_x
	clc
	adc #$01
	sta localVariable_CopyData_varPrefixed_x+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd433
	inc localVariable_CopyData_varPrefixed_x+1
CopyData_WordAdd433:
	; Executing integer comparison #$40
	; Binary clause INTEGER: NOTEQUALS
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda localVariable_CopyData_varPrefixed_x+1   ; compare high bytes
	cmp #$00 ;keep
	beq CopyData_pass1439
	jmp CopyData_ConditionalTrueBlock435
CopyData_pass1439:
	lda localVariable_CopyData_varPrefixed_x
	cmp #$40 ;keep
	beq CopyData_elsedoneblock437
	jmp CopyData_ConditionalTrueBlock435
CopyData_ConditionalTrueBlock435: ;Main true block ;keep:
	; LineNumber: 162
	; LineNumber: 163
	; ****** Inline assembler section
  jmp CopyData_forloop395
CopyData_elsedoneblock437:
CopyData_loopdone432: ;keep:
CopyData_forloopend396:
CopyData_loopend399:
	; LineNumber: 174
	
; // Copy Map to $10000
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CopyData_addr
	sty localVariable_CopyData_addr+1
	; LineNumber: 175
	lda #<tilemap
	ldx #>tilemap
	sta localVariable_CopyData_p
	stx localVariable_CopyData_p+1
	; LineNumber: 183
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CopyData_varPrefixed_x
	sty localVariable_CopyData_varPrefixed_x+1
CopyData_forloop441:
	; LineNumber: 177
	; LineNumber: 178
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load pointer array
	ldy #$0
	lda (localVariable_CopyData_p),y
	ldy #0 ; Loading 8-bit pointer, but return type should be integer
	clc
	adc #$00
	; Testing for byte:  #$08
	; RHS is word, no optimization
	pha 
	tya 
	adc #$08
	tay 
	pla 
	; Calling storevariable on generic assign expression
	sta localVariable_CopyData_index
	sty localVariable_CopyData_index+1
	; LineNumber: 179
	lda localVariable_CopyData_p
	clc
	adc #$01
	sta localVariable_CopyData_p+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd452
	inc localVariable_CopyData_p+1
CopyData_WordAdd452:
	; LineNumber: 180
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pa
	sty localVariable_DMA_poke16_DMA_pa+1
	; integer assignment NodeVar
	ldy localVariable_CopyData_addr+1 ; keep
	lda localVariable_CopyData_addr
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_pb
	sty localVariable_DMA_poke16_DMA_pb+1
	; integer assignment NodeVar
	ldy localVariable_CopyData_index+1 ; keep
	lda localVariable_CopyData_index
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_poke16_DMA_val
	sty localVariable_DMA_poke16_DMA_val+1
	jsr DMA_poke16
	; LineNumber: 181
	lda localVariable_CopyData_addr
	clc
	adc #$02
	sta localVariable_CopyData_addr+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd453
	inc localVariable_CopyData_addr+1
CopyData_WordAdd453:
	; LineNumber: 182
CopyData_forloopcounter443:
CopyData_loopstart444:
	; Compare is onpage
	lda localVariable_CopyData_varPrefixed_x
	clc
	adc #$01
	sta localVariable_CopyData_varPrefixed_x+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyData_WordAdd455
	inc localVariable_CopyData_varPrefixed_x+1
CopyData_WordAdd455:
	; Executing integer comparison #$3e8
	; Binary clause INTEGER: NOTEQUALS
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda localVariable_CopyData_varPrefixed_x+1   ; compare high bytes
	cmp #$03 ;keep
	beq CopyData_pass1461
	jmp CopyData_ConditionalTrueBlock457
CopyData_pass1461:
	lda localVariable_CopyData_varPrefixed_x
	cmp #$e8 ;keep
	beq CopyData_elsedoneblock459
	jmp CopyData_ConditionalTrueBlock457
CopyData_ConditionalTrueBlock457: ;Main true block ;keep:
	; LineNumber: 175
	; LineNumber: 176
	; ****** Inline assembler section
  jmp CopyData_forloop441
CopyData_elsedoneblock459:
CopyData_loopdone454: ;keep:
CopyData_forloopend442:
CopyData_loopend445:
	; LineNumber: 185
	
; // empty Screen Buffer
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_dmb1
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_db1
	; Integer constant assigning
	ldy #$20
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_daddr1
	sty localVariable_DMA_lfill_DMA_daddr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_value1
	; Integer constant assigning
	ldy #$13
	lda #$ec
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_count2
	sty localVariable_DMA_lfill_DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 187
	
; // empty Color Buffer
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_dmb1
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_db1
	; Integer constant assigning
	ldy #$40
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_daddr1
	sty localVariable_DMA_lfill_DMA_daddr1+1
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_value1
	; Integer constant assigning
	ldy #$13
	lda #$ec
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_count2
	sty localVariable_DMA_lfill_DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 188
	rts
end_procedure_CopyData:
block1:
main_block_begin_:
	; LineNumber: 223
	;	mega65::io_enable();
; //	mega65::init();
	jsr mega65_setFCM
	; LineNumber: 224
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_mega65_relocateScreen_mega65_b
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_mega65_relocateScreen_mega65_addr
	sty localVariable_mega65_relocateScreen_mega65_addr+1
	jsr mega65_relocateScreen
	; LineNumber: 226
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_dmb1
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_db1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_daddr1
	sty localVariable_DMA_lfill_DMA_daddr1+1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_value1
	; Integer constant assigning
	ldy #$0f
	lda #$a0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_count2
	sty localVariable_DMA_lfill_DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 227
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_dmb1
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_db1
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_daddr1
	sty localVariable_DMA_lfill_DMA_daddr1+1
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_value1
	; Integer constant assigning
	ldy #$0f
	lda #$a0
	; Calling storevariable on generic assign expression
	sta localVariable_DMA_lfill_DMA_count2
	sty localVariable_DMA_lfill_DMA_count2+1
	jsr DMA_lfill
	; LineNumber: 229
	jsr palettes_InitPalette
	; LineNumber: 230
	; Poke
	; Optimization: shift is zero
	lda #$16
	sta $d021
	; LineNumber: 231
	jsr initTiles
	; LineNumber: 232
	jsr CopyData
	; LineNumber: 235
	; Integer constant assigning
	ldy #$08
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_setTransparentTile_RRB_t
	sty localVariable_RRB_setTransparentTile_RRB_t+1
	jsr RRB_setTransparentTile
	; LineNumber: 236
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_addTileLayer_RRB_madrBank
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_addTileLayer_RRB_mapAddress
	sty localVariable_RRB_addTileLayer_RRB_mapAddress+1
	lda #$28
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_addTileLayer_RRB_mapWidth
	sty localVariable_RRB_addTileLayer_RRB_mapWidth+1
	jsr RRB_addTileLayer
	; LineNumber: 239
	lda #$20
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_addSpriteLayer_RRB_n
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_addSpriteLayer_RRB_sprDBank
	; Integer constant assigning
	ldy #$f0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_addSpriteLayer_RRB_sprDAddr
	sty localVariable_RRB_addSpriteLayer_RRB_sprDAddr+1
	jsr RRB_addSpriteLayer
	; LineNumber: 240
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_scrMBank
	; Integer constant assigning
	ldy #$20
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_scrMAddr
	sty localVariable_RRB_CreateRRB_RRB_scrMAddr+1
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_clrMBank
	; Integer constant assigning
	ldy #$40
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_CreateRRB_RRB_clrMAddr
	sty localVariable_RRB_CreateRRB_RRB_clrMAddr+1
	jsr RRB_CreateRRB
	; LineNumber: 241
	; Integer constant assigning
	ldy #$08
	lda #$04
	; Calling storevariable on generic assign expression
	sta spta
	sty spta+1
	; LineNumber: 253
	lda #$0
	; Calling storevariable on generic assign expression
	sta dy
MainProgram_forloop463:
	; LineNumber: 243
	; LineNumber: 245
	; Generic 16 bit op
	ldy #0
	lda #$0
MainProgram_rightvarInteger_var481 = $54
	sta MainProgram_rightvarInteger_var481
	sty MainProgram_rightvarInteger_var481+1
	; Generic 16 bit op
	ldy #0
	lda #$14
MainProgram_rightvarInteger_var484 = $56
	sta MainProgram_rightvarInteger_var484
	sty MainProgram_rightvarInteger_var484+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda dy
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$5
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc MainProgram_rightvarInteger_var484
MainProgram_wordAdd482:
	sta MainProgram_rightvarInteger_var484
	; High-bit binop
	tya
	adc MainProgram_rightvarInteger_var484+1
	tay
	lda MainProgram_rightvarInteger_var484
	; Low bit binop:
	clc
	adc MainProgram_rightvarInteger_var481
MainProgram_wordAdd479:
	sta MainProgram_rightvarInteger_var481
	; High-bit binop
	tya
	adc MainProgram_rightvarInteger_var481+1
	tay
	lda MainProgram_rightvarInteger_var481
	; Calling storevariable on generic assign expression
	pha
	lda dy
	asl
	tax
	pla
	sta sprX,x
	tya
	sta sprX+1,x
	; LineNumber: 246
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$64
	; Calling storevariable on generic assign expression
	pha
	lda dy
	asl
	tax
	pla
	sta sprY,x
	tya
	sta sprY+1,x
	; LineNumber: 247
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Load Integer array
	lda dy
	asl
	tax
	lda sprY,x
	ldy sprY+1,x
MainProgram_int_shift_var485 = $54
	sta MainProgram_int_shift_var485
	sty MainProgram_int_shift_var485+1
		lsr MainProgram_int_shift_var485+1
	ror MainProgram_int_shift_var485+0

		lsr MainProgram_int_shift_var485+1
	ror MainProgram_int_shift_var485+0

		lsr MainProgram_int_shift_var485+1
	ror MainProgram_int_shift_var485+0

	lda MainProgram_int_shift_var485
	; Calling storevariable on generic assign expression
	ldx dy ; optimized, look out for bugs
	sta lastRow,x
	; LineNumber: 248
	; integer assignment NodeVar
	ldy spta+1 ; keep
	lda spta
	; Calling storevariable on generic assign expression
	pha
	lda dy
	asl
	tax
	pla
	sta tilenum,x
	tya
	sta tilenum+1,x
	; LineNumber: 249
	lda dy
	; Calling storevariable on generic assign expression
	ldx dy ; optimized, look out for bugs
	sta rrbIndex,x
	; LineNumber: 250
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	asl
	tax
	lda tilenum,x
	ldy tilenum+1,x
	sec
	sbc #$00
	; Testing for byte:  #$08
	; RHS is word, no optimization
	pha 
	tya 
	sbc #$08
	tay 
	pla 
	sta mul16x8_num1
	sty mul16x8_num1Hi
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$40
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Calling storevariable on generic assign expression
	pha
	lda dy
	asl
	tax
	pla
	sta tileNumBased,x
	tya
	sta tileNumBased+1,x
	; LineNumber: 251
	lda spta
	clc
	adc #$02
	sta spta+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc MainProgram_WordAdd487
	inc spta+1
MainProgram_WordAdd487:
	; LineNumber: 252
MainProgram_forloopcounter465:
MainProgram_loopstart466:
	; Test Inc dec D
	inc dy
	lda #$1d
	cmp dy ;keep
	beq MainProgram_loopdone488
MainProgram_loopnotdone489:
	jmp MainProgram_forloop463
MainProgram_loopdone488:
MainProgram_forloopend464:
MainProgram_loopend467:
	; LineNumber: 254
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$64
	; Calling storevariable on generic assign expression
	sta spta
	sty spta+1
	; LineNumber: 255
MainProgram_while490:
MainProgram_loopstart494:
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_localfailed518
	jmp MainProgram_ConditionalTrueBlock491
MainProgram_localfailed518:
	jmp MainProgram_elsedoneblock493
MainProgram_ConditionalTrueBlock491: ;Main true block ;keep:
	; LineNumber: 256
	; LineNumber: 258
	; ****** Inline assembler section
			vsyncloop:
			lda $d012
			cmp #$E0
			bne vsyncloop			
		
	; LineNumber: 265
	; Poke
	; Optimization: shift is zero
	lda #$5
	sta $d020
	; LineNumber: 278
	lda #$0
	; Calling storevariable on generic assign expression
	sta dy
MainProgram_forloop520:
	; LineNumber: 268
	; LineNumber: 269
	; HandleVarBinopB16bit
	ldy #0 ; ::HandleVarBinopB16bit 0
	; RHS is pure, optimization
	; Load Byte array
	ldx cindex
	lda sinetable,x
	clc
	adc #$32
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	; Calling storevariable on generic assign expression
	pha
	lda dy
	asl
	tax
	pla
	sta sprY,x
	tya
	sta sprY+1,x
	; LineNumber: 270
	; HandleVarBinopB16bit
	ldy #0 ; ::HandleVarBinopB16bit 0
	; RHS is pure, optimization
	; Load Byte array
	ldx cindex
	lda costable,x
	clc
	adc spta
	; Testing for byte:  spta+1
	; RHS is word, no optimization
	pha 
	tya 
	adc spta+1
	tay 
	pla 
	; Calling storevariable on generic assign expression
	pha
	lda dy
	asl
	tax
	pla
	sta sprX,x
	tya
	sta sprX+1,x
	; LineNumber: 272
	; Test Inc dec D
	inc cindex
	; LineNumber: 273
	; Load Integer array
	lda dy
	asl
	tax
	lda tilenum,x
	ldy tilenum+1,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_tilenum
	sty localVariable_RRB_UpdateSprite_RRB_tilenum+1
	; Load Integer array
	lda dy
	asl
	tax
	lda tileNumBased,x
	ldy tileNumBased+1,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_sprNum
	sty localVariable_RRB_UpdateSprite_RRB_sprNum+1
	; Load Byte array
	ldx dy
	lda lastRow,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_lastrow
	; Load Integer array
	lda dy
	asl
	tax
	lda sprX,x
	ldy sprX+1,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_x
	sty localVariable_RRB_UpdateSprite_RRB_x+1
	; Load Integer array
	lda dy
	asl
	tax
	lda sprY,x
	ldy sprY+1,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_y
	sty localVariable_RRB_UpdateSprite_RRB_y+1
	; Load Byte array
	ldx dy
	lda rrbIndex,x
	; Calling storevariable on generic assign expression
	sta localVariable_RRB_UpdateSprite_RRB_rrbIndex
	jsr RRB_UpdateSprite
	; LineNumber: 274
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Load Integer array
	lda dy
	asl
	tax
	lda sprY,x
	ldy sprY+1,x
MainProgram_int_shift_var532 = $54
	sta MainProgram_int_shift_var532
	sty MainProgram_int_shift_var532+1
		lsr MainProgram_int_shift_var532+1
	ror MainProgram_int_shift_var532+0

		lsr MainProgram_int_shift_var532+1
	ror MainProgram_int_shift_var532+0

		lsr MainProgram_int_shift_var532+1
	ror MainProgram_int_shift_var532+0

	lda MainProgram_int_shift_var532
	ldy MainProgram_int_shift_var532+1
	; Calling storevariable on generic assign expression
	ldx dy ; optimized, look out for bugs
	sta lastRow,x
	; LineNumber: 277
MainProgram_forloopcounter522:
MainProgram_loopstart523:
	; Test Inc dec D
	inc dy
	lda #$1d
	cmp dy ;keep
	beq MainProgram_loopdone533
MainProgram_loopnotdone534:
	jmp MainProgram_forloop520
MainProgram_loopdone533:
MainProgram_forloopend521:
MainProgram_loopend524:
	; LineNumber: 278
	; Load Byte array
	ldy #0 ; lhs is byte, but integer required
	ldx windex
	lda wobble,x
	; Calling storevariable on generic assign expression
	sta spta
	sty spta+1
	; LineNumber: 279
	; Test Inc dec D
	inc d
	; LineNumber: 280
	; Binary clause Simplified: EQUALS
	lda d
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne MainProgram_elsedoneblock538
MainProgram_ConditionalTrueBlock536: ;Main true block ;keep:
	; LineNumber: 281
	; LineNumber: 282
	lda #$0
	; Calling storevariable on generic assign expression
	sta d
	; LineNumber: 284
	; Test Inc dec D
	inc windex
	; LineNumber: 285
MainProgram_elsedoneblock538:
	; LineNumber: 286
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $d020
	; LineNumber: 289
	; Poke
	; Optimization: shift is zero
	lda #$11
	sta $d020
	; LineNumber: 290
	jsr RRB_UpdateRRB
	; LineNumber: 291
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $d020
	; LineNumber: 292
	jmp MainProgram_while490
MainProgram_elsedoneblock493:
MainProgram_loopend495:
	; LineNumber: 293
main_block_end_:
	; End of program
	; Ending memory block at $2001
	; Ending memory block at $2001
EndBlock2001:

