`timescale 1ns / 1ps
module d_ff_tb;
    reg clk, d;
    wire q, qbar;

    d_ff dut (.clk(clk), .d(d), .q(q), .qbar(qbar));

    always #5 clk = ~clk; // 10ns clock

    initial begin
        clk = 0; d = 0;
        $display("Time\tClk D | Q Qbar");
        $monitor("%0dns\t%b %b | %b %b", $time, clk, d, q, qbar);

        #10 d=1;
        #10 d=0;
        #10 d=1;
        #10 d=1;
        #10 d=0;
        #20 $finish;
    end
endmodule
