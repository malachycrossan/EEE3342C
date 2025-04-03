`timescale 1ns / 1ps

module d_latch(
    input wire D,    // Data input
    input wire En,   // Enable (level-based)
    output reg Q,    // Output
    output wire Q_bar
);
    always @(*) begin
        if (En) begin
            // Transparent when En=1
            Q <= D;
        end
        else begin
            // Latch holds when En=0
            // No assignment => Q stays the same
        end
    end
    
    assign Q_bar = ~Q;
    
endmodule
