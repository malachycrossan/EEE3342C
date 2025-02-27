`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2025 10:48:42 AM
// Design Name: 
// Module Name: CLA
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


module CLA(
    input [7:0] A, B,
    input Cin,
    output [7:0] S,
    output Cout
    );
    
    wire G[7:0];
    wire P[7:0];
    wire C[8:0];
    assign C[0] = Cin;
    
    genvar i;
    generate
        for(i = 0; i < 8; i = i + 1)begin
            assign G[i] = A[i]&B[i];
            assign P[i] = A[i]^B[i];
            assign C[i+1] = G[i]|(P[i]&C[i]);
            Part1 Full_Adder(A[i], B[i], C[i], S[i]);
        end
    endgenerate
    assign Cout = C[8];
endmodule
