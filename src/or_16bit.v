
`timescale 1ns / 1ps
module or 16bit(o, m, n);

input [15:0] m,n;
output [15:0] o;

Orgate o1(o[15:12], m[15:12], n[15:12]), o2(o[11:8], m[11:8], n[11:8]), o3(o[7:4], m[7:4], n[7:4]),
o4(o[3:0], m[3:0], n[3:0]);

endmodule