module half_adder(
input a,b,
output sum, carry
);
assign sum=(a&(~b))|(b&(~a));
assign carry=a&b;
endmodule


