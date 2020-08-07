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
	vmov.i32	d16, #0  @ v2si
	push	{r4, r5, r6, r7, lr}
	ldr	r5, [r0]
	movw	r4, #:lower16:z_table
	vmov.32	d16[0], r5
	ldr	r3, [r1]
	movt	r4, #:upper16:z_table
	cmp	r3, #0
	vmov.32	d16[1], r3
	add	ip, r5, r3
	ldr	lr, [r4]
	ble	.L2
	vmov.32	d16[0], ip
	sub	r5, r3, r5
	vmov.32	d16[1], r5
.L3:
	vshr.s32	d17, d16, #1
	cmp	r5, #0
	ldr	r7, [r4, #4]
	vmov.32	r6, d17[1]
	ble	.L4
	add	r6, r6, ip
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, r7
.L5:
	vshr.s32	d17, d16, #2
	cmp	r5, #0
	ldr	r7, [r4, #8]
	vmov.32	ip, d17[1]
	ble	.L6
	add	r6, ip, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, r7
.L7:
	vshr.s32	d17, d16, #3
	cmp	r5, #0
	ldr	r7, [r4, #12]
	vmov.32	ip, d17[1]
	ble	.L8
	add	r6, ip, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, r7
.L9:
	vshr.s32	d17, d16, #4
	cmp	r5, #0
	ldr	ip, [r4, #16]
	vmov.32	r3, d17[1]
	ble	.L10
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L11:
	vshr.s32	d17, d16, #5
	cmp	r5, #0
	ldr	ip, [r4, #20]
	vmov.32	r3, d17[1]
	ble	.L12
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L13:
	vshr.s32	d17, d16, #6
	cmp	r5, #0
	ldr	ip, [r4, #24]
	vmov.32	r3, d17[1]
	ble	.L14
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L15:
	vshr.s32	d17, d16, #7
	cmp	r5, #0
	ldr	ip, [r4, #28]
	vmov.32	r3, d17[1]
	ble	.L16
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L17:
	vshr.s32	d17, d16, #8
	cmp	r5, #0
	ldr	ip, [r4, #32]
	vmov.32	r3, d17[1]
	ble	.L18
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L19:
	vshr.s32	d17, d16, #9
	cmp	r5, #0
	ldr	ip, [r4, #36]
	vmov.32	r3, d17[1]
	ble	.L20
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L21:
	vshr.s32	d17, d16, #10
	cmp	r5, #0
	ldr	ip, [r4, #40]
	vmov.32	r3, d17[1]
	ble	.L22
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L23:
	vshr.s32	d17, d16, #11
	cmp	r5, #0
	ldr	r3, [r4, #44]
	vmov.32	ip, d17[1]
	ble	.L24
	add	r6, ip, r6
	vmov.32	ip, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, ip
	vmov.32	d16[1], r5
	add	lr, lr, r3
.L25:
	vshr.s32	d17, d16, #12
	cmp	r5, #0
	ldr	r3, [r4, #48]
	vmov.32	ip, d17[1]
	ble	.L26
	add	r6, ip, r6
	vmov.32	ip, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, ip
	vmov.32	d16[1], r5
	add	lr, lr, r3
.L27:
	vshr.s32	d17, d16, #13
	cmp	r5, #0
	ldr	ip, [r4, #52]
	vmov.32	r3, d17[1]
	ble	.L28
	add	r6, r3, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	sub	r5, r5, r3
	vmov.32	d16[1], r5
	add	lr, lr, ip
.L29:
	vshr.s32	d16, d16, #14
	cmp	r5, #0
	ldr	r7, [r4, #56]
	vmov.32	r4, d16[1]
	ble	.L30
	vmov.32	r3, d16[0]
	add	lr, lr, r7
	add	r4, r4, r6
	sub	r5, r5, r3
.L31:
	str	r4, [r0]
	str	r5, [r1]
	str	lr, [r2]
	pop	{r4, r5, r6, r7, pc}
.L2:
	sub	r3, r5, r3
	vmov.32	d16[0], r3
	mov	r5, ip
	vmov.32	d16[1], ip
	rsb	lr, lr, #0
	mov	ip, r3
	b	.L3
.L30:
	vmov.32	ip, d16[0]
	sub	lr, lr, r7
	sub	r4, r6, r4
	add	r5, ip, r5
	b	.L31
.L28:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L29
.L26:
	sub	r6, r6, ip
	vmov.32	ip, d17[0]
	vmov.32	d16[0], r6
	add	r5, ip, r5
	vmov.32	d16[1], r5
	sub	lr, lr, r3
	b	.L27
.L24:
	sub	r6, r6, ip
	vmov.32	ip, d17[0]
	vmov.32	d16[0], r6
	add	r5, ip, r5
	vmov.32	d16[1], r5
	sub	lr, lr, r3
	b	.L25
.L22:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L23
.L20:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L21
.L18:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L19
.L16:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L17
.L14:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L15
.L12:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L13
.L10:
	sub	r6, r6, r3
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, ip
	b	.L11
.L8:
	sub	r6, r6, ip
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, r7
	b	.L9
.L6:
	sub	r6, r6, ip
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, r7
	b	.L7
.L4:
	sub	r6, ip, r6
	vmov.32	r3, d17[0]
	vmov.32	d16[0], r6
	add	r5, r3, r5
	vmov.32	d16[1], r5
	sub	lr, lr, r7
	b	.L5
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
