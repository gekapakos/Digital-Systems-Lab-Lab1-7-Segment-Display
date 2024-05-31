/***************************************** N-bit counter *************************************/
 module counter (clk, SCLR,EN, reset,Cout);
     input clk;
     input reset;
     input SCLR;   // Clear of counter //
     input EN ; // Active 'HIGH' Enable //
     output Cout; // Counter Output //
 
         
         // Time period of debounce ckt = T = (2^N + 2)/ f //
        // 'f' is the input clock frequency //
        // 'N' is the mod value of counter //

parameter N = 2;
reg [N-1:0] count;

always@(posedge clk or posedge reset)
    if(reset)    
	begin
		count <= 0;
    end
	else   
	begin
		case({SCLR, EN})
			2'b00 : count <= count;
			2'b01 : count <= count + 1;
			default : count <= 2'b00;
		endcase
	end
	
assign Cout = count[N-1];
 
endmodule