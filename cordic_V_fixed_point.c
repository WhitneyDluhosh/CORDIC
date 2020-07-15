#include <stdio.h>
#include <arm_neon.h>
int z_table[15];
// add to compile instruction to get rid of soft error: -mfloat-abi=hard
void cordic_V_fixed_point( int *x, int *y, int *z) {
  register  int  z_temp, z_t;
  int32x2_t XY;
  int32x2_t shift_XY;
  XY[0] = *x;
  XY[1] = *y;
  vhsl_s32(shift_XY, XY, 0);
  z_temp = 0;
  z_t = z_table[0];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 1);

  z_t = z_table[1];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 2);

  z_t = z_table[2];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 3);
 
  z_t = z_table[3];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 4);

  z_t = z_table[4];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 5);

  z_t = z_table[5];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
 vhsl_s32(shift_XY, XY, 6);
  
  z_t = z_table[6];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 7);

  z_t = z_table[7];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 8);

  z_t = z_table[8];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 9);

  z_t = z_table[9];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 10);

  z_t = z_table[10];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 11);

  z_t = z_table[11];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 12);
  
  z_t = z_table[12];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 13);

  z_t = z_table[13];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);
  vhsl_s32(shift_XY, XY, 14);

  z_t = z_table[14];
  (y_temp_1 > 0 )? (XY = __ssax(XY, shift_XY), z_temp+= z_t) : (XY = __sasx_(XY, shift_XY) , z_temp -= z_t);


  *x = XY[0];
  *y = XY[1];
  *z = z_temp;
}
