`timescale 1ns / 1ps

module half_subtractor(
input A, B,
output Difference, Borrow
);
    assign Difference = A ^ B;  // XOR for Difference
    assign Borrow = (~A) & B;  
endmodule
