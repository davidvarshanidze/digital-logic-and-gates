module tb_tff;

reg T;
reg clk;
reg reset;
wire Q;

tff uut(
    .T(T),
    .clk(clk),
    .reset(reset),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    T = 0;

    #10 reset = 0;
    #10 T = 1;
    #10 T = 0;
    #10 T = 1;
    #10 $stop;
end

endmodule