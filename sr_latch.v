module sr_latch (
    input  wire S,    // Set
    input  wire R,    // Reset
    output wire Q,
    output wire Qbar
);
    // Cross-coupled NOR gates
    assign Q    = ~(R | Qbar);
    assign Qbar = ~(S | Q);
endmodule
