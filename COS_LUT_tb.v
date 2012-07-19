`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:57:16 04/29/2012
// Design Name:   COS_LUT
// Module Name:   C:/Users/Nikhil Handyal/Documents/Spring 2012/EE 201/Xillinx/Final Project/Spectrum_Analyzer/COS_LUT_tb.v
// Project Name:  Spectrum_Analyzer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: COS_LUT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module COS_LUT_tb;

	parameter HALF_PERIOD = 10;

	// Inputs
	reg Clk;
	reg [9:0] addr;
	reg reset;

	// Outputs
	wire [17:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	COS_LUT uut (
		.Clk(Clk), 
		.addr(addr), 
		.Dout(Dout), 
		.reset(reset)
	);

	initial begin :CLK_GENERATOR
		Clk = 0;
		forever begin
			#HALF_PERIOD 
			Clk = ~Clk;
		end
	end

	initial begin
		// Initialize Inputs
		Clk = 0;
		addr = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#HALF_PERIOD
		reset = 0;
		addr = 20;
		#20
		addr = 30;
		#20
		addr = 70;

	end
      
endmodule

