`timescale 1ns / 1ps

module debouncer(
input button,
input clk,
input reset,
output result);

wire EN1 = 1'b1;
wire Q1;
wire Q2;
wire SCLR;
wire Q3;

DFF FF1 (button,clk,reset,EN1,Q1);
DFF FF2 (Q1,clk,reset,EN1, Q2);

xor g1 (SCLR,Q1,Q2);

counter C1 (clk,SCLR,~Cout,reset,Cout);     
DFF FF3 (Q2,clk,reset,Cout,Q3);

assign result = Q3;

endmodule