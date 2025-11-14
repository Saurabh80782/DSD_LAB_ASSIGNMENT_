`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 16:00:30
// Design Name: 
// Module Name: half_subtractor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_subtractor(
input A, B,
output Difference, Borrow
);
    assign Difference = A ^ B;  // XOR for Difference
    assign Borrow = (~A) & B;  
endmodule
