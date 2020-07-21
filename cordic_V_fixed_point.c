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
  int64x2_t temp;
  z_temp = 0;
  z_t = z_table[0];
  __asm__ __volatile__ ( 
    "sasx_V %0, %1, %2"
    : "=r" (temp[0])
    : "r" (XY[0]), "r" (shift_XY[1])
   );

  printf("0:  FIRST spot, y_temp_1 = %lld\n", temp[0] );
  (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);
  shift_XY = vshr_n_s32(XY, 1);

  z_t = z_table[1];
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 2);
  

  z_t = z_table[2];
  printf("2:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 3);
  
  
  z_t = z_table[3];
  printf("3:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 4);
  

  z_t = z_table[4];
  printf("4:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 5);
  

  z_t = z_table[5];
  printf("5:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 6);
  
  
  z_t = z_table[6];
  printf("6:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 7);
  

  z_t = z_table[7];
  printf("7:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 8);
  

  z_t = z_table[8];
  printf("8:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 9);
  

  z_t = z_table[9];
  printf("9:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 10);
  

  z_t = z_table[10];
  printf("10:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 11);
  

  z_t = z_table[11];
  printf("11:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 12);
  
  
  z_t = z_table[12];
  printf("12:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 13);
  

  z_t = z_table[13];
  printf("13:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);

  shift_XY = vshr_n_s32(XY, 14);
  

  z_t = z_table[14];
  printf("14:  FIRST spot, y_temp_1 = %d\n", XY[1] );
   (XY[1] > 0 )? (XY[0] = XY[0] + shift_XY[1], XY[1] = XY[1] - shift_XY[0] , z_temp+= z_t) : (XY[0] = XY[0] - shift_XY[1], XY[1] = XY[1] + shift_XY[0] , z_temp -= z_t);



  *x = XY[0];
  *y = XY[1];
  *z = z_temp;
}
