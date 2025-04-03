`timescale 1ns / 1ps

module sr_latch_gated(
    input  wire S,     // Set
    input  wire R,     // Reset
    input  wire E,     // Enable
    output reg  Q,     // Output
    output wire Q_bar  // Inverted Output
);
    always @(*) begin
        if (!E) begin
            // When Enable = 0, latch holds previous Q
            // No change to Q in this branch
        end 
        else begin
            // Enable = 1, behave like non-gated SR
            if (S == 1'b0 && R == 1'b0) begin
                // Hold current Q
            end
            else if (S == 1'b0 && R == 1'b1) begin
                Q <= 1'b0;
            end
            else if (S == 1'b1 && R == 1'b0) begin
                Q <= 1'b1;
            end
            else begin
                // Invalid S=1, R=1
                Q <= 1'bx;
            end
        end
    end
    
    assign Q_bar = ~Q;

endmodule
