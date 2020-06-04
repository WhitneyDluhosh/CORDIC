	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"HW_cordic_V_fixed_point.c"
	.text
	.align	2
	.global	HW_cordic_V_fixed_point
	.syntax unified
	.arm
	.fpu softvfp
	.type	HW_cordic_V_fixed_point, %function
HW_cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r1]
	ldr	r3, [r0]
	.syntax divided
@ 7 "HW_cordic_V_fixed_point.c" 1
	CORDIC_V r3, r3, r1
@ 0 "" 2
	.arm
	.syntax unified
	lsl	r1, r3, #16
	asr	r1, r1, #16
	asr	r3, r3, #16
	str	r3, [r0]
	str	r1, [r2]
	bx	lr
	.size	HW_cordic_V_fixed_point, .-HW_cordic_V_fixed_point
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
