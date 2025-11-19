`timescale 1ns / 1ps



module half_adder_test;

    reg A, B;
    wire Sum, Carry;


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



