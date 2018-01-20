	.file	"timer_a.c"
.text
.Ltext0:
	.balign 2
	.global	Timer_A_startCounter
Timer_A_startCounter:
.LFB0:
	.file 1 "../driverlib/timer_a.c"
	.loc 1 55 0
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
	.loc 1 56 0
	BIS.W	R13, @R12
	.loc 1 57 0
	; start of epilogue
	RET
.LFE0:
	.size	Timer_A_startCounter, .-Timer_A_startCounter
	.balign 2
	.global	Timer_A_initContinuousMode
Timer_A_initContinuousMode:
.LFB1:
	.loc 1 61 0
; start of function
; framesize_regs:     8
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          8
; elim ap -> fp       10
; elim fp -> sp       0
; saved regs: R7 R8 R9 R10
.LVL1:
	; start of prologue
	PUSHM.W	#4, R10
.LCFI0:
	; end of prologue
	MOV.W	R12, R10
	MOV.W	R13, R9
	.loc 1 63 0
	AND.W	#-1015, @R12
	.loc 1 69 0
	ADD.W	#32, R12
.LVL2:
	AND.W	#-8, @R12
	.loc 1 71 0
	MOV.W	2(R13), R13
.LVL3:
	AND.W	#7, R13
	BIS.W	R13, @R12
	.loc 1 72 0
	MOV.W	@R10, R7
	MOV.W	6(R9), R12
	ADD.W	@R9, R12
	.loc 1 73 0
	MOV.W	R12, R8
	ADD.W	4(R9), R8
	.loc 1 75 0
	MOV.W	2(R9), R12
	CALL	#__mspabi_srli_3
.LVL4:
	.loc 1 76 0
	rpt	#6 { rlax.w	R12
	.loc 1 74 0
	ADD.W	R8, R12
	.loc 1 72 0
	BIS.W	R12, R7
	MOV.W	R7, @R10
	.loc 1 78 0
	CMP.B	#0, 8(R9) { JEQ	.L2
	.loc 1 80 0
	BIS.W	#32, @R10
.L2:
	.loc 1 82 0
	; start of epilogue
	POPM.W	#4, r10
	RET
.LFE1:
	.size	Timer_A_initContinuousMode, .-Timer_A_initContinuousMode
	.balign 2
	.global	Timer_A_initUpMode
Timer_A_initUpMode:
.LFB2:
	.loc 1 86 0
; start of function
; framesize_regs:     8
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          8
; elim ap -> fp       10
; elim fp -> sp       0
; saved regs: R7 R8 R9 R10
.LVL5:
	; start of prologue
	PUSHM.W	#4, R10
.LCFI1:
	; end of prologue
	MOV.W	R12, R10
	MOV.W	R13, R9
	.loc 1 87 0
	AND.W	#-1015, @R12
	.loc 1 94 0
	ADD.W	#32, R12
.LVL6:
	AND.W	#-8, @R12
	.loc 1 96 0
	MOV.W	2(R13), R13
.LVL7:
	AND.W	#7, R13
	BIS.W	R13, @R12
	.loc 1 97 0
	MOV.W	@R10, R7
	MOV.W	10(R9), R12
	ADD.W	@R9, R12
	.loc 1 98 0
	MOV.W	R12, R8
	ADD.W	6(R9), R8
	.loc 1 100 0
	MOV.W	2(R9), R12
	CALL	#__mspabi_srli_3
.LVL8:
	.loc 1 101 0
	rpt	#6 { rlax.w	R12
	.loc 1 99 0
	ADD.W	R8, R12
	.loc 1 97 0
	BIS.W	R12, R7
	MOV.W	R7, @R10
	.loc 1 103 0
	CMP.B	#0, 12(R9) { JEQ	.L6
	.loc 1 105 0
	BIS.W	#16, @R10
.L6:
	.loc 1 108 0
	CMP.W	#16, 8(R9) { JEQ	.L9
	.loc 1 117 0
	AND.W	#-17, 2(R10)
	.loc 1 120 0
	MOV.W	4(R9), 18(R10)
	.loc 1 121 0
	; start of epilogue
	POPM.W	#4, r10
	RET
.L9:
	.loc 1 112 0
	BIS.W	#16, 2(R10)
	.loc 1 120 0
	MOV.W	4(R9), 18(R10)
	.loc 1 121 0
	; start of epilogue
	POPM.W	#4, r10
	RET
