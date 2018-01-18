	.file	"crypto.c"
.text
.Ltext0:
	.balign 2
	.global	getbit
getbit:
.LFB2:
	.file 1 "crypto.c"
	.loc 1 30 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL0:
	; start of prologue
	; end of prologue
	.loc 1 31 0
	AND	#0xff, R12
	AND	#0xff, R13
	CALL	#__mspabi_srai
.LVL1:
	.loc 1 32 0
	AND.B	#1, R12
	; start of epilogue
	RET
.LFE2:
	.size	getbit, .-getbit
	.balign 2
	.global	setbit
setbit:
.LFB3:
	.loc 1 34 0
; start of function
; framesize_regs:     2
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          2
; elim ap -> fp       4
; elim fp -> sp       0
; saved regs: R10
.LVL2:
	; start of prologue
	PUSHM.W	#1, R10
.LCFI0:
	; end of prologue
	MOV.B	R12, R10
	.loc 1 35 0
	MOV.W	#1, R12
.LVL3:
	AND	#0xff, R13
	CALL	#__mspabi_slli
.LVL4:
	.loc 1 36 0
	BIS.B	R10, R12
	; start of epilogue
	POPM.W	#1, r10
	RET
.LFE3:
	.size	setbit, .-setbit
	.balign 2
	.global	clrbit
clrbit:
.LFB4:
	.loc 1 38 0
; start of function
; framesize_regs:     2
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          2
; elim ap -> fp       4
; elim fp -> sp       0
; saved regs: R10
.LVL5:
	; start of prologue
	PUSHM.W	#1, R10
.LCFI1:
	; end of prologue
	MOV.B	R12, R10
	.loc 1 39 0
	MOV.W	#1, R12
.LVL6:
	AND	#0xff, R13
	CALL	#__mspabi_slli
.LVL7:
	.loc 1 40 0
	BIC.B	R12, R10
.LVL8:
	MOV.B	R10, R12
	; start of epilogue
	POPM.W	#1, r10
	RET
.LFE4:
	.size	clrbit, .-clrbit
	.balign 2
	.global	cpybit
cpybit:
.LFB5:
	.loc 1 42 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL9:
	; start of prologue
	; end of prologue
.LVL10:
	.loc 1 45 0
	; start of epilogue
	RET
.LFE5:
	.size	cpybit, .-cpybit
	.balign 2
	.global	crypto_func
crypto_func:
.LFB8:
	.loc 1 99 0
; start of function
; framesize_regs:     14
; framesize_locals:   10
; framesize_outgoing: 0
; framesize:          24
; elim ap -> fp       16
; elim fp -> sp       10
; saved regs: R4 R5 R6 R7 R8 R9 R10
.LVL11:
	; start of prologue
	PUSHM.W	#7, R10
.LCFI2:
	SUB.W	#10, R1
.LCFI3:
	; end of prologue
.LVL12:
	MOV.B	4(R13), R11
	MOV.W	R11, @R1
	.loc 1 99 0
	MOV.W	#1, R8
.LVL13:
.L6:
.LBB27:
.LBB28:
	.loc 1 8 0
	XOR.B	@R1, @R12
.LVL14:
	XOR.B	5(R13), 1(R12)
.LVL15:
	XOR.B	6(R13), 2(R12)
.LVL16:
	XOR.B	7(R13), 3(R12)
.LVL17:
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	.loc 1 64 0
	MOV.B	2(R1), @R12
.LVL18:
	MOV.B	3(R1), 1(R12)
.LVL19:
	MOV.B	4(R1), 2(R12)
.LVL20:
	MOV.B	5(R1), 3(R12)
.LVL21:
	MOV.B	6(R1), 4(R12)
.LVL22:
	MOV.B	7(R1), 5(R12)
.LVL23:
	MOV.B	8(R1), 6(R12)
.LVL24:
	MOV.B	9(R1), 7(R12)
.LVL25:
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	.loc 1 72 0
	MOV.B	2(R13), R7
.LVL26:
	.loc 1 73 0
	MOV.B	1(R13), R14
.LVL27:
	.loc 1 74 0
	MOV.B	@R13, R6
.LVL28:
	.loc 1 77 0
	MOV.B	3(R13), R10
	MOV.W	R10, R9
	rpt	#5 { rlax.w	R9
	MOV.W	R7, R15
	rrum.w	#3, R15
	BIS.B	R15, R9
	MOV.B	R9, @R13
