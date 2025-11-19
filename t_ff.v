`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module t_ff (
    input  wire T,
    input  wire clk,
    output reg  Q,
    output wire Qbar
);

assign Qbar = ~Q;

always @(posedge clk) begin
    if (T)
        Q <= ~Q;   // Toggle
    else
        Q <= Q;    // Hold
end

endmodule

