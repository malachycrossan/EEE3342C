`timescale 1ns / 1ps

module jk_flip_flop_tb();
    reg J, K, clk, rst;
    wire Q, Q_bar;
    
    jk_flip_flop UUT(
        .J(J),
        .K(K),
        .clk(clk),
        .rst(rst),
        .Q(Q),
        .Q_bar(Q_bar)
    );
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        J = 0;
        K = 0;
        #20 rst = 1'b0;  // Deassert reset
        
        // Test sequence
        // 1) J=1, K=0 => Set
        J = 1; K = 0; #20;
        
        // 2) J=0, K=1 => Reset
        J = 0; K = 1; #20;
        
        // 3) J=1, K=1 => Toggle
        J = 1; K = 1; #40;
        
        // 4) J=0, K=0 => Hold
        J = 0; K = 0; #20;
        
        $finish;
    end
    
    always #10 clk = ~clk;
    
endmodule


On the Basys3 Board
Map J and K to two switches (SW0 and SW1).

Map clk to the 100 MHz clock on the board.

Map Q to LED0.

Optionally map rst to a button (e.g., BTN0) if you want to reset the flip-flop.

Every time the clock rises, the flip-flop will follow the JK truth table:

00 => Hold

01 => Q=0

10 => Q=1

11 => Q toggles

