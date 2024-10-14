module tb_binary_arithmetic;

    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] sum;
    wire [7:0] diff;
    wire [15:0] prod;
    wire [7:0] quot;
    wire [7:0] rem;

    binary_arithmetic uut (
        .a(a),
        .b(b),
        .sum(sum),
        .diff(diff),
        .prod(prod),
        .quot(quot),
        .rem(rem)
    );

    initial begin
        a = 8'd10; b = 8'd5;
        #10;
        $display("a = %d, b = %d, sum = %d, diff = %d, prod = %d, quot = %d, rem = %d", a, b, sum, diff, prod, quot, rem);

        a = 8'd25; b = 8'd3;
        #10;
        $display("a = %d, b = %d, sum = %d, diff = %d, prod = %d, quot = %d, rem = %d", a, b, sum, diff, prod, quot, rem);

        a = 8'd50; b = 8'd0;
        #10;
        $display("a = %d, b = %d, sum = %d, diff = %d, prod = %d, quot = %d, rem = %d", a, b, sum, diff, prod, quot, rem);

        a = 8'd100; b = 8'd25;
        #10;
        $display("a = %d, b = %d, sum = %d, diff = %d, prod = %d, quot = %d, rem = %d", a, b, sum, diff, prod, quot, rem);

        a = 8'd15; b = 8'd7;
        #10;
        $display("a = %d, b = %d, sum = %d, diff = %d, prod = %d, quot = %d, rem = %d", a, b, sum, diff, prod, quot, rem);

        $stop;
    end
endmodule
