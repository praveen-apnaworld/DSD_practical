`timescale 1ns / 1ps

module tb_mux2to1(
);
reg a,b, sel;
wire y;
mux2to1 uut(a,b,sel,y);
initial begin
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
$finish;
end
endmodule