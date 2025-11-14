module sr_ff(
    input  wire clk,
    input  wire s,
    input  wire r,
    output reg  q,
    output wire qbar
);
    assign qbar = ~q;

    always @(posedge clk) begin
        case ({s,r})
            2'b00: q <= q;     // Hold
            2'b01: q <= 0;     // Reset
            2'b10: q <= 1;     // Set
            2'b11: q <= 1'bx;  // Invalid
        endcase
    end
endmodule
