module universal_adder_subtractor (
    input  wire [3:0] A,
    input  wire [3:0] B,
    input  wire M,          // Mode: 0 = Add, 1 = Subtract
    output wire [3:0] Result,
    output wire Cout
);

    wire [3:0] B_mod;
    wire Cin;

    // If M = 0 → Add (B_mod = B)
    // If M = 1 → Subtract (B_mod = ~B)
    assign B_mod = B ^ {4{M}};

    // Cin = M  → 0 during addition, 1 during subtraction
    assign Cin = M;

    // 4-bit ripple carry full adder
    assign {Cout, Result} = A + B_mod + Cin;

endmodule
