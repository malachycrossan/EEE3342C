`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2025 09:56:27 AM
// Design Name: 
// Module Name: Part5
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

module Part5 ( 
     input A, B, C, D, 
     input wire clk,
     input wire reset,
     output reg [3:0]segEnable,
     output wire [6:0]outSeg
     );
     
     reg [16:0] clockCounter;
     wire [6:0] onesSegment, tensSegment, hunsSegment, thousSegment; 
     wire slowClk;
     
     // Divides 100 MHz Clock to 0.66Hz clock
     always@(posedge clk or posedge reset)
     begin
     
         // If reset, set counter to 0
         if(reset)
            clockCounter <=0; 
            
         // Each clock cycle increment counter
         else
            clockCounter <= clockCounter + 1; 
     end
     
     assign slowClk = clockCounter[16:16];
     
     // Switch to each 4 segment each slow clock cycle
     always@(posedge slowClk or posedge reset)
     begin
     
         // If reset, set state machine to 0
         if(reset)
            segEnable <= 4'b1111; 
        
         // State machine that switches between ones and tens place
        case(segEnable)
            4'b1110 : segEnable <= 4'b1101; 
            4'b1101 : segEnable <= 4'b1011; 
            4'b1011 : segEnable <= 4'b0111; 
            4'b0111 : segEnable <= 4'b1110; 
            default : segEnable <= 4'b1110; 
        endcase
     end
// TODO : Make print_seg decoder module where the segments are a 7-bit output 
// Decoder will be inside always@(posedge slowClk or posedge reset) block
// Reset is asynchronous, set segment to 7'b0000001 when reset is 1.
wire [3:0] Bin = {A, B, C, D};
print_seg onesDisplay(.BIN(Bin), .segment(onesSegment));

wire [3:0] Zero = 4'd0;
print_seg tensDisplay(Zero, slowClk, reset, tensSegment);
print_seg hunsDisplay(Zero, slowClk, reset, hunsSegment);
print_seg thousDisplay(Zero, slowClk, reset, thousSegment);

assign outSeg = (segEnable == 4'b1110)? onesSegment :
                (segEnable == 4'b1101)? tensSegment : 
                (segEnable == 4'b1011)? hunsSegment : thousSegment; 
endmodule

