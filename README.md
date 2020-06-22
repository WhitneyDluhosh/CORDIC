# CORDIC
SENG440-Project
CORDIC (coordinate rotation digital computer) is a hardware-efficient iterative method which uses rotations to calculate a wide range of elementary functions.
# OUR OBJECTIVES

**1.** Build the testbench: Student is given a range of values for the argument M This range should be wider than the ideal range considered in the theoretical derivations, such that a pre-normalization will be needed (for example, calculate log2 M for 0.3 ≤ M < 1.7) Consider at least 20 random values in this range and calculate their function values in double-precision floating-point arithmetic using a common mathematical tool (for example, Matlab) 

**2.** Implement the CORDIC algorithm in software using fixed-point arithmetic Student is given the word length of the implementation Write C routines and debug them by comparing the results obtained in fixed-point arithmetic with those obtained previously in double-precision floating-point arithmetic (cast operations are needed) 

**3.** Determine the bottleneck of the all-software implementation Determine the instruction count of the software solution Determine which part of the code takes longest to execute Explore the options to implement the bottleneck into firmware / hardware 

**4.** Define a new instruction (or a few new instructions), which returns the value(s) calculated by the bottleneck It is imperative to comply with the ARM architecture (a new instruction can have at most two 32-bit arguments and one 32-bit result) Document the syntax and the semantics of the new instruction(s) 

**5.** Implement the new instruction(s) in firmware / hardware Consider horizontal firmware with two and three issue slots Design custom hardware by writing VHDL / Verilog code Determine the latency of the implementation in each caseRewrite the high-level code and instantiate the new instruction Use the extended assembly inlining Generate the assembly listing 

**6.** Estimate the performance improvement of the Two-issue slot firmware-based solution versus software solution Three-issue slot firmware-based solution versus software solution Hardware-based solution versus software solution 

**7.** Estimate the penalty of the improved solution The number of gates for the hardware solution 

  
