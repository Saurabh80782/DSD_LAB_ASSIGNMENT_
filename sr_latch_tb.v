`timescale 1ns / 1ps
module sr_latch_tb;
    reg S, R;
    wire Q, Qbar;

    
    sr_latch dut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qbar(Qbar)
    );

    initial begin
        $display("Time\tS R | Q Qbar | Description");
        $monitor("%0dns\t%b %b | %b %b", $time, S, R, Q, Qbar);

        
        S = 0; R = 0; #10;   

        S = 1; R = 0; #10;   
        S = 0; R = 0; #10;   

        S = 0; R = 1; #10;   
        S = 0; R = 0; #10;   

        S = 1; R = 1; #10;   
        S = 0; R = 0; #10;   

        $finish;
    end
endmodule
