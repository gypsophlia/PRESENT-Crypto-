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
; framesize_regs:     8
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          8
; elim ap -> fp       10
; elim fp -> sp       0
; saved regs: R7 R8 R9 R10
.LVL9:
	; start of prologue
	PUSHM.W	#4, R10
.LCFI2:
	; end of prologue
	MOV.W	R12, R10
	MOV.B	R13, R9
	MOV.B	R14, R7
	.loc 1 43 0
	MOV.W	#1, R12
.LVL10:
	MOV.W	R9, R13
.LVL11:
	CALL	#__mspabi_slli
.LVL12:
	MOV.B	@R10, R8
	BIC.B	R12, R8
	.loc 1 44 0
	MOV.W	R7, R12
	MOV.W	R9, R13
	CALL	#__mspabi_slli
.LVL13:
	BIS.B	R12, R8
	MOV.B	R8, @R10
	.loc 1 45 0
	; start of epilogue
	POPM.W	#4, r10
	RET
.LFE5:
	.size	cpybit, .-cpybit
	.balign 2
	.global	crypto_func
crypto_func:
.LFB8:
	.loc 1 103 0
; start of function
; framesize_regs:     14
; framesize_locals:   26
; framesize_outgoing: 0
; framesize:          40
; elim ap -> fp       16
; elim fp -> sp       26
; saved regs: R4 R5 R6 R7 R8 R9 R10
.LVL14:
	; start of prologue
	PUSHM.W	#7, R10
.LCFI3:
	SUB.W	#26, R1
.LCFI4:
	; end of prologue
	MOV.W	R12, R5
	MOV.W	R13, R4
.LVL15:
	MOV.B	2(R13), R12
.LVL16:
.LBB21:
.LBB22:
	.loc 1 53 0
	MOV.W	#1, R10
.LVL17:
.L6:
	MOV.B	R10, R14
	MOV.W	R14, 2(R1)
.LVL18:
.LBE22:
.LBE21:
.LBB25:
.LBB26:
	.loc 1 8 0
	XOR.B	@R5, R12
	MOV.B	R12, R6
	MOV.W	R6, @R1
	MOV.B	R12, @R5
.LVL19:
	MOV.B	3(R4), R7
	XOR.B	1(R5), R7
	MOV.B	R7, R11
	MOV.W	R11, 4(R1)
	MOV.B	R7, 1(R5)
.LVL20:
	MOV.B	4(R4), R8
	XOR.B	2(R5), R8
	MOV.B	R8, R13
	MOV.W	R13, 6(R1)
	MOV.B	R8, 2(R5)
.LVL21:
	MOV.B	5(R4), R9
	XOR.B	3(R5), R9
	MOV.B	R9, R14
	MOV.W	R14, 8(R1)
	MOV.B	R9, 3(R5)
.LVL22:
	MOV.B	6(R4), R15
	XOR.B	4(R5), R15
	MOV.B	R15, R6
	MOV.W	R6, 10(R1)
	MOV.B	R15, 4(R5)
.LVL23:
	MOV.B	7(R4), R14
	XOR.B	5(R5), R14
	MOV.B	R14, R11
	MOV.W	R11, 12(R1)
	MOV.B	R14, 5(R5)
.LVL24:
	MOV.B	8(R4), R13
	XOR.B	6(R5), R13
	MOV.B	R13, R6
	MOV.W	R6, 14(R1)
	MOV.B	R13, 6(R5)
.LVL25:
	MOV.B	9(R4), R6
	XOR.B	7(R5), R6
	MOV.B	R6, R11
	MOV.W	R11, 16(R1)
.LVL26:
.LBE26:
.LBE25:
.LBB27:
.LBB28:
.LBB29:
	.loc 1 26 0
	MOV.W	@R1, R11
	rrum.w	#4, R11
	MOV.B	sbox(R11), R11
	rpt	#4 { rlax.w	R11
	AND.W	#15, R12
.LVL27:
	MOV.B	sbox(R12), R12
	BIS.B	R11, R12
	MOV.B	R12, @R5
