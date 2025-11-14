`timescale 1ns / 1ps
module priority_encoder_4to2_tb;
    reg [3:0] in;
    wire [1:0] code;
    wire valid;

    priority_encoder_4to2 dut (.in(in), .code(code), .valid(valid));

    initial begin
        $display("IN | VALID CODE");
        in = 4'b0000; #10; $display("%b | %b %b", in, valid, code);
        in = 4'b0001; #10; $display("%b | %b %b", in, valid, code);
        in = 4'b0011; #10; $display("%b | %b %b", in, valid, code);
        in = 4'b0111; #10; $display("%b | %b %b", in, valid, code);
        in = 4'b1111; #10; $display("%b | %b %b", in, valid, code);
        $finish;
    end
endmodule
