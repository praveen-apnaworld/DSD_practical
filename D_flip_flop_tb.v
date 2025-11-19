`timescale 1ns / 1ps



module d_flip_flop_tb();

reg D, clk, reset;
wire Q;

d_flip_flop uut (
    .D(D),
    .clk(clk),
    .reset(reset),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1; D = 0;
    #10 reset = 0;

    #10 D = 1;
    #10 D = 0;
    #10 D = 1;

    #20 $stop;
end

endmodule
