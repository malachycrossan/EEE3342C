`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 10:50:39 AM
// Design Name: 
// Module Name: Part3
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

// 8-1 Mux
module Part3(
    input wire [7:0] A,
    input wire [2:0] S,
    output reg F
    );
    always@(*)begin
        F = 1'b0;
        case(S)
            3'b000: F = A[0];
            3'b001: F = A[1];
            3'b010: F = A[2];
            3'b011: F = A[3];
            3'b100: F = A[4];
            3'b101: F = A[5];
            3'b110: F = A[6];
            3'b111: F = A[7];
            default: F = 1'b0;
        endcase
    end
endmodule
