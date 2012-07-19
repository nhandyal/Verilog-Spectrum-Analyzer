`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nikhil Handyal
// 
// Create Date:    	22:14:57 04/30/2012 
// Design Name: 
// Module Name:    	inputData_IRAM 
// Project Name: 		spectrum_analyzer
// Target Devices: 	Spartan 6
// Tool versions: 
// Description: 		Ram to store the imaginary values of the FFT
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module inputData_IRAM(ClkA, ClkB, reset, DoutA, DoutB, addrA, addrB, DinA, DinB, write_enableA, write_enableB);


   parameter RAM_WIDTH = 18;
   parameter RAM_ADDR_BITS = 10;
   
	input ClkA, ClkB, reset, write_enableA, write_enableB;
	
   (* RAM_STYLE="{AUTO | BLOCK |  BLOCK_POWER1 | BLOCK_POWER2}" *)
   reg 		[RAM_WIDTH-1:0] imem[(2**RAM_ADDR_BITS)-1:0];
   output 	[RAM_WIDTH-1:0] DoutA, DoutB;

   input [RAM_ADDR_BITS-1:0] 	addrA, addrB;
   input [RAM_WIDTH-1:0] 		DinA, DinB;

	reg [RAM_ADDR_BITS-1:0] 	addr_regA, addr_regB;
	integer i;
	
   always @(posedge ClkA) begin
		addr_regA <= addrA;
		if (reset) begin
			for (i = 0; i <= 1023; i = i+1)
				imem[i] = i;
		end
		else begin
			if (write_enableA)
				imem[addr_regA] <= DinA;	
		end
	end
	
	always @(posedge ClkB) begin
		addr_regB <= addrB;
		if (write_enableB)
			imem[addr_regB] <= DinB;
	end
	
	assign DoutA = imem[addr_regA];
	assign DoutB = imem[addr_regB];
endmodule