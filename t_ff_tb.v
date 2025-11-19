`timescale 1ns / 1ps
module t_ff_tb;
    reg clk, t;
    wire q, qbar;

    t_ff dut (.clk(clk), .t(t), .q(q), .qbar(qbar));

    always #5 clk = ~clk; // Clock with 10ns period

    initial begin
        clk=0; t=0;
        $display("Time\tClk T | Q Qbar");
        $monitor("%0dns\t%b %b | %b %b", $time, clk, t, q, qbar);

        #10 t=1;
        #50 t=0;
        #20 t=1;
        #30 $finish;
    end
endmodule
