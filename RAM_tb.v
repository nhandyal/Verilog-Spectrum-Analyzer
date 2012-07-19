`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:39 04/29/2012
// Design Name:   inputData_RRAM
// Module Name:   C:/Documents and Settings/student/Desktop/FinalProject/RAM_tb.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inputData_RRAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_tb;

	parameter HALF_PERIOD = 5;
	
	// Inputs
	reg Clk_tb;
	reg reset_tb;
	reg write_enableA_tb;
	reg write_enableB_tb;
	reg [9:0] addrA_tb;
	reg [9:0] addrB_tb;
	reg [17:0] DinA_tb;
	reg [17:0] DinB_tb;

	// Outputs
	wire [17:0] DoutA_tb;
	wire [17:0] DoutB_tb;

	// Instantiate the Unit Under Test (UUT)
	inputData_RRAM uut (
		.Clk(Clk_tb), 
		.reset(reset_tb), 
		.write_enableA(write_enableA_tb), 
		.write_enableB(write_enableB_tb), 
		.addrA(addrA_tb), 
		.addrB(addrB_tb), 
		.DinA(DinA_tb), 
		.DinB(DinB_tb), 
		.DoutA(DoutA_tb), 
		.DoutB(DoutB_tb)
	);
	initial
	begin  : CLK_GENERATOR
    Clk_tb = 0;
    forever
       begin
	  #HALF_PERIOD Clk_tb = ~Clk_tb;
       end 
  end

	initial
	 begin  : RESET_GENERATOR
		reset_tb = 1;
		#(4 * HALF_PERIOD) reset_tb = 0;
	 end

	initial begin
		// Initialize Inputs
		//Clk = 0;
		//reset = 0;
		write_enableA_tb = 0;
		write_enableB_tb = 0;
		addrA_tb = 0;
		addrB_tb = 0;
		DinA_tb = 0;
		DinB_tb = 0;

		// Wait 100 ns for global reset to finish
		#10;
		DinA_tb = 18'b000000000000000001;
		write_enableA_tb = 1;
		#20;
		addrA_tb = 1;
		DinA_tb = 18'b000000000000000010;
		#20
		addrA_tb = 2;
		DinA_tb = 18'b000000000000000011;
		#7.5;
		addrA_tb = 1;
		#20;
		DinA_tb = 18'b000000000000000100;
		#3.5;
		write_enableA_tb = 0;
		#7.5;
		addrA_tb = 5;
        
		// Add stimulus here

	end
      
endmodule

