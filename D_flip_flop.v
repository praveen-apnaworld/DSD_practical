`timescale 1ns / 1ps


module d_flip_flop (
    input  wire D,
    input  wire clk,
    input  wire reset,   // asynchronous reset
    output reg Q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;      // reset output
    else
        Q <= D;         // store input on rising clock
end

endmodule