.LVL28:
	MOV.W	4(R1), R12
	rrum.w	#4, R12
	MOV.B	sbox(R12), R12
	rpt	#4 { rlax.w	R12
	AND.W	#15, R7
.LVL29:
	MOV.B	sbox(R7), R7
	BIS.B	R12, R7
	MOV.B	R7, 1(R5)
.LVL30:
	MOV.W	6(R1), R12
	rrum.w	#4, R12
	MOV.B	sbox(R12), R12
	rpt	#4 { rlax.w	R12
	AND.W	#15, R8
.LVL31:
	MOV.B	sbox(R8), R8
	BIS.B	R12, R8
	MOV.B	R8, 2(R5)
.LVL32:
	MOV.W	8(R1), R12
	rrum.w	#4, R12
	MOV.B	sbox(R12), R12
	rpt	#4 { rlax.w	R12
	AND.W	#15, R9
.LVL33:
	MOV.B	sbox(R9), R9
	BIS.B	R12, R9
	MOV.B	R9, 3(R5)
.LVL34:
	MOV.W	10(R1), R12
	rrum.w	#4, R12
	MOV.B	sbox(R12), R12
	rpt	#4 { rlax.w	R12
	AND.W	#15, R15
.LVL35:
	MOV.B	sbox(R15), R15
	BIS.B	R12, R15
	MOV.B	R15, 4(R5)
.LVL36:
	MOV.W	12(R1), R12
	rrum.w	#4, R12
	MOV.B	sbox(R12), R12
	rpt	#4 { rlax.w	R12
	AND.W	#15, R14
.LVL37:
	MOV.B	sbox(R14), R14
	BIS.B	R12, R14
	MOV.B	R14, 5(R5)
.LVL38:
	MOV.W	14(R1), R12
	rrum.w	#4, R12
	MOV.B	sbox(R12), R12
	rpt	#4 { rlax.w	R12
	AND.W	#15, R13
.LVL39:
	MOV.B	sbox(R13), R13
	BIS.B	R12, R13
	MOV.B	R13, 6(R5)
.LVL40:
	MOV.W	16(R1), R12
	rrum.w	#4, R12
	MOV.B	sbox(R12), R12
	rpt	#4 { rlax.w	R12
	AND.W	#15, R6
.LVL41:
	MOV.B	sbox(R6), R6
	BIS.B	R12, R6
	MOV.B	R6, 7(R5)
.LVL42:
.LBE29:
.LBE28:
.LBE27:
.LBB30:
.LBB24:
	.loc 1 53 0
	MOV.B	#0, 18(R1)
.LVL43:
	MOV.B	#0, 19(R1)
.LVL44:
	MOV.B	#0, 20(R1)
.LVL45:
	MOV.B	#0, 21(R1)
.LVL46:
	MOV.B	#0, 22(R1)
.LVL47:
	MOV.B	#0, 23(R1)
.LVL48:
	MOV.B	#0, 24(R1)
.LVL49:
	MOV.B	#0, 25(R1)
.LVL50:
	MOV.W	#0, R7
	MOV.W	R7, R9
	MOV.W	R7, R13
	BR	#.L9
.LVL51:
.L7:
	AND.B	#3, R12
.LVL52:
	rpt	#4 { rlax.w	R12
	MOV.W	R9, R13
	rrum.w	#2, R13
	ADD.B	R13, R12
	AND	#0xff, R12
	rrum.w	#3, R12
	MOV.W	#18, R6
.LVL53:
	ADD.W	R1, R6
	ADD.W	R6, R12
	MOV.B	@R12, R7
.LVL54:
.L9:
.LBB23:
	.loc 1 59 0
	MOV.B	R9, R6
	AND.B	#3, R6
	rpt	#4 { rlax.w	R6
	ADD.B	R13, R6
	MOV.B	R6, R8
.LVL55:
	.loc 1 64 0
	rrum.w	#3, R8
	MOV.W	#18, R11
	ADD.W	R1, R11
	ADD.W	R11, R8
	MOV.W	R9, R12
	rrum.w	#3, R12
	ADD.W	R5, R12
	MOV.B	@R12, R12
	MOV.W	R9, R13
	AND.W	#7, R13
	CALL	#__mspabi_srai
