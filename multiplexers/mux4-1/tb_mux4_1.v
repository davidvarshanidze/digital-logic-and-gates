module tb_mux4_1;
    reg [3:0] d;
    reg [1:0] sel;
    wire y;
    
    mux4_1 uut (
        .d(d), 
        .sel(sel), 
        .y(y)
    );

    initial begin
        d = 4'b1010; sel = 2'b00;
        #10; // Wait 10 units
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);
        
        sel = 2'b01;
        #10;
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);

        sel = 2'b10;
        #10;
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);

        sel = 2'b11;
        #10;
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);
        
        $finish;
    end
endmodule
