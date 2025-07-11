
`timescale 1ns / 1ps
module Orgate(o, m, n);

input [3:0] m, n;
output [3:0] o;

or o1(o[3], m[3], n[3]), o2(o[2], m[2], n[2]), o3(o[1], m[1], n[1]), o4(o[0], m[0], n[0]);

endmodule