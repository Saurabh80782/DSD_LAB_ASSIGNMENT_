`timescale 1ns / 1ps
module mux4_tb;
    reg [3:0] d;
    reg [1:0] sel;
    wire y;

    mux4 dut (.d(d), .sel(sel), .y(y));

    initial begin
        $display("D[3:0] SEL | Y");
        d = 4'b1010;
        for (integer s = 0; s < 4; s = s + 1) begin
            sel = s;
            #10;
            $display("%b  %b | %b", d, sel, y);
        end
        $finish;
    end
endmodule
