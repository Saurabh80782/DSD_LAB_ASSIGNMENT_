`timescale 1ns / 1ps
module sr_ff_tb;
    reg clk, s, r;
    wire q, qbar;

    sr_ff dut (.clk(clk), .s(s), .r(r), .q(q), .qbar(qbar));

    always #5 clk = ~clk;  // Clock: 10ns period

    initial begin
        clk=0; s=0; r=0;
        $display("Time\tClk S R | Q Qbar");
        $monitor("%0dns\t%b %b %b | %b %b", $time, clk, s, r, q, qbar);

        #10 s=1; r=0;   // Set
        #10 s=0; r=0;   // Hold
        #10 s=0; r=1;   // Reset
        #10 s=0; r=0;   // Hold
        #10 s=1; r=1;   // Invalid
        #10 s=0; r=0;   // Hold
        #20 $finish;
    end
endmodule
