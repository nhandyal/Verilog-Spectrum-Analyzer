// Verilog test fixture created from schematic C:\Users\Nikhil Handyal\Documents\Spring 2012\EE 201\Xillinx\Final Project\Spectrum_Analyzer\test.sch - Tue May 01 14:43:06 2012

`timescale 1ns / 1ps

module test_test_sch_tb();

	parameter halfperiod = 5;
// Inputs
   reg reset;
   reg Clk;
   reg start;

// Output

// Bidirs

// Instantiate the UUT
   test UUT (
		.reset(reset), 
		.Clk(Clk), 
		.start(start)
   );
	
	initial begin
		Clk = 0;
		forever begin
			#halfperiod Clk = ~Clk;
		end
	end
// Initialize Inputs
   
       initial begin
		reset = 1;
		Clk = 0;
		start = 0;
		
		#halfperiod
		reset = 0;
		#10;
		start = 1;
		#10;
		start = 0;
		end
endmodule
