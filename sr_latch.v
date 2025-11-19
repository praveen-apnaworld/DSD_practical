`timescale 1ns / 1ps

module sr_latch(
input s,r,
output q,qbar
);
assign q=~(s&qbar);
assign qbar=~(r&q);
endmodule
