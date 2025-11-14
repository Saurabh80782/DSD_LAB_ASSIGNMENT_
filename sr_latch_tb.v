`timescale 1ns / 1ps
module sr_latch_tb;
    reg S, R;
    wire Q, Qbar;

    // Instantiate DUT (Device Under Test)
    sr_latch dut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qbar(Qbar)
    );

    initial begin
        $display("Time\tS R | Q Qbar | Description");
        $monitor("%0dns\t%b %b | %b %b", $time, S, R, Q, Qbar);

        // Initial state
        S = 0; R = 0; #10;   // Hold

        S = 1; R = 0; #10;   // Set
        S = 0; R = 0; #10;   // Hold

        S = 0; R = 1; #10;   // Reset
        S = 0; R = 0; #10;   // Hold

        S = 1; R = 1; #10;   // Invalid (both 1)
        S = 0; R = 0; #10;   // Return to Hold

        $finish;
    end
endmodule
