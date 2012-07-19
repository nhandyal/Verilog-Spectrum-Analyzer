`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:42:04 04/30/2012
// Design Name:   bitRevOrder
// Module Name:   C:/Users/Nikhil Handyal/Documents/Spring 2012/EE 201/Xillinx/Final Project/Spectrum_Analyzer/bitRevOrder_tb.v
// Project Name:  Spectrum_Analyzer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bitRevOrder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bitRevOrder_tb;
	
	parameter HALF_PERIOD = 5;
	
	// Inputs
	reg Clk;
	reg start;
	reg reset;
	reg [17:0] DinA;
	reg [17:0] DinB;

	// Outputs
	wire write_enableA;
	wire write_enableB;
	wire [9:0] addrA;
	wire [9:0] addrB;
	wire [17:0] DoutA;
	wire [17:0] DoutB;
	wire tc;

	// Instantiate the Unit Under Test (UUT)
	bitRevOrder uut (
		.Clk(Clk), 
		.start(start), 
		.reset(reset), 
		.DinA(DinA), 
		.DinB(DinB), 
		.write_enableA(write_enableA), 
		.write_enableB(write_enableB), 
		.addrA(addrA), 
		.addrB(addrB), 
		.DoutA(DoutA), 
		.DoutB(DoutB), 
		.tc(tc)
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
		DinA = 5;
		DinB = 10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#HALF_PERIOD
		reset = 0;
		#10;
		start = 1;
		#10;
		start = 0;
	end
      
endmodule

