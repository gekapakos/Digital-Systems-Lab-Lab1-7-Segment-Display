
module memory(clk, reset, an0, an1, an2, an3, char);

input clk, reset, an0, an1, an2, an3;
output [3:0] char;

reg [3:0] count0, count1, count2, count3;
reg [3:0] count;
reg [3:0] message [0:15];
reg [3:0] char;
wire en;

always@ (posedge clk or posedge reset)
begin
    if(reset) begin
        message[0] <= 4'b0000;
		message[1] <= 4'b0001;
		message[2] <= 4'b0010;
		message[3] <= 4'b0011;
		message[4] <= 4'b0100;
		message[5] <= 4'b0101;
		message[6] <= 4'b0110;
		message[7] <= 4'b0111;
		message[8] <= 4'b1000;
		message[9] <= 4'b1001;
		message[10] <= 4'b1010;
		message[11] <= 4'b1011;
		message[12] <= 4'b1100;
		message[13] <= 4'b1101;
		message[14] <= 4'b1110;
		message[15] <= 4'b1111;
	end
	else begin
		message[0] <= 4'b0000;
		message[1] <= 4'b0001;
		message[2] <= 4'b0010;
		message[3] <= 4'b0011;
		message[4] <= 4'b0100;
		message[5] <= 4'b0101;
		message[6] <= 4'b0110;
		message[7] <= 4'b0111;
		message[8] <= 4'b1000;
		message[9] <= 4'b1001;
		message[10] <= 4'b1010;
		message[11] <= 4'b1011;
		message[12] <= 4'b1100;
		message[13] <= 4'b1101;
		message[14] <= 4'b1110;
		message[15] <= 4'b1111;
    end
end

counter23bit counter23bit_u(clk, reset, en);

/*When en becomes 0, then increase the counters values*/
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		count0 <= 4'b0000;
		count1 <= 4'b0001;
		count2 <= 4'b0010;
		count3 <= 4'b0011;
	end
    else  begin
		if(!en) 
		begin
			count3 <= count3 + 4'b0001;
            count2 <= count2 + 4'b0001;
            count1 <= count1 + 4'b0001;
            count0 <= count0 + 4'b0001;
		end
    end
end

always@ (posedge clk)
begin
	if(reset == 1)
        begin
            //initialize the counter's value
            count <= 4'b0000;
        end
        else 
        begin
            // raise counter
            count <= count + 4'b0001;
        end
end

always@ (posedge clk or posedge reset) begin
	if (reset == 1'b1) begin
		char <= 4'b1111;
    end
    else  begin
		case(count)
		4'b0000: char <= message[count3]; // anode 0 will turn on
		4'b0001: char <= message[count3]; // anode 0 will turn on
		4'b0010: char <= message[count3]; // anode 0 will turn on
		4'b0011: char <= message[count3]; // anode 1 will turn on
		4'b0100: char <= message[count2]; // anode 1 will turn on
		4'b0101: char <= message[count2]; // anode 1 will turn on
		4'b0110: char <= message[count2]; // anode 1 will turn on
		4'b0111: char <= message[count2]; // anode 2 will turn on
		4'b1000: char <= message[count1]; // anode 2 will turn on
		4'b1001: char <= message[count1]; // anode 2 will turn on
		4'b1010: char <= message[count1]; // anode 2 will turn on
		4'b1011: char <= message[count1]; // anode 3 will turn on
		4'b1100: char <= message[count0]; // anode 3 will turn on
		4'b1101: char <= message[count0]; // anode 3 will turn on
		4'b1110: char <= message[count0]; // anode 3 will turn on
		4'b1111: char <= message[count0]; // anode 0 will turn on
		default: char <= 4'b1111;
		endcase
    end
end

endmodule