.LVL56:
	AND.W	#1, R12
	MOV.W	R6, R13
	AND.W	#7, R13
	CALL	#__mspabi_slli
.LVL57:
	BIS.B	R7, R12
	MOV.B	R12, @R8
.LBE23:
	.loc 1 55 0
	MOV.B	R9, R12
	ADD.B	#1, R12
	MOV.B	R12, R9
.LVL58:
	CMP.B	#64, R12 { JNE	.L7
.LVL59:
	.loc 1 68 0
	MOV.B	18(R1), @R5
.LVL60:
	MOV.B	19(R1), 1(R5)
.LVL61:
	MOV.B	20(R1), 2(R5)
.LVL62:
	MOV.B	21(R1), 3(R5)
.LVL63:
	MOV.B	22(R1), 4(R5)
.LVL64:
	MOV.B	23(R1), 5(R5)
.LVL65:
	MOV.B	24(R1), 6(R5)
.LVL66:
	MOV.B	25(R1), 7(R5)
.LVL67:
.LBE24:
.LBE30:
.LBB31:
.LBB32:
	.loc 1 76 0
	MOV.B	2(R4), R9
.LVL68:
	.loc 1 77 0
	MOV.B	1(R4), R12
.LVL69:
	.loc 1 78 0
	MOV.B	@R4, R8
.LVL70:
	.loc 1 81 0
	MOV.B	3(R4), R14
	MOV.W	R14, R15
	rpt	#5 { rlax.w	R15
	MOV.W	R9, R13
	rrum.w	#3, R13
	BIS.B	R13, R15
	MOV.B	R15, @R4
.LVL71:
	.loc 1 82 0
	MOV.B	4(R4), R13
	.loc 1 83 0
	MOV.B	5(R4), R15
	.loc 1 84 0
	MOV.B	6(R4), R6
.LVL72:
	MOV.W	R6, R11
	rpt	#5 { rlax.w	R11
	MOV.W	R15, R7
	rrum.w	#3, R7
	BIS.B	R7, R11
	MOV.B	R11, 3(R4)
	.loc 1 85 0
	MOV.B	7(R4), R7
	MOV.W	R7, R11
	rpt	#5 { rlax.w	R11
	rrum.w	#3, R6
	BIS.B	R6, R11
	MOV.B	R11, 4(R4)
	.loc 1 86 0
	MOV.B	8(R4), R6
	MOV.W	R6, R11
	rpt	#5 { rlax.w	R11
	rrum.w	#3, R7
	BIS.B	R7, R11
	MOV.B	R11, 5(R4)
	.loc 1 87 0
	MOV.B	9(R4), R7
	MOV.W	R7, R11
	rpt	#5 { rlax.w	R11
	rrum.w	#3, R6
	BIS.B	R6, R11
	MOV.B	R11, 6(R4)
	.loc 1 88 0
	MOV.W	R8, R6
	rpt	#5 { rlax.w	R6
	rrum.w	#3, R7
	BIS.B	R7, R6
	MOV.B	R6, 7(R4)
	.loc 1 89 0
	MOV.W	R12, R7
	rpt	#5 { rlax.w	R7
	rrum.w	#3, R8
.LVL73:
	BIS.B	R8, R7
	MOV.B	R7, 8(R4)
	.loc 1 90 0
	rpt	#5 { rlax.w	R9
	rrum.w	#3, R12
	BIS.B	R9, R12
	MOV.B	R12, R9
.LVL74:
	.loc 1 93 0
	rrum.w	#4, R9
	.loc 1 95 0
	MOV.B	sbox(R9), R9
	rpt	#4 { rlax.w	R9
	.loc 1 94 0
	AND.B	#15, R12
.LVL75:
	.loc 1 95 0
	BIS.B	R9, R12
	MOV.B	R12, 9(R4)
	.loc 1 98 0
	MOV.W	R10, R12
	rpt	#7 { rlax.w	R12
	.loc 1 82 0
	MOV.W	R13, R9
	rpt	#5 { rlax.w	R9
	rrum.w	#3, R14
	BIS.B	R9, R14
	.loc 1 98 0
	XOR.B	R12, R14
	MOV.B	R14, 1(R4)
