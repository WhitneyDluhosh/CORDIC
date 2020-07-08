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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	movw	r0, #:lower16:.LC0
	ldr	fp, [r1]
	sub	sp, sp, #12
	ldr	r7, [r6]
	mov	r5, r1
	movt	r0, #:upper16:.LC0
	mov	r1, fp
	str	r2, [sp]
	bl	printf
	cmp	fp, #0
	add	r9, r7, fp
	ble	.L2
	movw	r0, #:lower16:.LC1
	movw	r8, #:lower16:.LANCHOR0
	mov	r2, fp
	movt	r0, #:upper16:.LC1
	movt	r8, #:upper16:.LANCHOR0
	mov	r1, #0
	bl	printf
	ldr	r10, [r8]
	sub	r4, fp, r7
.L3:
	asr	r3, r4, #1
	cmp	r4, #0
	asr	fp, r9, #1
	str	r3, [sp, #4]
	ble	.L4
	movw	r0, #:lower16:.LC1
	mov	r2, r4
	movt	r0, #:upper16:.LC1
	mov	r1, #1
	bl	printf
	ldr	r2, [r8, #4]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L5:
	asr	r3, r4, #2
	cmp	r4, #0
	asr	fp, r9, #2
	str	r3, [sp, #4]
	ble	.L6
	movw	r0, #:lower16:.LC3
	mov	r1, r4
	movt	r0, #:upper16:.LC3
	bl	printf
	ldr	r2, [r8, #8]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L7:
	asr	r3, r4, #3
	cmp	r4, #0
	asr	fp, r9, #3
	str	r3, [sp, #4]
	ble	.L8
	movw	r0, #:lower16:.LC5
	mov	r1, r4
	movt	r0, #:upper16:.LC5
	bl	printf
	ldr	r2, [r8, #12]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L9:
	asr	r3, r4, #4
	cmp	r4, #0
	asr	fp, r9, #4
	str	r3, [sp, #4]
	ble	.L10
	movw	r0, #:lower16:.LC7
	mov	r1, r4
	movt	r0, #:upper16:.LC7
	bl	printf
	ldr	r2, [r8, #16]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L11:
	asr	r3, r4, #5
	cmp	r4, #0
	asr	fp, r9, #5
	str	r3, [sp, #4]
	ble	.L12
	movw	r0, #:lower16:.LC9
	mov	r1, r4
	movt	r0, #:upper16:.LC9
	bl	printf
	ldr	r2, [r8, #20]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L13:
	asr	r3, r4, #6
	cmp	r4, #0
	asr	fp, r9, #6
	str	r3, [sp, #4]
	ble	.L14
	movw	r0, #:lower16:.LC11
	mov	r1, r4
	movt	r0, #:upper16:.LC11
	bl	printf
	ldr	r2, [r8, #24]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L15:
	asr	r3, r4, #7
	cmp	r4, #0
	asr	fp, r9, #7
	str	r3, [sp, #4]
	ble	.L16
	movw	r0, #:lower16:.LC13
	mov	r1, r4
	movt	r0, #:upper16:.LC13
	bl	printf
	ldr	r2, [r8, #28]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L17:
	asr	r3, r4, #8
	cmp	r4, #0
	asr	fp, r9, #8
	str	r3, [sp, #4]
	ble	.L18
	movw	r0, #:lower16:.LC15
	mov	r1, r4
	movt	r0, #:upper16:.LC15
	bl	printf
	ldr	r2, [r8, #32]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L19:
	asr	r3, r4, #9
	cmp	r4, #0
	asr	fp, r9, #9
	str	r3, [sp, #4]
	ble	.L20
	movw	r0, #:lower16:.LC17
	mov	r1, r4
	movt	r0, #:upper16:.LC17
	bl	printf
	ldr	r2, [r8, #36]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L21:
	asr	r3, r4, #10
	cmp	r4, #0
	asr	fp, r9, #10
	str	r3, [sp, #4]
	ble	.L22
	movw	r0, #:lower16:.LC19
	mov	r1, r4
	movt	r0, #:upper16:.LC19
	bl	printf
	ldr	r2, [r8, #40]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L23:
	asr	r3, r4, #11
	cmp	r4, #0
	asr	fp, r9, #11
	str	r3, [sp, #4]
	ble	.L24
	movw	r0, #:lower16:.LC21
	mov	r1, r4
	movt	r0, #:upper16:.LC21
	bl	printf
	ldr	r2, [r8, #44]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L25:
	asr	r3, r4, #12
	cmp	r4, #0
	asr	fp, r9, #12
	str	r3, [sp, #4]
	ble	.L26
	movw	r0, #:lower16:.LC23
	mov	r1, r4
	movt	r0, #:upper16:.LC23
	bl	printf
	ldr	r2, [r8, #48]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L27:
	asr	r3, r4, #13
	cmp	r4, #0
	asr	fp, r9, #13
	str	r3, [sp, #4]
	ble	.L28
	movw	r0, #:lower16:.LC25
	mov	r1, r4
	movt	r0, #:upper16:.LC25
	bl	printf
	ldr	r2, [r8, #52]
	ldr	r3, [sp, #4]
	sub	r4, r4, fp
	add	r9, r9, r3
	add	r10, r10, r2
.L29:
	asr	r3, r4, #14
	cmp	r4, #0
	asr	fp, r9, #14
	str	r3, [sp, #4]
	ble	.L30
	movw	r0, #:lower16:.LC27
	mov	r1, r4
	movt	r0, #:upper16:.LC27
	bl	printf
	ldr	r2, [r8, #56]
	ldr	r3, [sp, #4]
	add	r10, r10, r2
	add	r9, r9, r3
	sub	r4, r4, fp
.L31:
	ldr	r3, [sp]
	str	r9, [r6]
	str	r4, [r5]
	str	r10, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2:
	movw	r0, #:lower16:.LC2
	movw	r8, #:lower16:.LANCHOR0
	mov	r2, fp
	movt	r0, #:upper16:.LC2
	movt	r8, #:upper16:.LANCHOR0
	mov	r1, #0
	bl	printf
	ldr	r10, [r8]
	mov	r4, r9
	rsb	r10, r10, #0
	sub	r9, r7, fp
	b	.L3
.L30:
	movw	r0, #:lower16:.LC28
	mov	r1, r4
	movt	r0, #:upper16:.LC28
	bl	printf
	ldr	r2, [r8, #56]
	ldr	r3, [sp, #4]
	sub	r10, r10, r2
	sub	r9, r9, r3
	add	r4, r4, fp
	b	.L31
.L28:
	movw	r0, #:lower16:.LC26
	mov	r1, r4
	movt	r0, #:upper16:.LC26
	bl	printf
	ldr	r2, [r8, #52]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L29
.L26:
	movw	r0, #:lower16:.LC24
	mov	r1, r4
	movt	r0, #:upper16:.LC24
	bl	printf
	ldr	r2, [r8, #48]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L27
.L24:
	movw	r0, #:lower16:.LC22
	mov	r1, r4
	movt	r0, #:upper16:.LC22
	bl	printf
	ldr	r2, [r8, #44]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L25
.L22:
	movw	r0, #:lower16:.LC20
	mov	r1, r4
	movt	r0, #:upper16:.LC20
	bl	printf
	ldr	r2, [r8, #40]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L23
.L20:
	movw	r0, #:lower16:.LC18
	mov	r1, r4
	movt	r0, #:upper16:.LC18
	bl	printf
	ldr	r2, [r8, #36]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L21
.L18:
	movw	r0, #:lower16:.LC16
	mov	r1, r4
	movt	r0, #:upper16:.LC16
	bl	printf
	ldr	r2, [r8, #32]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L19
.L16:
	movw	r0, #:lower16:.LC14
	mov	r1, r4
	movt	r0, #:upper16:.LC14
	bl	printf
	ldr	r2, [r8, #28]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L17
.L14:
	movw	r0, #:lower16:.LC12
	mov	r1, r4
	movt	r0, #:upper16:.LC12
	bl	printf
	ldr	r2, [r8, #24]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L15
.L12:
	movw	r0, #:lower16:.LC10
	mov	r1, r4
	movt	r0, #:upper16:.LC10
	bl	printf
	ldr	r2, [r8, #20]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L13
.L10:
	movw	r0, #:lower16:.LC8
	mov	r1, r4
	movt	r0, #:upper16:.LC8
	bl	printf
	ldr	r2, [r8, #16]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L11
.L8:
	movw	r0, #:lower16:.LC6
	mov	r1, r4
	movt	r0, #:upper16:.LC6
	bl	printf
	ldr	r2, [r8, #12]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L9
.L6:
	movw	r0, #:lower16:.LC4
	mov	r1, r4
	movt	r0, #:upper16:.LC4
	bl	printf
	ldr	r2, [r8, #8]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L7
.L4:
	movw	r0, #:lower16:.LC2
	mov	r2, r4
	movt	r0, #:upper16:.LC2
	mov	r1, #1
	bl	printf
	ldr	r2, [r8, #4]
	ldr	r3, [sp, #4]
	add	r4, r4, fp
	sub	r9, r9, r3
	sub	r10, r10, r2
	b	.L5
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
	movw	r0, #:lower16:.LC29
	vcvt.f64.s32	d8, s15
	strd	r2, [sp, #8]
	ldr	r1, [sp]
	vmov	r2, r3, d10
	movt	r0, #:upper16:.LC29
	vmul.f64	d8, d8, d9
	ldr	r5, [sp, #56]
	ldr	r4, [sp, #60]
	bl	printf
	movw	r0, #:lower16:.LC30
	vmov	r2, r3, d8
	ldr	r1, [sp, #4]
	movt	r0, #:upper16:.LC30
	bl	printf
	vldr.32	s15, [sp, #8]	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC31
	vmul.f64	d7, d7, d9
	ldr	r1, [sp, #8]
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC31
	bl	printf
	vldr.32	s15, [sp, #12]	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC32
	vmul.f64	d7, d7, d9
	ldr	r1, [sp, #12]
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC32
	bl	printf
	vmov	s15, r5	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC33
	vmul.f64	d7, d7, d9
	mov	r1, r5
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC33
	bl	printf
	vmov	s15, r4	@ int
	vcvt.f64.s32	d7, s15
	movw	r0, #:lower16:.LC34
	vmul.f64	d7, d7, d9
	mov	r1, r4
	vmov	r2, r3, d7
	movt	r0, #:upper16:.LC34
	bl	printf
	vmul.f64	d8, d8, d8
	vmla.f64	d8, d10, d10
	vcmp.f64	d8, #0
	vmrs	APSR_nzcv, FPSCR
	vsqrt.f64	d9, d8
	bmi	.L37
.L35:
	movw	r0, #:lower16:.LC35
	vmov	r2, r3, d9
	movt	r0, #:upper16:.LC35
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
	movw	r0, #:lower16:.LC36
	push	{r4, r5, lr}
	movw	r4, #27852
	movw	r5, #24903
	sub	sp, sp, #28
	movt	r0, #:upper16:.LC36
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
	.ascii	"%d: FIRST spot, y_temp_1 = %d \012\000"
.LC2:
	.ascii	"%d: SECOND spot, y_temp_1 = %d \012\000"
	.space	3
.LC3:
	.ascii	"2: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC4:
	.ascii	"2: SECOND spot, y_temp_1 = %d \012\000"
.LC5:
	.ascii	"3: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC6:
	.ascii	"3 SECOND spot, y_temp_1 = %d \012\000"
	.space	1
.LC7:
	.ascii	"4: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC8:
	.ascii	"4: SECOND spot, y_temp_1 = %d \012\000"
.LC9:
	.ascii	"5: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC10:
	.ascii	"5: SECOND spot, y_temp_1 = %d \012\000"
.LC11:
	.ascii	"6: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC12:
	.ascii	"6: SECOND spot, y_temp_1 = %d \012\000"
.LC13:
	.ascii	"7: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC14:
	.ascii	"7: SECOND spot, y_temp_1 = %d \012\000"
.LC15:
	.ascii	"8: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC16:
	.ascii	"8: SECOND spot, y_temp_1 = %d \012\000"
.LC17:
	.ascii	"9: FIRST spot, y_temp_1 = %d \012\000"
	.space	1
.LC18:
	.ascii	"9: SECOND spot, y_temp_1 = %d \012\000"
.LC19:
	.ascii	"10: FIRST spot, y_temp_1 = %d \012\000"
.LC20:
	.ascii	"10: SECOND spot, y_temp_1 = %d \012\000"
	.space	3
.LC21:
	.ascii	"11: FIRST spot, y_temp_1 = %d \012\000"
.LC22:
	.ascii	"11: SECOND spot, y_temp_1 = %d \012\000"
	.space	3
.LC23:
	.ascii	"12: FIRST spot, y_temp_1 = %d \012\000"
.LC24:
	.ascii	"12: SECOND spot, y_temp_1 = %d \012\000"
	.space	3
.LC25:
	.ascii	"13: FIRST spot, y_temp_1 = %d \012\000"
.LC26:
	.ascii	"13: SECOND spot, y_temp_1 = %d \012\000"
	.space	3
.LC27:
	.ascii	"14: FIRST spot, y_temp_1 = %d \012\000"
.LC28:
	.ascii	"14: SECOND spot, y_temp_1 = %d \012\000"
	.space	3
.LC29:
	.ascii	"x_i_init = %5i\011x_d_init = %f\012\000"
	.space	2
.LC30:
	.ascii	"y_i_init = %5i\011y_d_init = %f\012\000"
	.space	2
.LC31:
	.ascii	"z_i_init = %5i\011z_d_init = %f (rad)\012\012\000"
	.space	3
.LC32:
	.ascii	"x_i_calc = %5i\011x_d_calc = %f\012\000"
	.space	2
.LC33:
	.ascii	"y_i_calc = %5i\011y_d_calc = %f\012\000"
	.space	2
.LC34:
	.ascii	"z_i_calc = %5i\011z_d_calc = %f (rad)\012\012\000"
	.space	3
.LC35:
	.ascii	"Modulus = SQRT(x_d_init^2 + y_d_init^2) = %f\012\000"
	.space	2
.LC36:
	.ascii	"Vectoring CORDIC:\012\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
