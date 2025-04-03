`timescale 1ns / 1ps

module sr_latch_nongated_tb();
    reg S, R;
    wire Q, Q_bar;
    
    // Instantiate the non-gated SR latch
    sr_latch_nongated UUT (
        .S(S),
        .R(R),
        .Q(Q),
        .Q_bar(Q_bar)
    );
    
    initial begin
        // Initialize
        S = 0; R = 0; 
        #10; // Hold state
        
        // Set Q
        S = 1; R = 0; 
        #10;
        
        // Return to hold (S=0,R=0) => Q stays set
        S = 0; R = 0; 
        #10;
        
        // Reset Q
        S = 0; R = 1; 
        #10;
        
        // Hold again
        S = 0; R = 0; 
        #10;
        
        // Invalid state
        S = 1; R = 1;
        #10;
        
        // Finish simulation
        $finish;
    end
endmodule


/*
On the Basys3 Board
Map S and R to two switches (e.g., SW0 and SW1).

Map Q to an LED (e.g., LED0).

(Optionally) You can map Q_bar to another LED (e.g., LED1) to see the inverted output.

When both switches are 0, the latch will hold its previous state.

Setting S=1, R=0 will make Q=1.

Setting S=0, R=1 will make Q=0.

Setting both S=1, R=1 should produce an invalid/unpredictable output (not used in practice).
*/
