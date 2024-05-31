`timescale 1ns / 1ps

module testbench_partA;

reg [3:0] char;
wire [6:0] LED;

/*Instalazation of the top level module*/
LEDdecoder LEDdecoder_u(.char(char), .LED(LED));

/*Give different values to char*/
initial begin
	char = 4'b000;
	#100 char = 4'b0001;
	#100 char = 4'b0010;
	#100 char = 4'b0011;
	#100 char = 4'b0100;
	#100 char = 4'b0101;
	#100 char = 4'b0110;
	#100 char = 4'b0111;
	#100 char = 4'b1000;
	#100 char = 4'b1001;
	#100 char = 4'b1010;
	#100 char = 4'b1011;
	#100 char = 4'b1100;
	#100 char = 4'b1101;
	#100 char = 4'b1110;
	#100 char = 4'b1111;
	#100 char = 4'b0000;
end

endmodule