.LFE2:
	.size	Timer_A_initUpMode, .-Timer_A_initUpMode
	.balign 2
	.global	Timer_A_initUpDownMode
Timer_A_initUpDownMode:
.LFB3:
	.loc 1 125 0
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
	MOV.W	R13, R9
	.loc 1 126 0
	AND.W	#-1015, @R12
	.loc 1 133 0
	ADD.W	#32, R12
.LVL10:
	AND.W	#-8, @R12
	.loc 1 135 0
	MOV.W	2(R13), R13
.LVL11:
	AND.W	#7, R13
	BIS.W	R13, @R12
	.loc 1 136 0
	MOV.W	@R10, R7
	MOV.W	10(R9), R12
	ADD.W	@R9, R12
	.loc 1 137 0
	MOV.W	R12, R8
	ADD.W	6(R9), R8
	.loc 1 139 0
	MOV.W	2(R9), R12
	CALL	#__mspabi_srli_3
.LVL12:
	.loc 1 140 0
	rpt	#6 { rlax.w	R12
	.loc 1 138 0
	ADD.W	R8, R12
	.loc 1 136 0
	BIS.W	R12, R7
	MOV.W	R7, @R10
	.loc 1 142 0
	CMP.B	#0, 12(R9) { JEQ	.L11
	.loc 1 144 0
	BIS.W	#48, @R10
.L11:
	.loc 1 147 0
	CMP.W	#16, 8(R9) { JEQ	.L14
	.loc 1 156 0
	AND.W	#-17, 2(R10)
	.loc 1 159 0
	MOV.W	4(R9), 18(R10)
	.loc 1 160 0
	; start of epilogue
	POPM.W	#4, r10
	RET
.L14:
	.loc 1 151 0
	BIS.W	#16, 2(R10)
	.loc 1 159 0
	MOV.W	4(R9), 18(R10)
	.loc 1 160 0
	; start of epilogue
	POPM.W	#4, r10
	RET
.LFE3:
	.size	Timer_A_initUpDownMode, .-Timer_A_initUpDownMode
	.balign 2
	.global	Timer_A_initCaptureMode
Timer_A_initCaptureMode:
.LFB4:
	.loc 1 164 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL13:
	; start of prologue
	; end of prologue
	.loc 1 165 0
	MOV.W	R12, R14
	ADD.W	@R13, R14
	BIS.W	#256, @R14
	.loc 1 167 0
	MOV.W	R12, R14
	ADD.W	@R13, R14
	AND.W	#18425, @R14
	.loc 1 176 0
	ADD.W	@R13, R12
.LVL14:
	MOV.W	4(R13), R14
	ADD.W	2(R13), R14
	.loc 1 178 0
	ADD.W	6(R13), R14
	.loc 1 180 0
	ADD.W	8(R13), R14
	.loc 1 182 0
	ADD.W	10(R13), R14
	.loc 1 176 0
	BIS.W	R14, @R12
	.loc 1 185 0
	; start of epilogue
	RET
.LFE4:
	.size	Timer_A_initCaptureMode, .-Timer_A_initCaptureMode
	.balign 2
	.global	Timer_A_initCompareMode
Timer_A_initCompareMode:
.LFB5:
	.loc 1 189 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL15:
	; start of prologue
	; end of prologue
	.loc 1 190 0
	MOV.W	R12, R14
	ADD.W	@R13, R14
	AND.W	#-257, @R14
	.loc 1 192 0
	MOV.W	R12, R14
	ADD.W	@R13, R14
	AND.W	#-241, @R14
	.loc 1 198 0
	MOV.W	R12, R14
	ADD.W	@R13, R14
	MOV.W	4(R13), R15
	ADD.W	2(R13), R15
	BIS.W	R15, @R14
	.loc 1 202 0
	ADD.W	@R13, R12
.LVL16:
	.loc 1 203 0
	MOV.W	6(R13), 16(R12)
	.loc 1 204 0
	; start of epilogue
	RET
.LFE5:
	.size	Timer_A_initCompareMode, .-Timer_A_initCompareMode
	.balign 2
	.global	Timer_A_enableInterrupt
