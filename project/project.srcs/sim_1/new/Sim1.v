`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 10:00:03 AM
// Design Name: 
// Module Name: Sim1
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


module Sim1();
    reg[31:0] A, B;
    reg Ctrl;
    wire[31:0] S;
    wire Cout;
    CLA UUT(.A(A), .B(B), .Ctrl(Ctrl), .S(S), .Cout(Cout));
    initial begin
        Ctrl = 0;
        A = 32'b00010110101101011001010010111011;
        B = 32'b00000101011010100011000000111010;
    end
endmodule
