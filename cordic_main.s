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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	movw	r4, #:lower16:.LANCHOR0
	movw	r0, #:lower16:.LC0
	ldr	r9, [r1]
	ldr	r10, [r6]
	movt	r4, #:upper16:.LANCHOR0
	mov	r5, r1
	movt	r0, #:upper16:.LC0
	mov	r1, r9
	ldr	r8, [r4]
	mov	r7, r2
	bl	printf
	add	r2, r10, r9
	cmp	r9, #0
	movle	r3, r2
	subgt	r3, r9, r10
	suble	r2, r10, r9
	ldr	r1, [r4, #4]
	asr	ip, r3, #1
	asr	r0, r2, #1
	rsble	r8, r8, #0
	cmp	r3, #0
	subgt	r3, r3, r0
	addle	r3, r3, r0
	addgt	r2, r2, ip
	suble	r2, r2, ip
	asr	r0, r2, #2
	asr	ip, r3, #2
	addgt	r1, r8, r1
	suble	r1, r8, r1
	cmp	r3, #0
	ldr	r8, [r4, #8]
	subgt	r3, r3, r0
	addle	r3, r3, r0
	addgt	r2, r2, ip
	suble	r2, r2, ip
	asr	r0, r2, #3
	asr	ip, r3, #3
	addgt	r1, r1, r8
	suble	r1, r1, r8
	cmp	r3, #0
	ldr	r8, [r4, #12]
	subgt	r3, r3, r0
	addle	r3, r3, r0
	addgt	r2, r2, ip
	suble	r2, r2, ip
	asr	r0, r2, #4
	asr	ip, r3, #4
	addgt	r1, r1, r8
	suble	r1, r1, r8
	cmp	r3, #0
	ldr	r8, [r4, #16]
	subgt	r3, r3, r0
	addle	r3, r3, r0
	addgt	r2, r2, ip
	suble	r2, r2, ip
	ldr	r0, [r4, #20]
	asr	lr, r3, #5
	asr	ip, r2, #5
	addgt	r1, r1, r8
	suble	r1, r1, r8
	cmp	r3, #0
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #24]
	cmp	r3, #0
	asr	lr, r3, #6
	asr	ip, r2, #6
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #28]
	cmp	r3, #0
	asr	lr, r3, #7
	asr	ip, r2, #7
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #32]
	cmp	r3, #0
	asr	lr, r3, #8
	asr	ip, r2, #8
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #36]
	cmp	r3, #0
	asr	lr, r3, #9
	asr	ip, r2, #9
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #40]
	cmp	r3, #0
	asr	lr, r3, #10
	asr	ip, r2, #10
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #44]
	cmp	r3, #0
	asr	lr, r3, #11
	asr	ip, r2, #11
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #48]
	cmp	r3, #0
	asr	lr, r3, #12
	asr	ip, r2, #12
	subgt	r3, r3, ip
	addle	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #52]
	cmp	r3, #0
	asr	lr, r3, #13
	asr	ip, r2, #13
	subgt	r3, r3, ip
	addgt	r2, r2, lr
	suble	r2, r2, lr
	addle	r3, r3, ip
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r4, #56]
	cmp	r3, #0
	asr	lr, r3, #14
	asr	ip, r2, #14
	subgt	r3, r3, ip
	addgt	r2, r2, lr
	addgt	r1, r1, r0
	suble	r2, r2, lr
	addle	r3, r3, ip
	suble	r1, r1, r0
	str	r2, [r6]
	str	r3, [r5]
	str	r1, [r7]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
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
	movw	r0, #:lower16:.LC1
	vcvt.f64.s32	d8, s15
	strd	r2, [sp, #8]
	ldr	r1, [sp]
	vmov	r2, r3, d10
	movt	r0, #:upper16:.LC1
	vmul.f64	d8, d8, d9
	ldr	r5, [sp, #56]
	ldr	r4, [sp, #60]
	bl	printf
	movw	r0, #:lower16:.LC2
	vmov	r2, r3, d8
	ldr	r1, [sp, #4]
	movt	r0, #:upper16:.LC2
	bl	printf
	vldr.32	s15, [sp, #8]	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC3
	vmul.f64	d7, d7, d9
	ldr	r1, [sp, #8]
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC3
	bl	printf
	vldr.32	s15, [sp, #12]	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC4
	vmul.f64	d7, d7, d9
	ldr	r1, [sp, #12]
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC4
	bl	printf
	vmov	s15, r5	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC5
	vmul.f64	d7, d7, d9
	mov	r1, r5
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC5
	bl	printf
	vmov	s15, r4	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC6
	vmul.f64	d7, d7, d9
	mov	r1, r4
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC6
	bl	printf
	vmul.f64	d8, d8, d8
	vmla.f64	d8, d10, d10
	vcmp.f64	d8, #0
	vmrs	APSR_nzcv, FPSCR
	vsqrt.f64	d9, d8
	bmi	.L37
.L35:
	movw	r0, #:lower16:.LC7
	vmov	r2, r3, d9
	movt	r0, #:upper16:.LC7
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
	movw	r0, #:lower16:.LC8
	push	{r4, r5, lr}
	movw	r4, #27852
	movw	r5, #24903
	sub	sp, sp, #28
	movt	r0, #:upper16:.LC8
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
	.ascii	"ORIGINAL VALUE, y_temp_1 =  %d \012\000"
	.space	3
.LC1:
	.ascii	"x_i_init = %5i\011x_d_init = %f\012\000"
	.space	2
.LC2:
	.ascii	"y_i_init = %5i\011y_d_init = %f\012\000"
	.space	2
.LC3:
	.ascii	"z_i_init = %5i\011z_d_init = %f (rad)\012\012\000"
	.space	3
.LC4:
	.ascii	"x_i_calc = %5i\011x_d_calc = %f\012\000"
	.space	2
.LC5:
	.ascii	"y_i_calc = %5i\011y_d_calc = %f\012\000"
	.space	2
.LC6:
	.ascii	"z_i_calc = %5i\011z_d_calc = %f (rad)\012\012\000"
	.space	3
.LC7:
	.ascii	"Modulus = SQRT(x_d_init^2 + y_d_init^2) = %f\012\000"
	.space	2
.LC8:
	.ascii	"Vectoring CORDIC:\012\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
