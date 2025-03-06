`timescale 1ns / 1ps
module Part1_Sim();
    parameter NUM_INP = 3;
    reg A, B, S;
    reg[NUM_INP-1:0] cnt;
    wire F;
    integer i;
    Part1 UUT(.A(A), .B(B), .S(S), .F(F));
    initial begin
        cnt = 0;
        for(i = 0; i < 2**NUM_INP; i = i + 1) begin
            A = cnt[2];
            B = cnt[1];
            S = cnt[0];
            cnt = cnt + 1;
            #10;
        end
    end
endmodule