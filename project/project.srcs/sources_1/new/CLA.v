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
    input [31:0] A, B,
    input Ctrl,
    output [31:0] S,
    output Cout
    );
    
    wire D[31:0];
    wire G[31:0];
    wire P[31:0];
    wire C[32:0];
    assign C[0] = Ctrl;
    
    genvar i;
    generate
        for(i = 0; i < 32; i = i + 1)begin
            assign D[i] = B[i]^Ctrl;
            assign G[i] = A[i]&D[i];
            assign P[i] = A[i]^D[i];
            assign C[i+1] = G[i]|(P[i]&C[i]);
            Part1 Full_Adder(A[i], D[i], C[i], S[i]);
        end
    endgenerate
    assign Cout = C[32];
endmodule
