// Verilog test fixture created from schematic C:\Users\Nikhil Handyal\Documents\Spring 2012\EE 201\Xillinx\Final Project\Spectrum_Analyzer\bitRevOrder_SM_Top.sch - Mon Apr 30 21:07:15 2012

`timescale 1ns / 1ps

module bitRevOrder_SM_Top_bitRevOrder_SM_Top_sch_tb();

	parameter HALF_PERIOD = 5;

	// Inputs
   reg start;
   reg reset;
   reg Clk;

	// Output
   wire tc;

	// Instantiate the UUT
   bitRevOrder_SM_Top UUT (
		.tc(tc), 
		.start(start), 
		.reset(reset), 
		.Clk(Clk)
   );

	initial begin : CLK_GEN
		Clk = 0;
		forever begin
			#HALF_PERIOD Clk = ~Clk;
		end
	end

	initial begin
		// Initialize Inputs
		start = 0;
		reset = 1;
		Clk = 0;
		
		// Wait 100ns for global reset to finish
		#100
		
		//apply stimulus
		#HALF_PERIOD;
		reset = 0;
		#10;
		start = 1;
		#10
		start = 0;
	end
	
endmodule
