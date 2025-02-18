`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 10:44:32 AM
// Design Name: 
// Module Name: Sim_1
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


module Sim_1(

    );
    parameter NUM_INP = 4;
    reg A, B, C, D;
    reg[NUM_INP-1:0] cnt;
    wire FPOS, FSOP;
    integer i;
    Part_1 UUT(.A(A), .B(B), .C(C), .D(D), .FPOS(FPOS), .FSOP(FSOP));
        initial begin
            cnt = 0;
            for(i = 0; i < 2**NUM_INP; i = i + 1)begin
                A = cnt[3];
                B = cnt[2];
                C = cnt[1];
                D = cnt[0];
                cnt = cnt + 1;
                #10;
            end
        end
    endmodule
