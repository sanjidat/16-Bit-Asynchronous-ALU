
`timescale 1ns / 1ps
module and16(Y, M1, N1);

input [15:0] M1, N1;
output [15:0] Y;

and4 a1(Y[15:12], M1[15:12],N1[15:12]), a2(Y[11:8], M1[11:8], N1[11:8]), a3(Y[7:4], M1[7:4],
N1[7:4]), a4(Y[3:0], M1[3:0], N1[3:0]);

endmodule