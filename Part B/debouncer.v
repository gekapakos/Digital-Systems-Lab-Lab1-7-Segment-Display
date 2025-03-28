`timescale 1ns / 1ps

module debouncer(
    input button,
    input clk,
    output result
    );

/*********** Internal Variables **********/

wire Q1,Q2,enable,Q3,Cout;

/************** Main Code ******************/

/*Synchronizer*/

DFF D1(clk,button,Q1);
DFF D2(clk,Q1,Q2);

xor g1(enable,Q1,Q2); 

counter C1(button,clk, enable, Cout);

DFF D3(clk,Cout,Q3);

assign result = Q3;

endmodule