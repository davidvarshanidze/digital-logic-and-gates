module tb_mux2_1;
    reg a, b, sel;
    wire y;
    
    mux2_1 uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .y(y)
    );

    initial begin
        a = 0; b = 1; sel = 0;
        #10; // Wait 10 units
        $display("Sel = 0, a = %b, b = %b -> y = %b", a, b, y);
        
        sel = 1;
        #10;
        $display("Sel = 1, a = %b, b = %b -> y = %b", a, b, y);
        
        $finish;
    end
endmodule
