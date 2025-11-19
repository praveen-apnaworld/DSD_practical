module priority_encoder_4to2 (
    input  wire [3:0] in,   // in[3] highest priority
    output reg  [1:0] out,
    output reg        valid
);
    always @(*) begin
        valid = 1'b0;
        out   = 2'b00;

        if (in[3]) begin out = 2'd3; valid = 1; end
        else if (in[2]) begin out = 2'd2; valid = 1; end
        else if (in[1]) begin out = 2'd1; valid = 1; end
        else if (in[0]) begin out = 2'd0; valid = 1; end
    end
endmodule

