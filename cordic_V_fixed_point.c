#include <arm_neon.h>
#include <stdio.h>



int z_table[15];
// add to compile instruction to get rid of soft error: -mfloat-abi=hard and -mfpu=neon
void cordic_V_fixed_point( int *x, int *y, int *z) {
  register int32x2_t z_temp = {0, 0};
  register int32x2_t zt = {z_table[0], 0};
  register int32x2_t vt, vf, add, sub; // Value true, Value false
  register uint32x2_t cmp; //Compare mask
  register int32x2_t XY = {*x, *y};
  register int32x2_t shift_XY;
  register int32x2_t ZERO = {0,0};
  int32x2_t ADDSUB = {1, -1};
  int32x2_t SUBADD = {-1, 1};
  // register const int32x2_t ADDSUB = {0x0, 0xFFFFFFFE};
  // register const int32x2_t SUBADD = {0xFFFFFFFE, 0x0};
  

  
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[1];
  shift_XY = vshr_n_s32(XY, 1);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[2];
  shift_XY = vshr_n_s32(XY, 2);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[3];
  shift_XY = vshr_n_s32(XY, 3);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[4];
  shift_XY = vshr_n_s32(XY, 4);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[5];
  shift_XY = vshr_n_s32(XY, 5);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[6];
  shift_XY = vshr_n_s32(XY, 6);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[7];
  shift_XY = vshr_n_s32(XY, 7);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[8];
  shift_XY = vshr_n_s32(XY, 8);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[9];
  shift_XY = vshr_n_s32(XY, 9);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[10];
  shift_XY = vshr_n_s32(XY, 10);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[11];
  shift_XY = vshr_n_s32(XY, 11);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[12];
  shift_XY = vshr_n_s32(XY, 12);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[13];
  shift_XY = vshr_n_s32(XY, 13);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));
  

  zt[0] = z_table[14];
  shift_XY = vshr_n_s32(XY, 14);
  cmp = vcgt_s32(XY, ZERO);
  shift_XY = vrev64_s32(shift_XY);
  cmp = vdup_lane_u32(cmp, 1);
  vt = vmul_s32(shift_XY, ADDSUB);
  vf = vmul_s32(shift_XY, SUBADD);
  add = vmul_s32(zt, ADDSUB);
  sub = vmul_s32(zt, SUBADD);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  z_temp = vadd_s32(z_temp, vbsl_s32(cmp, add, sub));

  *x = XY[0];
  *y = XY[1];
  *z = z_temp[0];
}
