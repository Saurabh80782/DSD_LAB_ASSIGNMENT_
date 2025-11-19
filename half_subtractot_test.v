`timescale 1ns / 1ps

module half_subtractot_test;
     reg A,B;
    wire Difference, Borrow;

    half_subtractor hs (A, B, Difference, Borrow);

    initial begin
        $display("A B | Diff Borrow");
         
        $display("----------------");

        A=0; B=0; #10; $display("%b %b |  %b     %b", A, B, Difference, Borrow);
        A=0; B=1; #10; $display("%b %b |  %b     %b", A, B, Difference, Borrow);
        A=1; B=0; #10; $display("%b %b |  %b     %b", A, B, Difference, Borrow);
        A=1; B=1; #10; $display("%b %b |  %b     %b", A, B, Difference, Borrow);

        $stop;
    end

endmodule 
