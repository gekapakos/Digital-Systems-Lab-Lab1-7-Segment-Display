/*
parameter N=8;
	
wire enable;
reg Q1, Q2;
reg [N-1:0] count, Cout;
	
always@ (posedge clk) begin
	Q1 <= button;
	Q2 <= Q1;
	Cout <= count;
	if(&Cout) //If count is 11_111_111
		result <= Q2;
end	

assign enable = Q1^Q2;

always@ (enable or Cout) begin
	case({enable, &Cout}) 
	   2'b00: count <= Cout + 1;
	   2'b01: count <= Cout;
	   default: count <= {N{1'b0}};
	endcase
end

endmodule*/