.LVL29:
	.loc 1 78 0
	MOV.B	4(R13), R15
	.loc 1 79 0
	MOV.B	5(R13), R9
	.loc 1 80 0
	MOV.B	6(R13), R11
	MOV.W	R11, R4
	rpt	#5 { rlax.w	R4
	MOV.W	R9, R5
	rrum.w	#3, R5
	BIS.B	R5, R4
	MOV.B	R4, 3(R13)
	.loc 1 81 0
	MOV.B	7(R13), R5
	MOV.W	R5, R4
	rpt	#5 { rlax.w	R4
	rrum.w	#3, R11
	BIS.B	R11, R4
	MOV.B	R4, R11
	MOV.W	R11, @R1
	MOV.B	R4, 4(R13)
	.loc 1 82 0
	MOV.B	8(R13), R4
	MOV.W	R4, R11
	rpt	#5 { rlax.w	R11
	rrum.w	#3, R5
	BIS.B	R5, R11
	MOV.B	R11, 5(R13)
	.loc 1 83 0
	MOV.B	9(R13), R5
	MOV.W	R5, R11
	rpt	#5 { rlax.w	R11
	rrum.w	#3, R4
	BIS.B	R11, R4
	MOV.B	R4, 6(R13)
	.loc 1 84 0
	MOV.W	R6, R4
	rpt	#5 { rlax.w	R4
	rrum.w	#3, R5
	BIS.B	R5, R4
	MOV.B	R4, 7(R13)
	.loc 1 85 0
	MOV.W	R14, R5
	rpt	#5 { rlax.w	R5
	rrum.w	#3, R6
.LVL30:
	BIS.B	R6, R5
	MOV.B	R5, 8(R13)
	.loc 1 86 0
	rpt	#5 { rlax.w	R7
	rrum.w	#3, R14
	BIS.B	R7, R14
	MOV.B	R14, R7
.LVL31:
	.loc 1 89 0
	rrum.w	#4, R7
	.loc 1 91 0
	MOV.B	sbox(R7), R7
	rpt	#4 { rlax.w	R7
	.loc 1 90 0
	AND.B	#15, R14
.LVL32:
	.loc 1 91 0
	BIS.B	R7, R14
	MOV.B	R14, 9(R13)
	.loc 1 94 0
	MOV.W	R8, R14
	rpt	#7 { rlax.w	R14
	.loc 1 78 0
	MOV.W	R15, R7
	rpt	#5 { rlax.w	R7
	rrum.w	#3, R10
	BIS.B	R7, R10
	.loc 1 94 0
	XOR.B	R14, R10
	MOV.B	R10, 1(R13)
