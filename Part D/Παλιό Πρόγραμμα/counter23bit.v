`timescale 1ns / 1ps

module counter23bit (clk, reset, enable);

input clk, reset;
output reg enable;
reg [22:0] out;
reg [15:0] temp;
reg en;
  
always @ (posedge clk or posedge reset) begin  
	if (reset)  
		out <= 0;  
    else  
	begin
		out <= out + 1;
	end
end

always@ (posedge clk or posedge reset) begin  
	if (reset)  
		temp <= 0;
    else
	begin
		if(en == 1) begin
			temp <= temp + 1;
			enable <= en;
			if(temp ==16)
				en<=0;
		end
		else begin
			temp<=0;
			enable <= 0;
		end
	end
end

always@ (posedge clk or posedge reset) begin  
	if(reset) begin
		en <= 0; 
		enable<=0;
	end
	else begin
		if(out == 23)
			en = 1;
	end
end

endmodule