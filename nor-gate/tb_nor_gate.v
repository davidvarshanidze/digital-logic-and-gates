module tb_nor_gate;
    reg a;
    reg b;
    wire y;

    nor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("nor_waveform.vcd");
        $dumpvars(0, tb_nor_gate);
        $monitor("a = %b, b = %b, y = %b", a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
