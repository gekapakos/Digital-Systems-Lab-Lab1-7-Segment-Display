`timescale 1ns / 1ps

module counter4bit (clk, reset, an);

input clk, reset;
output reg [3:0] an;
reg [3:0] out;

/*Count from 0000 to 1111*/
always @ (posedge clk or posedge reset) begin  
	if (reset)  
		out <= 0;  
    else  
	begin
		out <= out + 1;
	end
end  


/*Activate the anodes according to the counter's value*/
always @ (posedge clk or posedge reset)
begin
    if(reset == 1'b0)
    begin
        case(out)
            4'b0010: an <= 4'b1110;
            4'b0110: an <= 4'b1101;
            4'b1010: an <= 4'b1011;
            4'b1110: an <= 4'b0111;
            default: an <= 4'b1111;
            endcase
		end
	else
	begin
	   an <= 4'b1111;
	end
end
endmodule