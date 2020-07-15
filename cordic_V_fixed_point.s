	.arch armv5t
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"cordic_V_fixed_point.c"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.syntax unified
	.arm
	.fpu neon
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, [r1]
	ldr	r8, [r0]
	sub	sp, sp, #8
	mov	r3, r7
	mov	r5, r0
	mov	r4, r1
	mov	r6, r2
	str	r7, [sp, #4]
	mov	r2, r8
	str	r8, [sp]
	ldr	r1, .L34
	mov	r0, #1
	bl	__printf_chk
	add	r1, r8, r7
	cmp	r7, #0
	movle	r3, r1
	ldr	r2, .L34+4
	subgt	r3, r7, r8
	ldr	r0, [r2]
	suble	r1, r8, r7
	asr	lr, r1, #1
	asr	r7, r3, #1
	rsble	r0, r0, #0
	ldr	ip, [r2, #4]
	cmp	r3, #0
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #2
	asr	r7, r3, #2
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #8]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #3
	asr	r7, r3, #3
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #12]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #4
	asr	r7, r3, #4
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #16]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #5
	asr	r7, r3, #5
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #20]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #6
	asr	r7, r3, #6
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #24]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #7
	asr	r7, r3, #7
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #28]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #8
	asr	r7, r3, #8
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #32]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #9
	asr	r7, r3, #9
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #36]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #10
	asr	r7, r3, #10
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #40]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #11
	asr	r7, r3, #11
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #44]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #12
	asr	r7, r3, #12
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #48]
	subgt	r3, r3, lr
	addle	r3, r3, lr
	addgt	r1, r1, r7
	suble	r1, r1, r7
	asr	lr, r1, #13
	asr	r7, r3, #13
	addgt	r0, r0, ip
	suble	r0, r0, ip
	cmp	r3, #0
	ldr	ip, [r2, #52]
	addgt	r1, r1, r7
	ldr	r2, [r2, #56]
	subgt	r3, r3, lr
	suble	r1, r1, r7
	addle	r3, r3, lr
	addgt	r0, r0, ip
	suble	r0, r0, ip
	asr	lr, r3, #14
	cmp	r3, #0
	asr	ip, r1, #14
	subgt	r3, r3, ip
	addgt	r1, r1, lr
	addgt	r0, r0, r2
	suble	r1, r1, lr
	addle	r3, r3, ip
	suble	r0, r0, r2
	str	r1, [r5]
	str	r3, [r4]
	str	r0, [r6]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L35:
	.align	2
.L34:
	.word	.LC0
	.word	z_table
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"new XY: %d  and shifted XY: %d original X: %d origi"
	.ascii	"nal Y: %d\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
