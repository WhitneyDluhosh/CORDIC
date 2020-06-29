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
	.file	"cordic_V_fixed_point.c"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.syntax unified
	.arm
	.fpu softvfp
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, r0
	mov	r4, #0
	ldr	r5, [r1]
	sub	sp, sp, #20
	str	r1, [sp, #8]
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	ldr	r1, .L10
	mov	r2, r5
	mov	r0, #1
	ldr	r6, [ip]
	mov	r7, r4
	bl	__printf_chk
	ldr	r10, .L10+4
	ldr	fp, .L10+8
	b	.L4
.L9:
	mov	r1, fp
	mov	r0, #1
	bl	__printf_chk
	ldr	r3, [r10, r4, lsl #2]
	add	r4, r4, #1
	cmp	r4, #15
	add	r6, r6, r9
	sub	r5, r5, r8
	add	r7, r7, r3
	beq	.L8
.L4:
	cmp	r5, #0
	mov	r3, r5
	mov	r2, r4
	asr	r9, r5, r4
	asr	r8, r6, r4
	bgt	.L9
	ldr	r1, .L10+12
	mov	r0, #1
	bl	__printf_chk
	ldr	r3, [r10, r4, lsl #2]
	add	r4, r4, #1
	cmp	r4, #15
	sub	r6, r6, r9
	add	r5, r5, r8
	sub	r7, r7, r3
	bne	.L4
.L8:
	ldr	r3, [sp, #4]
	str	r6, [r3]
	ldr	r3, [sp, #8]
	str	r5, [r3]
	ldr	r3, [sp, #12]
	str	r7, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC0
	.word	z_table
	.word	.LC1
	.word	.LC2
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"ORIGINAL VALUE, y_temp_1 =  %d \012\000"
	.space	3
.LC1:
	.ascii	"%d: FIRST spot, y_temp_1 = %d \012\000"
.LC2:
	.ascii	"%d: SECOND spot, y_temp_1 = %d \012\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
