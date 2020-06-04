	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"cordic_V_fixed_point.c"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.syntax unified
	.arm
	.fpu softvfp
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	lr, [r0]
	ldr	ip, [r1]
	mov	r3, #0
	mov	r4, r3
	ldr	r6, .L7
.L4:
	cmp	ip, #0
	addgt	r5, lr, ip, asr r3
	subgt	ip, ip, lr, asr r3
	ldrgt	lr, [r6, r3, lsl #2]
	addgt	r4, r4, lr
	suble	r5, lr, ip, asr r3
	addle	ip, ip, lr, asr r3
	ldrle	lr, [r6, r3, lsl #2]
	suble	r4, r4, lr
	mov	lr, r5
	add	r3, r3, #1
	cmp	r3, #15
	bne	.L4
	str	r5, [r0]
	str	ip, [r1]
	str	r4, [r2]
	pop	{r4, r5, r6, pc}
.L8:
	.align	2
.L7:
	.word	z_table
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
