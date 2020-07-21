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
	movw	r5, #:lower16:z_table
	vpush.64	{d8, d9}
	movt	r5, #:upper16:z_table
	ldr	r9, [r1]
	mov	r7, r0
	mov	r6, r1
	mov	r8, r2
	vld1.32	{d8[]}, [r0]
	ldr	r4, [r5]
	vmov.32	d8[1], r9
	vmov.32	r10, d8[0]
	.syntax divided
@ 18 "cordic_V_fixed_point.c" 1
	sasx_V r2, r10, r9
@ 0 "" 2
	.arm
	.syntax unified
	vmov	d16, r2, r3  @ v2si
	movw	r1, #:lower16:.LC0
	mov	r0, #1
	movt	r1, #:upper16:.LC0
	vmov.32	r2, d16[0]
	asr	r3, r2, #16
	uxth	r2, r2
	vmov.32	d8[0], r3
	mov	r3, r2
	vmov.32	d8[1], r2
	vmov.32	r2, d8[0]
	bl	__printf_chk
	ldr	r3, [r6]
	vld1.32	{d8[0]}, [r7]
	cmp	r3, #0
	vmov.32	d8[1], r3
	vmov.32	r3, d8[0]
	ble	.L2
	add	r9, r9, r3
	vmov.32	d8[0], r9
	vmov.32	r3, d8[1]
	sub	r10, r3, r10
	vmov.32	d8[1], r10
.L3:
	vmov.32	r3, d8[1]
	vshr.s32	d16, d8, #1
	ldr	r0, [r5, #4]
	vmov.32	r2, d8[0]
	vmov.32	r1, d16[1]
	cmp	r3, #0
	ble	.L4
	add	r2, r1, r2
	vmov.32	r3, d16[0]
	add	r4, r4, r0
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L5:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC1
	mov	r0, #1
	movt	r1, #:upper16:.LC1
	vshr.s32	d9, d8, #2
	ldr	r10, [r5, #8]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L6
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L7:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC2
	mov	r0, #1
	movt	r1, #:upper16:.LC2
	vshr.s32	d9, d8, #3
	ldr	r10, [r5, #12]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L8
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L9:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC3
	mov	r0, #1
	movt	r1, #:upper16:.LC3
	vshr.s32	d9, d8, #4
	ldr	r10, [r5, #16]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L10
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L11:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC4
	mov	r0, #1
	movt	r1, #:upper16:.LC4
	vshr.s32	d9, d8, #5
	ldr	r10, [r5, #20]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L12
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L13:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC5
	mov	r0, #1
	movt	r1, #:upper16:.LC5
	vshr.s32	d9, d8, #6
	ldr	r10, [r5, #24]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L14
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L15:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC6
	mov	r0, #1
	movt	r1, #:upper16:.LC6
	vshr.s32	d9, d8, #7
	ldr	r10, [r5, #28]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L16
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L17:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC7
	mov	r0, #1
	movt	r1, #:upper16:.LC7
	vshr.s32	d9, d8, #8
	ldr	r10, [r5, #32]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L18
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L19:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC8
	mov	r0, #1
	movt	r1, #:upper16:.LC8
	vshr.s32	d9, d8, #9
	ldr	r10, [r5, #36]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L20
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L21:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC9
	mov	r0, #1
	movt	r1, #:upper16:.LC9
	vshr.s32	d9, d8, #10
	ldr	r10, [r5, #40]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L22
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L23:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC10
	mov	r0, #1
	movt	r1, #:upper16:.LC10
	vshr.s32	d9, d8, #11
	ldr	r10, [r5, #44]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L24
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L25:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC11
	mov	r0, #1
	movt	r1, #:upper16:.LC11
	vshr.s32	d9, d8, #12
	ldr	r10, [r5, #48]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L26
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L27:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC12
	mov	r0, #1
	movt	r1, #:upper16:.LC12
	vshr.s32	d9, d8, #13
	ldr	r10, [r5, #52]
	mov	r2, r9
	bl	__printf_chk
	cmp	r9, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L28
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L29:
	vmov.32	r3, d8[1]
	movw	r1, #:lower16:.LC13
	mov	r0, #1
	movt	r1, #:upper16:.LC13
	vshr.s32	d9, d8, #14
	ldr	r9, [r5, #56]
	mov	r2, r3
	mov	r5, r3
	bl	__printf_chk
	cmp	r5, #0
	vmov.32	r1, d9[1]
	vmov.32	r2, d8[0]
	ble	.L30
	add	r2, r1, r2
	vmov.32	r3, d9[0]
	add	r4, r4, r9
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	sub	r3, r2, r3
	vmov.32	d8[1], r3
.L31:
	vst1.32	{d8[0]}, [r7]
	vst1.32	{d8[1]}, [r6]
	vldm	sp!, {d8-d9}
	str	r4, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L30:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r9
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L31
.L28:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L29
.L26:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L27
.L24:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L25
.L22:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L23
.L20:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L21
.L18:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L19
.L16:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L17
.L14:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L15
.L12:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L13
.L10:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L11
.L8:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L9
.L6:
	sub	r2, r2, r1
	vmov.32	r3, d9[0]
	sub	r4, r4, r10
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L7
.L4:
	sub	r2, r2, r1
	vmov.32	r3, d16[0]
	sub	r4, r4, r0
	vmov.32	d8[0], r2
	vmov.32	r2, d8[1]
	add	r3, r2, r3
	vmov.32	d8[1], r3
	b	.L5
.L2:
	sub	r9, r3, r9
	rsb	r4, r4, #0
	vmov.32	d8[0], r9
	vmov.32	r3, d8[1]
	add	r10, r3, r10
	vmov.32	d8[1], r10
	b	.L3
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"0:  FIRST spot, X; %d Y: %d \012\000"
	.space	2
.LC1:
	.ascii	"2:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC2:
	.ascii	"3:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC3:
	.ascii	"4:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC4:
	.ascii	"5:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC5:
	.ascii	"6:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC6:
	.ascii	"7:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC7:
	.ascii	"8:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC8:
	.ascii	"9:  FIRST spot, y_temp_1 = %d\012\000"
	.space	1
.LC9:
	.ascii	"10:  FIRST spot, y_temp_1 = %d\012\000"
.LC10:
	.ascii	"11:  FIRST spot, y_temp_1 = %d\012\000"
.LC11:
	.ascii	"12:  FIRST spot, y_temp_1 = %d\012\000"
.LC12:
	.ascii	"13:  FIRST spot, y_temp_1 = %d\012\000"
.LC13:
	.ascii	"14:  FIRST spot, y_temp_1 = %d\012\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
