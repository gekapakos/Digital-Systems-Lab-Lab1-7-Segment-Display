/*PART B*/
`timescale 1ns / 1ps

module FourDigitLEDdriver(button, reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);
input clk, reset, button;
output an3, an2, an1, an0;
output a, b, c, d, e, f, g, dp;

//Set the output clks as wires:
wire clkf, clk_out;
reg [3:0] message [0:15];
//wire [3:0] message_w [15:0];
reg [3:0] char;
wire new_button, new_reset;

assign dp = 1'b1;

always@ (posedge clk_out or posedge new_reset)
begin
	if(new_reset) begin
		message[0] <= 4'h0;
		message[1] <= 4'h1;
		message[2] <= 4'h2;
		message[3] <= 4'h3;
		message[4] <= 4'h4;
		message[5] <= 4'h5;
		message[6] <= 4'h6;
		message[7] <= 4'h7;
		message[8] <= 4'h8;
		message[9] <= 4'h9;
		message[10] <= 4'ha;
		message[11] <= 4'hb;
		message[12] <= 4'hc;
		message[13] <= 4'hd;
		message[14] <= 4'he;
		message[15] <= 4'hf;
	end
	else begin
		message[0] <= 4'h0;
		message[1] <= 4'h1;
		message[2] <= 4'h2;
		message[3] <= 4'h3;
		message[4] <= 4'h4;
		message[5] <= 4'h5;
		message[6] <= 4'h6;
		message[7] <= 4'h7;
		message[8] <= 4'h8;
		message[9] <= 4'h9;
		message[10] <= 4'ha;
		message[11] <= 4'hb;
		message[12] <= 4'hc;
		message[13] <= 4'hd;
		message[14] <= 4'he;
		message[15] <= 4'hf;

	end
end

/*
assign message_w[0] = 4'b0000;
assign message_w[1] = 4'b0001;
assign message_w[2] = 4'b0010;
assign message_w[3] = 4'b0011;
assign message_w[4] = 4'b0100;
assign message_w[5] = 4'b0101;
assign message_w[6] = 4'b0110;
assign message_w[7] = 4'b0111;
assign message_w[8] = 4'b1000;
assign message_w[9] = 4'b1001;
assign message_w[10] = 4'b1010;
assign message_w[11] = 4'b1011;
assign message_w[12] = 4'b1100;
assign message_w[13] = 4'b1101;
assign message_w[14] = 4'b1110;
assign message_w[15] = 4'b1111;*/


// MMCME2_BASE : In order to incorporate this function into the design,
//   Verilog   : the following instance declaration needs to be placed
//  instance   : in the body of the design code.  The instance name
// declaration : (MMCME2_BASE_inst) and/or the port declarations within the
//    code     : parenthesis may be changed to properly reference and
//             : connect this function to the design.  All inputs
//             : and outputs must be connected.

//  <-----Cut code below this line---->

   // MMCME2_BASE: Base Mixed Mode Clock Manager
   //              Artix-7
   // Xilinx HDL Language Template, version 2018.3

   MMCME2_BASE #(
      .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
      .CLKFBOUT_MULT_F(6.0),     // Multiply value for all CLKOUT (2.000-64.000).
      .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
      .CLKIN1_PERIOD(10.0),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
      .CLKOUT1_DIVIDE(120),
      .CLKOUT2_DIVIDE(1),
      .CLKOUT3_DIVIDE(1),
      .CLKOUT4_DIVIDE(1),
      .CLKOUT5_DIVIDE(1),
      .CLKOUT6_DIVIDE(1),
      .CLKOUT0_DIVIDE_F(1.0),    // Divide amount for CLKOUT0 (1.000-128.000).
      // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
      .CLKOUT0_DUTY_CYCLE(0.5),
      .CLKOUT1_DUTY_CYCLE(0.5),
      .CLKOUT2_DUTY_CYCLE(0.5),
      .CLKOUT3_DUTY_CYCLE(0.5),
      .CLKOUT4_DUTY_CYCLE(0.5),
      .CLKOUT5_DUTY_CYCLE(0.5),
      .CLKOUT6_DUTY_CYCLE(0.5),
      // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
      .CLKOUT0_PHASE(0.0),
      .CLKOUT1_PHASE(0.0),
      .CLKOUT2_PHASE(0.0),
      .CLKOUT3_PHASE(0.0),
      .CLKOUT4_PHASE(0.0),
      .CLKOUT5_PHASE(0.0),
      .CLKOUT6_PHASE(0.0),
      .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
      .DIVCLK_DIVIDE(1.0),         // Master division value (1-106)
      .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
      .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
   )
   MMCME2_BASE_inst (
      // Clock Outputs: 1-bit (each) output: User configurable clock outputs
      .CLKOUT0(),     // 1-bit output: CLKOUT0
      .CLKOUT0B(),   // 1-bit output: Inverted CLKOUT0
      .CLKOUT1(clk_out),     // 1-bit output: CLKOUT1
      .CLKOUT1B(),   // 1-bit output: Inverted CLKOUT1
      .CLKOUT2(),     // 1-bit output: CLKOUT2
      .CLKOUT2B(),   // 1-bit output: Inverted CLKOUT2
      .CLKOUT3(),     // 1-bit output: CLKOUT3
      .CLKOUT3B(),   // 1-bit output: Inverted CLKOUT3
      .CLKOUT4(),     // 1-bit output: CLKOUT4
      .CLKOUT5(),     // 1-bit output: CLKOUT5
      .CLKOUT6(),     // 1-bit output: CLKOUT6
      // Feedback Clocks: 1-bit (each) output: Clock feedback ports
      .CLKFBOUT(clkf),   // 1-bit output: Feedback clock
      .CLKFBOUTB(), // 1-bit output: Inverted CLKFBOUT
      // Status Ports: 1-bit (each) output: MMCM status ports
      .LOCKED(),       // 1-bit output: LOCK
      // Clock Inputs: 1-bit (each) input: Clock input
      .CLKIN1(clk),       // 1-bit input: Clock
      // Control Ports: 1-bit (each) input: MMCM control ports
      .PWRDWN(1'b0),       // 1-bit input: Power-down
      .RST(reset),             // 1-bit input: Reset
      // Feedback Clocks: 1-bit (each) input: Clock feedback ports
      .CLKFBIN(clkf)      // 1-bit input: Feedback clock
   );


integer i = 0, i0=0, i1=0, i2=0, i3=0, flag;
reg [3:0] count;
reg en;

reg button_check;

always @ (posedge clk_out or posedge new_reset)  begin
    if(new_reset) begin
        button_check<=0;
    end
    else begin
        if(new_button)
            button_check<=1;
        else
            button_check<=0;
    end
end

reg [3:0] char1;

always@ (posedge clk_out or posedge new_reset) begin
    if(new_reset) begin
        i0=0;
        i1=0;
        i2=0;
        i3=0;
    end
    else begin
        case({new_button, button_check})
        2'b01: begin 
                    i0 = i0+1;
                    i2 = i2+1;
                    i3 = i3+1;
                    i1 = i1+1;
                   // char1<=message[i0-1];
                   // if(~an0) begin
                        if(i0>15)
                            i0=0;
                    //end
                     //else if(~an1) begin
                         if((message[i1] == 4'hf)) begin
                            if(i1>14)
                                i1=-1;
                             end
                             else begin
                                if(i1>15)
                                    i1=0;
                             end
                     //end
                     //else if(~an2) begin
                         if((message[i2+1] == 4'hf)) begin
                            if(i2>13)
                                i2=-2;
                         end
                         else begin
                            if(i2>14)
                                i2=-1;
                         end
                     //end
                     //else if(~an3) begin
                         if((message[i3+2] == 4'hf)) begin
                            if(i3>13)
                                i3=-3;
                         end
                         else begin
                            if(i3>13)
                                i3=-2;
                         end
                     //end
        end
        default: begin i0=i0;
                       i1=i1;
                       i2=i2;
                       i3=i3;
        end
        endcase
   end
end

/*
always @ (posedge clk_out or posedge reset) begin
	if (reset) begin 
		i0 = 0;
		i1 = 1;
		i2 = 2;
		i3 = 3;
	end
	else
	begin
		if(button) begin
			i0=i0+1;
			i1=i1+1;
			i2=i2+1;
			i3=i3+1;
		end
		else begin
			i0=i0;
			i1=i1;
			i2=i2;
			i3=i3;
		end
	end
end*/
/*
always @ (posedge button) begin
    if(button)
    begin
        i0=i0+1;
        i1=i1+2;
        i2=i2+3;
        i3=i3+4;
    end
end*/

reg [3:0] char0;


always @ (posedge clk_out or posedge new_reset) begin
	if (new_reset)
		char <= 0;  
    else  begin
			if((!an0)) begin
				char0 = message[0+i0];
				char = char0;
				i=i0;
			end
			else if((!an1)) begin
			    if((message[i1+1]-char0 == 1) || (message[i1+1]-char0 == -15)) begin
                    char <= message[i1+1];
                    i=i1+1;
                end
                else begin
                    char <= message[i1];
                    i=i1;
                end
			end			
			else if((!an2)) begin
				if((message[i2+2]-char0 == 2) || (message[i2+2]-char0 == -14)) begin
                    char <= message[i2+2];
                    i=i2+2;
                end
                else begin
                    char <= message[i2+1];
                    i=i2+1;
                end
                
			end
			else if((!an3)) begin
                if((message[i3+3]-char0 == 3) || (message[i3+3]-char0 == -13)) begin
                    char <= message[i3+3];
                    i=i3+3;
                end
                else begin
                    char <= message[i3+2];
                    i=i3+2;
                end
			end
			else begin
				char<=message[i];
			end

    end
end
 
/*
always @ (posedge clk_out or posedge reset) begin
	if (reset)  
		char <= 0;  
    else  begin
		if(button) begin
			if((!an0)) begin
				char <= message[0+i0];
				i=i0;
				i0=i0+1;
				if(i0>15) 
					i0=0;
			end
			else if((!an1)) begin
				char <= message[1+i1];
				i=i1+1;
				i1=i1+1;
				if(i1>14) 
					i1=-1;
			end			
			else if((!an2)) begin
				char <= message[2+i2];
				i=i2+2;
				i2=i2+1;
				if(i2>13) 
					i2=-2;
			end
			else if((!an3)) begin
				char <= message[3+i3];
				i=i3+3;
				i3=i3+1;
				if(i3>12) 
					i3=-3;
			end
			else begin
				char<=message[i];
			end
		end
	   else begin
		  char<=message[i];
	   end
    end
end*/

debouncer debouncer_u1(.button(reset),.clk(clk_out),.reset(),.result(new_reset));
debouncer debouncer_u2(.button(button),.clk(clk_out),.reset(),.result(new_button));
counter4bit counter4bit_inst (.clk(clk_out), .reset(reset), .an({an3, an2, an1, an0}));
LEDdecoder LEDdecoder_inst (char, {a, b, c, d, e, f, g});

endmodule