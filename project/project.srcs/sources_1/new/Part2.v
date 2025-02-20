`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 10:47:59 AM
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


module Part2(
    input Cin,
    input A0,
    input B0,
    input A1,
    input B1,
    input A2,
    input B2,
    input A3,
    input B3,
    input A4,
    input B4,
    input A5,
    input B5,
    input A6,
    input B6,
    input A7,
    input B7,
    output S0,
    output S1,
    output S2,
    output S3,
    output S4,
    output S5,
    output S6,
    output S7,
    output Cout
    );
    wire C0, C1, C2, C3, C4, C5, C6;
    Part1 Adder0(A0, B0, Cin, S0, C0);
    Part1 Adder1(A1, B1, C0, S1, C1);
    Part1 Adder2(A2, B2, C1, S2, C2);
    Part1 Adder3(A3, B3, C2, S3, C3);
    Part1 Adder4(A4, B4, C3, S4, C4);
    Part1 Adder5(A5, B5, C4, S5, C5);
    Part1 Adder6(A6, B6, C5, S6, C6);
    Part1 Adder7(A7, B7, C6, S7, Cout);
endmodule
