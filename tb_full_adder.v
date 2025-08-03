`timescale 1ns/1ps
module tb_full_adder;
    reg A, B, Cin;
    wire Sum, Cout;

    full_adder uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, tb_full_adder);

        A=0; B=0; Cin=0; #10;
        A=0; B=0; Cin=1; #10;
        A=0; B=1; Cin=0; #10;
        A=0; B=1; Cin=1; #10;
        A=1; B=0; Cin=0; #10;
        A=1; B=0; Cin=1; #10;
        A=1; B=1; Cin=0; #10;
        A=1; B=1; Cin=1; #10;

        $finish;
    end
endmodule