Timer_A_enableInterrupt:
.LFB6:
	.loc 1 207 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL17:
	; start of prologue
	; end of prologue
	.loc 1 208 0
	BIS.W	#2, @R12
	.loc 1 209 0
	; start of epilogue
	RET
.LFE6:
	.size	Timer_A_enableInterrupt, .-Timer_A_enableInterrupt
	.balign 2
	.global	Timer_A_disableInterrupt
Timer_A_disableInterrupt:
.LFB7:
	.loc 1 212 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL18:
	; start of prologue
	; end of prologue
	.loc 1 213 0
	BIC.W	#2, @R12
	.loc 1 214 0
	; start of epilogue
	RET
.LFE7:
	.size	Timer_A_disableInterrupt, .-Timer_A_disableInterrupt
	.balign 2
	.global	Timer_A_getInterruptStatus
Timer_A_getInterruptStatus:
.LFB8:
	.loc 1 217 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL19:
	; start of prologue
	; end of prologue
	.loc 1 218 0
	MOV.W	@R12, R12
.LVL20:
	AND.W	#1, R12
	.loc 1 219 0
	MOV.W	#0,R13
	; start of epilogue
	RET
.LFE8:
	.size	Timer_A_getInterruptStatus, .-Timer_A_getInterruptStatus
	.balign 2
	.global	Timer_A_enableCaptureCompareInterrupt
Timer_A_enableCaptureCompareInterrupt:
.LFB9:
	.loc 1 223 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL21:
	; start of prologue
	; end of prologue
	.loc 1 224 0
	ADD.W	R13, R12
.LVL22:
	BIS.W	#16, @R12
	.loc 1 225 0
	; start of epilogue
	RET
.LFE9:
	.size	Timer_A_enableCaptureCompareInterrupt, .-Timer_A_enableCaptureCompareInterrupt
	.balign 2
	.global	Timer_A_disableCaptureCompareInterrupt
Timer_A_disableCaptureCompareInterrupt:
.LFB10:
	.loc 1 229 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL23:
	; start of prologue
	; end of prologue
	.loc 1 230 0
	ADD.W	R13, R12
.LVL24:
	AND.W	#-17, @R12
	.loc 1 231 0
	; start of epilogue
	RET
.LFE10:
	.size	Timer_A_disableCaptureCompareInterrupt, .-Timer_A_disableCaptureCompareInterrupt
	.balign 2
	.global	Timer_A_getCaptureCompareInterruptStatus
Timer_A_getCaptureCompareInterruptStatus:
.LFB11:
	.loc 1 236 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL25:
	; start of prologue
	; end of prologue
	.loc 1 237 0
	ADD.W	R13, R12
.LVL26:
	AND.W	@R12, R14
