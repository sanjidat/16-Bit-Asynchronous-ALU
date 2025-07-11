
`timescale 1ns / 1ps
module multiplier(p, a, b);

input [11:0] a;
input [3:0] b;
output [15:0] p;

wire [47:0] w;
wire [36:1] c;
wire [36:1] s;

and a1(w[0], a[0], b[0]);
and a2(w[1], a[1], b[0]);
and a3(w[2], a[2], b[0]);
and a4(w[3], a[3], b[0]);
and a5(w[4], a[4], b[0]);
and a6(w[5], a[5], b[0]);
and a7(w[6], a[6], b[0]);
and a8(w[7], a[7], b[0]);
and a9(w[8], a[8], b[0]);
and a10(w[9],a[9], b[0]);
and a11(w[10],a[10], b[0]);
and a12(w[11],a[11], b[0]);

and a13(w[12], a[0], b[1]);
and a14(w[13], a[1], b[1]);
and a15(w[14], a[2], b[1]);
and a16(w[15], a[3], b[1]);
and a17(w[16], a[4], b[1]);
and a18(w[17], a[5], b[1]);
and a19(w[18], a[6], b[1]);
and a20(w[19], a[7], b[1]);
and a21(w[20], a[8], b[1]);
and a22(w[21], a[9], b[1]);
and a23(w[22], a[10], b[1]);
and a24(w[23], a[11], b[1]);

and a25(w[24], a[0], b[2]);
and a26(w[25], a[1], b[2]);
and a27(w[26], a[2], b[2]);
and a28(w[27], a[3], b[2]);
and a29(w[28], a[4], b[2]);
and a30(w[29], a[5], b[2]);
and a31(w[30], a[6], b[2]);
and a32(w[31], a[7], b[2]);
and a33(w[32], a[8], b[2]);
and a34(w[33], a[9], b[2]);
and a35(w[34], a[10], b[2]);
and a36(w[35], a[11], b[2]);

and a37(w[36], a[0], b[3]);
and a38(w[37], a[1], b[3]);
and a39(w[38], a[2], b[3]);
and a40(w[39], a[3], b[3]);
and a41(w[40], a[4], b[3]);
and a42(w[41], a[5], b[3]);
and a43(w[42], a[6], b[3]);
and a44(w[43], a[7], b[3]);
and a45(w[44], a[8], b[3]);
and a46(w[45], a[9], b[3]);
and a47(w[46], a[10], b[3]);
and a48(w[47], a[11], b[3]);

fulladder a49(w[12], w[1], 1'b0 , s[1], c[1]);
fulladder a50(w[13], w[2], c[1] , s[2], c[2]);
fulladder a51(w[14], w[3], c[2] , s[3], c[3]);
fulladder a52(w[15], w[4], c[3] , s[4], c[4]);
fulladder a53(w[16], w[5], c[4], s[5], c[5]);
fulladder a54(w[17], w[6], c[5], s[6], c[6]);
fulladder a55(w[18], w[7], c[6] , s[7], c[7]);
fulladder a56(w[19], w[8], c[7] , s[8],c[8]);
fulladder a57(w[20], w[9], c[8] , s[9], c[9]);
fulladder a58(w[21], w[10], c[9] , s[10], c[10]);
fulladder a59(w[22], w[11], c[10] , s[11], c[11]);
fulladder a60(w[23], 1'b0, c[11] , s[12], c[12]);

fulladder a61(w[24], s[2], 1'b0 , s[13], c[13]);
fulladder a62(w[25], s[3], c[13], s[14], c[14]);
fulladder a63(w[26], s[4], c[14], s[15], c[15]);
fulladder a64(w[27], s[5], c[15], s[16], c[16]);
fulladder a65(w[28], s[6], c[1], s[17], c[17]);
fulladder a66(w[29], s[7], c[17], s[18], c[18]);
fulladder a67(w[30], s[8], c[18] , s[19], c[19]);
fulladder a68(w[31], s[9], c[19] , s[20], c[20]);
fulladder a69(w[32], s[10], c[20] , s[21], c[21]);
fulladder a70(w[33], s[11],c[21] , s[22], c[22]);
fulladder a71(w[34], s[12],c[22] , s[23], c[23]);
fulladder a72(w[35], c[12], c[23] , s[24], c[24]);

fulladder a73(w[36], s[14], 1'b0 , s[25], c[25]);
fulladder a74(w[37], s[15], c[25], s[26], c[26]);
fulladder a75(w[38], s[16], c[26], s[27], c[27]);
fulladder a76(w[39], s[17], c[27], s[28], c[28]);
fulladder a77(w[40], s[18], c[28], s[29], c[29]);
fulladder a78(w[41], s[19], c[29], s[30], c[30]);
fulladder a79(w[42], s[20], c[30] , s[31], c[31]);
fulladder a80(w[43], s[21], c[31] , s[32], c[32]);
fulladder a81(w[44], s[22], c[32] , s[33], c[33]);
fulladder a82(w[45], s[23], c[33] , s[34], c[34]);
fulladder a83(w[46], s[24], c[34] , s[35], c[35]);
fulladder a84(w[47], c[24], c[35] , s[36], c[36]);

assign p[0] = w[0];
assign p[1] = s[1];
assign p[2]= s[13];
assign p[3]= s[25];
assign p[4]= s[26];
assign p[5]= s[27];
assign p[6]= s[28];
assign p[7]= s[29];
assign p[8]= s[30];
assign p[9]= s[31];
assign p[10]= s[32];
assign p[11]= s[33];
assign p[12]= s[34];
assign p[13]= s[35];
assign p[14]= s[36];
assign p[15]= c[36];

endmodule
