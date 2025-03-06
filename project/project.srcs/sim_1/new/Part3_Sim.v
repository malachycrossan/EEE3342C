`timescale 1ns / 1ps
module Part3_Sim();
    parameter NUM_INP = 3;
    reg [7:0] A;
    reg [2:0] S;
    wire F;
    integer i;
    Part3 UUT(.A(A), .S(S), .F(F));
    initial begin
        A = 8'b10110111;
        S = 0;
        for(i = 0; i < 2**NUM_INP; i = i + 1) begin
            S = S + 1;
            #10;
        end
    end
endmodule