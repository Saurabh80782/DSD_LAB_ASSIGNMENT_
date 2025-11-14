`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 14:43:57
// Design Name: 
// Module Name: half_adder_test
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


module half_adder_test;

    reg A, B;
    wire Sum, Carry;

    // Instantiate the Half Adder
    half_adder ha (A, B, Sum, Carry);

    initial begin
        $display("A B | Sum Carry");
        $display("-------------");

        A = 0; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);

        A = 0; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);

        A = 1; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);

        A = 1; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);

        $stop;
    end
endmodule



