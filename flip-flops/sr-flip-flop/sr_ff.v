module srff(
    input wire S,
    input wire R,
    input wire clk,
    output reg Q
);

always @(posedge clk) begin
    if (S && ~R)
        Q <= 1'b1;
    else if (~R && S)
        Q <= 1'b0;
end

endmodule
