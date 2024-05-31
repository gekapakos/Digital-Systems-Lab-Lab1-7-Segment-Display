module DFF(D,clk,reset,EN, Q);
input D; // Data input 
input clk; // clock input 
input reset; // asynchronous reset high level
input EN;
output reg Q; // output Q 

always @(posedge clk or posedge reset) 
begin
	if(reset == 1'b1)
		Q <= 1'b0; 
	else
	begin
		case(EN)
			1'b0 : Q <= Q; 
			1'b1 : Q <= D; 
			default : Q <= 0;
		endcase
	end
end 

endmodule