	.file	"crypto.c"
.text
.Ltext0:
	.balign 2
	.global	crypto_func
crypto_func:
.LFB4:
	.file 1 "crypto.c"
	.loc 1 52 0
; start of function
; framesize_regs:     14
; framesize_locals:   6
; framesize_outgoing: 0
; framesize:          20
; elim ap -> fp       16
; elim fp -> sp       6
; saved regs: R4 R5 R6 R7 R8 R9 R10
.LVL0:
	; start of prologue
	PUSHM.W	#7, R10
.LCFI0:
	SUB.W	#6, R1
.LCFI1:
	; end of prologue
	MOV.W	R13, 4(R1)
.LVL1:
	MOV.B	2(R13), R12
.LVL2:
	MOV.B	1(R13), R7
	MOV.W	R7, @R1
	MOV.B	@R13, R4
	MOV.B	3(R13), R13
.LVL3:
	MOV.W	4(R1), R14
	MOV.B	4(R14), R6
	MOV.B	5(R14), R8
	MOV.B	6(R14), R9
	MOV.B	7(R14), R10
	MOV.B	8(R14), R14
	MOV.W	4(R1), R15
	MOV.B	9(R15), R11
	.loc 1 52 0
	MOV.W	#1, R5
.LVL4:
.L2:
.LBB12:
.LBB13:
	.loc 1 30 0
	MOV.W	R13, R7
	rpt	#5 { rlax.w	R7
	MOV.W	R12, R15
	rrum.w	#3, R15
	BIS.B	R15, R7
	.loc 1 31 0
	MOV.W	R6, R15
	rpt	#5 { rlax.w	R15
	rrum.w	#3, R13
	BIS.B	R13, R15
	MOV.B	R15, 3(R1)
	.loc 1 32 0
	MOV.W	R8, R13
	rpt	#5 { rlax.w	R13
	rrum.w	#3, R6
	MOV.B	R13, R15
	BIS.B	R6, R15
	.loc 1 33 0
	MOV.W	R9, R6
	rpt	#5 { rlax.w	R6
	rrum.w	#3, R8
	BIS.B	R6, R8
	MOV.B	R8, R13
	.loc 1 34 0
	MOV.W	R10, R8
	rpt	#5 { rlax.w	R8
	rrum.w	#3, R9
	BIS.B	R8, R9
	MOV.B	R9, R6
	.loc 1 35 0
	MOV.W	R14, R9
	rpt	#5 { rlax.w	R9
	rrum.w	#3, R10
	BIS.B	R9, R10
	MOV.B	R10, R8
	.loc 1 36 0
	MOV.W	R11, R10
	rpt	#5 { rlax.w	R10
	rrum.w	#3, R14
	BIS.B	R10, R14
	MOV.B	R14, R9
	.loc 1 37 0
	MOV.W	R4, R14
	rpt	#5 { rlax.w	R14
	rrum.w	#3, R11
	BIS.B	R14, R11
	MOV.B	R11, R10
	.loc 1 38 0
	MOV.W	@R1, R11
	rpt	#5 { rlax.w	R11
	rrum.w	#3, R4
.LVL5:
	BIS.B	R11, R4
	MOV.B	R4, R14
	.loc 1 39 0
	rpt	#5 { rlax.w	R12
.LVL6:
	MOV.W	@R1, R11
	rrum.w	#3, R11
	BIS.B	R11, R12
	MOV.B	R12, R4
.LVL7:
	.loc 1 42 0
	rrum.w	#4, R4
	.loc 1 44 0
	MOV.B	sbox(R4), R4
	rpt	#4 { rlax.w	R4
	.loc 1 43 0
	AND.B	#15, R12
.LVL8:
	.loc 1 44 0
	BIS.B	R4, R12
	MOV.B	R12, R11
	.loc 1 47 0
	MOV.W	R5, R12
	rpt	#7 { rlax.w	R12
	XOR.B	3(R1), R12
	AND	#0xff, R12
	MOV.W	R12, @R1
