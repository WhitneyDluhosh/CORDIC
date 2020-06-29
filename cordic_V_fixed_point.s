	.arch armv5t
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
	.fpu softvfp
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, [r1]
	ldr	r4, [r0]
	sub	sp, sp, #12
	mov	r9, r1
	mov	r10, r0
	mov	fp, r2
	ldr	r1, .L34
	mov	r2, r6
	mov	r0, #1
	bl	__printf_chk
	cmp	r6, #0
	ldr	r5, .L34+4
	mov	r3, r6
	mov	r2, #0
	add	r8, r4, r6
	ble	.L2
	ldr	r1, .L34+8
	mov	r0, #1
	bl	__printf_chk
	ldr	r3, [r5]
	sub	r7, r6, r4
	str	r3, [sp, #4]
.L3:
	mov	r2, #1
	cmp	r7, #0
	mov	r3, r7
	mov	r0, r2
	asr	r6, r7, #1
	asr	r4, r8, #1
	ble	.L4
	ldr	r1, .L34+8
	bl	__printf_chk
	ldr	r3, [r5, #4]
	ldr	r2, [sp, #4]
	sub	r4, r7, r4
	add	r8, r8, r6
	add	r7, r2, r3
.L5:
	asr	r3, r4, #2
	cmp	r4, #0
	asr	r6, r8, #2
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L6
	ldr	r1, .L34+12
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #8]
	ldr	r3, [sp, #4]
	sub	r4, r4, r6
	add	r8, r8, r3
	add	r7, r7, r2
.L7:
	asr	r3, r4, #3
	cmp	r4, #0
	asr	r6, r8, #3
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L8
	ldr	r1, .L34+16
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #12]
	ldr	r3, [sp, #4]
	sub	r4, r4, r6
	add	r8, r8, r3
	add	r6, r7, r2
.L9:
	asr	r3, r8, #4
	cmp	r4, #0
	asr	r7, r4, #4
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L10
	ldr	r1, .L34+20
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #16]
	ldr	r3, [sp, #4]
	add	r7, r8, r7
	sub	r4, r4, r3
	add	r6, r6, r2
.L11:
	asr	r3, r4, #5
	cmp	r4, #0
	asr	r8, r7, #5
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L12
	ldr	r1, .L34+24
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #20]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L13:
	asr	r3, r4, #6
	cmp	r4, #0
	asr	r8, r7, #6
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L14
	ldr	r1, .L34+28
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #24]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L15:
	asr	r3, r4, #7
	cmp	r4, #0
	asr	r8, r7, #7
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L16
	ldr	r1, .L34+32
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #28]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L17:
	asr	r3, r4, #8
	cmp	r4, #0
	asr	r8, r7, #8
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L18
	ldr	r1, .L34+36
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #32]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L19:
	asr	r3, r4, #9
	cmp	r4, #0
	asr	r8, r7, #9
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L20
	ldr	r1, .L34+40
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #36]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L21:
	asr	r3, r4, #10
	cmp	r4, #0
	asr	r8, r7, #10
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L22
	ldr	r1, .L34+44
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #40]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L23:
	asr	r3, r4, #11
	cmp	r4, #0
	asr	r8, r7, #11
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L24
	ldr	r1, .L34+48
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #44]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L25:
	asr	r3, r4, #12
	cmp	r4, #0
	asr	r8, r7, #12
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L26
	ldr	r1, .L34+52
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #48]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L27:
	asr	r3, r4, #13
	cmp	r4, #0
	asr	r8, r7, #13
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L28
	ldr	r1, .L34+56
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #52]
	ldr	r3, [sp, #4]
	sub	r4, r4, r8
	add	r7, r7, r3
	add	r6, r6, r2
.L29:
	asr	r3, r4, #14
	cmp	r4, #0
	asr	r8, r7, #14
	str	r3, [sp, #4]
	mov	r2, r4
	ble	.L30
	ldr	r1, .L34+60
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #56]
	ldr	r3, [sp, #4]
	add	r6, r6, r2
	add	r3, r7, r3
	sub	r4, r4, r8
.L31:
	str	r3, [r10]
	str	r4, [r9]
	str	r6, [fp]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L30:
	ldr	r1, .L34+64
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #56]
	ldr	r3, [sp, #4]
	sub	r6, r6, r2
	sub	r3, r7, r3
	add	r4, r4, r8
	b	.L31
.L28:
	ldr	r1, .L34+68
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #52]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L29
.L26:
	ldr	r1, .L34+72
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #48]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L27
.L24:
	ldr	r1, .L34+76
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #44]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L25
.L22:
	ldr	r1, .L34+80
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #40]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L23
.L20:
	ldr	r1, .L34+84
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #36]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L21
.L18:
	ldr	r1, .L34+88
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #32]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L19
.L16:
	ldr	r1, .L34+92
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #28]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L17
.L14:
	ldr	r1, .L34+96
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #24]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L15
.L12:
	ldr	r1, .L34+100
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #20]
	ldr	r3, [sp, #4]
	add	r4, r4, r8
	sub	r7, r7, r3
	sub	r6, r6, r2
	b	.L13
.L10:
	ldr	r1, .L34+104
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #16]
	ldr	r3, [sp, #4]
	sub	r7, r8, r7
	add	r4, r4, r3
	sub	r6, r6, r2
	b	.L11
.L8:
	ldr	r1, .L34+108
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #12]
	ldr	r3, [sp, #4]
	add	r4, r4, r6
	sub	r8, r8, r3
	sub	r6, r7, r2
	b	.L9
.L6:
	ldr	r1, .L34+112
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5, #8]
	ldr	r3, [sp, #4]
	add	r4, r4, r6
	sub	r8, r8, r3
	sub	r7, r7, r2
	b	.L7
.L4:
	ldr	r1, .L34+116
	bl	__printf_chk
	ldr	r3, [r5, #4]
	ldr	r2, [sp, #4]
	add	r4, r7, r4
	sub	r8, r8, r6
	sub	r7, r2, r3
	b	.L5
.L2:
	ldr	r1, .L34+116
	mov	r0, #1
	bl	__printf_chk
	ldr	r3, [r5]
	mov	r7, r8
	rsb	r3, r3, #0
	str	r3, [sp, #4]
	sub	r8, r4, r6
	b	.L3
.L35:
	.align	2
.L34:
	.word	.LC0
	.word	z_table
	.word	.LC1
	.word	.LC3
	.word	.LC5
	.word	.LC7
	.word	.LC9
	.word	.LC11
	.word	.LC13
	.word	.LC15
	.word	.LC17
	.word	.LC19
	.word	.LC21
	.word	.LC23
	.word	.LC25
	.word	.LC27
	.word	.LC28
	.word	.LC26
	.word	.LC24
	.word	.LC22
	.word	.LC20
	.word	.LC18
	.word	.LC16
	.word	.LC14
	.word	.LC12
	.word	.LC10
	.word	.LC8
	.word	.LC6
	.word	.LC4
	.word	.LC2
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
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
	.ascii	"4 FIRST spot, y_temp_1 = %d \012\000"
	.space	2
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
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
