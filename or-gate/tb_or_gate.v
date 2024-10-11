module tb_or_gate;
    reg a;
    reg b;
    wire y;

    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("or_waveform.vcd");
        $dumpvars(0, tb_or_gate);
        $monitor("a = %b, b = %b, y = %b", a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
