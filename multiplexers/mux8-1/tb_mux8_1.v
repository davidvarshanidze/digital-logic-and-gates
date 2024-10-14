module tb_mux8_1;
    reg [7:0] d;
    reg [2:0] sel;
    wire y;
    
    mux8_1 uut (
        .d(d), 
        .sel(sel), 
        .y(y)
    );

    initial begin
        d = 8'b10101010; sel = 3'b000;
        #10; // Wait 10 units
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);
        
        sel = 3'b001;
        #10;
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);

        sel = 3'b010;
        #10;
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);

        sel = 3'b011;
        #10;
        $display("Sel = %b, d = %b -> y = %b", sel, d, y);
        
        // Additional test cases for sel = 3'b100 to 3'b111 can be added similarly
        
        $finish;
    end
endmodule
