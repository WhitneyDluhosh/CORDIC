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
	.fpu neon
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #148
	str	r0, [fp, #-144]
	str	r1, [fp, #-148]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-148]
	ldr	r3, [r3]
	str	r3, [fp, #-128]
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-140]
	mov	r4, #0
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L2
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L3
.L2:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L3:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-20]
	vldr	d16, [fp, #-20]
	vshr.s32	d16, d16, #1
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #4]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L5
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L6
.L5:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L6:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-28]
	vldr	d16, [fp, #-28]
	vshr.s32	d16, d16, #2
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #8]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L8
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L9
.L8:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L9:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vshr.s32	d16, d16, #3
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #12]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L11
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L12
.L11:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L12:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-44]
	vldr	d16, [fp, #-44]
	vshr.s32	d16, d16, #4
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #16]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L14
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L15
.L14:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L15:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-52]
	vldr	d16, [fp, #-52]
	vshr.s32	d16, d16, #5
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #20]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L17
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L18
.L17:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L18:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-60]
	vldr	d16, [fp, #-60]
	vshr.s32	d16, d16, #6
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #24]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L20
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L21
.L20:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L21:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-68]
	vldr	d16, [fp, #-68]
	vshr.s32	d16, d16, #7
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #28]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L23
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L24
.L23:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L24:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-76]
	vldr	d16, [fp, #-76]
	vshr.s32	d16, d16, #8
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #32]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L26
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L27
.L26:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L27:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-84]
	vldr	d16, [fp, #-84]
	vshr.s32	d16, d16, #9
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #36]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L29
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L30
.L29:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L30:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-92]
	vldr	d16, [fp, #-92]
	vshr.s32	d16, d16, #10
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #40]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L32
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L33
.L32:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L33:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-100]
	vldr	d16, [fp, #-100]
	vshr.s32	d16, d16, #11
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #44]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L35
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L36
.L35:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L36:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-108]
	vldr	d16, [fp, #-108]
	vshr.s32	d16, d16, #12
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #48]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L38
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L39
.L38:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L39:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-116]
	vldr	d16, [fp, #-116]
	vshr.s32	d16, d16, #13
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #52]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L41
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L42
.L41:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L42:
	vldr	d16, [fp, #-132]
	vstr	d16, [fp, #-124]
	vldr	d16, [fp, #-124]
	vshr.s32	d16, d16, #14
	vstr	d16, [fp, #-140]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #56]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L44
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	add	r4, r4, r5
	b	.L45
.L44:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	sub	r4, r4, r5
.L45:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-144]
	str	r2, [r3]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-148]
	str	r2, [r3]
	ldr	r3, [fp, #-152]
	str	r4, [r3]
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	bx	lr
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
