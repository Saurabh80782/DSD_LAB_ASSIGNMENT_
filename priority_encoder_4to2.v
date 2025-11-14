// 4-to-2 Priority Encoder
// Input D3 highest priority
module priority_encoder_4to2(
    input  wire [3:0] in,
    output reg  [1:0] code,
    output wire valid
);
    assign valid = |in;  // any bit is 1

    always @(*) begin
        casex (in)
            4'b1xxx: code = 2'b11;
            4'b01xx: code = 2'b10;
            4'b001x: code = 2'b01;
            4'b0001: code = 2'b00;
            default: code = 2'b00;
        endcase
    end
endmodule
