`timescale 1ns / 1ps
module Part4_Sim();
    parameter NUM_INP = 3;
    reg [2:0] S;
    wire [7:0] F;
    integer i;
    Part4 UUT(.S(S), .F(F));
    initial begin
        S = 0;
        for(i = 0; i < 2**NUM_INP; i = i + 1) begin
            S = S + 1;
            #10;
        end
    end
endmodule