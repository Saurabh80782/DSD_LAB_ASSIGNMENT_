`timescale 1ns / 1ps
module full_subtractor_tb;
    reg a, b, bin;
    wire diff, bout;

    // Instantiate DUT
    full_subtractor dut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        $display("A B Bin | Diff Bout");
        for (integer i = 0; i < 8; i = i + 1) begin
            {a,b,bin} = i;
            #10;
            $display("%b %b  %b  |  %b    %b", a,b,bin,diff,bout);
        end
        $finish;
    end
endmodule
