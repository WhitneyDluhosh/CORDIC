#!/bin/bash

if test -z "$1"
then
  OP=""
  EX=""
else
  OP=-$1
  EX=_$1
fi

gcc cordic_main.c -Iloop_unrolling $OP -o loop_unrolling/cordic_main$EX -marm -lm

gcc cordic_main.c -Ioriginal $OP -o original/cordic_main$EX -marm -lm

gcc cordic_main.c -Iregister_specifiers $OP -o register_specifiers/cordic_main$EX -marm -lm

gcc cordic_main.c -Isoftware_pipelining $OP -o software_pipelining/cordic_main$EX -marm -lm

gcc cordic_main.c -Iternary_operators $OP -o ternary_operators/cordic_main$EX -marm -lm

gcc cordic_main.c -Isimd $OP -o simd/cordic_main$EX -marm -mfpu=neon -lm

gcc cordic_main.c -Isimd_mult $OP -o simd_mult/cordic_main$EX -marm -mfpu=neon -lm

gcc cordic_main.c -Isimd_branchless $OP -o simd_branchless/cordic_main$EX -marm -mfpu=neon -lm


