`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2025 10:10:36 AM
// Design Name: 
// Module Name: print_seg
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


module print_seg(
        input wire [3:0] BIN,
        input slowClk, reset,
        output reg [6:0] segment
    );
    always@(*)
    begin
    if(reset) segment = 7'b0000001;
        case(BIN)
            4'd0: segment = 7'b0000001;
            4'd1: segment = 7'b1001111;
            4'd2: segment = 7'b0010010;
            4'd3: segment = 7'b0000110;
            4'd4: segment = 7'b1001100;
            4'd5: segment = 7'b0100100;
            4'd6: segment = 7'b0100000;
            4'd7: segment = 7'b0001111;
            4'd8: segment = 7'b0000000;
            4'd9: segment = 7'b0000100;
            default: segment = 7'b0000001;
        endcase
    end
endmodule
