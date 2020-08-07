#include <arm_neon.h>
#include <stdio.h>

int z_table[15];
// add to compile instruction to get rid of soft error: -mfloat-abi=hard and -mfpu=neon
void cordic_V_fixed_point( int *x, int *y, int *z) {
  register  int  z_temp, z_t;
  int32x2_t XY;
  int32x2_t shift_XY;
  int32x2_t addXY;
  int32x2_t subXY;
  XY[0] = *x;
  XY[1] = *y;
  shift_XY = XY;
  int32x2_t temp;
  z_temp = 0;
  z_t = z_table[0];

  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 1);

  z_t = z_table[1];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 2);
  

  z_t = z_table[2];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 3);
  
  
  z_t = z_table[3];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 4);
  

  z_t = z_table[4];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 5);
  

  z_t = z_table[5];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 6);
  
  
  z_t = z_table[6];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 7);
  

  z_t = z_table[7];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 8);
  

  z_t = z_table[8];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 9);
  

  z_t = z_table[9];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 10);
  

  z_t = z_table[10];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 11);
  

  z_t = z_table[11];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 12);
  
  
  z_t = z_table[12];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 13);
  

  z_t = z_table[13];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 14);
  

  z_t = z_table[14];
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);



  *x = XY[0];
  *y = XY[1];
  *z = z_temp;
}
