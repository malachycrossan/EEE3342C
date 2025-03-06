`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 10:55:42 AM
// Design Name: 
// Module Name: Part4
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


module Part4(
    input wire [2:0] S,
    output reg [7:0] F
    );
    always@(*)begin
    F = 8'b00000000;
        case(S)
            3'b000: F = 8'b00000001;
            3'b001: F = 8'b00000010;
            3'b010: F = 8'b00000100;
            3'b011: F = 8'b00001000;
            3'b100: F = 8'b00010000;
            3'b101: F = 8'b00100000;
            3'b110: F = 8'b01000000;
            3'b111: F = 8'b10000000;
            default: F = 8'b00000000;
        endcase
    end
endmodule
