
`timescale 1ns / 1ps
module cla_16_bit(Sum, Cout, P, Q, Cin);

input [15:0] P, Q;
input Cin;
output [15:0] Sum;
output Cout;

wire c1,c2,c3;

cla_4bit cla1(.SUM(Sum[3:0]), .CARRYOUT(c1), .A(P[3:0]), .B(Q[3:0]), .CARRYIN(Cin));
cla_4bit cla2(.SUM(Sum[7:4]), .CARRYOUT(c2), .A(P[7:4]), .B(Q[7:4]), .CARRYIN(c1));
cla_4bit cla3(.SUM(Sum[11:8]), .CARRYOUT(c3), .A(P[11:8]), .B(Q[11:8]), .CARRYIN(c2));
cla_4bit cla4(.SUM(Sum[15:12]), .CARRYOUT(Cout), .A(P[15:12]), .B(Q[15:12]), .CARRYIN(c3));

endmodule