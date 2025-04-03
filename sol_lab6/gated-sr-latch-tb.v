`timescale 1ns / 1ps

module sr_latch_gated_tb();
    reg S, R, E;
    wire Q, Q_bar;
    
    // Instantiate the gated SR latch
    sr_latch_gated UUT (
        .S(S),
        .R(R),
        .E(E),
        .Q(Q),
        .Q_bar(Q_bar)
    );
    
    initial begin
        // Initialize
        E = 0; S = 0; R = 0;
        #10; // E=0 => hold, Q undefined initially, often starts 0 in sim

        // Enable the latch, do a Set
        E = 1; S = 1; R = 0; 
        #10;
        
        // Hold (S=0,R=0) with E=1
        S = 0; R = 0;
        #10;
        
        // Reset
        S = 0; R = 1;
        #10;
        
        // Invalid
        S = 1; R = 1;
        #10;
        
        // Disable the latch
        E = 0; S = 1; R = 0; 
        #10;
        
        $finish;
    end
endmodule


On the Basys3 Board
Map S, R, and E each to a switch (SW0, SW1, SW2 for example).

Map Q to an LED (e.g., LED0).

Keep Q_bar optionally on another LED if desired.

When E=0, changes in S or R should not affect Q; the latch holds. When E=1, it behaves as a normal SR latch.