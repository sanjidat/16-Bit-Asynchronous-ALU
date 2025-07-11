
`timescale 1ns / 1ps
module finalalu(Sum, Carryout, Product, Logic, Result, A, B, Carryin, S1, S2);

input [15:0] A;
input [15:0] B;
input Carryin;
input [2:0] S1, S2;
output reg [15:0]Product;
output reg [15:0]Sum;
output reg [15:0]Logic;
output reg [15:0]Result;
output Carryout;

wire [15:0] a0,a1,a2,a3,a4,a5,a6,a7, b0,b1,b2,b3,b4,b5,b6,b7;
wire [15:0] c0,c1,c2,c3,c4,c5,c6,c7, d0,d1,d2,d3,d4,d5,d6,d7;
wire [15:0] e0,e1,e2,e3,e4,e5,e6,e7, f0,f1,f2,f3,f4,f5,f6,f7;
wire [15:0] P, S, L, R;

dem to 3 DEMUX11(a0, a1, a2, a3, a4, a5, a6, a7, A, S1);

dem 1 to 3 1 DEMUX2(b0, b1, b2, b3, b4, b5, b6, b7, B, S1);

multiplier MUL(P, a1, b1);

cla 16bit ADD(S, Carryout, a2, b2, Carryin);

dem to 3 DEMUX3(c0, c1, c2, c3, c4, c5, c6, c7, a4, S2);

dem 1 to 3 1 DEMUX4(d0, d1, d2, d3, d4, d5, d6, d7, b4, S2);

and16 AND(e1, c1, d1);

or 16bit OR(e2, c2, d2);

xor 16bit XOR(e4, c4, d4);

MUX 3 to 1 MUX1(L, e0, e1, e2, e3, e4, e5, e6, e7, S2);

MUX 3 to 1 1 MUX2(R, f0, P, S, f3, L, f5, f6, f7, S1);

always @*
begin
    if(S1 == 3'b001)
    begin
        Product = P;
        Result = R;
        end
    else if(S1 == 3'b010)
    begin
        Sum = S;
        Result = R;
    end
    else if(S1 == 3'b100)
    begin
        if(S2 == 3'b001)
        begin
            Logic = e1;
            Result = R;
        end
        else if (S2 == 3'b010)
        begin
            Logic = e2;
            Result = R;
        end
        else if(S2==3'b100)
        begin
            Logic = e4;
            Result = R;
        end
    end
end

endmodule