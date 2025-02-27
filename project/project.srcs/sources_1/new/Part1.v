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


module Part1(
    input A,
    input B, 
    input C,
    output X,
    output Y
    );
    assign X = ((A ^ B) ^ C);
    assign Y = (A & B)|((A ^ B) & C);
endmodule