.LVL9:
	.loc 1 48 0
	MOV.B	R5, R12
	CLRC { RRC.W	R12
	XOR.B	R12, R15
	MOV.B	R15, R12
.LVL10:
	ADD.W	#1, R5
.LVL11:
	MOV.B	R7, R4
.LBE13:
.LBE12:
	.loc 1 55 0
	CMP.W	#32, R5 { JNE	.L2
	MOV.W	4(R1), R7
	MOV.B	R4, @R7
	MOV.B	R13, 3(R7)
	MOV.B	R6, 4(R7)
	MOV.B	R8, 5(R7)
	MOV.B	R9, 6(R7)
	MOV.B	R10, 7(R7)
	MOV.B	R14, 8(R7)
	MOV.B	R11, 9(R7)
	MOV.B	@R1, 1(R7)
	MOV.B	R12, 2(R7)
.LVL12:
	.loc 1 66 0
	; start of epilogue
	ADD.W	#6, R1
	POPM.W	#7, r10
	RET
.LFE4:
	.size	crypto_func, .-crypto_func
	.section	.rodata
	.type	sbox, @object
	.size	sbox, 16
sbox:
	.byte	12
	.byte	5
	.byte	6
	.byte	11
	.byte	9
	.byte	0
	.byte	10
	.byte	13
	.byte	3
	.byte	14
	.byte	15
	.byte	8
	.byte	4
	.byte	7
	.byte	1
	.byte	2
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -2
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x80
	.uleb128 0x1
	.balign 4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x8a
	.uleb128 0x2
	.byte	0x89
	.uleb128 0x3
	.byte	0x88
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x85
	.uleb128 0x7
	.byte	0x84
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x16
	.balign 4
.LEFDE0:
.text
.Letext0:
	.file 2 "/opt/ti/msp430-elf/include/machine/_default_types.h"
	.file 3 "/opt/ti/msp430-elf/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x1
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1c
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2a
	.4byte	0x41
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	0xb8
	.uleb128 0x6
	.string	"pt"
	.byte	0x1
	.byte	0x3
	.4byte	0xb8
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x3
	.4byte	0xb8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.4byte	0x84
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0xd4
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0xc
	.4byte	0xb8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	0xea
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x11
	.4byte	0xb8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	0x137
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x16
	.4byte	0xb8
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x16
	.4byte	0x137
	.uleb128 0x8
	.string	"tmp"
	.byte	0x1
	.byte	0x18
	.4byte	0x84
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x19
	.4byte	0x137
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1a
	.4byte	0x137
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1b
	.4byte	0x137
	.byte	0
	.uleb128 0xa
	.4byte	0x84
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x33
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cb
	.uleb128 0xc
	.string	"pt"
	.byte	0x1
	.byte	0x33
	.4byte	0xb8
	.4byte	.LLST0
	.uleb128 0xc
	.string	"key"
	.byte	0x1
	.byte	0x33
	.4byte	0xb8
	.4byte	.LLST1
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x35
	.4byte	0x84
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	0xea
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x3d
	.uleb128 0xf
	.4byte	0x101
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x11
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x12
	.4byte	0x10a
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	0x115
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	0x120
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	0x12b
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x84
	.4byte	0x1db
	.uleb128 0x14
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	sbox
	.uleb128 0xa
	.4byte	0x1cb
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -18
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0xd
	.byte	0x7c
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	sbox
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"__uint8_t"
.LASF15:
	.string	"sbox_layer"
.LASF25:
	.string	"crypto_func"
.LASF20:
	.string	"tmp0"
.LASF19:
	.string	"tmp1"
.LASF18:
	.string	"tmp2"
.LASF22:
	.string	"GNU C 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1) -fpreprocessed -mmcu=msp430fr5969 -g -O3"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"add_round_key"
.LASF17:
	.string	"update_round_key"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"pbox_layer"
.LASF24:
	.string	"/home/hwsec/Desktop/msp430/template_present/present_ref"
.LASF8:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF21:
	.string	"sbox"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"crypto.c"
.LASF1:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (GNU) 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1)"
