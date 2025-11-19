module universal_adder_subtractor (
    input  wire [3:0] A,
    input  wire [3:0] B,
    input  wire M,          
    output wire [3:0] Result,
    output wire Cout
);

    wire [3:0] B_mod;
    wire Cin;
    assign B_mod = B ^ {4{M}};
    assign Cin = M;
    assign {Cout, Result} = A + B_mod + Cin;

endmodule
