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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L2
.L5:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	ble	.L3
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	asr	r3, r2, r3
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	asr	r3, r2, r3
	ldr	r2, [fp, #-12]
	sub	r3, r2, r3
	str	r3, [fp, #-24]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [fp, #-28]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	b	.L4
.L3:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	asr	r3, r2, r3
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	asr	r3, r2, r3
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [fp, #-28]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-16]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
.L4:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L2:
	ldr	r3, [fp, #-28]
	cmp	r3, #14
	ble	.L5
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
