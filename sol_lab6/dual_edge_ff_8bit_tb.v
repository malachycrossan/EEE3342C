`timescale 1ns / 1ps

module dual_edge_ff_8bit_tb();
    reg clk, rst;
    reg [7:0] D;
    wire [7:0] Q;
    
    dual_edge_ff_8bit UUT(
        .clk(clk),
        .rst(rst),
        .D(D),
        .Q(Q)
    );
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        D   = 8'h00;
        
        #15 rst = 1'b0;
        
        // Change D to some pattern
        #10 D = 8'h55;  // 0101 0101
        #20 D = 8'hAA;  // 1010 1010
        #20 D = 8'hFF;
        #20 D = 8'h00;
        
        #20 $finish;
    end
    
    // Simulate a 20ns clock period
    // This toggles clk every 10ns => 50MHz
    // but we want to see rising & falling edges
    always #10 clk = ~clk;
endmodule

On the Basys3 Board
Map [7:0] D to 8 of the switches (SW0–SW7).

Map [7:0] Q to 8 of the LEDs (LED0–LED7).

Map clk to the 100 MHz board clock.

Map rst to a button if desired.