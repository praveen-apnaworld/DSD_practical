module boolean_exp(
input a,b,c,
output f1,f2,f3
);
assign f1=(a&b)|(~a&c);
assign f2=(~a&~b)|(b&c);
assign f3=(a^b)&c;
endmodule
