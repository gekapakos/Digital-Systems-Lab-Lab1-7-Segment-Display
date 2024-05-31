//PART 4 TESTBENCH//
`timescale 1ns/1ps

module FourDigitLEDdriver_tb;

reg button;
reg clk;
reg reset;
wire an3, an2, an1, an0;
wire a, b, c, d, e, f, g, dp;

/*Instalization of the top level module*/
FourDigitLEDdriver FourDigitLEDdriver_u(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .reset(reset), .clk(clk), .button(button));


/*Give different values to reset and button*/
initial
begin
	clk=0;

	reset = 1;
	button =0;
	#350
	#7 reset = 0;
	#148

	#3200 button = 0;
	#2800 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#300 reset = 1;
	#30000 reset = 0;

	#3200 button = 0;
	#3200 button = 1;

	#32000 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;

	#300 reset = 1;
	#60000 reset = 0;

	#3200 button = 1;

	#62000 button = 0;
	#3200 button = 1;

	#3200 button = 0;
	#3200 button = 1;

	#3200 button = 0;
end

initial
begin
	forever #5 clk = ~clk;
end

endmodule