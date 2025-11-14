`timescale 1ns / 1ps
module decoder_2to4_tb;
    reg [1:0] a;
    reg en;
    wire [3:0] y;

    decoder_2to4 dut (.a(a), .en(en), .y(y));

    initial begin
        $display("EN A | Y");
        en = 0; a = 2'b00; #10; $display("%b %b | %b", en, a, y);
        en = 1;
        a = 2'b00; #10; $display("%b %b | %b", en, a, y);
        a = 2'b01; #10; $display("%b %b | %b", en, a, y);
        a = 2'b10; #10; $display("%b %b | %b", en, a, y);
        a = 2'b11; #10; $display("%b %b | %b", en, a, y);
        $finish;
    end
endmodule
