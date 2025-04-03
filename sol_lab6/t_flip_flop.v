`timescale 1ns / 1ps

module t_flip_flop(
    input wire T,
    input wire clk,
    input wire rst,   // synchronous reset
    output reg Q,
    output wire Q_bar
);
    always @(posedge clk) begin
        if (rst) begin
            Q <= 1'b0;
        end
        else if (T) begin
            Q <= ~Q;    // Toggle
        end
        else begin
            Q <= Q;     // Hold
        end
    end
    
    assign Q_bar = ~Q;
endmodule
