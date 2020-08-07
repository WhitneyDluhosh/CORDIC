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
	.fpu neon
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 2816
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	vpush.64	{d8, d9, d10, d11, d12, d13}
	add	fp, sp, #48
	sub	sp, sp, #2816
	sub	sp, sp, #4
	str	r0, [fp, #-2848]
	str	r1, [fp, #-2852]
	str	r2, [fp, #-2856]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vmov.i32	d16, #0  @ v2si
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r3, [r3]
	vmov.i32	d16, #0  @ v2si
	vmov.32	d16[0], r3
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vstr	d16, [r3]
	ldr	r3, [fp, #-2848]
	ldr	r2, [r3]
	ldr	r3, [fp, #-2852]
	ldr	r3, [r3]
	str	r2, [fp, #-2868]
	str	r3, [fp, #-2864]
	sub	r3, fp, #52
	sub	r3, r3, #2816
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	vmov.i32	d13, #0  @ v2si
	vldr	d16, .L181
	vstr	d16, [fp, #-60]
	vldr	d16, .L181+8
	vstr	d16, [fp, #-68]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2752
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2752
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2752
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2752
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2736
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2736
	sub	r3, r3, #8
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2720
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2736
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2720
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2736
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2704
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2720
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2704
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2720
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2688
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2704
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2688
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2704
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2672
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2688
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2672
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2688
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2656
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2656
	sub	r3, r3, #8
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2672
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2656
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2656
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2672
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2640
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2640
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2640
	sub	r3, fp, #52
	sub	r3, r3, #2640
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2608
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2624
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2624
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2608
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2624
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2624
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2592
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2608
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2592
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2608
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #4]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2592
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2592
	vldr	d16, [r3]
	vshr.s32	d16, d16, #1
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2576
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2576
	sub	r3, r3, #8
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2576
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2576
	sub	r3, r3, #8
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2560
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	b	.L182
.L183:
	.align	3
.L181:
	.word	1
	.word	-1
	.word	-1
	.word	1
.L182:
	sub	r3, r3, #2560
	sub	r3, r3, #8
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2560
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2560
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2544
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2544
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2544
	sub	r3, fp, #52
	sub	r3, r3, #2544
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2528
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2528
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2528
	sub	r3, fp, #52
	sub	r3, r3, #2528
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2512
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2512
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2512
	sub	r3, fp, #52
	sub	r3, r3, #2512
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2496
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2496
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2496
	sub	r3, fp, #52
	sub	r3, r3, #2496
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2464
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2480
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2480
	sub	r3, r3, #8
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2464
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2480
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2480
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2448
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2464
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2448
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2464
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2432
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2432
	sub	r3, r3, #8
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2448
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2432
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2432
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2448
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2416
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2416
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2416
	sub	r3, fp, #52
	sub	r3, r3, #2416
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #8]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2400
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2400
	sub	r3, r3, #8
	vldr	d16, [r3]
	vshr.s32	d16, d16, #2
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2384
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2400
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2384
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2400
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2384
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2384
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2368
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2368
	sub	r3, r3, #8
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2352
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2368
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2352
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2368
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2336
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2352
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2336
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2352
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2320
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2336
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2320
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2336
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2304
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2320
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2304
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2320
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2288
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2288
	sub	r3, r3, #8
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2304
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2288
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2288
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2304
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2272
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2272
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2272
	sub	r3, fp, #52
	sub	r3, r3, #2272
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2240
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2256
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2256
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2240
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2256
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2256
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2224
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2240
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2224
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2240
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #12]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2224
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2224
	vldr	d16, [r3]
	vshr.s32	d16, d16, #3
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2208
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2208
	sub	r3, r3, #8
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2208
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2208
	sub	r3, r3, #8
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2192
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2192
	sub	r3, r3, #8
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2192
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2192
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2176
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2176
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2176
	sub	r3, fp, #52
	sub	r3, r3, #2176
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2160
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2160
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2160
	sub	r3, fp, #52
	sub	r3, r3, #2160
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2144
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2144
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2144
	sub	r3, fp, #52
	sub	r3, r3, #2144
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2128
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2128
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2128
	sub	r3, fp, #52
	sub	r3, r3, #2128
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2096
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2112
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2112
	sub	r3, r3, #8
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2096
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2112
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2112
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2080
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2096
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2080
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2096
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2064
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2064
	sub	r3, r3, #8
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2080
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2064
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2064
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2080
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #2048
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2048
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #2048
	sub	r3, fp, #52
	sub	r3, r3, #2048
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #16]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2032
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2032
	sub	r3, r3, #8
	vldr	d16, [r3]
	vshr.s32	d16, d16, #4
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2016
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2032
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2016
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2032
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2016
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2016
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2000
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2000
	sub	r3, r3, #8
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1984
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2000
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1984
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #2000
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1968
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1984
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1968
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1984
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1952
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1968
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1952
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1968
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1936
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1952
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1936
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1952
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1920
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1920
	sub	r3, r3, #8
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1936
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1920
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1920
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1936
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1904
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1904
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1904
	sub	r3, fp, #52
	sub	r3, r3, #1904
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1872
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1888
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1888
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1872
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1888
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1888
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1856
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1872
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1856
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1872
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #20]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1856
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1856
	vldr	d16, [r3]
	vshr.s32	d16, d16, #5
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1840
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1840
	sub	r3, r3, #8
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1840
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1840
	sub	r3, r3, #8
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1824
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1824
	sub	r3, r3, #8
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1824
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1824
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1808
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1808
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1808
	sub	r3, fp, #52
	sub	r3, r3, #1808
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1792
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1792
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1792
	sub	r3, fp, #52
	sub	r3, r3, #1792
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1776
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1776
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1776
	sub	r3, fp, #52
	sub	r3, r3, #1776
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1760
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1760
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1760
	sub	r3, fp, #52
	sub	r3, r3, #1760
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1728
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1744
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1744
	sub	r3, r3, #8
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1728
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1744
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1744
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1712
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1728
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1712
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1728
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1696
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1696
	sub	r3, r3, #8
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1712
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1696
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1696
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1712
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1680
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1680
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1680
	sub	r3, fp, #52
	sub	r3, r3, #1680
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #24]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3]
	vshr.s32	d16, d16, #6
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1664
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1664
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1648
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1648
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1632
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1632
	sub	r3, r3, #8
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1616
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1632
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1616
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1632
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1616
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1600
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1616
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1584
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1600
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1584
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1600
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1568
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1584
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1568
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1584
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1552
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1552
	sub	r3, r3, #8
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1568
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1552
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1552
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1568
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1536
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1536
	sub	r3, fp, #52
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1504
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1520
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1520
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1504
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1520
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1520
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1488
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1504
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1488
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1504
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #28]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1488
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1488
	vldr	d16, [r3]
	vshr.s32	d16, d16, #7
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1472
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1472
	sub	r3, r3, #8
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1472
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1472
	sub	r3, r3, #8
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1456
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1456
	sub	r3, r3, #8
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1456
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1456
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1440
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1440
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1440
	sub	r3, fp, #52
	sub	r3, r3, #1440
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1424
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1424
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1424
	sub	r3, fp, #52
	sub	r3, r3, #1424
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1408
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1408
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1408
	sub	r3, fp, #52
	sub	r3, r3, #1408
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1392
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1392
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1392
	sub	r3, fp, #52
	sub	r3, r3, #1392
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1360
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1376
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1376
	sub	r3, r3, #8
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1360
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1376
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1376
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1344
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1360
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1344
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1360
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1328
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1328
	sub	r3, r3, #8
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1344
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1328
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1328
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1344
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1312
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1312
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1312
	sub	r3, fp, #52
	sub	r3, r3, #1312
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #32]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1296
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1296
	sub	r3, r3, #8
	vldr	d16, [r3]
	vshr.s32	d16, d16, #8
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1280
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1296
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1280
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1296
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1280
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1280
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1264
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1264
	sub	r3, r3, #8
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1248
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1264
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1248
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1264
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1232
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1248
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1232
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1248
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1216
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1232
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1216
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1232
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1200
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1216
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1200
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1216
	vldr	d17, [r3]
	vldr	d16, [r2]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1184
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1184
	sub	r3, r3, #8
	vstr	d12, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1200
	vstr	d11, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1184
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1184
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1200
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1168
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1168
	sub	r3, r3, #8
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1168
	sub	r3, fp, #52
	sub	r3, r3, #1168
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1152
	vstr	d10, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1152
	vldr	d18, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #52
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1136
	vstr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1120
	sub	r3, r3, #8
	sub	r2, fp, #52
	sub	r2, r2, #1136
	vldr	d17, [r3]
	vldr	d16, [r2]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #36]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1120
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1120
	vldr	d16, [r3]
	vshr.s32	d16, d16, #9
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1104
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1104
	sub	r3, r3, #8
	vstr	d13, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1104
	vldr	d17, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1104
	sub	r3, r3, #8
	vldr	d16, [r3]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d16, [r3]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1088
	vstr	d8, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1088
	vldr	d16, [r3]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1072
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1072
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1072
	sub	r3, fp, #52
	sub	r3, r3, #1072
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #1056
	vstr	d9, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1056
	sub	r3, fp, #52
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1040
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1040
	sub	r3, r3, #8
	vldr	d16, [fp, #-60]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1040
	sub	r3, fp, #52
	sub	r3, r3, #1040
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1024
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vldr	d16, [fp, #-68]
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r2, r3, #1024
	sub	r3, fp, #52
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vldr	d17, [r2]
	vldr	d16, [r3]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	sub	r3, fp, #1040
	sub	r3, r3, #12
	vstr	d8, [r3]
	sub	r3, fp, #1056
	sub	r3, r3, #4
	vstr	d12, [r3]
	sub	r3, fp, #1056
	sub	r3, r3, #12
	vstr	d11, [r3]
	sub	r3, fp, #1040
	sub	r3, r3, #12
	vldr	d17, [r3]
	sub	r3, fp, #1056
	sub	r3, r3, #4
	vldr	d18, [r3]
	sub	r3, fp, #1056
	sub	r3, r3, #12
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	sub	r3, fp, #1024
	sub	r3, r3, #12
	vstr	d16, [r3]
	sub	r3, fp, #1040
	sub	r3, r3, #4
	vstr	d17, [r3]
	sub	r3, fp, #1024
	sub	r3, r3, #12
	vldr	d17, [r3]
	sub	r3, fp, #1040
	sub	r3, r3, #4
	vldr	d16, [r3]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-1012]
	vstr	d10, [fp, #-1020]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	vstr	d9, [r3]
	vldr	d17, [fp, #-1012]
	vldr	d18, [fp, #-1020]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	vldr	d19, [r3]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-996]
	vstr	d17, [fp, #-1004]
	vldr	d17, [fp, #-996]
	vldr	d16, [fp, #-1004]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #40]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-988]
	vldr	d16, [fp, #-988]
	vshr.s32	d16, d16, #10
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-972]
	vstr	d13, [fp, #-980]
	vldr	d17, [fp, #-972]
	vldr	d16, [fp, #-980]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-964]
	vldr	d16, [fp, #-964]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	vstr	d8, [fp, #-956]
	vldr	d16, [fp, #-956]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-940]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-948]
	vldr	d17, [fp, #-940]
	vldr	d16, [fp, #-948]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	vstr	d9, [fp, #-924]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-932]
	vldr	d17, [fp, #-924]
	vldr	d16, [fp, #-932]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-908]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-916]
	vldr	d17, [fp, #-908]
	vldr	d16, [fp, #-916]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-892]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-900]
	vldr	d17, [fp, #-892]
	vldr	d16, [fp, #-900]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-868]
	vstr	d12, [fp, #-876]
	vstr	d11, [fp, #-884]
	vldr	d17, [fp, #-868]
	vldr	d18, [fp, #-876]
	vldr	d19, [fp, #-884]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-852]
	vstr	d17, [fp, #-860]
	vldr	d17, [fp, #-852]
	vldr	d16, [fp, #-860]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-828]
	vstr	d10, [fp, #-836]
	vstr	d9, [fp, #-844]
	vldr	d17, [fp, #-828]
	vldr	d18, [fp, #-836]
	vldr	d19, [fp, #-844]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-812]
	vstr	d17, [fp, #-820]
	vldr	d17, [fp, #-812]
	vldr	d16, [fp, #-820]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #44]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-804]
	vldr	d16, [fp, #-804]
	vshr.s32	d16, d16, #11
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-788]
	vstr	d13, [fp, #-796]
	vldr	d17, [fp, #-788]
	vldr	d16, [fp, #-796]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-780]
	vldr	d16, [fp, #-780]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	vstr	d8, [fp, #-772]
	vldr	d16, [fp, #-772]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-756]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-764]
	vldr	d17, [fp, #-756]
	vldr	d16, [fp, #-764]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	vstr	d9, [fp, #-740]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-748]
	vldr	d17, [fp, #-740]
	vldr	d16, [fp, #-748]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-724]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-732]
	vldr	d17, [fp, #-724]
	vldr	d16, [fp, #-732]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-708]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-716]
	vldr	d17, [fp, #-708]
	vldr	d16, [fp, #-716]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-684]
	vstr	d12, [fp, #-692]
	vstr	d11, [fp, #-700]
	vldr	d17, [fp, #-684]
	vldr	d18, [fp, #-692]
	vldr	d19, [fp, #-700]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-668]
	vstr	d17, [fp, #-676]
	vldr	d17, [fp, #-668]
	vldr	d16, [fp, #-676]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-644]
	vstr	d10, [fp, #-652]
	vstr	d9, [fp, #-660]
	vldr	d17, [fp, #-644]
	vldr	d18, [fp, #-652]
	vldr	d19, [fp, #-660]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-628]
	vstr	d17, [fp, #-636]
	vldr	d17, [fp, #-628]
	vldr	d16, [fp, #-636]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #48]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-620]
	vldr	d16, [fp, #-620]
	vshr.s32	d16, d16, #12
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-604]
	vstr	d13, [fp, #-612]
	vldr	d17, [fp, #-604]
	vldr	d16, [fp, #-612]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-596]
	vldr	d16, [fp, #-596]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	vstr	d8, [fp, #-588]
	vldr	d16, [fp, #-588]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-572]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-580]
	vldr	d17, [fp, #-572]
	vldr	d16, [fp, #-580]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	vstr	d9, [fp, #-556]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-564]
	vldr	d17, [fp, #-556]
	vldr	d16, [fp, #-564]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-540]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-548]
	vldr	d17, [fp, #-540]
	vldr	d16, [fp, #-548]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-524]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-532]
	vldr	d17, [fp, #-524]
	vldr	d16, [fp, #-532]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-500]
	vstr	d12, [fp, #-508]
	vstr	d11, [fp, #-516]
	vldr	d17, [fp, #-500]
	vldr	d18, [fp, #-508]
	vldr	d19, [fp, #-516]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-484]
	vstr	d17, [fp, #-492]
	vldr	d17, [fp, #-484]
	vldr	d16, [fp, #-492]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-460]
	vstr	d10, [fp, #-468]
	vstr	d9, [fp, #-476]
	vldr	d17, [fp, #-460]
	vldr	d18, [fp, #-468]
	vldr	d19, [fp, #-476]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-452]
	vldr	d17, [fp, #-444]
	vldr	d16, [fp, #-452]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #52]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-436]
	vldr	d16, [fp, #-436]
	vshr.s32	d16, d16, #13
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-420]
	vstr	d13, [fp, #-428]
	vldr	d17, [fp, #-420]
	vldr	d16, [fp, #-428]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-412]
	vldr	d16, [fp, #-412]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	vstr	d8, [fp, #-404]
	vldr	d16, [fp, #-404]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-388]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-396]
	vldr	d17, [fp, #-388]
	vldr	d16, [fp, #-396]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	vstr	d9, [fp, #-372]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-380]
	vldr	d17, [fp, #-372]
	vldr	d16, [fp, #-380]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-356]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-364]
	vldr	d17, [fp, #-356]
	vldr	d16, [fp, #-364]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-340]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-348]
	vldr	d17, [fp, #-340]
	vldr	d16, [fp, #-348]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-316]
	vstr	d12, [fp, #-324]
	vstr	d11, [fp, #-332]
	vldr	d17, [fp, #-316]
	vldr	d18, [fp, #-324]
	vldr	d19, [fp, #-332]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-300]
	vstr	d17, [fp, #-308]
	vldr	d17, [fp, #-300]
	vldr	d16, [fp, #-308]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-276]
	vstr	d10, [fp, #-284]
	vstr	d9, [fp, #-292]
	vldr	d17, [fp, #-276]
	vldr	d18, [fp, #-284]
	vldr	d19, [fp, #-292]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-260]
	vstr	d17, [fp, #-268]
	vldr	d17, [fp, #-260]
	vldr	d16, [fp, #-268]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	movw	r3, #:lower16:z_table
	movt	r3, #:upper16:z_table
	ldr	r2, [r3, #56]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-252]
	vldr	d16, [fp, #-252]
	vshr.s32	d16, d16, #14
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-236]
	vstr	d13, [fp, #-244]
	vldr	d17, [fp, #-236]
	vldr	d16, [fp, #-244]
	vcgt.s32	d16, d17, d16
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-228]
	vldr	d16, [fp, #-228]
	vrev64.32	d16, d16
	vmov	d9, d16  @ v2si
	vstr	d8, [fp, #-220]
	vldr	d16, [fp, #-220]
	vdup.32	d16, d16[1]
	vmov	d8, d16  @ v2si
	vstr	d9, [fp, #-204]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-212]
	vldr	d17, [fp, #-204]
	vldr	d16, [fp, #-212]
	vmul.i32	d16, d17, d16
	vmov	d12, d16  @ v2si
	vstr	d9, [fp, #-188]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-196]
	vldr	d17, [fp, #-188]
	vldr	d16, [fp, #-196]
	vmul.i32	d16, d17, d16
	vmov	d11, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-172]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vldr	d16, [fp, #-180]
	vmul.i32	d16, d17, d16
	vmov	d10, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	vldr	d16, [r3]
	vstr	d16, [fp, #-156]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-164]
	vldr	d17, [fp, #-156]
	vldr	d16, [fp, #-164]
	vmul.i32	d16, d17, d16
	vmov	d9, d16  @ v2si
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-132]
	vstr	d12, [fp, #-140]
	vstr	d11, [fp, #-148]
	vldr	d17, [fp, #-132]
	vldr	d18, [fp, #-140]
	vldr	d19, [fp, #-148]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-116]
	vstr	d17, [fp, #-124]
	vldr	d17, [fp, #-116]
	vldr	d16, [fp, #-124]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d8, [fp, #-92]
	vstr	d10, [fp, #-100]
	vstr	d9, [fp, #-108]
	vldr	d17, [fp, #-92]
	vldr	d18, [fp, #-100]
	vldr	d19, [fp, #-108]
	vbsl	d17, d18, d19
	vstr	d16, [fp, #-76]
	vstr	d17, [fp, #-84]
	vldr	d17, [fp, #-76]
	vldr	d16, [fp, #-84]
	vadd.i32	d16, d17, d16
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [fp, #-2848]
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2784
	sub	r3, r3, #8
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-2852]
	str	r2, [r3]
	sub	r3, fp, #52
	sub	r3, r3, #2768
	sub	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [fp, #-2856]
	str	r2, [r3]
	nop
	sub	sp, fp, #48
	@ sp needed
	vldm	sp!, {d8-d13}
	ldr	fp, [sp], #4
	bx	lr
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
