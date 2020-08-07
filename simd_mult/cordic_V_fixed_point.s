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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"X: %d Y: %d \012\000"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 1240
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #1232
	sub	sp, sp, #8
	str	r0, [fp, #-1240]
	str	r1, [fp, #-1244]
	str	r2, [fp, #-1248]
	vldr	d16, .L121
	vstr	d16, [fp, #-20]
	vldr	d16, .L121+8
	vstr	d16, [fp, #-28]
	ldr	r3, [fp, #-1240]
	ldr	r2, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	str	r2, [r3]
	ldr	r3, [fp, #-1244]
	ldr	r2, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	str	r2, [r3, #4]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-36]
	mov	r4, #0
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-44]
	vldr	d16, [fp, #-44]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L3
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-68]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-76]
	vldr	d18, [fp, #-68]
	vldr	d17, [fp, #-76]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-52]
	vstr	d17, [fp, #-60]
	vldr	d17, [fp, #-52]
	vldr	d16, [fp, #-60]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L6
.L3:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-100]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-108]
	vldr	d18, [fp, #-100]
	vldr	d17, [fp, #-108]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-84]
	vstr	d17, [fp, #-92]
	vldr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L6:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r1, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	mov	r2, r3
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	printf
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-124]
	vldr	d16, [fp, #-124]
	vshr.s32	d16, d16, #1
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-116]
	vldr	d16, [fp, #-116]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #4]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L11
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-148]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-156]
	vldr	d18, [fp, #-148]
	vldr	d17, [fp, #-156]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-132]
	vstr	d17, [fp, #-140]
	vldr	d17, [fp, #-132]
	vldr	d16, [fp, #-140]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L14
.L11:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-180]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-188]
	vldr	d18, [fp, #-180]
	vldr	d17, [fp, #-188]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-164]
	vstr	d17, [fp, #-172]
	vldr	d17, [fp, #-164]
	vldr	d16, [fp, #-172]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L14:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-204]
	vldr	d16, [fp, #-204]
	vshr.s32	d16, d16, #2
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-196]
	vldr	d16, [fp, #-196]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #8]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L19
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-228]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-236]
	vldr	d18, [fp, #-228]
	vldr	d17, [fp, #-236]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-212]
	vstr	d17, [fp, #-220]
	vldr	d17, [fp, #-212]
	vldr	d16, [fp, #-220]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L22
.L122:
	.align	3
.L121:
	.word	1
	.word	-1
	.word	-1
	.word	1
.L19:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-260]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-268]
	vldr	d18, [fp, #-260]
	vldr	d17, [fp, #-268]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-244]
	vstr	d17, [fp, #-252]
	vldr	d17, [fp, #-244]
	vldr	d16, [fp, #-252]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L22:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-284]
	vldr	d16, [fp, #-284]
	vshr.s32	d16, d16, #3
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-276]
	vldr	d16, [fp, #-276]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #12]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L27
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-308]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-316]
	vldr	d18, [fp, #-308]
	vldr	d17, [fp, #-316]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-292]
	vstr	d17, [fp, #-300]
	vldr	d17, [fp, #-292]
	vldr	d16, [fp, #-300]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L30
.L27:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-340]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-348]
	vldr	d18, [fp, #-340]
	vldr	d17, [fp, #-348]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-324]
	vstr	d17, [fp, #-332]
	vldr	d17, [fp, #-324]
	vldr	d16, [fp, #-332]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L30:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-364]
	vldr	d16, [fp, #-364]
	vshr.s32	d16, d16, #4
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-356]
	vldr	d16, [fp, #-356]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #16]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L35
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-388]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-396]
	vldr	d18, [fp, #-388]
	vldr	d17, [fp, #-396]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-372]
	vstr	d17, [fp, #-380]
	vldr	d17, [fp, #-372]
	vldr	d16, [fp, #-380]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L38
.L35:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-420]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-428]
	vldr	d18, [fp, #-420]
	vldr	d17, [fp, #-428]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-404]
	vstr	d17, [fp, #-412]
	vldr	d17, [fp, #-404]
	vldr	d16, [fp, #-412]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L38:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-444]
	vldr	d16, [fp, #-444]
	vshr.s32	d16, d16, #5
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-436]
	vldr	d16, [fp, #-436]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #20]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L43
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-468]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-476]
	vldr	d18, [fp, #-468]
	vldr	d17, [fp, #-476]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-452]
	vstr	d17, [fp, #-460]
	vldr	d17, [fp, #-452]
	vldr	d16, [fp, #-460]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L46
.L43:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-500]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-508]
	vldr	d18, [fp, #-500]
	vldr	d17, [fp, #-508]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-484]
	vstr	d17, [fp, #-492]
	vldr	d17, [fp, #-484]
	vldr	d16, [fp, #-492]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L46:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-524]
	vldr	d16, [fp, #-524]
	vshr.s32	d16, d16, #6
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-516]
	vldr	d16, [fp, #-516]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L51
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-548]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-556]
	vldr	d18, [fp, #-548]
	vldr	d17, [fp, #-556]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-532]
	vstr	d17, [fp, #-540]
	vldr	d17, [fp, #-532]
	vldr	d16, [fp, #-540]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L54
.L51:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-580]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-588]
	vldr	d18, [fp, #-580]
	vldr	d17, [fp, #-588]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-564]
	vstr	d17, [fp, #-572]
	vldr	d17, [fp, #-564]
	vldr	d16, [fp, #-572]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L54:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-604]
	vldr	d16, [fp, #-604]
	vshr.s32	d16, d16, #7
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-596]
	vldr	d16, [fp, #-596]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #28]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L59
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-628]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-636]
	vldr	d18, [fp, #-628]
	vldr	d17, [fp, #-636]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-612]
	vstr	d17, [fp, #-620]
	vldr	d17, [fp, #-612]
	vldr	d16, [fp, #-620]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L62
.L59:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-660]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-668]
	vldr	d18, [fp, #-660]
	vldr	d17, [fp, #-668]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-644]
	vstr	d17, [fp, #-652]
	vldr	d17, [fp, #-644]
	vldr	d16, [fp, #-652]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L62:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-684]
	vldr	d16, [fp, #-684]
	vshr.s32	d16, d16, #8
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-676]
	vldr	d16, [fp, #-676]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #32]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L67
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-708]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-716]
	vldr	d18, [fp, #-708]
	vldr	d17, [fp, #-716]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-692]
	vstr	d17, [fp, #-700]
	vldr	d17, [fp, #-692]
	vldr	d16, [fp, #-700]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L70
.L67:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-740]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-748]
	vldr	d18, [fp, #-740]
	vldr	d17, [fp, #-748]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-724]
	vstr	d17, [fp, #-732]
	vldr	d17, [fp, #-724]
	vldr	d16, [fp, #-732]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L70:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-764]
	vldr	d16, [fp, #-764]
	vshr.s32	d16, d16, #9
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-756]
	vldr	d16, [fp, #-756]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #36]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L75
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-788]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-796]
	vldr	d18, [fp, #-788]
	vldr	d17, [fp, #-796]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-772]
	vstr	d17, [fp, #-780]
	vldr	d17, [fp, #-772]
	vldr	d16, [fp, #-780]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L78
.L75:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-820]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-828]
	vldr	d18, [fp, #-820]
	vldr	d17, [fp, #-828]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-804]
	vstr	d17, [fp, #-812]
	vldr	d17, [fp, #-804]
	vldr	d16, [fp, #-812]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L78:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-844]
	vldr	d16, [fp, #-844]
	vshr.s32	d16, d16, #10
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-836]
	vldr	d16, [fp, #-836]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L83
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-868]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-876]
	vldr	d18, [fp, #-868]
	vldr	d17, [fp, #-876]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-852]
	vstr	d17, [fp, #-860]
	vldr	d17, [fp, #-852]
	vldr	d16, [fp, #-860]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L86
.L83:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-900]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-908]
	vldr	d18, [fp, #-900]
	vldr	d17, [fp, #-908]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-884]
	vstr	d17, [fp, #-892]
	vldr	d17, [fp, #-884]
	vldr	d16, [fp, #-892]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L86:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-924]
	vldr	d16, [fp, #-924]
	vshr.s32	d16, d16, #11
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-916]
	vldr	d16, [fp, #-916]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #44]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L91
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-948]
	vldr	d17, [fp, #-20]
	vstr	d17, [fp, #-956]
	vldr	d18, [fp, #-948]
	vldr	d17, [fp, #-956]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-932]
	vstr	d17, [fp, #-940]
	vldr	d17, [fp, #-932]
	vldr	d16, [fp, #-940]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L94
.L91:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	vstr	d17, [fp, #-980]
	vldr	d17, [fp, #-28]
	vstr	d17, [fp, #-988]
	vldr	d18, [fp, #-980]
	vldr	d17, [fp, #-988]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-964]
	vstr	d17, [fp, #-972]
	vldr	d17, [fp, #-964]
	vldr	d16, [fp, #-972]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L94:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-1004]
	vldr	d16, [fp, #-1004]
	vshr.s32	d16, d16, #12
	vstr	d16, [fp, #-36]
	vldr	d16, [fp, #-36]
	vstr	d16, [fp, #-996]
	vldr	d16, [fp, #-996]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #48]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L99
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	vldr	d17, [fp, #-36]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1024
	vldr	d17, [fp, #-20]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1024
	sub	r2, fp, #1024
	sub	r2, r2, #4
	vldr	d18, [r2]
	vldr	d17, [r3]
	vmul.i32	d17, d18, d17
	vstr	d16, [fp, #-1012]
	vstr	d17, [fp, #-1020]
	vldr	d17, [fp, #-1012]
	vldr	d16, [fp, #-1020]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L102
.L99:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1040
	sub	r3, r3, #8
	vldr	d17, [fp, #-36]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1056
	vldr	d17, [fp, #-28]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1040
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1056
	vldr	d18, [r3]
	vldr	d17, [r2]
	vmul.i32	d17, d18, d17
	sub	r3, fp, #12
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1040
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1024
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1040
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L102:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1072
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1072
	vldr	d16, [r3]
	vshr.s32	d16, d16, #13
	vstr	d16, [fp, #-36]
	sub	r3, fp, #12
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vldr	d16, [fp, #-36]
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #52]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L107
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d17, [fp, #-36]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1104
	vldr	d17, [fp, #-20]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1088
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1104
	vldr	d18, [r3]
	vldr	d17, [r2]
	vmul.i32	d17, d18, d17
	sub	r3, fp, #12
	sub	r3, r3, #1072
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1088
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1072
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1088
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L110
.L107:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vldr	d17, [fp, #-36]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1136
	vldr	d17, [fp, #-28]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1120
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1136
	vldr	d18, [r3]
	vldr	d17, [r2]
	vmul.i32	d17, d18, d17
	sub	r3, fp, #12
	sub	r3, r3, #1104
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1120
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1104
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1120
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L110:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1152
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1152
	vldr	d16, [r3]
	vshr.s32	d16, d16, #14
	vstr	d16, [fp, #-36]
	sub	r3, fp, #12
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vldr	d16, [fp, #-36]
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vstr	d16, [fp, #-36]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r5, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L115
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1168
	sub	r3, r3, #8
	vldr	d17, [fp, #-36]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1184
	vldr	d17, [fp, #-20]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1168
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1184
	vldr	d18, [r3]
	vldr	d17, [r2]
	vmul.i32	d17, d18, d17
	sub	r3, fp, #12
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1168
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1152
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1168
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	add	r4, r4, r5
	b	.L118
.L115:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1200
	sub	r3, r3, #8
	vldr	d17, [fp, #-36]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	vldr	d17, [fp, #-28]
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1200
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1216
	vldr	d18, [r3]
	vldr	d17, [r2]
	vmul.i32	d17, d18, d17
	sub	r3, fp, #12
	sub	r3, r3, #1184
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1200
	vstr	d17, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1184
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1200
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r4, r4, r5
.L118:
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [fp, #-1240]
	str	r2, [r3]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	sub	r3, r3, #8
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-1244]
	str	r2, [r3]
	ldr	r3, [fp, #-1248]
	str	r4, [r3]
	nop
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
