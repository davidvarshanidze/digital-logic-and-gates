module mux2_1(
    input wire a, b,
    input wire sel,
    output wire y
);
assign y = sel ? b : a;

endmodule