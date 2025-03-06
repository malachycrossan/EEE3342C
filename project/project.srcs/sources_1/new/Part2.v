`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 10:41:31 AM
// Design Name: 
// Module Name: Part2
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

// 2-1 decoder
module Part2(
    input wire A,
    input wire B,
    output reg [3:0] F
    );
    always@(*)begin
    F = 4'b0000;
        case({A,B})
            2'b00: F[0] = 1;
            2'b01: F[1] = 1;
            2'b10: F[2] = 1;
            2'b11: F[3] = 1;
        endcase
    end
endmodule
