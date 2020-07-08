#include <stdio.h>
int z_table[15];

void cordic_V_fixed_point( int *x, int *y, int *z) {
  int x_temp_1, y_temp_1, z_temp, z_t;
  int x_temp_2, y_temp_2;
  int i;
  x_temp_1 = *x;
  y_temp_1 = *y;
  z_temp = 0;
  for( i=0; i<15; i++) { /* 15 iterations are needed */
	z_t = z_table[i]; // Load before it is needed
    if( y_temp_1 > 0) {
      x_temp_2 = x_temp_1 + (y_temp_1 >> i);
      y_temp_2 = y_temp_1 - (x_temp_1 >> i);
      z_temp += z_t;
    }
    else {
      x_temp_2 = x_temp_1 - (y_temp_1 >> i);
      y_temp_2 = y_temp_1 + (x_temp_1 >> i);
      z_temp -= z_t;
    }
    x_temp_1 = x_temp_2;
    y_temp_1 = y_temp_2;
  }
  *x = x_temp_1;
  *y = y_temp_1;
  *z = z_temp;
}
