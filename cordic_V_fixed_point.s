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
	push	{r4, r5, lr}
	movw	ip, #:lower16:z_table
	ldr	lr, [r1]
	movt	ip, #:upper16:z_table
	vld1.32	{d16[]}, [r0]
	cmp	lr, #0
	ldr	r3, [ip]
	vmov.32	d16[1], lr
	vshl.i32	d17, d16, #0
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	ble	.L2
	vmov.32	r4, d18[0]
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L3:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #1
	ldr	r5, [ip, #4]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L4
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L5:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #2
	ldr	r5, [ip, #8]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L6
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L7:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #3
	ldr	r5, [ip, #12]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L8
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L9:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #4
	ldr	r5, [ip, #16]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L10
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L11:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #5
	ldr	r5, [ip, #20]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L12
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L13:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #6
	ldr	r5, [ip, #24]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L14
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L15:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #7
	ldr	r5, [ip, #28]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L16
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L17:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #8
	ldr	r5, [ip, #32]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L18
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L19:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #9
	ldr	r5, [ip, #36]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L20
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L21:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #10
	ldr	r5, [ip, #40]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L22
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L23:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #11
	ldr	r5, [ip, #44]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L24
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L25:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #12
	ldr	r5, [ip, #48]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L26
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L27:
	vmov.32	lr, d16[1]
	vshl.i32	d17, d16, #13
	ldr	r5, [ip, #52]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	lr, #0
	ble	.L28
	vmov.32	r4, d18[0]
	add	r3, r3, r5
	vmov.32	lr, d17[1]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
.L29:
	ldr	r4, [ip, #56]
	vshl.i32	d17, d16, #14
	vmov.32	ip, d16[1]
	vrev64.32	d17, d17
	vadd.i32	d18, d17, d16
	vsub.i32	d17, d16, d17
	cmp	ip, #0
	ble	.L30
	vmov.32	lr, d18[0]
	add	r3, r3, r4
	vmov.32	ip, d17[1]
	vmov.32	d16[0], lr
	vmov.32	d16[1], ip
.L31:
	vst1.32	{d16[0]}, [r0]
	vst1.32	{d16[1]}, [r1]
	str	r3, [r2]
	pop	{r4, r5, pc}
.L30:
	vmov.32	lr, d18[1]
	sub	r3, r3, r4
	vmov.32	ip, d17[0]
	vmov.32	d16[0], lr
	vmov.32	d16[1], ip
	b	.L31
.L28:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L29
.L26:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L27
.L24:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L25
.L22:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L23
.L20:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L21
.L18:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L19
.L16:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L17
.L14:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L15
.L12:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L13
.L10:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L11
.L8:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L9
.L6:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L7
.L4:
	vmov.32	r4, d18[1]
	sub	r3, r3, r5
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L5
.L2:
	vmov.32	r4, d18[1]
	rsb	r3, r3, #0
	vmov.32	lr, d17[0]
	vmov.32	d16[0], r4
	vmov.32	d16[1], lr
	b	.L3
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
