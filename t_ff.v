module t_ff(
    input  wire clk,
    input  wire t,
    output reg  q,
    output wire qbar
);
    assign qbar = ~q;

    always @(posedge clk) begin
        if (t)
            q <= ~q;   
        else
            q <= q;    
    end
endmodule
