
`timescale 1ns / 1ps
module MUX_3_to_1(out, in1,in2, in3, in4, in5, in6, in7, in8, sel);

input [15:0] in1, in2, in3, in4, in5, in6, in7, in8;
input [2:0] sel;
output reg [15:0] out;

always @ (in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8 or sel)
begin

case(sel)
3'b000: out = in1;
3'b001: out = in2;
3'b010: out = in3;
3'b011: out = in4;
3'b100: out = in5;
3'b101: out = in6;
3'b110: out = in7;
3'b111: out = in8;
endcase

end
endmodule