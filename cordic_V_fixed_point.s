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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0
	vpush.64	{d8, d9, d10}
	mov	r6, r1
	ldr	r3, [r1]
	mov	r8, r2
	movw	r1, #:lower16:.LC0
	movt	r1, #:upper16:.LC0
	vld1.32	{d8[]}, [r0]
	mov	r0, #1
	movw	r5, #:lower16:z_table
	movt	r5, #:upper16:z_table
	vmov.32	d8[1], r3
	vmov.32	r2, d8[0]
	bl	__printf_chk
	vrev64.32	d16, d8
	vadd.i32	d9, d16, d8
	ldr	r4, [r5]
	vsub.i32	d10, d8, d16
	vmov	r2, r3, d8  @ v2si
	vmov	r0, r1, d16  @ v2si
	.syntax divided
@ 22 "cordic_V_fixed_point.c" 1
	USAX r2, r2, r0
@ 0 "" 2
	.arm
	.syntax unified
	vmov	d8, r2, r3  @ v2si
	movw	r1, #:lower16:.LC1
	mov	r0, #1
	movt	r1, #:upper16:.LC1
	vmov.32	r3, d8[1]
	vmov.32	r2, d8[0]
	bl	__printf_chk
	ldr	r9, [r6]
	vld1.32	{d8[0]}, [r7]
	movw	r1, #:lower16:.LC2
	mov	r0, #1
	movt	r1, #:upper16:.LC2
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	d8[1], r9
	ble	.L2
	vmov.32	r3, d9[0]
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
.L3:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC3
	mov	r0, #1
	movt	r1, #:upper16:.LC3
	vmov.32	r2, d8[0]
	mov	r3, r9
	bl	__printf_chk
	vshr.s32	d16, d8, #1
	cmp	r9, #0
	ldr	r1, [r5, #4]
	vrev64.32	d16, d16
	vadd.i32	d17, d16, d8
	vsub.i32	d16, d8, d16
	ble	.L4
	vmov.32	r2, d17[0]
	add	r4, r4, r1
	vmov.32	r3, d16[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L5:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #2
	movw	r1, #:lower16:.LC4
	mov	r0, #1
	movt	r1, #:upper16:.LC4
	ldr	r10, [r5, #8]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L6
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L7:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #3
	movw	r1, #:lower16:.LC5
	mov	r0, #1
	movt	r1, #:upper16:.LC5
	ldr	r10, [r5, #12]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L8
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L9:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #4
	movw	r1, #:lower16:.LC6
	mov	r0, #1
	movt	r1, #:upper16:.LC6
	ldr	r10, [r5, #16]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L10
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L11:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #5
	movw	r1, #:lower16:.LC7
	mov	r0, #1
	movt	r1, #:upper16:.LC7
	ldr	r10, [r5, #20]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L12
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L13:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #6
	movw	r1, #:lower16:.LC8
	mov	r0, #1
	movt	r1, #:upper16:.LC8
	ldr	r10, [r5, #24]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L14
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L15:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #7
	movw	r1, #:lower16:.LC9
	mov	r0, #1
	movt	r1, #:upper16:.LC9
	ldr	r10, [r5, #28]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L16
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L17:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #8
	movw	r1, #:lower16:.LC10
	mov	r0, #1
	movt	r1, #:upper16:.LC10
	ldr	r10, [r5, #32]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L18
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L19:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #9
	movw	r1, #:lower16:.LC11
	mov	r0, #1
	movt	r1, #:upper16:.LC11
	ldr	r10, [r5, #36]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L20
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L21:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #10
	movw	r1, #:lower16:.LC12
	mov	r0, #1
	movt	r1, #:upper16:.LC12
	ldr	r10, [r5, #40]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L22
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L23:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #11
	movw	r1, #:lower16:.LC13
	mov	r0, #1
	movt	r1, #:upper16:.LC13
	ldr	r10, [r5, #44]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L24
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L25:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #12
	movw	r1, #:lower16:.LC14
	mov	r0, #1
	movt	r1, #:upper16:.LC14
	ldr	r10, [r5, #48]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L26
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L27:
	vmov.32	r9, d8[1]
	vshr.s32	d16, d8, #13
	movw	r1, #:lower16:.LC15
	mov	r0, #1
	movt	r1, #:upper16:.LC15
	ldr	r10, [r5, #52]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	ble	.L28
	vmov.32	r2, d10[0]
	add	r4, r4, r10
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L29:
	vmov.32	r3, d8[1]
	vshr.s32	d16, d8, #14
	movw	r1, #:lower16:.LC16
	mov	r0, #1
	movt	r1, #:upper16:.LC16
	ldr	r9, [r5, #56]
	vrev64.32	d16, d16
	vadd.i32	d10, d16, d8
	vsub.i32	d9, d8, d16
	mov	r2, r3
	mov	r5, r3
	bl	__printf_chk
	cmp	r5, #0
	ble	.L30
	vmov.32	r2, d10[0]
	add	r4, r4, r9
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
.L31:
	vst1.32	{d8[0]}, [r7]
	vst1.32	{d8[1]}, [r6]
	vldm	sp!, {d8-d10}
	str	r4, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L30:
	vmov.32	r3, d9[0]
	sub	r4, r4, r9
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L31
.L28:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L29
.L26:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L27
.L24:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L25
.L22:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L23
.L20:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L21
.L18:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L19
.L16:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L17
.L14:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L15
.L12:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L13
.L10:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L11
.L8:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L9
.L6:
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	r2, d10[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L7
.L4:
	vmov.32	r3, d16[0]
	sub	r4, r4, r1
	vmov.32	r2, d17[1]
	vmov.32	d8[0], r3
	vmov.32	d8[1], r2
	b	.L5
.L2:
	vmov.32	r2, d10[0]
	rsb	r4, r4, #0
	vmov.32	r3, d9[1]
	vmov.32	d8[0], r2
	vmov.32	d8[1], r3
	b	.L3
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"XY STARTING position 0: %d  1: %d\012\000"
	.space	1
.LC1:
	.ascii	"XY asm version STARTING position 0: %d  1: %d\012\000"
	.space	1
.LC2:
	.ascii	"0:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC3:
	.ascii	"1 XY compare STARTING position 0: %d  1: %d\012\000"
	.space	3
.LC4:
	.ascii	"2:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC5:
	.ascii	"3:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC6:
	.ascii	"4:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC7:
	.ascii	"5:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC8:
	.ascii	"6:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC9:
	.ascii	"7:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC10:
	.ascii	"8:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC11:
	.ascii	"9:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC12:
	.ascii	"10:  FIRST spot, y_temp_1 = %d\012\000"
.LC13:
	.ascii	"11:  FIRST spot, y_temp_1 = %d\012\000"
.LC14:
	.ascii	"12:  FIRST spot, y_temp_1 = %d\012\000"
.LC15:
	.ascii	"13:  FIRST spot, y_temp_1 = %d\012\000"
.LC16:
	.ascii	"14:  FIRST spot, y_temp_1 = %d\012\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
