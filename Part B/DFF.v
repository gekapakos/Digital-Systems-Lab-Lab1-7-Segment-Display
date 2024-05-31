`timescale 1ns / 1ps

module DFF(
    input clk,
    input D,
    output reg Q
    );
     
always @(posedge clk) 
    begin
		Q <= D;
    end
endmodule