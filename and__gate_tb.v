`timescale 1ns / 1ps

module and_gate_tb;

  reg a, b;
  wire y;

  and_gate uut (a, b, and_gate);

  initial begin
    $monitor("A B AND_GATE", a, b, and_gate);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end

endmodule
