module binary_arithmetic(
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum,
    output [7:0] diff,
    output [15:0] prod,
    output [7:0] quot,
    output [7:0] rem
);

    assign sum = a + b; 
    assign diff = a - b;
    assign prod = a * b;
    assign quot = b != 0 ? a / b : 8'b0;
    assign rem = b != 0 ? a % b : 8'b0;

endmodule
