// Verilog test fixture created from schematic C:\Users\Nikhil Handyal\Documents\Spring 2012\EE 201\Xillinx\Final Project\Spectrum_Analyzer\bitRevOrderTest.sch - Mon Apr 30 20:03:39 2012

`timescale 1ns / 1ps

module bitRevOrderTest_bitRevOrderTest_sch_tb();

parameter HALF_PERIOD = 5;

// Inputs
   reg Clk;
   reg start;
   reg reset;

// Output
   wire tc;

// Instantiate the UUT
   bitRevOrderTest UUT (
		.tc(tc), 
		.Clk(Clk), 
		.start(start), 
		.reset(reset)
   );

initial begin : CLK_GENERATOR
	Clk = 0;
	forever begin
		#HALF_PERIOD Clk = ~Clk;
	end
end	
	
initial begin
	// Initialize Inputs
	Clk = 0;
	start = 0;
	reset = 1;
		
	// Wait 100ns for global reset to finish
	#100;
	
	// Add stimulus here
	#HALF_PERIOD;
	reset = 0;
	#20;
	start = 1;
	#40;
	start = 0;
end

endmodule
