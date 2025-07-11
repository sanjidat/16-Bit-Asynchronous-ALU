
`timescale 1ns / 1ps
module fulladder(a, b, cin, Sum, cout);

input a,b,cin;
output Sum, cout;

wire f1,f2,f3;

xor u1(f1,a,b);
xor u2(Sum,cin,f1);
and u3(f2,a,b);
and u4(f3,f1,cin);
or u5(cout, f2,f3);

endmodule