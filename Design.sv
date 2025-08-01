module half_adder(sum,carry,a,b);
  input[3:0] a, b;
  output[3:0] sum, carry;
  assign sum = a ^ b ; // sum is XOR of inputs
  assign carry = a & b ;  // carry is AND of inputs
endmodule
