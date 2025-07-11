
`timescale 1ns / 1ps
module dem_1_to_3(O0, O1, O2, O3, O4, O5, O6, O7, A, sel);

input [15:0] A;
input [2:0] sel;
output [15:0] O0,O1,O2,O3,O4,O5,O6,O7;
reg [15:0] O0,O1,O2,O3,O4,O5,O6,O7;

always @ (A or sel)
begin

case(sel)
3'b000: begin O0=A; O1=0; O2=0; O3=0; O4=0; O5=0; O6=0; O7=0; end
3'b001: begin O0=0; O1=A; O2=0; O3=0; O4=0; O5=0; O6=0; O7=0; end
3'b010: begin O0=0; O1=0; O2=A; O3=0; O4=0; O5=0; O6=0; O7=0; end
3'b011: begin O0=0; O1=0; O2=0; O3=A; O4=0; O5=0; O6=0; O7=0; end
3'b100: begin O0=0; O1=0; O2=0; O3=0; O4=A; O5=0; O6=0; O7=0; end
3'b101: begin O0=0; O1=0; O2=0; O3=0; O4=0; O5=A; O6=0; O7=0; end
3'b110: begin O0=0; O1=0; O2=0; O3=0; O4=0; O5=0; O6=A; O7=0; end
3'b111: begin O0=0; O1=0; O2=0; O3=0; O4=0; O5=0; O6=0; O7=A; end
endcase

end
endmodule