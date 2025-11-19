`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module counter (
    input  wire clk,
    input  wire reset,   // active-high reset
    output reg [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;      // reset counter
    else
        count <= count + 1;    // increment counter
end

endmodule

