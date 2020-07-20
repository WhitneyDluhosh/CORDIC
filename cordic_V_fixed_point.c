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
  shift_XY = vshl_n_s32(XY, 0);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY); 
  z_temp = 0;
  z_t = z_table[0];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 1);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[1];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 2);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[2];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 3);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);
  
  z_t = z_table[3];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 4);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[4];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 5);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[5];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
 shift_XY = vshl_n_s32(XY, 6);
 addXY = vadd_s32(XY, shift_XY); 
 subXY = vsub_s32(XY, shift_XY);
  
  z_t = z_table[6];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 7);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[7];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 8);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[8];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 9);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[9];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 10);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[10];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 11);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[11];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 12);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);
  
  z_t = z_table[12];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 13);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[13];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 14);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[14];
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = addXY[1],  XY[1] = subXY[0], z_temp -= z_t);


  *x = XY[0];
  *y = XY[1];
  *z = z_temp;
}
