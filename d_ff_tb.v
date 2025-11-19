`timescale 1ns/1ps
module tb_d_ff;

    reg D, clk;
    wire Q, Qbar;

    d_ff DUT (.D(D), .clk(clk), .Q(Q), .Qbar(Qbar));

    // Clock generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time | clk | D | Q | Qbar");
        $display("--------------------------------");

        D = 0; #10;   // Q follows D on positive edge
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, D, Q, Qbar);

        D = 1; #10;
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, D, Q, Qbar);

        D = 0; #10;
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, D, Q, Qbar);

        D = 1; #10;
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, D, Q, Qbar);

        $finish;
    end

endmodule

