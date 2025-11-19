`timescale 1ns/1ps
module universal_adder_subtractor_tb;

    reg [3:0] A, B;
    reg M;
    wire [3:0] Result;
    wire Cout;

    universal_adder_subtractor dut (
        .A(A), .B(B), .M(M), .Result(Result), .Cout(Cout)
    );

    initial begin
        $display("Time   M  A    B   |  Result Cout  Operation");

        // Addition
        M = 0; A = 4'b0101; B = 4'b0011; #10;
        $display("%0dns  %b  %b  %b  |   %b      %b   (ADD)", 
                 $time, M, A, B, Result, Cout);

        // Addition again
        M = 0; A = 4'b1100; B = 4'b0010; #10;

        // Subtraction
        M = 1; A = 4'b1000; B = 4'b0011; #10;

        // Subtraction again
        M = 1; A = 4'b0100; B = 4'b0101; #10;

        $finish;
    end
endmodule
