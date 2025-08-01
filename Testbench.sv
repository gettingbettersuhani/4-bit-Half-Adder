`timescale 1ns/1ps
module tb_half_adder;
  reg[3:0] a_tb, b_tb;
  wire[3:0] sum_tb, carry_tb;

  
  half_adder dut(
    .a(a_tb),
    .b(b_tb),
    .sum(sum_tb),
    .carry(carry_tb) );

 
  initial
    begin
      
      $dumpfile("dumpfile.vcd");
      $dumpvars(0,tb_half_adder);
      
      $monitor("Time=%0t  a=%b  b=%b  ||  sum=%b  carry=%b",$time,a_tb,b_tb,sum_tb,carry_tb);
      
      #10 a_tb=4'b0000 ; b_tb=4'b0000;
      #10 a_tb=4'b0000 ; b_tb=4'b0001;
      #10 a_tb=4'b0001 ; b_tb=4'b0000;
      #10 a_tb=4'b0001 ; b_tb=4'b0001;
      #10

      $finish;
    end
endmodule
