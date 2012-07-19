// Verilog test fixture created from schematic C:\Users\Nikhil Handyal\Documents\Spring 2012\EE 201\Xillinx\Final Project\Spectrum_Analyzer\bitrevorder_test_top2.sch - Mon Apr 30 03:21:40 2012

`timescale 1ns / 1ps

module bitrevorder_test_top2_bitrevorder_test_top2_sch_tb();

 parameter HALF_PERIOD = 5;

// Inputs
   reg Clk;
   reg start;
   reg reset;

// Output
	integer i, fileID;
	wire md512;
	
// Bidirs

// Instantiate the UUT
   bitrevorder_test_top2 UUT (
		.Clk(Clk), 
		.start(start), 
		.reset(reset),
		.md512(md512)
   );
initial begin :CLK_GENERATOR
	Clk = 0;
	forever begin
		#HALF_PERIOD Clk = ~Clk;
	end
end


initial begin
	// Initialize Inputs
	//fileID = $fopen("bit_rev_order_output.txt","w");
	Clk = 0;
	start = 0;
	reset = 1;
	
	// Wait 100ns for global reset to finish
	#100;
	
	// Apply Stimulus
	#HALF_PERIOD;
	reset = 0;
	start = 1;
	#20;
	start = 0;
	wait(md512);
	//Print_Ram;
	//$fclose(fileID);
end



endmodule
