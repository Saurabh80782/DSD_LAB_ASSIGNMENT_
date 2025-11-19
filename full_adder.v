module full_adder(
    input  wire a,
    input  wire b,
    input  wire cin,     // carry-in
    output wire sum,
    output wire cout     // carry-out
);
    // Logic equations
    assign sum  = a ^ b ^ cin;                 // XOR for 3 inputs
    assign cout = (a & b) | (b & cin) | (a & cin); // Majority logic
endmodule
