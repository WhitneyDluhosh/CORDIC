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
	.fpu vfpv3-d16
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	movw	r4, #:lower16:z_table
	movw	r0, #:lower16:.LC0
	ldr	r9, [r1]
	ldr	r10, [r6]
	movt	r4, #:upper16:z_table
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
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"ORIGINAL VALUE, y_temp_1 =  %d \012\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
