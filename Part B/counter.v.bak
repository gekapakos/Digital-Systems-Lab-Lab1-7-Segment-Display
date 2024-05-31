`timescale 1ns / 1ps

module counter(
    input button,
    input clk,
    input enable,
    output reg Cout
    );
    
parameter N = 8; // Counts from 0 to 2^[N-1]
reg [N-1:0] count;

/*8 bit counter implementation*/
always@ (posedge clk) begin
	if(enable == 1'd1) begin
		count <= 8'b0;
		Cout <= 0;
	end
	else if(count == 8'd255) begin
		Cout <= button;
		count <= 8'b0;
	end
	else
		count <= count + 8'd1;
	
end


endmodule