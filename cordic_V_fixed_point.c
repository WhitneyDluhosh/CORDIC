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
  printf("XY STARTING position 0: %d  1: %d\n", XY[0], XY[1] );
  shift_XY = vshl_n_s32(XY, 0);
  printf("SHIFT_XY STARTING position 0: %d  1: %d\n", shift_XY[0], shift_XY[1] );
   shift_XY = vrev64_s32(shift_XY);
   printf("REVERSED SHIFT_XY STARTING position 0: %d  1: %d\n", shift_XY[0], shift_XY[1] );
  addXY = vadd_s32(XY, shift_XY); 
  printf("ADDXY STARTING position 0: %d  1: %d\n", addXY[0], addXY[1] );
  subXY = vsub_s32(XY, shift_XY); 
  printf("SUBXY STARTING position 0: %d  1: %d\n", subXY[0], subXY[1] );
  z_temp = 0;
  z_t = z_table[0];
  printf("0:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  printf("1 XY STARTING position 0: %d  1: %d\n", XY[0], XY[1] );
  shift_XY = vshl_n_s32(XY, 1);
  printf("1 SHIFT_XY STARTING position 0: %d  1: %d\n", shift_XY[0], shift_XY[1] );
  shift_XY = vrev64_s32(shift_XY);
  printf("1 REVERSED SHIFT_XY STARTING position 0: %d  1: %d\n", shift_XY[0], shift_XY[1] );
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[1];
  printf("1:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  printf("2 XY STARTING position 0: %d  1: %d\n", XY[0], XY[1] );
  shift_XY = vshl_n_s32(XY, 2);
  printf("2 SHIFT_XY STARTING position 0: %d  1: %d\n", shift_XY[0], shift_XY[1] );
  shift_XY = vrev64_s32(shift_XY);
  printf("2 REVERSED SHIFT_XY STARTING position 0: %d  1: %d\n", shift_XY[0], shift_XY[1] );
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[2];
  printf("2:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 3);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);
  
  z_t = z_table[3];
  printf("3:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 4);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[4];
  printf("4:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 5);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[5];
  printf("5:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
 shift_XY = vshl_n_s32(XY, 6);
 shift_XY = vrev64_s32(shift_XY);
 addXY = vadd_s32(XY, shift_XY); 
 subXY = vsub_s32(XY, shift_XY);
  
  z_t = z_table[6];
  printf("6:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 7);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[7];
  printf("7:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 8);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[8];
  printf("8:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 9);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[9];
  printf("9:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 10);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[10];
  printf("10:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 11);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[11];
  printf("11:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 12);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);
  
  z_t = z_table[12];
  printf("12:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 13);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[13];
  printf("13:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);
  shift_XY = vshl_n_s32(XY, 14);
  shift_XY = vrev64_s32(shift_XY);
  addXY = vadd_s32(XY, shift_XY); 
  subXY = vsub_s32(XY, shift_XY);

  z_t = z_table[14];
  printf("14:  FIRST spot, y_temp_1 = %d\n", XY[1] );
  (XY[1] > 0 )? (XY[0] = addXY[0], XY[1] = subXY[1] , z_temp+= z_t) : (XY[0] = subXY[0],  XY[1] = addXY[1], z_temp -= z_t);


  *x = XY[0];
  *y = XY[1];
  *z = z_temp;
}
