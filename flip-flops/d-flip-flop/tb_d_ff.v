module tb_dff;
reg D;
reg clk;
reg reset;
wire Q;

dff uut(
  .D(D),
  .clk(clk),
  .reset(reset),
  .Q(q)
);

always #5 clk = ~clk;

initial begin
  clk = 0;
  reset = 1;
  D = 0;

  #10 reset = 0;
  #10 D = 1;
  #10 D = 0;
  #10 D = 1;
  #10 $stop;
end

endmodule
