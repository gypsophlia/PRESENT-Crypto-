	.file	"pmm.c"
.text
.Ltext0:
	.balign 2
	.global	PMM_enableLowPowerReset
PMM_enableLowPowerReset:
.LFB0:
	.file 1 "../driverlib/pmm.c"
	.loc 1 54 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 55 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 56 0
	BIS.B	#-128, &288
	.loc 1 57 0
	MOV.B	#0, @R12
	.loc 1 58 0
	; start of epilogue
	RET
.LFE0:
	.size	PMM_enableLowPowerReset, .-PMM_enableLowPowerReset
	.balign 2
	.global	PMM_disableLowPowerReset
PMM_disableLowPowerReset:
.LFB1:
	.loc 1 61 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 62 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 63 0
	AND.B	#127, &288
	.loc 1 64 0
	MOV.B	#0, @R12
	.loc 1 65 0
	; start of epilogue
	RET
.LFE1:
	.size	PMM_disableLowPowerReset, .-PMM_disableLowPowerReset
	.balign 2
	.global	PMM_enableSVSH
PMM_enableSVSH:
.LFB2:
	.loc 1 68 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 69 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 70 0
	BIS.B	#64, &288
	.loc 1 71 0
	MOV.B	#0, @R12
	.loc 1 72 0
	; start of epilogue
	RET
.LFE2:
	.size	PMM_enableSVSH, .-PMM_enableSVSH
	.balign 2
	.global	PMM_disableSVSH
PMM_disableSVSH:
.LFB3:
	.loc 1 75 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 76 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 77 0
	AND.B	#-65, &288
	.loc 1 78 0
	MOV.B	#0, @R12
	.loc 1 79 0
	; start of epilogue
	RET
.LFE3:
	.size	PMM_disableSVSH, .-PMM_disableSVSH
	.balign 2
	.global	PMM_turnOnRegulator
PMM_turnOnRegulator:
.LFB4:
	.loc 1 82 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 83 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 84 0
	AND.B	#-17, &288
	.loc 1 85 0
	MOV.B	#0, @R12
	.loc 1 86 0
	; start of epilogue
	RET
.LFE4:
	.size	PMM_turnOnRegulator, .-PMM_turnOnRegulator
	.balign 2
	.global	PMM_turnOffRegulator
PMM_turnOffRegulator:
.LFB5:
	.loc 1 89 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 90 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 91 0
	BIS.B	#16, &288
	.loc 1 92 0
	MOV.B	#0, @R12
	.loc 1 93 0
	; start of epilogue
	RET
.LFE5:
	.size	PMM_turnOffRegulator, .-PMM_turnOffRegulator
	.balign 2
	.global	PMM_trigPOR
PMM_trigPOR:
.LFB6:
	.loc 1 96 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 97 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 98 0
	BIS.B	#8, &288
	.loc 1 99 0
	MOV.B	#0, @R12
	.loc 1 100 0
	; start of epilogue
	RET
.LFE6:
	.size	PMM_trigPOR, .-PMM_trigPOR
	.balign 2
	.global	PMM_trigBOR
PMM_trigBOR:
.LFB7:
	.loc 1 103 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 104 0
	MOV.W	#289, R12
	MOV.B	#-91, @R12
	.loc 1 105 0
	BIS.B	#4, &288
	.loc 1 106 0
	MOV.B	#0, @R12
	.loc 1 107 0
	; start of epilogue
	RET
.LFE7:
	.size	PMM_trigBOR, .-PMM_trigBOR
	.balign 2
	.global	PMM_clearInterrupt
PMM_clearInterrupt:
.LFB8:
	.loc 1 110 0
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
	.loc 1 111 0
	MOV.W	#289, R13
	MOV.B	#-91, @R13
	.loc 1 112 0
	BIC.W	R12, &298
	.loc 1 113 0
	MOV.B	#0, @R13
	.loc 1 114 0
	; start of epilogue
	RET
.LFE8:
	.size	PMM_clearInterrupt, .-PMM_clearInterrupt
	.balign 2
	.global	PMM_getInterruptStatus
PMM_getInterruptStatus:
.LFB9:
	.loc 1 117 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL1:
	; start of prologue
	; end of prologue
	.loc 1 119 0
	AND.W	&298, R12
.LVL2:
	; start of epilogue
	RET
.LFE9:
	.size	PMM_getInterruptStatus, .-PMM_getInterruptStatus
	.balign 2
	.global	PMM_unlockLPM5
PMM_unlockLPM5:
.LFB10:
	.loc 1 122 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
	; start of prologue
	; end of prologue
	.loc 1 123 0
	BIC.B	#1, &304
	.loc 1 124 0
	; start of epilogue
	RET
.LFE10:
	.size	PMM_unlockLPM5, .-PMM_unlockLPM5
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.balign 4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.balign 4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.balign 4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.balign 4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.balign 4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.balign 4
.LEFDE20:
.text
.Letext0:
	.file 2 "/opt/ti/msp430-elf/include/machine/_default_types.h"
	.file 3 "/opt/ti/msp430-elf/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x179
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.4byte	.LASF24
	.4byte	.LASF25
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
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x43
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x51
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x58
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x66
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x142
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6d
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x74
	.4byte	0x8c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x74
	.4byte	0x8c
	.4byte	.LLST0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x1
	.byte	0x79
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
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
.LASF15:
	.string	"PMM_enableSVSH"
.LASF27:
	.string	"PMM_getInterruptStatus"
.LASF23:
	.string	"GNU C 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1) -fpreprocessed -mmcu=msp430fr5969 -g -O3"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"PMM_clearInterrupt"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF16:
	.string	"PMM_disableSVSH"
.LASF4:
	.string	"__uint16_t"
.LASF14:
	.string	"PMM_disableLowPowerReset"
.LASF18:
	.string	"PMM_turnOffRegulator"
.LASF19:
	.string	"PMM_trigPOR"
.LASF13:
	.string	"PMM_enableLowPowerReset"
.LASF10:
	.string	"unsigned int"
.LASF24:
	.string	"../driverlib/pmm.c"
.LASF17:
	.string	"PMM_turnOnRegulator"
.LASF25:
	.string	"/home/hwsec/Desktop/msp430/template_present/present_ref"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF20:
	.string	"PMM_trigBOR"
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"mask"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"PMM_unlockLPM5"
.LASF12:
	.string	"uint16_t"
.LASF6:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1)"
