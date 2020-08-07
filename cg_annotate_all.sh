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
cg_annotate cachegrind$EX > cg_annotate$EX

cd ../original
cg_annotate cachegrind$EX > cg_annotate$EX

cd ../register_specifiers
cg_annotate cachegrind$EX > cg_annotate$EX

cd ../software_pipelining
cg_annotate cachegrind$EX > cg_annotate$EX

cd ../ternary_operators
cg_annotate cachegrind$EX > cg_annotate$EX

cd ../simd
cg_annotate cachegrind$EX > cg_annotate$EX

cd ../simd_mult
cg_annotate cachegrind$EX > cg_annotate$EX

cd ../simd_branchless
cg_annotate cachegrind$EX > cg_annotate$EX

