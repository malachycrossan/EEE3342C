
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 11:04:48 AM
// Design Name: 
// Module Name: Part2_Sim
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

`timescale 1ns / 1ps
module Part2_Sim();
        reg A, B;
        wire [3:0] F;
        Part2 UUT(.A(A), .B(B), .F(F));
        initial begin
                A = 0;
                B = 0;
                #10;
                A = 0;
                B = 1;
                #10;
                A = 1;
                B = 0;
                #10;
                A = 1;
                B = 1;
                #10;
        end
endmodule
