`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:39:54 04/30/2012
// Design Name:   bitRevRam
// Module Name:   C:/Users/Nikhil Handyal/Documents/Spring 2012/EE 201/Xillinx/Final Project/Spectrum_Analyzer/bitRevRam_tb.v
// Project Name:  Spectrum_Analyzer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bitRevRam
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bitRevRam_tb;
	
	parameter HALF_PERIOD = 5;
	
	// Inputs
	reg Clk;
	reg [8:0] addr;

	// Outputs
	wire [9:0] DoutA;
	wire [9:0] DoutB;

	// Instantiate the Unit Under Test (UUT)
	bitRevRam uut (
		.Clk(Clk), 
		.addr(addr), 
		.DoutA(DoutA), 
		.DoutB(DoutB)
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
		addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		addr = 5;
		#10
		addr = 10;
		#10
		addr = 15;
		#10
		addr = 20;
		#10
		addr = 500;
	end
      
endmodule

