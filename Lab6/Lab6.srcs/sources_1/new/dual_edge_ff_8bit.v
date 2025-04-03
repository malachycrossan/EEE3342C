`timescale 1ns / 1ps

module dual_edge_ff_8bit(
    input wire clk,
    input wire rst,           // asynchronous or synchronous reset, shown as async
    input wire [7:0] D,
    output reg [7:0] Q
);
    always @(posedge clk or negedge clk or posedge rst) begin
        // This style can cause synthesis warnings in standard FPGAs
        // because truly dual-edge triggered flip-flops are not typical.
        if (rst) begin
            Q <= 8'b0;
        end
        else begin
            Q <= D;
        end
    end
endmodule
