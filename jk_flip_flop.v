`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module jk_flip_flop (
    input J,
    input K,
    input clk,
    input reset,      // asynchronous reset
    output reg Q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;                 // reset output
    else begin
        case ({J, K})
            2'b00: Q <= Q;        // no change
            2'b01: Q <= 1'b0;     // reset
            2'b10: Q <= 1'b1;     // set
            2'b11: Q <= ~Q;       // toggle
        endcase
    end
end

endmodule

