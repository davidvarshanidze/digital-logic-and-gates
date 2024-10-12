module tb_jkff;

reg J;
reg K;
reg clk;
reg reset;
wire Q;

jkff uut (
    .J(J),
    .K(K),
    .clk(clk),
    .reset(reset),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    J = 0;
    K = 0;
    
    #10 reset = 0;
    #10 J = 1; K = 0;
    #10 J = 0; K = 1;
    #10 J = 1; K = 1;
    #10 J = 0; K = 0;
    #10 $stop;
end

endmodule
