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
    parameter NUM_INP = 3;
    reg A, B, C;
    reg[NUM_INP-1:0] cnt; 
    wire X, Y;
    integer i;
    Part1 UUT(.A(A), .B(B), .C(C), .X(X), .Y(Y));
    initial begin
        cnt = 0;
        for(i = 0; i < 2**NUM_INP; i = i + 1) begin
            A = cnt[2];
            B = cnt[1];
            C = cnt[0];
            cnt = cnt + 1;
            #10;
        end
    end
endmodule
