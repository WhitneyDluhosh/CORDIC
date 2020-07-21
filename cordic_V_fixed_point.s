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
	ldr	r3, [r1]
	movt	r5, #:upper16:z_table
	vpush.64	{d8}
	mov	r7, r0
	cmp	r3, #0
	mov	r6, r1
	mov	r8, r2
	ldr	r4, [r5]
	vld1.32	{d8[]}, [r0]
	vmov.32	d8[1], r3
	vrev64.32	d16, d8
	ble	.L2
	vldr	d17, .L34
	vmla.i32	d8, d16, d17
.L3:
	vmov.32	r9, d8[1]
	movw	r1, #:lower16:.LC0
	vmov.32	r2, d8[0]
	movt	r1, #:upper16:.LC0
	mov	r0, #1
	mov	r3, r9
	bl	__printf_chk
	cmp	r9, #0
	vrev64.32	d16, d8
	ldr	r3, [r5, #4]
	ble	.L4
	vldr	d17, .L34
	add	r3, r4, r3
	vmla.i32	d8, d16, d17
	vmov	d16, d8  @ v2si
.L5:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r4, [r5, #8]
	cmp	r2, #0
	ble	.L6
	vldr	d18, .L34
	add	r3, r3, r4
	vmla.i32	d16, d17, d18
.L7:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r4, [r5, #12]
	cmp	r2, #0
	ble	.L8
	vldr	d18, .L34
	add	r3, r3, r4
	vmla.i32	d16, d17, d18
.L9:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r4, [r5, #16]
	cmp	r2, #0
	ble	.L10
	vldr	d18, .L34
	add	r3, r3, r4
	vmla.i32	d16, d17, d18
.L11:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #20]
	cmp	r2, #0
	ble	.L12
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L13:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #24]
	cmp	r2, #0
	ble	.L14
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L15:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #28]
	cmp	r2, #0
	ble	.L16
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L17:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #32]
	cmp	r2, #0
	ble	.L18
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L19:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #36]
	cmp	r2, #0
	ble	.L20
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L21:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #40]
	cmp	r2, #0
	ble	.L22
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L23:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #44]
	cmp	r2, #0
	ble	.L24
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L25:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #48]
	cmp	r2, #0
	ble	.L26
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L27:
	vmov.32	r2, d16[1]
	vrev64.32	d17, d16
	ldr	r1, [r5, #52]
	cmp	r2, #0
	ble	.L28
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L29:
	vmov.32	r2, d16[1]
	ldr	r1, [r5, #56]
	vrev64.32	d17, d16
	cmp	r2, #0
	ble	.L30
	vldr	d18, .L34
	add	r3, r3, r1
	vmla.i32	d16, d17, d18
.L31:
	vldm	sp!, {d8}
	vst1.32	{d16[0]}, [r7]
	vst1.32	{d16[1]}, [r6]
	str	r3, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L30:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L31
.L28:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L29
.L26:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L27
.L24:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L25
.L22:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L23
.L20:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L21
.L18:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L19
.L16:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L17
.L14:
	vldr	d18, .L34+8
	sub	r3, r3, r1
	vmla.i32	d16, d17, d18
	b	.L15
.L12:
	vldr	d18, .L34+8
	sub	r3, r3, r1
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
	sub	r3, r4, r3
	vmla.i32	d8, d16, d17
	vmov	d16, d8  @ v2si
	b	.L5
.L2:
	vldr	d17, .L34+8
	rsb	r4, r4, #0
	vmla.i32	d8, d16, d17
	b	.L3
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
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
