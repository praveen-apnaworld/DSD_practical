`timescale 1ns / 1ps
//==============================
// Full Adder - Behavioral Model
//==============================
module full_adder (
    input A, B, Cin,       // Inputs
    output Sum, Cout       // Outputs
);
    assign Sum  = A ^ B ^ Cin;              // XOR for Sum
    assign Cout = (A & B) | (B & Cin) | (A & Cin);  // Carry logic
endmodule

