`timescale 1ns / 1ps

module non_gated_sr(
    input  wire S,    // Set input
    input  wire R,    // Reset input
    output reg  Q,    // Output
    output wire Q_bar // Inverted Output
);
    always @(*) begin
        // Non-gated SR Latch Truth Table:
        // S R | Q(next)
        // 0 0 | Q(hold)
        // 0 1 | 0
        // 1 0 | 1
        // 1 1 | x (invalid)
        
        if (S == 1'b0 && R == 1'b0) begin
            // Hold previous value
            // Q remains the same, so no assignment needed here
        end
        else if (S == 1'b0 && R == 1'b1) begin
            // Reset
            Q <= 1'b0;
        end
        else if (S == 1'b1 && R == 1'b0) begin
            // Set
            Q <= 1'b1;
        end
        else begin
            // Invalid condition S=1, R=1
            Q <= 1'bx; // or you can leave it assigned to Q
        end
    end
    
    assign Q_bar = ~Q;

endmodule
