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
	.file	"cordic_main.c"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vpush.64	{d8, d9, d10, d11, d12}
	ldr	ip, [r0]
	ldr	r3, [r1]
	sub	sp, sp, #8
	str	ip, [sp]
	str	r3, [sp, #4]
	vldr	d19, [sp]
	vldr	d17, .L4
	vldr	d18, .L4+8
	vrev64.32	d20, d19
	vcgt.s32	d6, d19, #0
	vmul.i32	d16, d20, d17
	vdup.32	d6, d6[1]
	vmul.i32	d20, d20, d18
	vbif	d16, d20, d6
	vadd.i32	d16, d19, d16
	vshr.s32	d20, d16, #1
	vcgt.s32	d5, d16, #0
	vrev64.32	d20, d20
	vdup.32	d5, d5[1]
	vmul.i32	d19, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d19, d20, d5
	vadd.i32	d19, d19, d16
	vshr.s32	d20, d19, #2
	vcgt.s32	d7, d19, #0
	vrev64.32	d20, d20
	vdup.32	d7, d7[1]
	vmul.i32	d16, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d16, d20, d7
	vadd.i32	d19, d16, d19
	vshr.s32	d21, d19, #3
	vcgt.s32	d31, d19, #0
	vrev64.32	d21, d21
	vdup.32	d31, d31[1]
	vmul.i32	d16, d21, d17
	vmul.i32	d21, d21, d18
	vbif	d16, d21, d31
	vadd.i32	d16, d16, d19
	vshr.s32	d20, d16, #4
	vcgt.s32	d30, d16, #0
	vrev64.32	d20, d20
	vdup.32	d30, d30[1]
	vmul.i32	d19, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d19, d20, d30
	vadd.i32	d16, d19, d16
	vshr.s32	d20, d16, #5
	vcgt.s32	d29, d16, #0
	vrev64.32	d20, d20
	vdup.32	d29, d29[1]
	vmul.i32	d19, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d19, d20, d29
	vadd.i32	d19, d19, d16
	vshr.s32	d20, d19, #6
	vcgt.s32	d28, d19, #0
	vrev64.32	d20, d20
	vdup.32	d28, d28[1]
	vmul.i32	d16, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d16, d20, d28
	vadd.i32	d19, d16, d19
	vshr.s32	d20, d19, #7
	vcgt.s32	d27, d19, #0
	vrev64.32	d20, d20
	vdup.32	d27, d27[1]
	vmul.i32	d16, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d16, d20, d27
	vadd.i32	d16, d16, d19
	vshr.s32	d20, d16, #8
	vcgt.s32	d26, d16, #0
	vrev64.32	d20, d20
	vdup.32	d26, d26[1]
	vmul.i32	d19, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d19, d20, d26
	vadd.i32	d16, d19, d16
	vshr.s32	d20, d16, #9
	vcgt.s32	d25, d16, #0
	vrev64.32	d20, d20
	vdup.32	d25, d25[1]
	vmul.i32	d19, d20, d17
	vmul.i32	d20, d20, d18
	vbif	d19, d20, d25
	vadd.i32	d19, d19, d16
	vshr.s32	d16, d19, #10
	vcgt.s32	d24, d19, #0
	vrev64.32	d16, d16
	vdup.32	d24, d24[1]
	vmul.i32	d20, d16, d17
	vmul.i32	d16, d16, d18
	vbit	d16, d20, d24
	movw	r3, #:lower16:.LANCHOR0
	vadd.i32	d19, d19, d16
	vmov.i32	d16, #0  @ v2si
	movt	r3, #:upper16:.LANCHOR0
	vld1.32	{d16[0]}, [r3]
	vshr.s32	d20, d19, #11
	vcgt.s32	d23, d19, #0
	vrev64.32	d20, d20
	vmov	d22, d16  @ v2si
	add	ip, r3, #4
	vld1.32	{d22[0]}, [ip]
	vmul.i32	d21, d20, d17
	vdup.32	d23, d23[1]
	vmul.i32	d20, d20, d18
	vbit	d20, d21, d23
	vmov	d21, d22  @ v2si
	add	ip, r3, #8
	vld1.32	{d21[0]}, [ip]
	vadd.i32	d19, d19, d20
	vmov	d20, d21  @ v2si
	add	ip, r3, #12
	vld1.32	{d20[0]}, [ip]
	vmov	d1, d20  @ v2si
	add	ip, r3, #16
	vld1.32	{d1[0]}, [ip]
	vmov	d10, d1  @ v2si
	add	ip, r3, #20
	vld1.32	{d10[0]}, [ip]
	vmul.i32	d3, d22, d17
	vmul.i32	d4, d16, d17
	vmul.i32	d22, d22, d18
	vmul.i32	d16, d16, d18
	vbit	d22, d3, d5
	vbit	d16, d4, d6
	vmov	d12, d10  @ v2si
	vmul.i32	d6, d21, d17
	vmul.i32	d21, d21, d18
	add	ip, r3, #24
	vld1.32	{d12[0]}, [ip]
	vbit	d21, d6, d7
	vadd.i32	d16, d22, d16
	vadd.i32	d16, d16, d21
	vmov	d21, d12  @ v2si
	add	ip, r3, #28
	vld1.32	{d21[0]}, [ip]
	vshr.s32	d2, d19, #12
	vmul.i32	d8, d20, d17
	vrev64.32	d2, d2
	vcgt.s32	d0, d19, #0
	vmul.i32	d20, d20, d18
	vmov	d6, d21  @ v2si
	add	ip, r3, #32
	vld1.32	{d6[0]}, [ip]
	vmul.i32	d9, d2, d17
	vmul.i32	d11, d1, d17
	vbit	d20, d8, d31
	vmul.i32	d2, d2, d18
	vdup.32	d0, d0[1]
	vmul.i32	d1, d1, d18
	vbit	d2, d9, d0
	vbit	d1, d11, d30
	vmul.i32	d9, d10, d17
	vadd.i32	d16, d16, d20
	vmul.i32	d10, d10, d18
	vmov	d30, d6  @ v2si
	add	ip, r3, #36
	vld1.32	{d30[0]}, [ip]
	vadd.i32	d19, d19, d2
	vmul.i32	d20, d12, d17
	vbit	d10, d9, d29
	vadd.i32	d1, d16, d1
	vmul.i32	d12, d12, d18
	vmul.i32	d7, d21, d17
	vbit	d12, d20, d28
	vmul.i32	d21, d21, d18
	vshr.s32	d16, d19, #13
	vadd.i32	d28, d1, d10
	vmov	d22, d30  @ v2si
	add	ip, r3, #40
	vld1.32	{d22[0]}, [ip]
	vbsl	d27, d7, d21
	vmul.i32	d31, d6, d17
	vadd.i32	d28, d28, d12
	vmul.i32	d6, d6, d18
	vrev64.32	d16, d16
	vcgt.s32	d20, d19, #0
	vmul.i32	d9, d16, d17
	vdup.32	d20, d20[1]
	vbif	d31, d6, d26
	vmul.i32	d16, d16, d18
	vadd.i32	d26, d28, d27
	vmov	d27, d22  @ v2si
	add	ip, r3, #44
	vld1.32	{d27[0]}, [ip]
	vbit	d16, d9, d20
	vadd.i32	d19, d19, d16
	vmov	d16, d27  @ v2si
	add	ip, r3, #48
	vld1.32	{d16[0]}, [ip]
	vmul.i32	d29, d30, d17
	vmul.i32	d28, d22, d17
	vmul.i32	d30, d30, d18
	vmul.i32	d22, d22, d18
	vbsl	d25, d29, d30
	vadd.i32	d26, d26, d31
	vbsl	d24, d28, d22
	vmov	d22, d16  @ v2si
	add	ip, r3, #52
	vld1.32	{d22[0]}, [ip]
	vmul.i32	d29, d27, d17
	vadd.i32	d25, d26, d25
	vmul.i32	d27, d27, d18
	vmul.i32	d28, d16, d17
	vmul.i32	d26, d16, d18
	vbsl	d23, d29, d27
	vadd.i32	d24, d25, d24
	vshr.s32	d21, d19, #14
	vmov	d25, d22  @ v2si
	add	r3, r3, #56
	vld1.32	{d25[0]}, [r3]
	vmul.i32	d27, d22, d17
	vadd.i32	d23, d24, d23
	vrev64.32	d21, d21
	vcgt.s32	d16, d19, #0
	vmul.i32	d22, d22, d18
	vbsl	d0, d28, d26
	vmul.i32	d24, d21, d17
	vdup.32	d16, d16[1]
	vmul.i32	d17, d25, d17
	vmul.i32	d21, d21, d18
	vbit	d22, d27, d20
	vmul.i32	d18, d25, d18
	vadd.i32	d0, d23, d0
	vbit	d21, d24, d16
	vbsl	d16, d17, d18
	vadd.i32	d17, d0, d22
	vadd.i32	d19, d19, d21
	vadd.i32	d17, d17, d16
	vst1.32	{d19[0]}, [r0]
	vst1.32	{d19[1]}, [r1]
	vst1.32	{d17[0]}, [r2]
	add	sp, sp, #8
	@ sp needed
	vldm	sp!, {d8-d12}
	bx	lr
.L5:
	.align	3
.L4:
	.word	1
	.word	-1
	.word	-1
	.word	1
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.align	2
	.global	verify
	.syntax unified
	.arm
	.fpu neon
	.type	verify, %function
verify:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	vmov	s15, r0	@ int
	push	{r4, r5, lr}
	vpush.64	{d8, d9, d10}
	vldr.64	d9, .L10
	vcvt.f64.s32	d10, s15
	vmov	s15, r1	@ int
	sub	sp, sp, #20
	strd	r0, [sp]
	vmul.f64	d10, d10, d9
	movw	r0, #:lower16:.LC0
	vcvt.f64.s32	d8, s15
	strd	r2, [sp, #8]
	ldr	r1, [sp]
	vmov	r2, r3, d10
	movt	r0, #:upper16:.LC0
	vmul.f64	d8, d8, d9
	ldr	r5, [sp, #56]
	ldr	r4, [sp, #60]
	bl	printf
	movw	r0, #:lower16:.LC1
	vmov	r2, r3, d8
	ldr	r1, [sp, #4]
	movt	r0, #:upper16:.LC1
	bl	printf
	vldr.32	s15, [sp, #8]	@ int
	vcvt.f64.s32	d16, s15
	movw	r0, #:lower16:.LC2
	vmul.f64	d16, d16, d9
	vmov	r1, s15	@ int
	vmov	r2, r3, d16
	movt	r0, #:upper16:.LC2
	bl	printf
	vldr.32	s15, [sp, #12]	@ int
	vcvt.f64.s32	d16, s15
	movw	r0, #:lower16:.LC3
	vmul.f64	d16, d16, d9
	vmov	r1, s15	@ int
	vmov	r2, r3, d16
	movt	r0, #:upper16:.LC3
	bl	printf
	vmov	s15, r5	@ int
	vcvt.f64.s32	d16, s15
	movw	r0, #:lower16:.LC4
	vmul.f64	d16, d16, d9
	mov	r1, r5
	vmov	r2, r3, d16
	movt	r0, #:upper16:.LC4
	bl	printf
	vmov	s15, r4	@ int
	vcvt.f64.s32	d16, s15
	movw	r0, #:lower16:.LC5
	vmul.f64	d16, d16, d9
	mov	r1, r4
	vmov	r2, r3, d16
	movt	r0, #:upper16:.LC5
	bl	printf
	vmul.f64	d8, d8, d8
	vmla.f64	d8, d10, d10
	vcmp.f64	d8, #0
	vmrs	APSR_nzcv, FPSCR
	vsqrt.f64	d9, d8
	bmi	.L9
.L7:
	movw	r0, #:lower16:.LC6
	vmov	r2, r3, d9
	movt	r0, #:upper16:.LC6
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8-d10}
	pop	{r4, r5, lr}
	b	printf
.L9:
	vmov.f64	d0, d8
	bl	sqrt
	b	.L7
.L11:
	.align	3
.L10:
	.word	0
	.word	1056964608
	.size	verify, .-verify
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu neon
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r0, #:lower16:.LC7
	push	{r4, r5, lr}
	movw	r4, #27852
	movw	r5, #24903
	sub	sp, sp, #28
	movt	r0, #:upper16:.LC7
	strd	r4, [sp, #12]
	bl	puts
	add	r2, sp, #20
	add	r1, sp, #16
	add	r0, sp, #12
	bl	cordic_V_fixed_point
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, r5
	mov	r0, r4
	ldr	r3, [sp, #12]
	movw	r2, #23906
	bl	verify
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
	.size	main, .-main
	.global	z_table
	.data
	.align	3
	.set	.LANCHOR0,. + 0
	.type	z_table, %object
	.size	z_table, 60
z_table:
	.word	25735
	.word	15192
	.word	8027
	.word	4074
	.word	2045
	.word	1023
	.word	511
	.word	255
	.word	127
	.word	63
	.word	31
	.word	15
	.word	7
	.word	3
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"x_i_init = %5i\011x_d_init = %f\012\000"
	.space	2
.LC1:
	.ascii	"y_i_init = %5i\011y_d_init = %f\012\000"
	.space	2
.LC2:
	.ascii	"z_i_init = %5i\011z_d_init = %f (rad)\012\012\000"
	.space	3
.LC3:
	.ascii	"x_i_calc = %5i\011x_d_calc = %f\012\000"
	.space	2
.LC4:
	.ascii	"y_i_calc = %5i\011y_d_calc = %f\012\000"
	.space	2
.LC5:
	.ascii	"z_i_calc = %5i\011z_d_calc = %f (rad)\012\012\000"
	.space	3
.LC6:
	.ascii	"Modulus = SQRT(x_d_init^2 + y_d_init^2) = %f\012\000"
	.space	2
.LC7:
	.ascii	"Vectoring CORDIC:\012\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
