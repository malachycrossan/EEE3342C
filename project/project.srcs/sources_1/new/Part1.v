`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 09:59:39 AM
// Design Name: 
// Module Name: Part1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// Non-gated SR-Latch
module Part1(
    input S,
    input R,
    output reg Q,
    output reg Q_Prime
    );
    always@(*)begin
        Q = ~(S | Q_Prime);
        Q_Prime = ~(R | Q);
    end
endmodule
