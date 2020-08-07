	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"cordic_V_fixed_point.c"
	.text
	.comm	z_table,60,4
	.align	2
	.global	cordic_V_fixed_point
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, fp}
	add	fp, sp, #20
	sub	sp, sp, #16
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	ldr	r6, [r3]
	ldr	r3, [fp, #-28]
	ldr	r5, [r3]
	mov	r7, #0
	mov	r4, #0
	b	.L2
.L5:
	cmp	r5, #0
	ble	.L3
	asr	r3, r5, r4
	add	r8, r6, r3
	asr	r3, r6, r4
	sub	r5, r5, r3
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, r4, lsl #2]
	add	r7, r7, r3
	b	.L4
.L3:
	asr	r3, r5, r4
	sub	r8, r6, r3
	asr	r3, r6, r4
	add	r5, r5, r3
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, r4, lsl #2]
	sub	r7, r7, r3
.L4:
	mov	r6, r8
	add	r4, r4, #1
.L2:
	cmp	r4, #14
	ble	.L5
	ldr	r3, [fp, #-24]
	str	r6, [r3]
	ldr	r3, [fp, #-28]
	str	r5, [r3]
	ldr	r3, [fp, #-32]
	str	r7, [r3]
	nop
	sub	sp, fp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, fp}
	bx	lr
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
