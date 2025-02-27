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
    reg tCin,tA0,tB0,tA1,tB1,tA2,tB2,tA3,tB3,tA4,tB4,tA5,tB5,tA6,tB6,tA7,tB7;
    wire tS0,tS1,tS2,tS3,tS4,tS5,tS6,tS7,tCout;
    Part2 UUT(tCin,tA0,tB0,tA1,tB1,tA2,tB2,tA3,tB3,tA4,tB4,tA5,tB5,tA6,tB6,tA7,tB7,tS0,tS1,tS2,tS3,tS4,tS5,tS6,tS7,tCout);
    initial begin
        tCin = 0;
        tA0 = 0; tA1 = 0; tA2 = 0; tA3 = 0; tA4 = 0; tA5 = 0; tA6 = 0; tA7 = 0;
        tB0 = 0; tB1 = 0; tB2 = 0; tB3 = 0; tB4 = 0; tB5 = 0; tB6 = 0; tB7 = 0;
        #10
        tA0 = 1; tA1 = 1; tA2 = 0; tA3 = 0; tA4 = 1; tA5 = 0; tA6 = 1; tA7 = 1;
        #10;
        tB0 = 1; tB1 = 0; tB2 = 1; tB3 = 0; tB4 = 1; tB5 = 0; tB6 = 1; tB7 = 0;
        #10;
    end
endmodule
