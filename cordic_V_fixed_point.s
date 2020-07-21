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
	ldr	ip, [r1]
	movw	r3, #:lower16:z_table
	vld1.32	{d16[]}, [r0]
	movt	r3, #:upper16:z_table
	cmp	ip, #0
	push	{r4, r5, r6, lr}
	vmov.32	d16[1], ip
	ldr	r4, [r3]
	vmov.32	lr, d16[0]
	ble	.L2
	add	ip, ip, lr
	vmov.32	d16[0], ip
	vmov.32	ip, d16[1]
	sub	lr, ip, lr
	vmov.32	d16[1], lr
.L3:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #1
	ldr	r6, [r3, #4]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L4
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L5:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #2
	ldr	r6, [r3, #8]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L6
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L7:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #3
	ldr	r6, [r3, #12]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L8
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L9:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #4
	ldr	r6, [r3, #16]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L10
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L11:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #5
	ldr	r6, [r3, #20]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L12
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L13:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #6
	ldr	r6, [r3, #24]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L14
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L15:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #7
	ldr	r6, [r3, #28]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L16
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L17:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #8
	ldr	r6, [r3, #32]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L18
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L19:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #9
	ldr	r6, [r3, #36]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L20
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L21:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #10
	ldr	r6, [r3, #40]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L22
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L23:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #11
	ldr	r6, [r3, #44]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L24
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L25:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #12
	ldr	r6, [r3, #48]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L26
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L27:
	vmov.32	ip, d16[1]
	vshr.s32	d17, d16, #13
	ldr	r6, [r3, #52]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	ip, #0
	ble	.L28
	add	lr, r5, lr
	vmov.32	ip, d17[0]
	add	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	ip, lr, ip
	vmov.32	d16[1], ip
.L29:
	ldr	ip, [r3, #56]
	vshr.s32	d17, d16, #14
	vmov.32	r3, d16[1]
	vmov.32	lr, d16[0]
	vmov.32	r5, d17[1]
	cmp	r3, #0
	ble	.L30
	add	lr, r5, lr
	vmov.32	r3, d17[0]
	add	ip, r4, ip
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	sub	r3, lr, r3
	vmov.32	d16[1], r3
.L31:
	vst1.32	{d16[0]}, [r0]
	vst1.32	{d16[1]}, [r1]
	str	ip, [r2]
	pop	{r4, r5, r6, pc}
.L30:
	sub	lr, lr, r5
	vmov.32	r3, d17[0]
	sub	ip, r4, ip
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	r3, lr, r3
	vmov.32	d16[1], r3
	b	.L31
.L28:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L29
.L26:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L27
.L24:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L25
.L22:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L23
.L20:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L21
.L18:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L19
.L16:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L17
.L14:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L15
.L12:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L13
.L10:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L11
.L8:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L9
.L6:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L7
.L4:
	sub	lr, lr, r5
	vmov.32	ip, d17[0]
	sub	r4, r4, r6
	vmov.32	d16[0], lr
	vmov.32	lr, d16[1]
	add	ip, lr, ip
	vmov.32	d16[1], ip
	b	.L5
.L2:
	sub	ip, lr, ip
	rsb	r4, r4, #0
	vmov.32	d16[0], ip
	vmov.32	ip, d16[1]
	add	lr, ip, lr
	vmov.32	d16[1], lr
	b	.L3
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
