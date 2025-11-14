`timescale 1ns / 1ps
module basic_gates_tb;
    reg a, b;
    wire y_and, y_or, y_xor, y_nand, y_nor, y_not_a;

    basic_gates dut (.a(a), .b(b), .y_and(y_and), .y_or(y_or),
                     .y_xor(y_xor), .y_nand(y_nand),
                     .y_nor(y_nor), .y_not_a(y_not_a));

    initial begin
        $display("A B | AND OR XOR NAND NOR NOT_A");
        a=0; b=0; #10;
        $display("%b %b |  %b   %b   %b    %b    %b     %b", a,b,y_and,y_or,y_xor,y_nand,y_nor,y_not_a);
        a=0; b=1; #10;
        $display("%b %b |  %b   %b   %b    %b    %b     %b", a,b,y_and,y_or,y_xor,y_nand,y_nor,y_not_a);
        a=1; b=0; #10;
        $display("%b %b |  %b   %b   %b    %b    %b     %b", a,b,y_and,y_or,y_xor,y_nand,y_nor,y_not_a);
        a=1; b=1; #10;
        $display("%b %b |  %b   %b   %b    %b    %b     %b", a,b,y_and,y_or,y_xor,y_nand,y_nor,y_not_a);
        $finish;
    end
endmodule
