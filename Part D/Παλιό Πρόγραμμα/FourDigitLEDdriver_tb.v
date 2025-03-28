//PART 4 TESTBENCH//
`timescale 1ns/1ps

module FourDigitLEDdriver_tb;

reg button;
reg clk;
reg reset;
wire an3, an2, an1, an0;
wire a, b, c, d, e, f, g, dp;

FourDigitLEDdriver FourDigitLEDdriver_u(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .reset(reset), .clk(clk), .button(button));

initial
begin
	clk = 0;
	forever #5 clk = ~clk;
end

initial
begin
	button=1'b1;
	reset = 1'b0;
	#100 reset = 1'b1;
	//#2000 button = 1'b0;
	#100 reset = 1'b0;
	//#2000 button = 1'b1;
end

/*
initial
begin
    #200000 $finish;
end*/

endmodule