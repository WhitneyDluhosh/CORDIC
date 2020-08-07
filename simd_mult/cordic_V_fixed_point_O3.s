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
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	vpush.64	{d8}
	vmov.i32	d8, #0  @ v2si
	vld1.32	{d8[0]}, [r0]
	ldr	r3, [r1]
	movw	r8, #:lower16:z_table
	vmov.32	d8[1], r3
	movt	r8, #:upper16:z_table
	cmp	r3, #0
	mov	r6, r0
	mov	r5, r1
	mov	r7, r2
	vrev64.32	d16, d8
	ldr	r4, [r8]
	ble	.L2
	vldr	d17, .L34
	vmla.i32	d8, d16, d17
.L3:
	vmov.32	r9, d8[1]
	movw	r0, #:lower16:.LC0
	mov	r2, r9
	movt	r0, #:upper16:.LC0
	vmov.32	r1, d8[0]
	bl	printf
	vshr.s32	d16, d8, #1
	cmp	r9, #0
	vrev64.32	d16, d16
	ldr	r3, [r8, #4]
	ble	.L4
	vldr	d17, .L34
	vmla.i32	d8, d16, d17
	vmov	d16, d8  @ v2si
	add	r3, r4, r3
.L5:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #2
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r4, [r8, #8]
	ble	.L6
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r4
.L7:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #3
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r4, [r8, #12]
	ble	.L8
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r4
.L9:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #4
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r4, [r8, #16]
	ble	.L10
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r4
.L11:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #5
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #20]
	ble	.L12
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L13:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #6
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #24]
	ble	.L14
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L15:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #7
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #28]
	ble	.L16
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L17:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #8
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #32]
	ble	.L18
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L19:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #9
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #36]
	ble	.L20
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L21:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #10
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #40]
	ble	.L22
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L23:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #11
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #44]
	ble	.L24
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L25:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #12
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #48]
	ble	.L26
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L27:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #13
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #52]
	ble	.L28
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L29:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #14
	cmp	r2, #0
	vrev64.32	d17, d17
	ldr	r2, [r8, #56]
	ble	.L30
	vldr	d18, .L34
	vmla.i32	d16, d17, d18
	add	r3, r3, r2
.L31:
	vst1.32	{d16[0]}, [r6]
	vldm	sp!, {d8}
	vst1.32	{d16[1]}, [r5]
	str	r3, [r7]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L2:
	vldr	d17, .L34+8
	rsb	r4, r4, #0
	vmla.i32	d8, d16, d17
	b	.L3
.L30:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L31
.L28:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L29
.L26:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L27
.L24:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L25
.L22:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L23
.L20:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L21
.L18:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L19
.L16:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L17
.L14:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L15
.L12:
	vldr	d18, .L34+8
	sub	r3, r3, r2
	vmla.i32	d16, d17, d18
	b	.L13
.L10:
	vldr	d18, .L34+8
	sub	r3, r3, r4
	vmla.i32	d16, d17, d18
	b	.L11
.L8:
	vldr	d18, .L34+8
	sub	r3, r3, r4
	vmla.i32	d16, d17, d18
	b	.L9
.L6:
	vldr	d18, .L34+8
	sub	r3, r3, r4
	vmla.i32	d16, d17, d18
	b	.L7
.L4:
	vldr	d17, .L34+8
	vmla.i32	d8, d16, d17
	sub	r3, r4, r3
	vmov	d16, d8  @ v2si
	b	.L5
.L35:
	.align	3
.L34:
	.word	1
	.word	-1
	.word	-1
	.word	1
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"X: %d Y: %d \012\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
