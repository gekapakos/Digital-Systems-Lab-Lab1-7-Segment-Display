`timescale 1ns / 1ps

module testbench;

    // Inputs
    reg button;
    reg clk;
    //reg reset;
    // resultputs
    wire result;

    // Instantiate the Unit Under Test (UUT)
    debounce_ckt uut (
        .button(button), 
        .clk(clk),
        //.reset(reset),
        .result(result)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        forever #15 clk=~clk;      // Clock Time peroid T = 30 ns
        
    end
      
    initial begin 

        #6000;
        button=0;// reset=1;
        //#50 reset=0;
        #50 button=1;            // Fluctuations - glitch
        #200 button=0;
        #50 button=1;           // Fluctuations - glitch
        #150 button=0;
        #100 button=1;          // Pushbotton pressed
        #8000 button=0;                       
        #50 button=1;           // Fluctuations - glitch
        #200 button=0;
        #50 button=1;           // Fluctuations - glitch
        #200 button=0;
        
    end 
endmodule