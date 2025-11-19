`timescale 1ns / 1ps

module full_subtractor(
input a,b,bin,
output diff,borrow
);
assign diff=bin^a^b;
assign borrow=bin&(~(a^b))|(~a)&b;
endmodule
