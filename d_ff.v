module d_ff(
    input  wire clk,
    input  wire d,
    output reg  q,
    output wire qbar
);
    assign qbar = ~q;

    always @(posedge clk) begin
        q <= d;   // captures D on each clock edge
    end
endmodule
