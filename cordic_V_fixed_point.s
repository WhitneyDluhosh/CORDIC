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
	movw	r4, #:lower16:z_table
	ldr	r3, [r1]
	movt	r4, #:upper16:z_table
	vpush.64	{d8}
	mov	r6, r0
	cmp	r3, #0
	mov	r5, r1
	mov	r7, r2
	ldr	r10, [r4]
	vld1.32	{d8[]}, [r0]
	vmov.32	d8[1], r3
	vrev64.32	d16, d8
	ble	.L2
	vldr	d17, .L34
	vmla.i32	d8, d16, d17
.L3:
	vmov.32	r8, d8[1]
	movw	r1, #:lower16:.LC0
	vmov.32	r9, d8[0]
	movt	r1, #:upper16:.LC0
	mov	r0, #1
	mov	r3, r8
	mov	r2, r9
	bl	__printf_chk
	cmp	r8, #0
	ldr	r3, [r4, #4]
	ble	.L4
	vmov	d16, d8  @ v2si
	lsl	r9, r9, #1
	add	r3, r10, r3
	vmov.32	d16[0], r9
	vmov.32	r2, d16[1]
	sub	r8, r2, r8
	vmov.32	d16[1], r8
.L5:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #2
	ldr	ip, [r4, #8]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L6
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L7:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #3
	ldr	ip, [r4, #12]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L8
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L9:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #4
	ldr	ip, [r4, #16]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L10
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L11:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #5
	ldr	ip, [r4, #20]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L12
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L13:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #6
	ldr	ip, [r4, #24]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L14
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L15:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #7
	ldr	ip, [r4, #28]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L16
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L17:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #8
	ldr	ip, [r4, #32]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L18
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L19:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #9
	ldr	ip, [r4, #36]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L20
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L21:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #10
	ldr	ip, [r4, #40]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L22
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L23:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #11
	ldr	ip, [r4, #44]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L24
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L25:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #12
	ldr	ip, [r4, #48]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L26
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L27:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #13
	ldr	ip, [r4, #52]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L28
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L29:
	vmov.32	r2, d16[1]
	vshr.s32	d17, d16, #14
	ldr	ip, [r4, #56]
	vmov.32	r1, d16[0]
	vmov.32	r0, d17[1]
	cmp	r2, #0
	ble	.L30
	add	r1, r0, r1
	vmov.32	r2, d17[0]
	add	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	sub	r2, r1, r2
	vmov.32	d16[1], r2
.L31:
	vldm	sp!, {d8}
	vst1.32	{d16[0]}, [r6]
	vst1.32	{d16[1]}, [r5]
	str	r3, [r7]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L30:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L31
.L28:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L29
.L26:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L27
.L24:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L25
.L22:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L23
.L35:
	.align	3
.L34:
	.word	1
	.word	-1
	.word	-1
	.word	1
.L20:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L21
.L18:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L19
.L16:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L17
.L14:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L15
.L12:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L13
.L10:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L11
.L8:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L9
.L6:
	sub	r1, r1, r0
	vmov.32	r2, d17[0]
	sub	r3, r3, ip
	vmov.32	d16[0], r1
	vmov.32	r1, d16[1]
	add	r2, r1, r2
	vmov.32	d16[1], r2
	b	.L7
.L4:
	vmov	d16, d8  @ v2si
	mov	r2, #0
	sub	r3, r10, r3
	vmov.32	d16[0], r2
	vmov.32	r2, d16[1]
	add	r8, r2, r8
	vmov.32	d16[1], r8
	b	.L5
.L2:
	vldr	d17, .L34+8
	rsb	r10, r10, #0
	vmla.i32	d8, d16, d17
	b	.L3
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"X: %d Y: %d \012\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
