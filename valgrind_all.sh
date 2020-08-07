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
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

cd ../original
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

cd ../register_specifiers
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

cd ../software_pipelining
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

cd ../ternary_operators
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

cd ../simd
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

cd ../simd_mult
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

cd ../simd_branchless
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=cachegrind$EX ./cordic_main$EX

