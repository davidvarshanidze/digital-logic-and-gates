module tb_not_gate;
    reg a;
    wire y;

    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("not_waveform.vcd");
        $dumpvars(0, tb_not_gate);
        $monitor("a = %b, y = %b", a, y);

        a = 0; #10;
        a = 1; #10;

        $finish;
    end
endmodule
