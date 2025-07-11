
`timescale 1ns / 1ps
module xor_16bit(c, a, b);

input [15:0] a, b;
output [15:0] c;

xor gate o1(c[15:12], a[15:12], b[15:12]), o2(c[11:8], a[11:8], b[11:8]), o3(c[7:4], a[7:4], b[7:4]),
o4(c[3:0], a[3:0], b[3:0]);

endmodule