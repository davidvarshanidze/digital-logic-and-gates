module tff (
    input wire T,
    input wire clk,
    input wire reset,
    output reg Q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;
    else if (T)
        Q <= ~Q;
end
    
endmodule