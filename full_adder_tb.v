`timescale 1ns / 1ps
module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;

    // Instantiate Device Under Test (DUT)
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("A B Cin | Sum Cout");
        for (integer i = 0; i < 8; i = i + 1) begin
            {a,b,cin} = i;
            #10;
            $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        end
        $finish;
    end
endmodule
