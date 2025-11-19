module tb_basic_gates(
);
reg a,b;
wire and_gate,or_gate,
not_gate,
nand_gate,
nor_gate,
xor_gate,
xnor_gate;
basic_gates uut(a,b,and_gate,or_gate,
not_gate,
nand_gate,
nor_gate,
xor_gate,
xnor_gate);
initial begin
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
$finish;
end

endmodule
