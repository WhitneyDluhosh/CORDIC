#include <arm_neon.h>
#include <stdio.h>

int z_table[15];
// add to compile instruction to get rid of soft error: -mfloat-abi=hard and -mfpu=neon
void cordic_V_fixed_point( int *x, int *y, int *z) {
  register  int  z_temp, z_t;
  int32x2_t XY;
  int32x2_t shift_XY;
  int32x2_t ADDSUB = {1, -1};
  int32x2_t SUBADD = {-1, 1};
  XY[0] = *x;
  XY[1] = *y;
  shift_XY = XY;
  z_temp = 0;
  z_t = z_table[0];
  shift_XY = vrev64_s32(XY);
  (XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  printf("X: %d Y: %d \n",XY[0],XY[1]);
  shift_XY = vshr_n_s32(XY, 1);
  shift_XY = vrev64_s32(shift_XY);
  
  z_t = z_table[1];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 2);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[2];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 3);
  shift_XY = vrev64_s32(shift_XY);
  
  z_t = z_table[3];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 4);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[4];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 5);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[5];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 6);
  shift_XY = vrev64_s32(shift_XY);
  
  z_t = z_table[6];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 7);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[7];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 8);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[8];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 9);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[9];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 10);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[10];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 11);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[11];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 12);
  shift_XY = vrev64_s32(shift_XY);
  
  z_t = z_table[12];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 13);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[13];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 14);
  shift_XY = vrev64_s32(shift_XY);

  z_t = z_table[14];
(XY[1] > 0 )? (XY = vadd_s32(XY, vmul_s32(shift_XY,ADDSUB)), z_temp+= z_t) : (XY = vadd_s32(XY, vmul_s32(shift_XY,SUBADD)), z_temp -= z_t);



  *x = XY[0];
  *y = XY[1];
  *z = z_temp;
}
