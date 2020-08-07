#!/bin/bash

if test -z "$1"
then
  OP=""
  EX=""
else
  OP=-$1
  EX=_$1
fi

cd loop_unrolling
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -lm

cd ../original
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -lm

cd ../register_specifiers
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -lm

cd ../software_pipelining
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -lm

cd ../ternary_operators
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -lm

cd ../simd
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -mfpu=neon -lm

cd ../simd_mult
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -mfpu=neon -lm

cd ../simd_branchless
gcc cordic_V_fixed_point.c $OP -o cordic_V_fixed_point$EX.s -S -marm -mfpu=neon -lm

