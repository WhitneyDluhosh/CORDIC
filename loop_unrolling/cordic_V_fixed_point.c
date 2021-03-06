#include <stdio.h>
int z_table[15];

void cordic_V_fixed_point( int *x, int *y, int *z) {
  int x_temp_1, y_temp_1, z_temp;
  int x_temp_2, y_temp_2;
  int i;
  x_temp_1 = *x;
  y_temp_1 = *y;
  z_temp = 0;
  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 0);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 0);
    z_temp += z_table[0];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 0);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 0);
    z_temp -= z_table[0];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 1);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 1);
    z_temp += z_table[1];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 1);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 1);
    z_temp -= z_table[1];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 2);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 2);
    z_temp += z_table[2];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 2);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 2);
    z_temp -= z_table[2];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 3);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 3);
    z_temp += z_table[3];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 3);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 3);
    z_temp -= z_table[3];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 4);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 4);
    z_temp += z_table[4];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 4);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 4);
    z_temp -= z_table[4];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 5);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 5);
    z_temp += z_table[5];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 5);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 5);
    z_temp -= z_table[5];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;
  
  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 6);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 6);
    z_temp += z_table[6];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 6);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 6);
    z_temp -= z_table[6];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 7);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 7);
    z_temp += z_table[7];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 7);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 7);
    z_temp -= z_table[7];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 8);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 8);
    z_temp += z_table[8];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 8);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 8);
    z_temp -= z_table[8];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 9);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 9);
    z_temp += z_table[9];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 9);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 9);
    z_temp -= z_table[9];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 10);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 10);
    z_temp += z_table[10];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 10);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 10);
    z_temp -= z_table[10];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 11);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 11);
    z_temp += z_table[11];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 11);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 11);
    z_temp -= z_table[11];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 12);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 12);
    z_temp += z_table[12];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 12);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 12);
    z_temp -= z_table[12];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 13);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 13);
    z_temp += z_table[13];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 13);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 13);
    z_temp -= z_table[13];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  if( y_temp_1 > 0) {
    x_temp_2 = x_temp_1 + (y_temp_1 >> 14);
    y_temp_2 = y_temp_1 - (x_temp_1 >> 14);
    z_temp += z_table[14];
  }
  else {
    x_temp_2 = x_temp_1 - (y_temp_1 >> 14);
    y_temp_2 = y_temp_1 + (x_temp_1 >> 14);
    z_temp -= z_table[14];
  }
  x_temp_1 = x_temp_2;
  y_temp_1 = y_temp_2;

  *x = x_temp_1;
  *y = y_temp_1;
  *z = z_temp;
}
