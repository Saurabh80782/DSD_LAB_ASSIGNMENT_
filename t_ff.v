module t_ff(
    input  wire clk,
    input  wire t,
    output reg  q,
    output wire qbar
);
    assign qbar = ~q;

    always @(posedge clk) begin
        if (t)
            q <= ~q;   // Toggle on each clock
        else
            q <= q;    // Hold
    end
endmodule
