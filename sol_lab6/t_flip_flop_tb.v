`timescale 1ns / 1ps

module t_flip_flop_tb();
    reg T, clk, rst;
    wire Q, Q_bar;
    
    t_flip_flop UUT(
        .T(T),
        .clk(clk),
        .rst(rst),
        .Q(Q),
        .Q_bar(Q_bar)
    );
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;  // Reset active
        T = 1'b0;    
        #20 rst = 1'b0;  // Deassert reset
        
        // Toggle T=1
        T = 1'b1; #40;
        
        // T=0 => hold
        T = 1'b0; #40;
        
        // T=1 => toggle again
        T = 1'b1; #40;
        
        $finish;
    end
    
    always #10 clk = ~clk;
    
endmodule


On the Basys3 Board
Map T to a switch (e.g., SW0).

Map clk to the 100 MHz clock.

Map Q to LED0.

Optionally, map rst to a button.

Observe the LED changes (toggles) only on a rising edge when T=1.