`timescale 1ns / 1ps
module boolean_expr_tb;
    reg a, b, c;
    wire y;

    boolean_expr dut (.a(a), .b(b), .c(c), .y(y));

    initial begin
        $display("A B C | Y");
        for (integer i = 0; i < 8; i = i + 1) begin
            {a,b,c} = i;
            #10;
            $display("%b %b %b | %b", a,b,c,y);
        end
        $finish;
    end
endmodule
