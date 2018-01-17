	.file	"main.c"
.text
.Ltext0:
	.balign 2
	.global	ctrinc
	.section	__interrupt_vector_45,"ax",@progbits
	.word	ctrinc
	.text
ctrinc:
.LFB0:
	.file 1 "main.c"
	.loc 1 28 0
; start of function
; attributes: interrupt 
; framesize_regs:     12
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          12
; elim ap -> fp       14
; elim fp -> sp       0
; saved regs: R10 R11 R12 R13 R14 R15
	; start of prologue
	PUSHM.W	#6, R15
.LCFI0:
	; end of prologue
	.loc 1 29 0
	MOV.W	&timer_ctr, R10
	MOV.W	&timer_ctr+2, R15
	MOV.W	&timer_ctr+4, R14
	MOV.W	&timer_ctr+6, R11
	MOV.W	R15, R13
	ADD.W	#1, R13
	MOV.W	#1, R12
	CMP.W	R15, R13 { JLO	.L3
	MOV.W	#0, R12
.L3:
	ADD.W	R14, R12
	MOV.W	#1, R15
	CMP.W	R14, R12 { JLO	.L6
	MOV.W	#0, R15
.L6:
	MOV.W	R10, &timer_ctr
	MOV.W	R13, &timer_ctr+2
	MOV.W	R12, &timer_ctr+4
	ADD.W	R11, R15
	MOV.W	R15, &timer_ctr+6
	.loc 1 31 0
	MOV.W	#0, &0x036E
	.loc 1 32 0
	; start of epilogue
	POPM.W	#6, r15
	RETI
.LFE0:
	.size	ctrinc, .-ctrinc
	.global	__ashldi3
	.balign 2
	.global	cpucycles
cpucycles:
.LFB2:
	.loc 1 53 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 2
; framesize:          2
; elim ap -> fp       2
; elim fp -> sp       2
; saved regs:(none)
	; start of prologue
	SUB.W	#2, R1
.LCFI1:
	; end of prologue
	.loc 1 54 0
	MOV.W	&0x0350, R11
	MOV.W	&timer_ctr, R12
	MOV.W	&timer_ctr+2, R13
	MOV.W	&timer_ctr+4, R14
	MOV.W	&timer_ctr+6, R15
	MOV.W	#3, @R1
	BIS.W	R11, R12
	CALL	#__ashldi3
.LVL0:
	.loc 1 55 0
	; start of epilogue
	ADD.W	#2, R1
	RET
.LFE2:
	.size	cpucycles, .-cpucycles
	.global	__lshrdi3
	.balign 2
	.global	main
main:
.LFB5:
	.loc 1 111 0
; start of function
; framesize_regs:     14
; framesize_locals:   36
; framesize_outgoing: 2
; framesize:          52
; elim ap -> fp       16
; elim fp -> sp       38
; saved regs: R4 R5 R6 R7 R8 R9 R10
	; start of prologue
	PUSHM.W	#7, R10
.LCFI2:
	SUB.W	#38, R1
.LCFI3:
	; end of prologue
	.loc 1 113 0
	MOV.W	#23168, &0x015C
.LBB18:
.LBB19:
	.loc 1 63 0
	MOV.B	#1, R12
	MOV.W	#255, R13
	CALL	#GPIO_setOutputLowOnPin
.LVL1:
	.loc 1 64 0
	MOV.B	#2, R12
	MOV.W	#255, R13
	CALL	#GPIO_setOutputLowOnPin
.LVL2:
	.loc 1 65 0
	MOV.B	#3, R12
	MOV.W	#255, R13
	CALL	#GPIO_setOutputLowOnPin
.LVL3:
	.loc 1 66 0
	MOV.B	#4, R12
	MOV.W	#255, R13
	CALL	#GPIO_setOutputLowOnPin
.LVL4:
	.loc 1 67 0
	MOV.B	#13, R12
	MOV.W	#-1, R13
	CALL	#GPIO_setOutputLowOnPin
.LVL5:
	.loc 1 70 0
	MOV.B	#13, R12
	MOV.W	#48, R13
	MOV.B	#1, R14
	CALL	#GPIO_setAsPeripheralModuleFunctionInputPin
.LVL6:
	.loc 1 77 0
	MOV.W	#GPIO_setAsOutputPin, R10
	MOV.B	#1, R12
	MOV.W	#1, R13
	CALL	R10
.LVL7:
	.loc 1 78 0
	MOV.B	#1, R12
	MOV.W	#8, R13
	CALL	R10
.LVL8:
	.loc 1 79 0
	MOV.B	#4, R12
	MOV.W	#64, R13
	CALL	R10
.LVL9:
	.loc 1 83 0
	CALL	#PMM_unlockLPM5
.LVL10:
.LBE19:
.LBE18:
	.loc 1 118 0
	MOV.B	#1, R12
	MOV.W	#1, R13
	CALL	#GPIO_setOutputHighOnPin
.LVL11:
	.loc 1 120 0
	MOV.B	#1, R12
	MOV.W	#8, R13
	CALL	#GPIO_setOutputHighOnPin
.LVL12:
	MOV.W	#10, R10
.LVL13:
.L10:
	.loc 1 126 0 discriminator 3
	MOV.B	#1, R12
	MOV.W	#1, R13
	CALL	#GPIO_toggleOutputOnPin
.LVL14:
	.loc 1 127 0 discriminator 3
	MOV.B	#4, R12
	MOV.W	#64, R13
	CALL	#GPIO_toggleOutputOnPin
.LVL15:
	.loc 1 128 0 discriminator 3
	; Begin #200000 cycle delay
	PUSHM.A	#2,r13
	MOV.W	#28569, r13
	MOV.W	#0, r14
1:	SUB.W	#1, r13
	SUBC.W	#0, r14
	JNE	1b
	TST.W	r13
	JNE	1b
	POPM.A	#2,r13
	JMP	.+2
	; End #200000 cycle delay
	ADD.W	#-1, R10
	.loc 1 124 0 discriminator 3
	CMP.W	#0, R10 { JNE	.L10
.LBB20:
.LBB21:
	.loc 1 92 0
	MOV.W	R10, R12
	MOV.W	#12, R13
	CALL	#CS_setDCOFreq
.LVL16:
	.loc 1 95 0
	MOV.W	#-32768, R12
	MOV.W	#0, R13
	MOV.W	#0, R14
	MOV.W	#0, R15
	CALL	#CS_setExternalClockSource
.LVL17:
	.loc 1 98 0
	MOV.W	#CS_initClockSignal, R9
	MOV.B	#1, R12
	MOV.W	R10, R13
	MOV.W	R10, R14
	CALL	R9
.LVL18:
	.loc 1 101 0
	MOV.B	#4, R12
	MOV.W	#3, R13
	MOV.W	R10, R14
	CALL	R9
.LVL19:
	.loc 1 104 0
	MOV.B	#2, R12
	MOV.W	#3, R13
	MOV.W	R10, R14
	CALL	R9
.LVL20:
	.loc 1 107 0
	MOV.W	R10, R12
	CALL	#CS_turnOnLFXT
.LVL21:
.LBE21:
.LBE20:
	.loc 1 134 0
	CALL	#uart_init
.LVL22:
.LBB22:
.LBB23:
	.loc 1 42 0
	MOV.W	R10, 36(R1)
	.loc 1 43 0
	MOV.W	#512, 28(R1)
	.loc 1 44 0
	MOV.W	#24, 30(R1)
	.loc 1 45 0
	MOV.W	#2, 32(R1)
	.loc 1 46 0
	MOV.W	#4, 34(R1)
	.loc 1 47 0
	MOV.B	#1, 36(R1)
	.loc 1 49 0
	MOV.W	R1, R6
	ADD.W	#28, R6
	MOV.W	#832, R12
	MOV.W	R6, R13
	CALL	#Timer_A_initContinuousMode
.LVL23:
.LBE23:
.LBE22:
	.loc 1 139 0
 ; 139 "main.c" 1
	eint { nop
 ; 0 "" 2
	.loc 1 142 0
	MOV.W	&rx_flag, R12
	MOV.W	#uart_getc, R5
	CMP.W	#0, R12 { JEQ	.L13
.L27:
	.loc 1 144 0
	CALL	R5
.LVL24:
	.loc 1 142 0
	MOV.W	&rx_flag, R12
	CMP.W	#0, R12 { JNE	.L27
.L13:
	MOV.W	#uart_putc, R7
	MOV.W	#__lshrdi3, R8
.L25:
	.loc 1 154 0
	MOV.W	&rx_flag, R12
	CMP.W	#0, R12 { JEQ	.L25
.LBB24:
	.loc 1 157 0
	CALL	R5
.LVL25:
	.loc 1 159 0
	CMP.B	#101, R12 { JNE	.L25
	.loc 1 161 0
	MOV.B	#4, R12
.LVL26:
	MOV.W	#64, R13
	CALL	#GPIO_toggleOutputOnPin
.LVL27:
	MOV.W	R6, R10
	MOV.W	R1, R4
	ADD.W	#38, R4
.LVL28:
.L15:
	.loc 1 166 0 discriminator 3
	CALL	R5
.LVL29:
	MOV.B	R12, @R10
.LVL30:
	ADD.W	#1, R10
.LVL31:
	.loc 1 164 0 discriminator 3
	CMP.W	R4, R10 { JNE	.L15
	MOV.W	R1, R10
.LVL32:
	ADD.W	#20, R10
	.loc 1 164 0 is_stmt 0
	MOV.W	R10, R9
.L16:
.LVL33:
	.loc 1 172 0 is_stmt 1 discriminator 3
	CALL	R5
.LVL34:
	MOV.B	R12, @R9
.LVL35:
	ADD.W	#1, R9
.LVL36:
	.loc 1 170 0 discriminator 3
	CMP.W	R9, R6 { JNE	.L16
	.loc 1 176 0
	MOV.B	#1, R12
	MOV.W	#8, R13
	CALL	#GPIO_setOutputLowOnPin
.LVL37:
.LBB25:
.LBB26:
	.loc 1 54 0
	MOV.W	&0x0350, R9
.LVL38:
	MOV.W	&timer_ctr, R12
	MOV.W	&timer_ctr+2, R13
	MOV.W	&timer_ctr+4, R14
	MOV.W	&timer_ctr+6, R15
	MOV.W	#3, @R1
	BIS.W	R9, R12
	CALL	#__ashldi3
.LVL39:
	MOV.W	R12, 10(R1)
	MOV.W	R13, 12(R1)
	MOV.W	R14, 14(R1)
	MOV.W	R15, 16(R1)
.LBE26:
.LBE25:
	.loc 1 178 0
	MOV.W	R1, R12
	ADD.W	#20, R12
	MOV.W	R6, R13
	CALL	#crypto_func
.LVL40:
.LBB27:
.LBB28:
	.loc 1 54 0
	MOV.W	&0x0350, R9
	MOV.W	&timer_ctr, R12
	MOV.W	&timer_ctr+2, R13
	MOV.W	&timer_ctr+4, R14
	MOV.W	&timer_ctr+6, R15
	MOV.W	#3, @R1
	BIS.W	R9, R12
	CALL	#__ashldi3
.LVL41:
	MOV.W	R12, R4
	MOV.W	R13, R9
	MOV.W	R14, 8(R1)
	MOV.W	R15, 18(R1)
.LBE28:
.LBE27:
	.loc 1 180 0
	MOV.B	#1, R12
	MOV.W	#8, R13
	CALL	#GPIO_setOutputHighOnPin
.LVL42:
.L17:
	.loc 1 185 0 discriminator 3
	MOV.B	@R10, R12
	CALL	R7
.LVL43:
	ADD.W	#1, R10
.LVL44:
	.loc 1 183 0 discriminator 3
	CMP.W	R10, R6 { JNE	.L17
	.loc 1 188 0
	MOV.W	R4, R11 { SUB.W	10(R1), R11
	MOV.W	#1, R14
	CMP.W	R11, R4 { JLO	.L18
	MOV.W	#0, R14
.L18:
	MOV.W	R9, R12 { SUB.W	12(R1), R12
	MOV.W	#1, R15
	CMP.W	R12, R9 { JLO	.L19
	MOV.W	#0, R15
.L19:
	MOV.W	R12, R13 { SUB.W	R14, R13
	MOV.W	#1, R14
	CMP.W	R13, R12 { JLO	.L20
	MOV.W	#0, R14
.L20:
	BIS.W	R14, R15
	MOV.W	8(R1), R10
.LVL45:
	SUB.W	14(R1), R10
	MOV.W	#1, R12
	CMP.W	R10, 8(R1) { JLO	.L21
	MOV.W	#0, R12
.L21:
	MOV.W	R10, R14 { SUB.W	R15, R14
	MOV.W	#1, R15
	CMP.W	R14, R10 { JLO	.L22
	MOV.W	#0, R15
.L22:
	BIS.W	R15, R12
	MOV.W	18(R1), R15
	SUB.W	16(R1), R15
	MOV.W	R11, R9
	SUB.W	R12, R15
.LVL46:
	MOV.W	#8, R10
.LVL47:
.L23:
	.loc 1 192 0 discriminator 3
	MOV.B	R9, R12
	MOV.W	R13, 6(R1)
	MOV.W	R14, 4(R1)
	MOV.W	R15, 2(R1)
	CALL	R7
.LVL48:
	.loc 1 193 0 discriminator 3
	MOV.W	#8, @R1
	MOV.W	R9, R12
	MOV.W	6(R1), R13
	MOV.W	4(R1), R14
	MOV.W	2(R1), R15
	CALL	R8
.LVL49:
	MOV.W	R12, R9
.LVL50:
	ADD.B	#-1, R10
	AND	#0xff, R10
	.loc 1 190 0 discriminator 3
	CMP.W	#0, R10 { JNE	.L23
	.loc 1 196 0
	MOV.B	#4, R12
	MOV.W	#64, R13
.LVL51:
	CALL	#GPIO_toggleOutputOnPin
.LVL52:
	BR	#.L25
.LBE24:
.LFE5:
	.size	main, .-main
	.local	timer_ctr
	.comm	timer_ctr,8,2
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0xe
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8b
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x7
	.balign 4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x4
	.balign 4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
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
	.uleb128 0x36
	.balign 4
.LEFDE4:
.text
.Letext0:
	.file 2 "/opt/ti/msp430-elf/include/machine/_default_types.h"
	.file 3 "/opt/ti/msp430-elf/include/stdint.h"
	.file 4 "../driverlib/timer_a.h"
	.file 5 "/opt/ti/include/msp430fr5969.h"
	.file 6 "../driverlib/gpio.h"
	.file 7 "../driverlib/pmm.h"
	.file 8 "../driverlib/cs.h"
	.file 9 "crypto.h"
	.file 10 "../driverlib/uart_fifo.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x651
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1
	.4byte	.LASF51
	.4byte	.LASF52
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
	.4byte	.LASF5
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
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x26
	.4byte	0x65
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x38
	.4byte	0x77
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4e
	.4byte	0x90
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2a
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x36
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x42
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x4e
	.4byte	0x85
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0xa
	.byte	0x4
	.byte	0x48
	.4byte	0x11a
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x50
	.4byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x67
	.4byte	0xb0
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6c
	.4byte	0xb0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x72
	.4byte	0xb0
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0x74
	.4byte	0x11a
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x75
	.4byte	0xd1
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x1
	.byte	0x34
	.4byte	0xc6
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	0x12c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.4byte	0x180
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2a
	.4byte	0x121
	.byte	0
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x6e
	.4byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f8
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x7b
	.4byte	0x2c
	.4byte	.LLST0
	.uleb128 0xf
	.string	"ct"
	.byte	0x1
	.byte	0x93
	.4byte	0x4f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.byte	0x94
	.4byte	0x508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0x95
	.4byte	0xa5
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x96
	.4byte	0xc6
	.uleb128 0x10
	.string	"end"
	.byte	0x1
	.byte	0x96
	.4byte	0xc6
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x96
	.4byte	0xc6
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	0x158
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x74
	.4byte	0x2f1
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x56e
	.4byte	0x21f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x56e
	.4byte	0x238
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x56e
	.4byte	0x251
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x56e
	.4byte	0x26a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x56e
	.4byte	0x283
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x585
	.4byte	0x2a1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x15
	.4byte	.LVL7
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0x2b8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL8
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0x2cf
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL9
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0x2e7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x5a1
	.byte	0
	.uleb128 0x12
	.4byte	0x160
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x83
	.4byte	0x38f
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x5a8
	.4byte	0x31d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0x5bf
	.uleb128 0x15
	.4byte	.LVL18
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.4byte	0x344
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.4byte	0x361
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.4byte	.LVL20
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.4byte	0x37e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x5d5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x168
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x88
	.4byte	0x3cc
	.uleb128 0x18
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x19
	.4byte	0x174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x5e6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x340
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x48d
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x9d
	.4byte	0xa5
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	0x12c
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0xb1
	.uleb128 0x1b
	.4byte	0x12c
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0xb3
	.uleb128 0x13
	.4byte	.LVL27
	.4byte	0x603
	.4byte	0x41d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x56e
	.4byte	0x435
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0x61a
	.4byte	0x44f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL42
	.4byte	0x636
	.4byte	0x467
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL48
	.4byte	0x477
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL52
	.4byte	0x603
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x636
	.4byte	0x4a5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x636
	.4byte	0x4bd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x603
	.4byte	0x4d5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x603
	.4byte	0x4ee
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x16
	.4byte	.LVL22
	.4byte	0x64d
	.byte	0
	.uleb128 0x1d
	.4byte	0xa5
	.4byte	0x508
	.uleb128 0x1e
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.4byte	0xa5
	.4byte	0x518
	.uleb128 0x1e
	.4byte	0x97
	.byte	0x9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF31
	.byte	0x1
	.byte	0x19
	.4byte	0x529
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_ctr
	.uleb128 0x20
	.4byte	0xc6
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x5
	.2byte	0xe6c
	.4byte	.LASF34
	.4byte	0x53e
	.uleb128 0x20
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF33
	.byte	0x5
	.2byte	0xe74
	.4byte	.LASF35
	.4byte	0x53e
	.uleb128 0x21
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x12b6
	.4byte	.LASF37
	.4byte	0x53e
	.uleb128 0x22
	.4byte	.LASF56
	.byte	0xa
	.byte	0x1c
	.4byte	0x53e
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x1ed
	.4byte	0x585
	.uleb128 0x24
	.4byte	0xa5
	.uleb128 0x24
	.4byte	0xb0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x182
	.4byte	0x5a1
	.uleb128 0x24
	.4byte	0xa5
	.uleb128 0x24
	.4byte	0xb0
	.uleb128 0x24
	.4byte	0xa5
	.byte	0
	.uleb128 0x25
	.4byte	.LASF41
	.byte	0x7
	.byte	0xe8
	.uleb128 0x23
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x25f
	.4byte	0x5bf
	.uleb128 0x24
	.4byte	0xb0
	.uleb128 0x24
	.4byte	0xb0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF43
	.byte	0x8
	.byte	0xac
	.4byte	0x5d5
	.uleb128 0x24
	.4byte	0xbb
	.uleb128 0x24
	.4byte	0xbb
	.byte	0
	.uleb128 0x26
	.4byte	.LASF44
	.byte	0x8
	.byte	0xf3
	.4byte	0x5e6
	.uleb128 0x24
	.4byte	0xb0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x289
	.4byte	0x5fd
	.uleb128 0x24
	.4byte	0xb0
	.uleb128 0x24
	.4byte	0x5fd
	.byte	0
	.uleb128 0x27
	.byte	0x2
	.4byte	0x121
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x222
	.4byte	0x61a
	.uleb128 0x24
	.4byte	0xa5
	.uleb128 0x24
	.4byte	0xb0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF47
	.byte	0x9
	.byte	0xe
	.4byte	0x630
	.uleb128 0x24
	.4byte	0x630
	.uleb128 0x24
	.4byte	0x630
	.byte	0
	.uleb128 0x27
	.byte	0x2
	.4byte	0xa5
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x1b8
	.4byte	0x64d
	.uleb128 0x24
	.4byte	0xa5
	.uleb128 0x24
	.4byte	0xb0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF49
	.byte	0xa
	.byte	0x2f
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1a
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1b
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1a
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x22
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x23
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x22
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x22
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x23
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x22
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0xc
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.byte	0x5d
	.byte	0x93
	.uleb128 0x2
	.byte	0x5e
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0xc
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x5d
	.byte	0x93
	.uleb128 0x2
	.byte	0x5e
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0xc
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x5d
	.byte	0x93
	.uleb128 0x2
	.byte	0x5e
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5c
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
.LASF18:
	.string	"uint64_t"
.LASF5:
	.string	"__uint8_t"
.LASF22:
	.string	"timerClear"
.LASF49:
	.string	"uart_init"
.LASF12:
	.string	"long long unsigned int"
.LASF27:
	.string	"Init_Clock"
.LASF26:
	.string	"Init_GPIO"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF33:
	.string	"TA0IV"
.LASF1:
	.string	"long int"
.LASF16:
	.string	"uint16_t"
.LASF56:
	.string	"rx_flag"
.LASF48:
	.string	"GPIO_setOutputHighOnPin"
.LASF8:
	.string	"__uint32_t"
.LASF30:
	.string	"duration"
.LASF19:
	.string	"clockSource"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"begin"
.LASF46:
	.string	"GPIO_toggleOutputOnPin"
.LASF9:
	.string	"long unsigned int"
.LASF23:
	.string	"startTimer"
.LASF31:
	.string	"timer_ctr"
.LASF7:
	.string	"short unsigned int"
.LASF51:
	.string	"main.c"
.LASF36:
	.string	"WDTCTL"
.LASF42:
	.string	"CS_setDCOFreq"
.LASF25:
	.string	"Timer_A_initContinuousModeParam"
.LASF34:
	.string	"0x0350"
.LASF47:
	.string	"crypto_func"
.LASF52:
	.string	"/home/hwsec/Desktop/msp430/template_present/present_ref"
.LASF13:
	.string	"sizetype"
.LASF28:
	.string	"param"
.LASF53:
	.string	"ctrinc"
.LASF11:
	.string	"__uint64_t"
.LASF20:
	.string	"clockSourceDivider"
.LASF35:
	.string	"0x036E"
.LASF24:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF44:
	.string	"CS_turnOnLFXT"
.LASF41:
	.string	"PMM_unlockLPM5"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"0x015C"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"char"
.LASF50:
	.string	"GNU C 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1) -fpreprocessed -mmcu=msp430fr5969 -g -O3"
.LASF21:
	.string	"timerInterruptEnable_TAIE"
.LASF6:
	.string	"__uint16_t"
.LASF45:
	.string	"Timer_A_initContinuousMode"
.LASF54:
	.string	"Init_TimerA"
.LASF38:
	.string	"GPIO_setOutputLowOnPin"
.LASF15:
	.string	"uint8_t"
.LASF39:
	.string	"GPIO_setAsPeripheralModuleFunctionInputPin"
.LASF32:
	.string	"TA0R"
.LASF40:
	.string	"cpucycles"
.LASF55:
	.string	"main"
.LASF43:
	.string	"CS_setExternalClockSource"
	.ident	"GCC: (GNU) 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1)"
