	.file	"wdt_a.c"
.text
.Ltext0:
	.balign 2
	.global	WDT_A_hold
WDT_A_hold:
.LFB0:
	.file 1 "../driverlib/wdt_a.c"
	.loc 1 54 0
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
	.loc 1 57 0
	ADD.W	#12, R12
.LVL1:
	MOV.W	@R12, R13
.LVL2:
	.loc 1 56 0
	BIS.B	#-128, R13
.LVL3:
	.loc 1 59 0
	AND	#0xff, R13
	ADD.W	#23040, R13
	MOV.W	R13, @R12
	.loc 1 60 0
	; start of epilogue
	RET
.LFE0:
	.size	WDT_A_hold, .-WDT_A_hold
	.balign 2
	.global	WDT_A_start
WDT_A_start:
.LFB1:
	.loc 1 63 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL4:
	; start of prologue
	; end of prologue
	.loc 1 68 0
	MOV.W	12(R12), R13
	AND.W	#127, R13
	ADD.W	#23040, R13
	MOV.W	R13, 12(R12)
	.loc 1 69 0
	; start of epilogue
	RET
.LFE1:
	.size	WDT_A_start, .-WDT_A_start
	.balign 2
	.global	WDT_A_resetTimer
WDT_A_resetTimer:
.LFB2:
	.loc 1 72 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL5:
	; start of prologue
	; end of prologue
	.loc 1 75 0
	ADD.W	#12, R12
.LVL6:
	MOV.W	@R12, R13
.LVL7:
	.loc 1 74 0
	BIS.B	#8, R13
.LVL8:
	.loc 1 77 0
	AND	#0xff, R13
	ADD.W	#23040, R13
	MOV.W	R13, @R12
	.loc 1 78 0
	; start of epilogue
	RET
.LFE2:
	.size	WDT_A_resetTimer, .-WDT_A_resetTimer
	.balign 2
	.global	WDT_A_initWatchdogTimer
WDT_A_initWatchdogTimer:
.LFB3:
	.loc 1 83 0
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
	AND	#0xff, R13
	AND	#0xff, R14
	.loc 1 85 0
	ADD.W	#23176, R13
.LVL10:
	.loc 1 84 0
	ADD.W	R14, R13
.LVL11:
	MOV.W	R13, 12(R12)
	.loc 1 86 0
	; start of epilogue
	RET
.LFE3:
	.size	WDT_A_initWatchdogTimer, .-WDT_A_initWatchdogTimer
	.balign 2
	.global	WDT_A_initIntervalTimer
WDT_A_initIntervalTimer:
.LFB4:
	.loc 1 91 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL12:
	; start of prologue
	; end of prologue
	AND	#0xff, R13
	AND	#0xff, R14
	.loc 1 93 0
	ADD.W	#23192, R13
.LVL13:
	.loc 1 92 0
	ADD.W	R14, R13
.LVL14:
	MOV.W	R13, 12(R12)
	.loc 1 94 0
	; start of epilogue
	RET
.LFE4:
	.size	WDT_A_initIntervalTimer, .-WDT_A_initIntervalTimer
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
	.balign 4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.balign 4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.balign 4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.balign 4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.balign 4
.LEFDE8:
.text
.Letext0:
	.file 2 "/opt/ti/msp430-elf/include/machine/_default_types.h"
	.file 3 "/opt/ti/msp430-elf/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1c
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x26
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x36
	.4byte	0x45
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x35
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x35
	.4byte	0x8c
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x41
	.4byte	0x81
	.byte	0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x47
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x47
	.4byte	0x8c
	.4byte	.LLST2
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4a
	.4byte	0x81
	.4byte	.LLST3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x50
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x50
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x51
	.4byte	0x81
	.4byte	.LLST4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x52
	.4byte	0x81
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x58
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x59
	.4byte	0x81
	.4byte	.LLST5
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x5a
	.4byte	0x81
	.uleb128 0x1
	.byte	0x5e
	.byte	0
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
	.uleb128 0x4
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x38
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x4
	.byte	0x7d
	.sleb128 120
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x4
	.byte	0x7d
	.sleb128 104
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5d
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF14:
	.string	"WDT_A_start"
.LASF16:
	.string	"WDT_A_resetTimer"
.LASF21:
	.string	"GNU C 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1) -fpreprocessed -mmcu=msp430fr5969 -g -O3"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF22:
	.string	"../driverlib/wdt_a.c"
.LASF5:
	.string	"short unsigned int"
.LASF4:
	.string	"__uint16_t"
.LASF19:
	.string	"clockSelect"
.LASF24:
	.string	"WDT_A_initIntervalTimer"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"baseAddress"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF20:
	.string	"clockDivider"
.LASF18:
	.string	"WDT_A_initWatchdogTimer"
.LASF8:
	.string	"long long int"
.LASF23:
	.string	"/home/hwsec/hwsec/msp430/template_present/present_opt"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"uint16_t"
.LASF17:
	.string	"newWDTStatus"
.LASF6:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"WDT_A_hold"
	.ident	"GCC: (GNU) 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1)"