.LVL33:
	.loc 1 95 0
	MOV.B	R8, R14
	CLRC { RRC.W	R14
	.loc 1 79 0
	rpt	#5 { rlax.w	R9
	rrum.w	#3, R15
	BIS.B	R9, R15
	.loc 1 95 0
	XOR.B	R14, R15
	MOV.B	R15, 2(R13)
.LVL34:
	ADD.W	#1, R8
.LVL35:
.LBE32:
.LBE31:
	.loc 1 102 0
	CMP.W	#32, R8 { JNE	.L6
	MOV.W	R13, R15
	ADD.W	#4, R15
	MOV.W	R15, R14
	BIS.W	R12, R14
	AND.W	#1, R14
	CMP.W	#0, R14 { JNE	.L7
	MOV.B	#1, R10
	MOV.W	R13, R14
	ADD.W	#6, R14
	CMP.W	R14, R12 { JLO	.L21
	MOV.W	R12, R14
	ADD.W	#2, R14
	CMP.W	R14, R15 { JLO	.L22
.L13:
.LBB33:
.LBB34:
	.loc 1 8 0
	XOR.W	4(R13), @R12
	XOR.W	6(R13), 2(R12)
	XOR.W	8(R13), 4(R12)
	XOR.W	10(R13), 6(R12)
.LVL36:
.LBE34:
.LBE33:
	.loc 1 113 0
	; start of epilogue
	ADD.W	#10, R1
	POPM.W	#7, r10
	RET
.L22:
	CMP.B	#0, R10 { JNE	.L13
.L7:
.LVL37:
.LBB36:
.LBB35:
	.loc 1 8 0
	XOR.B	4(R13), @R12
.LVL38:
	XOR.B	5(R13), 1(R12)
.LVL39:
	XOR.B	6(R13), 2(R12)
.LVL40:
	XOR.B	7(R13), 3(R12)
.LVL41:
	XOR.B	8(R13), 4(R12)
.LVL42:
	XOR.B	9(R13), 5(R12)
.LVL43:
	XOR.B	10(R13), 6(R12)
.LVL44:
	XOR.B	11(R13), 7(R12)
.LVL45:
.LBE35:
.LBE36:
	.loc 1 113 0
	; start of epilogue
	ADD.W	#10, R1
	POPM.W	#7, r10
	RET
.LVL46:
.L21:
	MOV.B	#0, R10
	MOV.W	R12, R14
	ADD.W	#2, R14
	CMP.W	R14, R15 { JHS	.L13
	BR	#.L22
.LFE8:
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.balign 4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8a
	.uleb128 0x2
	.balign 4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8a
	.uleb128 0x2
	.balign 4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.balign 4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
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
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x1a
	.balign 4
.LEFDE8:
.text
.Letext0:
	.file 2 "/opt/ti/msp430-elf/include/machine/_default_types.h"
	.file 3 "/opt/ti/msp430-elf/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3e5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x1
	.4byte	.LASF27
	.4byte	.LASF28
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
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1e
	.4byte	0x84
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0x1e
	.4byte	0x84
	.uleb128 0x6
	.string	"bit"
	.byte	0x1
	.byte	0x1e
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.4byte	0xe7
	.uleb128 0x6
	.string	"out"
	.byte	0x1
	.byte	0x2a
	.4byte	0x84
	.uleb128 0x6
	.string	"pos"
	.byte	0x1
	.byte	0x2a
	.4byte	0x84
	.uleb128 0x6
	.string	"v"
	.byte	0x1
	.byte	0x2a
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	0x112
	.uleb128 0x6
	.string	"pt"
	.byte	0x1
	.byte	0x3
	.4byte	0x112
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x3
	.4byte	0x112
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x6
	.4byte	0x2c
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.4byte	0x84
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	0x14f
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x10
	.4byte	0x112
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x13
	.4byte	0x2c
	.uleb128 0xb
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x16
	.4byte	0x84
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x84
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x182
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x2f
	.4byte	0x112
	.uleb128 0x9
	.string	"out"
	.byte	0x1
	.byte	0x31
	.4byte	0x182
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x33
	.4byte	0x2c
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0x34
	.4byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	0x84
	.4byte	0x192
	.uleb128 0xe
	.4byte	0x76
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	0x96
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b8
	.uleb128 0x10
	.4byte	0xa6
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	0xaf
	.4byte	.LLST1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.4byte	0x84
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ee
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x22
	.4byte	0x84
	.4byte	.LLST2
	.uleb128 0x12
	.string	"bit"
	.byte	0x1
	.byte	0x22
	.4byte	0x84
	.4byte	.LLST3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0x84
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x224
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x26
	.4byte	0x84
	.4byte	.LLST4
	.uleb128 0x12
	.string	"bit"
	.byte	0x1
	.byte	0x26
	.4byte	0x84
	.4byte	.LLST5
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24f
	.uleb128 0x10
	.4byte	0xc7
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	0xd2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x14
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0x29c
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x45
	.4byte	0x112
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x45
	.4byte	0x29c
	.uleb128 0x9
	.string	"tmp"
	.byte	0x1
	.byte	0x47
	.4byte	0x84
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x48
	.4byte	0x29c
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x49
	.4byte	0x29c
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4a
	.4byte	0x29c
	.byte	0
	.uleb128 0x15
	.4byte	0x84
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x62
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c2
	.uleb128 0x17
	.string	"pt"
	.byte	0x1
	.byte	0x62
	.4byte	0x112
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.byte	0x62
	.4byte	0x112
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x64
	.4byte	0x84
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	0xe7
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x69
	.4byte	0x30d
	.uleb128 0x1a
	.4byte	0xfd
	.uleb128 0x1a
	.4byte	0xf3
	.uleb128 0x1b
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x1c
	.4byte	0x108
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x14f
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0x6b
	.4byte	0x346
	.uleb128 0x1a
	.4byte	0x15b
	.uleb128 0x1b
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x1d
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	0x16f
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	0x178
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x24f
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x6c
	.4byte	0x398
	.uleb128 0x10
	.4byte	0x266
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	0x25b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1b
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x1c
	.4byte	0x26f
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	0x27a
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	0x285
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	0x290
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xe7
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x70
	.uleb128 0x1a
	.4byte	0xfd
	.uleb128 0x1a
	.4byte	0xf3
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1c
	.4byte	0x108
	.4byte	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x84
	.4byte	0x3d2
	.uleb128 0xe
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0x21
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc
	.4byte	0x3e3
	.uleb128 0x5
	.byte	0x3
	.4byte	sbox
	.uleb128 0x15
	.4byte	0x3c2
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x17
	.byte	0x31
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0xd
	.byte	0x7e
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	sbox
	.byte	0x22
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x18
	.byte	0x7d
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x25
	.byte	0x7d
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x24
	.byte	0x21
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
.LLST12:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 2
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 1
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"setbit"
.LASF11:
	.string	"__uint8_t"
.LASF15:
	.string	"sbox_layer"
.LASF31:
	.string	"crypto_func"
.LASF24:
	.string	"tmp0"
.LASF23:
	.string	"tmp1"
.LASF22:
	.string	"tmp2"
.LASF20:
	.string	"clrbit"
.LASF29:
	.string	"getbit"
.LASF26:
	.string	"GNU C 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1) -fpreprocessed -mmcu=msp430fr5969 -g -O3"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"add_round_key"
.LASF21:
	.string	"update_round_key"
.LASF30:
	.string	"cpybit"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"pbox_layer"
.LASF28:
	.string	"/home/hwsec/Desktop/msp430/template_present/present_ref"
.LASF8:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF17:
	.string	"lower_4bits"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"sbox"
.LASF4:
	.string	"short int"
.LASF27:
	.string	"crypto.c"
.LASF1:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF16:
	.string	"upper_4bits"
	.ident	"GCC: (GNU) 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1)"
