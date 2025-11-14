`timescale 1ns/1ps
module counter_2bit_up_tb;

    reg clk, reset;
    wire [1:0] count;

    counter_2bit_up dut (.clk(clk), .reset(reset), .count(count));

    always #5 clk = ~clk;   // 10ns clock

    initial begin
        clk = 0;
        reset = 1; #10;
        reset = 0;

        #100 $finish;
    end

endmodule
