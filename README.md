# 4-bit-Half-Adder
This repository contains the Verilog HDL code for a 4-bit Half Adder and its corresponding testbench. A half adder is a fundamental digital logic circuit that performs the addition of two single bits. This project scales that concept to handle two 4-bit binary numbers in parallel.
The key characteristic of a half adder is that it does not handle a carry-in from a previous stage. This design demonstrates how four 1-bit half adders can work side-by-side to compute a 4-bit result.

Key Concepts Demonstrated
Combinational Logic Circuit Design
Bitwise Operations in Verilog (^ for XOR, & for AND)
Vector-based (multi-bit) Operations
Verilog Module Design
Testbench Creation for Functional Verification

Files in This Repository
half_adder_4bit.v: The Verilog design file for the 4-bit half adder module.
tb_half_adder_4bit.v: The Verilog testbench file used to simulate and verify the adder's functionality.

Circuit Logic
A 4-bit half adder operates as four independent 1-bit half adders. There is no carry connection between the stages. The logic for each bit i (from 0 to 3) is:
Sum[i] = A[i] ^ B[i] (Bitwise XOR)
Carry[i] = A[i] & B[i] (Bitwise AND)
In the provided Verilog code, this is implemented efficiently using vector operations on the 4-bit inputs A and B.

