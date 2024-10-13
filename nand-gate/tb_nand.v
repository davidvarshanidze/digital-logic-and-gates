module tb_nand_gate;
    reg a;
    wire y;

    nand_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("nand_waveform.vcd");
        $dumpvars(0, tb_nand_gate);
        $monitor("a = %b, y = %b", a, y);

        a = 0; #10;
        a = 1; #10;

        $finish;
    end
endmodule
