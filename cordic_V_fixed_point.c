#include <arm_neon.h>
#include <stdio.h>

// #define OP(XY, shift_XY, shift, vt, vf, cmp, ADDSUB, SUBADD) {\
//   shift_XY = vshr_n_s32(XY, shift);\
//   shift_XY = vrev64_s32(shift_XY);\
//   vt = veor_s32(shift_XY, ADDSUB);\
//   vf = veor_s32(shift_XY, SUBADD);\
//   cmp = vcgt_s32(XY, ZERO);\
//   cmp = vdup_lane_u32(cmp, 1);\
//   XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));\
// }

int z_table[15];
// add to compile instruction to get rid of soft error: -mfloat-abi=hard and -mfpu=neon
void cordic_V_fixed_point( int *x, int *y, int *z) {
  register  int  z_temp, z_t;
  int32x2_t vt, vf; // Value true, Value false
  uint32x2_t cmp; //Compare mask
  int32x2_t XY = {*x, *y};
  int32x2_t shift_XY;
  int32x2_t ZERO = {0,0};
  // int32x2_t ADDSUB = {1, -1};
  // int32x2_t SUBADD = {-1, 1};
  const int32x2_t ADDSUB = {0x0, 0xFFFFFFFE};
  const int32x2_t SUBADD = {0xFFFFFFFE, 0x0};
  
  z_temp = 0;

  shift_XY = vrev64_s32(XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 1);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 2);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 3);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 4);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 5);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 6);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 7);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 8);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 9);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 10);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 11);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 12);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 13);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  
  shift_XY = vshr_n_s32(XY, 14);
  shift_XY = vrev64_s32(shift_XY);
  vt = veor_s32(shift_XY, ADDSUB);
  vf = veor_s32(shift_XY, SUBADD);
  cmp = vcgt_s32(XY, ZERO);
  cmp = vdup_lane_u32(cmp, 1);
  XY = vadd_s32(XY, vbsl_s32(cmp, vt, vf));
  // OP(XY, shift_XY, 0, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 1, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 2, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 3, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 4, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 5, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 6, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 7, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 8, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 9, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 10, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 11, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 12, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 13, vt, vf, cmp, ADDSUB, SUBADD);
  // OP(XY, shift_XY, 14, vt, vf, cmp, ADDSUB, SUBADD);

  *x = XY[0];
  *y = XY[1];
  *z = z_temp;
}
