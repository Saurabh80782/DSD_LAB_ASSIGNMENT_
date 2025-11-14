`timescale 1ns / 1ps
module mux2_tb;
    reg d0, d1, sel;
    wire y;

    mux2 dut (.d0(d0), .d1(d1), .sel(sel), .y(y));

    initial begin
        $display("D0 D1 SEL | Y");
        for (integer i = 0; i < 8; i = i + 1) begin
            {d0, d1, sel} = i;
            #10;
            $display("%b  %b   %b  | %b", d0,d1,sel,y);
        end
        $finish;
    end
endmodule
