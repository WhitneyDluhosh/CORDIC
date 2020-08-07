	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"cordic_V_fixed_point.c"
	.text
	.comm	z_table,60,4
	.align	2
	.global	cordic_V_fixed_point
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L2
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L3
.L2:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L3:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L4
	ldr	r3, [fp, #-24]
	asr	r3, r3, #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #1
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L5
.L4:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #1
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L5:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L6
	ldr	r3, [fp, #-24]
	asr	r3, r3, #2
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #2
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L7
.L6:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #2
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L8
	ldr	r3, [fp, #-24]
	asr	r3, r3, #3
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #3
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L9
.L8:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #3
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #3
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L9:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L10
	ldr	r3, [fp, #-24]
	asr	r3, r3, #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #4
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L11
.L10:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #4
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #4
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L11:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L12
	ldr	r3, [fp, #-24]
	asr	r3, r3, #5
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #5
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L13
.L12:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #5
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #5
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L13:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L14
	ldr	r3, [fp, #-24]
	asr	r3, r3, #6
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #6
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L15
.L14:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #6
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #6
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L15:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L16
	ldr	r3, [fp, #-24]
	asr	r3, r3, #7
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #7
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L17
.L16:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #7
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #7
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L17:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L18
	ldr	r3, [fp, #-24]
	asr	r3, r3, #8
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #8
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L19
.L18:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #8
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #8
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L19:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L20
	ldr	r3, [fp, #-24]
	asr	r3, r3, #9
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #9
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L21
.L20:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #9
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #9
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L21:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L22
	ldr	r3, [fp, #-24]
	asr	r3, r3, #10
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #10
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #40]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L23
.L22:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #10
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #10
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #40]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L23:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L24
	ldr	r3, [fp, #-24]
	asr	r3, r3, #11
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #11
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #44]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L25
.L24:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #11
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #11
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #44]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L25:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L26
	ldr	r3, [fp, #-24]
	asr	r3, r3, #12
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #12
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #48]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L27
.L26:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #12
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #12
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #48]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L27:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L28
	ldr	r3, [fp, #-24]
	asr	r3, r3, #13
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #13
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #52]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L29
.L28:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #13
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #13
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #52]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L29:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L30
	ldr	r3, [fp, #-24]
	asr	r3, r3, #14
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #14
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #56]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L31
.L30:
	ldr	r3, [fp, #-24]
	asr	r3, r3, #14
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #14
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3, #56]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
.L31:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-24]
	str	r2, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
