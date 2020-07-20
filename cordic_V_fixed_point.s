	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"cordic_V_fixed_point.c"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	ldr	r6, [r1]
	mov	r7, r1
	vpush.64	{d8, d9, d10}
	movw	r1, #:lower16:.LC0
	movt	r1, #:upper16:.LC0
	movw	r4, #:lower16:z_table
	mov	r3, r6
	movt	r4, #:upper16:z_table
	vld1.32	{d8[]}, [r0]
	mov	r0, #1
	sub	sp, sp, #12
	vmov.32	d8[1], r6
	str	r2, [sp]
	vshl.i32	d9, d8, #0
	vmov.32	r2, d8[0]
	bl	__printf_chk
	movw	r1, #:lower16:.LC1
	mov	r0, #1
	movt	r1, #:upper16:.LC1
	vmov.32	r9, d9[0]
	vmov.32	r5, d9[1]
	vrev64.32	d9, d9
	mov	r2, r9
	mov	r3, r5
	bl	__printf_chk
	mov	r3, r9
	mov	r2, r5
	movw	r1, #:lower16:.LC2
	mov	r0, #1
	movt	r1, #:upper16:.LC2
	bl	__printf_chk
	vadd.i32	d16, d9, d8
	vsub.i32	d9, d8, d9
	movw	r1, #:lower16:.LC3
	mov	r0, #1
	movt	r1, #:upper16:.LC3
	vmov.32	r10, d16[0]
	vmov.32	r3, d16[1]
	vmov.32	fp, d9[0]
	vmov.32	r5, d9[1]
	mov	r2, r10
	str	r3, [sp, #4]
	bl	__printf_chk
	mov	r2, fp
	movw	r1, #:lower16:.LC4
	mov	r3, r5
	movt	r1, #:upper16:.LC4
	mov	r0, #1
	bl	__printf_chk
	mov	r2, r6
	movw	r1, #:lower16:.LC5
	mov	r0, #1
	movt	r1, #:upper16:.LC5
	ldr	r9, [r4]
	bl	__printf_chk
	cmp	r6, #0
	ble	.L2
	vmov.32	d8[0], r10
	vmov.32	d8[1], r5
.L3:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #1
	movw	r1, #:lower16:.LC6
	mov	r0, #1
	movt	r1, #:upper16:.LC6
	ldr	r5, [r4, #4]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L4
	vmov.32	r2, d10[0]
	add	r5, r9, r5
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L5:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #2
	movw	r1, #:lower16:.LC7
	mov	r0, #1
	movt	r1, #:upper16:.LC7
	ldr	r9, [r4, #8]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L6
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L7:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #3
	movw	r1, #:lower16:.LC8
	mov	r0, #1
	movt	r1, #:upper16:.LC8
	ldr	r9, [r4, #12]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L8
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L9:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #4
	movw	r1, #:lower16:.LC9
	mov	r0, #1
	movt	r1, #:upper16:.LC9
	ldr	r9, [r4, #16]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L10
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L11:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #5
	movw	r1, #:lower16:.LC10
	mov	r0, #1
	movt	r1, #:upper16:.LC10
	ldr	r9, [r4, #20]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L12
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L13:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #6
	movw	r1, #:lower16:.LC11
	mov	r0, #1
	movt	r1, #:upper16:.LC11
	ldr	r9, [r4, #24]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L14
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L15:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #7
	movw	r1, #:lower16:.LC12
	mov	r0, #1
	movt	r1, #:upper16:.LC12
	ldr	r9, [r4, #28]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L16
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L17:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #8
	movw	r1, #:lower16:.LC13
	mov	r0, #1
	movt	r1, #:upper16:.LC13
	ldr	r9, [r4, #32]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L18
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L19:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #9
	movw	r1, #:lower16:.LC14
	mov	r0, #1
	movt	r1, #:upper16:.LC14
	ldr	r9, [r4, #36]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L20
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L21:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #10
	movw	r1, #:lower16:.LC15
	mov	r0, #1
	movt	r1, #:upper16:.LC15
	ldr	r9, [r4, #40]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L22
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L23:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #11
	movw	r1, #:lower16:.LC16
	mov	r0, #1
	movt	r1, #:upper16:.LC16
	ldr	r9, [r4, #44]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L24
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L25:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #12
	movw	r1, #:lower16:.LC17
	mov	r0, #1
	movt	r1, #:upper16:.LC17
	ldr	r9, [r4, #48]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L26
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L27:
	vmov.32	r6, d8[1]
	vshl.i32	d16, d8, #13
	movw	r1, #:lower16:.LC18
	mov	r0, #1
	movt	r1, #:upper16:.LC18
	ldr	r9, [r4, #52]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r6
	bl	__printf_chk
	cmp	r6, #0
	ble	.L28
	vmov.32	r2, d10[0]
	add	r5, r5, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L29:
	vmov.32	r3, d8[1]
	vshl.i32	d16, d8, #14
	movw	r1, #:lower16:.LC19
	mov	r0, #1
	movt	r1, #:upper16:.LC19
	ldr	r6, [r4, #56]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r3
	mov	r4, r3
	bl	__printf_chk
	cmp	r4, #0
	ble	.L30
	vmov.32	r2, d10[0]
	add	r5, r5, r6
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L31:
	ldr	r3, [sp]
	vst1.32	{d8[0]}, [r8]
	vst1.32	{d8[1]}, [r7]
	str	r5, [r3]
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L30:
	vmov.32	r2, d10[1]
	sub	r5, r5, r6
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L31
.L28:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L29
.L26:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L27
.L24:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L25
.L22:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L23
.L20:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L21
.L18:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L19
.L16:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L17
.L14:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L15
.L12:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L13
.L10:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L11
.L8:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L9
.L6:
	vmov.32	r2, d10[1]
	sub	r5, r5, r9
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L7
.L4:
	vmov.32	r2, d10[1]
	sub	r5, r9, r5
	vmov.32	r3, d9[0]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L5
.L2:
	add	r3, sp, #4
	rsb	r9, r9, #0
	vld1.32	{d8[0]}, [r3]
	vmov.32	d8[1], fp
	b	.L3
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"XY STARTING position 0: %d  1: %d\012\000"
	.space	1
.LC1:
	.ascii	"SHIFT_XY STARTING position 0: %d  1: %d\012\000"
	.space	3
.LC2:
	.ascii	"REVERSED SHIFT_XY STARTING position 0: %d  1: %d\012"
	.ascii	"\000"
	.space	2
.LC3:
	.ascii	"ADDXY STARTING position 0: %d  1: %d\012\000"
	.space	2
.LC4:
	.ascii	"SUBXY STARTING position 0: %d  1: %d\012\000"
	.space	2
.LC5:
	.ascii	"0:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC6:
	.ascii	"1:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC7:
	.ascii	"2:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC8:
	.ascii	"3:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC9:
	.ascii	"4:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC10:
	.ascii	"5:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC11:
	.ascii	"6:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC12:
	.ascii	"7:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC13:
	.ascii	"8:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC14:
	.ascii	"9:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC15:
	.ascii	"10:  FIRST spot, y_temp_1 = %d\012\000"
.LC16:
	.ascii	"11:  FIRST spot, y_temp_1 = %d\012\000"
.LC17:
	.ascii	"12:  FIRST spot, y_temp_1 = %d\012\000"
.LC18:
	.ascii	"13:  FIRST spot, y_temp_1 = %d\012\000"
.LC19:
	.ascii	"14:  FIRST spot, y_temp_1 = %d\012\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
