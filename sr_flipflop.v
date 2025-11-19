`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module sr_flipflop(
input s,r,clk,
output q, qbar
);
wire sg, rg;
assign #1 sg=(~(s&(clk)));
assign #1 rg=(~(r&(clk)));
assign #1 q=(~(sg&qbar));
assign #1 qbar=(~(rg&q));
endmodule