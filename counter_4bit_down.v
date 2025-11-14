module counter_4bit_down (
    input  wire clk,
    input  wire reset,
    output reg [3:0] count
);
    always @(posedge clk) begin
        if (reset)
            count <= 4'b1111;
        else
            count <= count - 1;
    end
endmodule
