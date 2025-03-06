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

// 2-1 Mux
module Part1(
    input wire A,
    input wire B,
    input wire S,
    output reg F
    );
    always@(*)begin
        F = 1'b0;
        case(S)
            1'b0: F = A;
            1'b1: F = B;
            default: F = 1'b0;
        endcase
    end
endmodule
