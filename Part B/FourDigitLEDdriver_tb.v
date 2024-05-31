//PART B TESTBENCH//
`timescale 1ns/1ps

module FourDigitLEDdriver_tb;

reg clk;
reg reset;
wire an3, an2, an1, an0;
wire a, b, c, d, e, f, g, dp;

/*Instalization of the top level module*/
FourDigitLEDdriver FourDigitLEDdriver_u(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .reset(reset), .clk(clk));

/*Clock with a period of 10ns*/
initial
begin
	clk = 0;
	forever #5 clk = ~clk;
end

/*Give different values to reset*/
initial
begin
	reset = 1'b0;
	#100 reset = 1'b1;
	#1200 reset = 1'b0;
end

endmodule