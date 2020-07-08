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
	.fpu vfpv3-d16
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:.LANCHOR0
	push	{r4, r5, r6, r7, lr}
	ldr	r5, [r1]
	ldr	r3, [r0]
	movt	ip, #:upper16:.LANCHOR0
	ldr	r4, [ip]
	cmp	r5, #0
	addgt	lr, r3, r5
	suble	lr, r3, r5
	subgt	r3, r5, r3
	addle	r3, r3, r5
	asr	r7, r3, #1
	asr	r6, lr, #1
	rsble	r4, r4, #0
	ldr	r5, [ip, #4]
	cmp	r3, #0
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #2
	asr	r7, r3, #2
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #8]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #3
	asr	r7, r3, #3
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #12]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #4
	asr	r7, r3, #4
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #16]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #5
	asr	r7, r3, #5
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #20]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #6
	asr	r7, r3, #6
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #24]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #7
	asr	r7, r3, #7
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #28]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #8
	asr	r7, r3, #8
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #32]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #9
	asr	r7, r3, #9
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #36]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #10
	asr	r7, r3, #10
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #40]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #11
	asr	r7, r3, #11
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #44]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #12
	asr	r7, r3, #12
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #48]
	subgt	r3, r3, r6
	addle	r3, r3, r6
	addgt	lr, lr, r7
	suble	lr, lr, r7
	asr	r6, lr, #13
	asr	r7, r3, #13
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #52]
	addgt	lr, lr, r7
	ldr	ip, [ip, #56]
	subgt	r3, r3, r6
	suble	lr, lr, r7
	addle	r3, r3, r6
	asr	r6, r3, #14
	addgt	r4, r4, r5
	suble	r4, r4, r5
	cmp	r3, #0
	asr	r5, lr, #14
	subgt	r3, r3, r5
	addgt	lr, r6, lr
	addgt	ip, ip, r4
	suble	lr, lr, r6
	addle	r3, r5, r3
	suble	ip, r4, ip
	str	lr, [r0]
	str	r3, [r1]
	str	ip, [r2]
	pop	{r4, r5, r6, r7, pc}
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.align	2
	.global	verify
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	verify, %function
verify:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	vmov	s15, r0	@ int
	push	{r4, r5, lr}
	vpush.64	{d8, d9, d10}
	vldr.64	d9, .L38
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
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC2
	vmul.f64	d7, d7, d9
	ldr	r1, [sp, #8]
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC2
	bl	printf
	vldr.32	s15, [sp, #12]	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC3
	vmul.f64	d7, d7, d9
	ldr	r1, [sp, #12]
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC3
	bl	printf
	vmov	s15, r5	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC4
	vmul.f64	d7, d7, d9
	mov	r1, r5
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC4
	bl	printf
	vmov	s15, r4	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC5
	vmul.f64	d7, d7, d9
	mov	r1, r4
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC5
	bl	printf
	vmul.f64	d8, d8, d8
	vmla.f64	d8, d10, d10
	vcmp.f64	d8, #0
	vmrs	APSR_nzcv, FPSCR
	vsqrt.f64	d9, d8
	bmi	.L37
.L35:
	movw	r0, #:lower16:.LC6
	vmov	r2, r3, d9
	movt	r0, #:upper16:.LC6
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8-d10}
	pop	{r4, r5, lr}
	b	printf
.L37:
	vmov.f64	d0, d8
	bl	sqrt
	b	.L35
.L39:
	.align	3
.L38:
	.word	0
	.word	1056964608
	.size	verify, .-verify
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
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
	.align	2
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
