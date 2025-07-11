
`timescale 1ns / 1ps
module cla 4bit(SUM, CARRYOUT, A, B, CARRYIN);

input [3:0] A,B;
input CARRYIN;
output [3:0] SUM;
output CARRYOUT;

wire [3:0] P, G, C;

assign P= A ^B;                                  //propagate
assign G= A & B;                               //generate
assign C[0]=CARRYIN;
assign C[1]= G[0] k(P[0]&C[0]);
assign C[2]= G[1] k(P[1]&G[0])kP[1]&P[0]&C[0];
assign C[3]= G[2] k(P[2]&G[1])kP[2]&P[1]&G[0]kP[2]&P[1]&P[0]&C[0];
assign CARRYOUT = G[3] k(P[3]&G[2])kP[3]&P[2]&G[1]kG[3]&P[2]&P[1]&P[0]C[0];
assign SUM = P ^C;

endmodule