.LVL76:
	.loc 1 99 0
	MOV.W	2(R1), R12
	CLRC { RRC.W	R12
	.loc 1 83 0
	rpt	#5 { rlax.w	R15
	rrum.w	#3, R13
	BIS.B	R15, R13
	.loc 1 99 0
	XOR.B	R12, R13
	MOV.B	R13, R12
	MOV.B	R13, 2(R4)
.LVL77:
	ADD.W	#1, R10
.LVL78:
.LBE32:
.LBE31:
	.loc 1 106 0
	CMP.W	#32, R10 { JNE	.L6
	MOV.W	R4, R12
	BIS.W	R5, R12
	AND.W	#1, R12
	CMP.W	#0, R12 { JNE	.L10
	MOV.B	#1, R13
	MOV.W	R4, R12
	ADD.W	#4, R12
	CMP.W	R12, R5 { JHS	.L11
	MOV.B	#0, R13
.L11:
	CMP.W	R5, R4 { JHS	.L16
	CMP.B	#0, R13 { JEQ	.L10
.L16:
.LBB33:
.LBB34:
	.loc 1 8 0
	XOR.W	2(R4), @R5
	XOR.W	4(R4), 2(R5)
	XOR.W	6(R4), 4(R5)
	XOR.W	8(R4), 6(R5)
.LVL79:
.LBE34:
.LBE33:
	.loc 1 117 0
	; start of epilogue
	ADD.W	#26, R1
	POPM.W	#7, r10
	RET
.L10:
.LVL80:
.LBB36:
.LBB35:
	.loc 1 8 0
	XOR.B	2(R4), @R5
.LVL81:
	XOR.B	3(R4), 1(R5)
.LVL82:
	XOR.B	4(R4), 2(R5)
.LVL83:
	XOR.B	5(R4), 3(R5)
.LVL84:
	XOR.B	6(R4), 4(R5)
.LVL85:
	XOR.B	7(R4), 5(R5)
.LVL86:
	XOR.B	8(R4), 6(R5)
.LVL87:
	XOR.B	9(R4), 7(R5)
.LVL88:
.LBE35:
.LBE36:
	.loc 1 117 0
	; start of epilogue
	ADD.W	#26, R1
	POPM.W	#7, r10
	RET
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
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0xa
	.byte	0x8a
	.uleb128 0x2
	.byte	0x89
	.uleb128 0x3
	.byte	0x88
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x5
	.balign 4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
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
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x2a
	.balign 4
.LEFDE8:
.text
.Letext0:
	.file 2 "/opt/ti/msp430-elf/include/machine/_default_types.h"
	.file 3 "/opt/ti/msp430-elf/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x463
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
	.4byte	.LASF36
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
	.4byte	0xc1
	.uleb128 0x6
	.string	"pt"
	.byte	0x1
	.byte	0x3
	.4byte	0xc1
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x3
	.4byte	0xc1
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x6
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.4byte	0x84
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	0xfe
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x10
	.4byte	0xc1
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x13
	.4byte	0x84
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x16
	.4byte	0x84
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x84
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1e
	.4byte	0x84
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x134
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x1e
	.4byte	0x84
	.4byte	.LLST0
	.uleb128 0xc
	.string	"bit"
	.byte	0x1
	.byte	0x1e
	.4byte	0x84
	.4byte	.LLST1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.4byte	0x84
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x22
	.4byte	0x84
	.4byte	.LLST2
	.uleb128 0xc
	.string	"bit"
	.byte	0x1
	.byte	0x22
	.4byte	0x84
	.4byte	.LLST3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0x84
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x26
	.4byte	0x84
	.4byte	.LLST4
	.uleb128 0xc
	.string	"bit"
	.byte	0x1
	.byte	0x26
	.4byte	0x84
	.4byte	.LLST5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1
	.uleb128 0xc
	.string	"out"
	.byte	0x1
	.byte	0x2a
	.4byte	0xc1
	.4byte	.LLST6
	.uleb128 0xc
	.string	"pos"
	.byte	0x1
	.byte	0x2a
	.4byte	0x84
	.4byte	.LLST7
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x2a
	.4byte	0x84
	.4byte	.LLST8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x244
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x2f
	.4byte	0xc1
	.uleb128 0x7
	.string	"out"
	.byte	0x1
	.byte	0x32
	.4byte	0x244
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x33
	.4byte	0x84
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x38
	.4byte	0x84
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x39
	.4byte	0x84
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3b
	.4byte	0x84
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3d
	.4byte	0x84
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3e
	.4byte	0x84
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x84
	.4byte	0x254
	.uleb128 0xf
	.4byte	0x76
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	0x2a1
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x49
	.4byte	0xc1
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x49
	.4byte	0x2a1
	.uleb128 0x7
	.string	"tmp"
	.byte	0x1
	.byte	0x4b
	.4byte	0x84
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4c
	.4byte	0x2a1
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4d
	.4byte	0x2a1
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4e
	.4byte	0x2a1
	.byte	0
	.uleb128 0x10
	.4byte	0x84
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x66
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x440
	.uleb128 0xc
	.string	"pt"
	.byte	0x1
	.byte	0x66
	.4byte	0xc1
	.4byte	.LLST9
	.uleb128 0xc
	.string	"key"
	.byte	0x1
	.byte	0x66
	.4byte	0xc1
	.4byte	.LLST10
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x68
	.4byte	0x84
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	0x1e1
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6f
	.4byte	0x34c
	.uleb128 0x13
	.4byte	0x1ed
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x15
	.4byte	0x1f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	0x201
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x16
	.4byte	0x20b
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	0x216
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	0x221
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	0x22c
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	0x237
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x96
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x6d
	.4byte	0x37d
	.uleb128 0x13
	.4byte	0xac
	.uleb128 0x13
	.4byte	0xa2
	.uleb128 0x17
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x16
	.4byte	0xb7
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xc7
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x6e
	.4byte	0x3c5
	.uleb128 0x13
	.4byte	0xd3
	.uleb128 0x17
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x16
	.4byte	0xdc
	.4byte	.LLST19
	.uleb128 0x17
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x16
	.4byte	0xe6
	.4byte	.LLST20
	.uleb128 0x16
	.4byte	0xf1
	.4byte	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x254
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x70
	.4byte	0x416
	.uleb128 0x19
	.4byte	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	0x260
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x16
	.4byte	0x274
	.4byte	.LLST22
	.uleb128 0x16
	.4byte	0x27f
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	0x28a
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	0x295
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x96
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x74
	.uleb128 0x13
	.4byte	0xac
	.uleb128 0x13
	.4byte	0xa2
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x16
	.4byte	0xb7
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x84
	.4byte	0x450
	.uleb128 0xf
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc
	.4byte	0x461
	.uleb128 0x5
	.byte	0x3
	.4byte	sbox
	.uleb128 0x10
	.4byte	0x440
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -26
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -26
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
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
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x18
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x25
	.byte	0x74
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
.LLST23:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 2
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 1
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE8-.Ltext0
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
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0
	.4byte	0
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
.LASF22:
	.string	"src_byte"
.LASF26:
	.string	"dst_bit"
.LASF15:
	.string	"sbox_layer"
.LASF32:
	.string	"crypto_func"
.LASF30:
	.string	"tmp0"
.LASF29:
	.string	"tmp1"
.LASF28:
	.string	"tmp2"
.LASF20:
	.string	"clrbit"
.LASF18:
	.string	"getbit"
.LASF34:
	.string	"GNU C 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1) -fpreprocessed -mmcu=msp430fr5969 -g -O3"
.LASF25:
	.string	"dst_byte"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF14:
	.string	"add_round_key"
.LASF27:
	.string	"update_round_key"
.LASF31:
	.string	"cpybit"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"pbox_layer"
.LASF36:
	.string	"/home/hwsec/Desktop/msp430/template_present/present_ref"
.LASF8:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF17:
	.string	"lower_4bits"
.LASF24:
	.string	"posi"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF33:
	.string	"sbox"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"crypto.c"
.LASF1:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF23:
	.string	"src_bit"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF16:
	.string	"upper_4bits"
	.ident	"GCC: (GNU) 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1)"
