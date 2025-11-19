module half_subtractor(
input a,b,
output diff, borrow
);
assign diff=(a&(~b))|(b&(~a));
assign borrow=(b&(~a));
endmodule