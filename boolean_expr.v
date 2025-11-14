// boolean_expr.v
// Y = (~A & B) | (A & ~B) | (B & C)

module boolean_expr(
    input  wire a,
    input  wire b,
    input  wire c,
    output wire y
);
    assign y = (~a & b) | (a & ~b) | (b & c);
endmodule
