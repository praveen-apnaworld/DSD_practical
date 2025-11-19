`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module tb_t_ff;

    reg T, clk;
    wire Q, Qbar;

    t_ff DUT (.T(T), .clk(clk), .Q(Q), .Qbar(Qbar));

    // Clock generation (10ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time | clk | T | Q | Qbar");
        $display("--------------------------------");

        T = 0; #10;   // No toggle
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, T, Q, Qbar);

        T = 1; #10;   // Toggle
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, T, Q, Qbar);

        T = 1; #10;   // Toggle again
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, T, Q, Qbar);

        T = 0; #10;   // Hold
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, T, Q, Qbar);

        T = 1; #10;   // Toggle again
        $display("%4t |  %b  | %b | %b |  %b", $time, clk, T, Q, Qbar);
    end

endmodule

