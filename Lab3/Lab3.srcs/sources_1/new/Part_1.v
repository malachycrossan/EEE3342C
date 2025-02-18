`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 10:30:45 AM
// Design Name: 
// Module Name: Part_1
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


module Part_1(
    input A,
    input B,
    input C,
    input D,
    output FPOS,
    output FSOP
    );
    
    assign FSOP = (~A&B&~C&D)|(A&~B&~C&D)|(~A&B&C&~D)|(A&~B&~C&~D);
    assign FPOS = (A|B|~C)&(~A|~B|D)&(~A|C|D)&(A|~B|C);
endmodule