.LVL27:
	.loc 1 238 0
	MOV.W	R14,R12 { MOV.W	#0,R13
	; start of epilogue
	RET
.LFE11:
	.size	Timer_A_getCaptureCompareInterruptStatus, .-Timer_A_getCaptureCompareInterruptStatus
	.balign 2
	.global	Timer_A_clear
Timer_A_clear:
.LFB12:
	.loc 1 241 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL28:
	; start of prologue
	; end of prologue
	.loc 1 242 0
	BIS.W	#4, @R12
	.loc 1 243 0
	; start of epilogue
	RET
.LFE12:
	.size	Timer_A_clear, .-Timer_A_clear
	.balign 2
	.global	Timer_A_getSynchronizedCaptureCompareInput
Timer_A_getSynchronizedCaptureCompareInput:
.LFB13:
	.loc 1 248 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL29:
	; start of prologue
	; end of prologue
	.loc 1 249 0
	ADD.W	R13, R12
.LVL30:
	AND.W	@R12, R14
.LVL31:
	MOV.W	#0, R12 { SUB.W	R14, R12
	BIS.W	R14, R12
	.loc 1 257 0
	rrum.w	#1, R12 { rpt	#14 { rrax.w	R12
	; start of epilogue
	RET
.LFE13:
	.size	Timer_A_getSynchronizedCaptureCompareInput, .-Timer_A_getSynchronizedCaptureCompareInput
	.balign 2
	.global	Timer_A_getOutputForOutputModeOutBitValue
Timer_A_getOutputForOutputModeOutBitValue:
.LFB14:
	.loc 1 261 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL32:
	; start of prologue
	; end of prologue
	.loc 1 262 0
	ADD.W	R13, R12
.LVL33:
	MOV.W	@R12, R12
	AND.W	#4, R12
	CMP.W	#0, R12 { JEQ	.L26
	.loc 1 264 0
	MOV.W	#4, R12
.L26:
	.loc 1 270 0
	; start of epilogue
	RET
.LFE14:
	.size	Timer_A_getOutputForOutputModeOutBitValue, .-Timer_A_getOutputForOutputModeOutBitValue
	.balign 2
	.global	Timer_A_getCaptureCompareCount
Timer_A_getCaptureCompareCount:
.LFB15:
	.loc 1 274 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL34:
	; start of prologue
	; end of prologue
	.loc 1 275 0
	ADD.W	R13, R12
.LVL35:
	.loc 1 276 0
	MOV.W	16(R12), R12
	; start of epilogue
	RET
.LFE15:
	.size	Timer_A_getCaptureCompareCount, .-Timer_A_getCaptureCompareCount
	.balign 2
	.global	Timer_A_setOutputForOutputModeOutBitValue
Timer_A_setOutputForOutputModeOutBitValue:
.LFB16:
	.loc 1 281 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL36:
	; start of prologue
	; end of prologue
	AND	#0xff, R14
	.loc 1 282 0
	ADD.W	R13, R12
.LVL37:
	BIC.W	#4, @R12
	.loc 1 283 0
	BIS.W	R14, @R12
	.loc 1 284 0
	; start of epilogue
	RET
.LFE16:
	.size	Timer_A_setOutputForOutputModeOutBitValue, .-Timer_A_setOutputForOutputModeOutBitValue
	.balign 2
	.global	Timer_A_outputPWM
Timer_A_outputPWM:
.LFB17:
	.loc 1 288 0
; start of function
; framesize_regs:     8
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          8
; elim ap -> fp       10
; elim fp -> sp       0
; saved regs: R7 R8 R9 R10
.LVL38:
	; start of prologue
	PUSHM.W	#4, R10
.LCFI3:
	; end of prologue
	MOV.W	R12, R10
	MOV.W	R13, R9
	.loc 1 289 0
	AND.W	#-1015, @R12
	.loc 1 295 0
	ADD.W	#32, R12
.LVL39:
	AND.W	#-8, @R12
	.loc 1 297 0
	MOV.W	2(R13), R13
.LVL40:
	AND.W	#7, R13
	BIS.W	R13, @R12
	.loc 1 298 0
	MOV.W	@R10, R8
	MOV.W	@R9, R7
	ADD.W	#20, R7
	.loc 1 301 0
	MOV.W	2(R9), R12
	CALL	#__mspabi_srli_3
.LVL41:
	.loc 1 302 0
	rpt	#6 { rlax.w	R12
	.loc 1 300 0
	ADD.W	R7, R12
	.loc 1 298 0
	BIS.W	R12, R8
	MOV.W	R8, @R10
	.loc 1 304 0
	MOV.W	4(R9), 18(R10)
	.loc 1 306 0
	AND.W	#-241, 2(R10)
	.loc 1 310 0
	MOV.W	R10, R12
	ADD.W	6(R9), R12
	BIS.W	8(R9), @R12
	.loc 1 312 0
	ADD.W	6(R9), R10
.LVL42:
	MOV.W	10(R9), 16(R10)
	.loc 1 313 0
	; start of epilogue
	POPM.W	#4, r10
	RET
.LFE17:
	.size	Timer_A_outputPWM, .-Timer_A_outputPWM
	.balign 2
	.global	Timer_A_stop
Timer_A_stop:
.LFB18:
	.loc 1 316 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL43:
	; start of prologue
	; end of prologue
	.loc 1 317 0
	AND.W	#-49, @R12
	.loc 1 318 0
	; start of epilogue
	RET
.LFE18:
	.size	Timer_A_stop, .-Timer_A_stop
	.balign 2
	.global	Timer_A_setCompareValue
Timer_A_setCompareValue:
.LFB19:
	.loc 1 323 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL44:
	; start of prologue
	; end of prologue
	.loc 1 324 0
	ADD.W	R13, R12
.LVL45:
	MOV.W	R14, 16(R12)
	.loc 1 325 0
	; start of epilogue
	RET
.LFE19:
	.size	Timer_A_setCompareValue, .-Timer_A_setCompareValue
	.balign 2
	.global	Timer_A_clearTimerInterrupt
Timer_A_clearTimerInterrupt:
.LFB20:
	.loc 1 328 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL46:
	; start of prologue
	; end of prologue
	.loc 1 329 0
	BIC.W	#1, @R12
	.loc 1 330 0
	; start of epilogue
	RET
.LFE20:
	.size	Timer_A_clearTimerInterrupt, .-Timer_A_clearTimerInterrupt
	.balign 2
	.global	Timer_A_clearCaptureCompareInterrupt
Timer_A_clearCaptureCompareInterrupt:
.LFB21:
	.loc 1 334 0
; start of function
; framesize_regs:     0
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          0
; elim ap -> fp       2
; elim fp -> sp       0
; saved regs:(none)
.LVL47:
	; start of prologue
	; end of prologue
	.loc 1 335 0
	ADD.W	R13, R12
.LVL48:
	BIC.W	#1, @R12
	.loc 1 336 0
	; start of epilogue
	RET
.LFE21:
	.size	Timer_A_clearCaptureCompareInterrupt, .-Timer_A_clearCaptureCompareInterrupt
	.balign 2
	.global	Timer_A_getCounterValue
Timer_A_getCounterValue:
.LFB22:
	.loc 1 339 0
; start of function
; framesize_regs:     2
; framesize_locals:   0
; framesize_outgoing: 0
; framesize:          2
; elim ap -> fp       4
; elim fp -> sp       0
; saved regs: R10
.LVL49:
	; start of prologue
	PUSHM.W	#1, R10
.LCFI4:
	; end of prologue
	.loc 1 342 0
	MOV.W	R12, R15
	ADD.W	#16, R15
	MOV.W	@R15, R13
.LVL50:
	.loc 1 347 0
	MOV.W	@R15, R12
.LVL51:
	.loc 1 349 0
	CMP.W	R12, R13 { JHS	.L36
.L42:
	.loc 1 351 0
	MOV.W	R12, R14 { SUB.W	R13, R14
.LVL52:
.L37:
	.loc 1 347 0
	MOV.W	R12, R13
	.loc 1 362 0
	MOV.W	#50, R10
	CMP.W	R14, R10 { JHS	.L38
.LVL53:
	.loc 1 347 0
	MOV.W	@R15, R12
.LVL54:
	.loc 1 349 0
	CMP.W	R12, R13 { JLO	.L42
.LVL55:
.L36:
	.loc 1 353 0
	CMP.W	R13, R12 { JLO	.L43
.L38:
	.loc 1 365 0
	; start of epilogue
	POPM.W	#1, r10
	RET
.L43:
	.loc 1 355 0
	MOV.W	R13, R14 { SUB.W	R12, R14
.LVL56:
	BR	#.L37
.LFE22:
	.size	Timer_A_getCounterValue, .-Timer_A_getCounterValue
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
	.byte	0x4
	.4byte	.LCFI0-.LFB1
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
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
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.balign 4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.balign 4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.balign 4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.balign 4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.balign 4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.balign 4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
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
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.balign 4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.balign 4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.balign 4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.balign 4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x4
	.byte	0x8a
	.uleb128 0x2
	.balign 4
.LEFDE44:
.text
.Letext0:
	.file 2 "/opt/ti/msp430-elf/include/machine/_default_types.h"
	.file 3 "/opt/ti/msp430-elf/include/stdint.h"
	.file 4 "../driverlib/timer_a.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7d3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x1
	.4byte	.LASF73
	.4byte	.LASF74
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x38
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x36
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x42
	.4byte	0x5e
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0xa
	.byte	0x4
	.byte	0x48
	.4byte	0xf6
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x50
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x67
	.4byte	0x97
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x6c
	.4byte	0x97
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x72
	.4byte	0x97
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x74
	.4byte	0xf6
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x75
	.4byte	0xad
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0xc
	.byte	0x4
	.byte	0x7d
	.4byte	0x15d
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0x89
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0x90
	.4byte	0x97
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0x97
	.4byte	0x97
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.byte	0x9c
	.4byte	0x97
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0xa1
	.4byte	0x97
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0xac
	.4byte	0x97
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xad
	.4byte	0x108
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0xe
	.byte	0x4
	.byte	0xb5
	.4byte	0x1c9
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0xbd
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0xd4
	.4byte	0x97
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.byte	0xd6
	.4byte	0x97
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0xdb
	.4byte	0x97
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.byte	0xe0
	.4byte	0x97
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0xe6
	.4byte	0x97
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0xe8
	.4byte	0xf6
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0xe9
	.4byte	0x168
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0xc
	.byte	0x4
	.byte	0xf0
	.4byte	0x22e
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0xf8
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x10f
	.4byte	0x97
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x111
	.4byte	0x97
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x11c
	.4byte	0x97
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x127
	.4byte	0x97
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x129
	.4byte	0x97
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x12a
	.4byte	0x1d4
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xe
	.byte	0x4
	.2byte	0x131
	.4byte	0x2a3
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x139
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x150
	.4byte	0x97
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x153
	.4byte	0x97
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x158
	.4byte	0x97
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15d
	.4byte	0x97
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x163
	.4byte	0x97
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x165
	.4byte	0xf6
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x166
	.4byte	0x23a
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4
	.2byte	0x16e
	.4byte	0x2f1
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x17a
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x17f
	.4byte	0x97
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x18a
	.4byte	0x97
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x18c
	.4byte	0x97
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x18d
	.4byte	0x2af
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0x35
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32d
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x35
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x36
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0x3b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x361
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3b
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3c
	.4byte	0x361
	.4byte	.LLST1
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.4byte	0xfd
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0x54
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39b
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x54
	.4byte	0x97
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0x55
	.4byte	0x39b
	.4byte	.LLST3
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.4byte	0x2a3
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d5
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7b
	.4byte	0x97
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7c
	.4byte	0x3d5
	.4byte	.LLST5
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.4byte	0x1c9
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40d
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa2
	.4byte	0x97
	.4byte	.LLST6
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0xa3
	.4byte	0x40d
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.4byte	0x15d
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x1
	.byte	0xbb
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x445
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xbb
	.4byte	0x97
	.4byte	.LLST7
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0xbc
	.4byte	0x445
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.4byte	0x2f1
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x1
	.byte	0xce
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46e
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0xce
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1
	.byte	0xd3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x491
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd3
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd8
	.4byte	0xa2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ba
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd8
	.4byte	0x97
	.4byte	.LLST8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1
	.byte	0xdd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ec
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xdd
	.4byte	0x97
	.4byte	.LLST9
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0xde
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x1
	.byte	0xe3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51e
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe3
	.4byte	0x97
	.4byte	.LLST10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0xe4
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1
	.byte	0xe9
	.4byte	0xa2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe9
	.4byte	0x97
	.4byte	.LLST11
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0xea
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0xeb
	.4byte	0x97
	.4byte	.LLST12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x1
	.byte	0xf0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x586
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0xf0
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf5
	.4byte	0x8c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cb
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xf5
	.4byte	0x97
	.4byte	.LLST13
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0xf6
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf7
	.4byte	0x97
	.4byte	.LLST14
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x103
	.4byte	0x8c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x604
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x103
	.4byte	0x97
	.4byte	.LLST15
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x104
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x110
	.4byte	0x97
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63d
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x110
	.4byte	0x97
	.4byte	.LLST16
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x111
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x116
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x680
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x116
	.4byte	0x97
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x117
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x118
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x11e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b7
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x11e
	.4byte	0x97
	.4byte	.LLST18
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x11f
	.4byte	0x6b7
	.4byte	.LLST19
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.4byte	0x22e
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x13b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e2
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x13b
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x140
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x725
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x140
	.4byte	0x97
	.4byte	.LLST20
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x141
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x142
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x147
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74a
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x147
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x14c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77f
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x14c
	.4byte	0x97
	.4byte	.LLST21
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x14d
	.4byte	0x97
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x152
	.4byte	0x97
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x152
	.4byte	0x97
	.4byte	.LLST22
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x154
	.4byte	0x97
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x154
	.4byte	0x97
	.4byte	.LLST24
	.uleb128 0x17
	.string	"res"
	.byte	0x1
	.2byte	0x154
	.4byte	0x97
	.4byte	.LLST25
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x3
	.byte	0x7f
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5e
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
.LASF72:
	.string	"GNU C 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1) -fpreprocessed -mmcu=msp430fr5969 -g -O3"
.LASF59:
	.string	"synchronized"
.LASF16:
	.string	"clockSourceDivider"
.LASF2:
	.string	"short int"
.LASF54:
	.string	"Timer_A_getInterruptStatus"
.LASF22:
	.string	"Timer_A_initCaptureModeParam"
.LASF74:
	.string	"/home/hwsec/hwsec/msp430/template_present/present_opt"
.LASF40:
	.string	"baseAddress"
.LASF7:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF27:
	.string	"captureInterruptEnable"
.LASF33:
	.string	"compareRegister"
.LASF18:
	.string	"timerClear"
.LASF12:
	.string	"uint8_t"
.LASF23:
	.string	"captureRegister"
.LASF24:
	.string	"captureMode"
.LASF60:
	.string	"Timer_A_getOutputForOutputModeOutBitValue"
.LASF51:
	.string	"Timer_A_enableCaptureCompareInterrupt"
.LASF58:
	.string	"Timer_A_getSynchronizedCaptureCompareInput"
.LASF49:
	.string	"Timer_A_enableInterrupt"
.LASF63:
	.string	"outputModeOutBitValue"
.LASF9:
	.string	"long long int"
.LASF55:
	.string	"Timer_A_getCaptureCompareInterruptStatus"
.LASF50:
	.string	"Timer_A_disableInterrupt"
.LASF21:
	.string	"Timer_A_initContinuousModeParam"
.LASF61:
	.string	"Timer_A_getCaptureCompareCount"
.LASF6:
	.string	"long int"
.LASF67:
	.string	"Timer_A_clearTimerInterrupt"
.LASF38:
	.string	"compareInterruptEnable"
.LASF30:
	.string	"timerPeriod"
.LASF39:
	.string	"compareValue"
.LASF3:
	.string	"__uint8_t"
.LASF48:
	.string	"Timer_A_initCompareMode"
.LASF57:
	.string	"Timer_A_clear"
.LASF25:
	.string	"captureInputSelect"
.LASF19:
	.string	"startTimer"
.LASF29:
	.string	"Timer_A_initUpDownModeParam"
.LASF65:
	.string	"Timer_A_stop"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"timerMode"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"compareOutputMode"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF13:
	.string	"uint16_t"
.LASF71:
	.string	"voteTwo"
.LASF44:
	.string	"param"
.LASF5:
	.string	"short unsigned int"
.LASF47:
	.string	"Timer_A_initCaptureMode"
.LASF64:
	.string	"Timer_A_outputPWM"
.LASF35:
	.string	"dutyCycle"
.LASF68:
	.string	"Timer_A_clearCaptureCompareInterrupt"
.LASF20:
	.string	"_Bool"
.LASF66:
	.string	"Timer_A_setCompareValue"
.LASF26:
	.string	"synchronizeCaptureSource"
.LASF46:
	.string	"Timer_A_initUpDownMode"
.LASF8:
	.string	"long unsigned int"
.LASF43:
	.string	"Timer_A_initContinuousMode"
.LASF56:
	.string	"mask"
.LASF17:
	.string	"timerInterruptEnable_TAIE"
.LASF69:
	.string	"Timer_A_getCounterValue"
.LASF15:
	.string	"clockSource"
.LASF73:
	.string	"../driverlib/timer_a.c"
.LASF53:
	.string	"Timer_A_disableCaptureCompareInterrupt"
.LASF31:
	.string	"captureCompareInterruptEnable_CCR0_CCIE"
.LASF62:
	.string	"Timer_A_setOutputForOutputModeOutBitValue"
.LASF28:
	.string	"captureOutputMode"
.LASF37:
	.string	"Timer_A_initCompareModeParam"
.LASF52:
	.string	"captureCompareRegister"
.LASF32:
	.string	"Timer_A_outputPWMParam"
.LASF45:
	.string	"Timer_A_initUpMode"
.LASF70:
	.string	"voteOne"
.LASF42:
	.string	"Timer_A_startCounter"
.LASF36:
	.string	"Timer_A_initUpModeParam"
	.ident	"GCC: (GNU) 4.9.1 20140707 (prerelease (msp430-14r1-364)) (GNUPro 14r1) (Based on: GCC 4.8 GDB 7.7 Binutils 2.24 Newlib 2.1)"
