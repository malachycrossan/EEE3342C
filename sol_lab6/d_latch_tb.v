`timescale 1ns / 1ps

module d_latch_tb();
    reg D, En;
    wire Q, Q_bar;
    
    d_latch UUT(
        .D(D),
        .En(En),
        .Q(Q),
        .Q_bar(Q_bar)
    );
    
    initial begin
        D = 0; En = 0;
        #10;
        
        // Enable the latch, put D=1
        En = 1; D = 1;
        #10;
        
        // D changes to 0, still En=1 => output should follow
        D = 0; 
        #10;
        
        // Disable the latch => Q should hold
        En = 0;
        D = 1;
        #10;
        
        // Finish
        $finish;
    end
endmodule


On the Basys3 Board
Map D to a switch (e.g., SW0).

Map En to another switch (e.g., SW1).

Map Q to an LED (LED0).

When you toggle En = 1, the LED should follow D. When En = 0, the LED holds the last value of D.