module counter23bit(clk, reset, en);

input clk, reset;
output reg en;
reg [22:0] count23;

/*23 bit counter, but when all its' bits become 1, then en turns to 0(active low en)*/
always @ (posedge clk or posedge reset) begin  
	if (reset)  begin
		count23 <= 23'd0;  
		en<=1'b1;
	end
    else if(&count23) begin
		count23 <= 23'd0;
		en<=1'b0;
	end
	else  
	begin
		count23 <= count23 + 23'd1;
		en<=1'b1;
	end
end

endmodule