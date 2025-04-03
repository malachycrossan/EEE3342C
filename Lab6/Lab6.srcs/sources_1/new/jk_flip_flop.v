`timescale 1ns / 1ps

module jk_flip_flop(
    input wire J,
    input wire K,
    input wire clk,
    input wire rst,   // synchronous or asynchronous, shown below as synchronous
    output reg Q,
    output wire Q_bar
);
    always @(posedge clk) begin
        if(rst) begin
            Q <= 1'b0;
        end else begin
            case({J,K})
                2'b00: Q <= Q;      // Hold
                2'b01: Q <= 1'b0;   // Reset
                2'b10: Q <= 1'b1;   // Set
                2'b11: Q <= ~Q;     // Toggle
            endcase
        end
    end
    
    assign Q_bar = ~Q;
endmodule
