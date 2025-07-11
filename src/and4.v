
`timescale 1ns / 1ps
module and4(Y, M1, N1);

input [3:0] M1, N1;
output [3:0] Y;

and a1(Y[3], M1[3], N1[3]), a2(Y[2], M1[2], N1[2]), a3(Y[1], M1[1], N1[1]), a4(Y[0], M1[0], N1[0]);

endmodule
