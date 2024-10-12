module tb_srff;

reg S;
reg R;
reg clk;
wire Q;

srff uut(
    .S(S),
    .R(R),
    .clk(clk),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    S = 0;
    R = 0;

    #10 S = 1; R = 0;
    #10 S = 0; R = 1;
    #10 S = 1; R = 1;
    #10 S = 0; R = 0;
    #10 $stop;
end

endmodule
