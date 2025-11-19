`timescale 1ns/1ps
module tb_priority_encoder;

    reg  [3:0] in;
    wire [1:0] out;
    wire       valid;

    priority_encoder_4to2 DUT (.in(in), .out(out), .valid(valid));

    initial begin
        $display("Time |   in   | valid | out");
        $display("------------------------------");

        in = 4'b0000; #10;
        $display("%4t | %b |   %b   |  %d", $time, in, valid, out);

        in = 4'b0001; #10;
        $display("%4t | %b |   %b   |  %d", $time, in, valid, out);

        in = 4'b0010; #10;
        $display("%4t | %b |   %b   |  %d", $time, in, valid, out);

        in = 4'b0101; #10;
        $display("%4t | %b |   %b   |  %d", $time, in, valid, out);

        in = 4'b1101; #10;
        $display("%4t | %b |   %b   |  %d", $time, in, valid, out);

        $finish;
    end
endmodule

