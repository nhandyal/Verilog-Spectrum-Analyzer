`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:09:44 05/01/2012 
// Design Name: 
// Module Name:    FFT_alg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FFT_alg(Clk);

	input Clk;
	
	
	reg [9:0] topIndex					// index of top butterfly branch
	reg [9:0] bottomIndex				// index of bottom butterfly branch
	reg [8:0] butterflyStep;			// size of butterfly multiply
	reg [8:0] subGroupings; 			// number of subgroups in a stage
	reg [8:0] subGroupingSize;			// number of steps in each sub group
	
	reg [11:0] state;
	
	localparam
	INITIAL	= 12'b000000000001,
	S1			= 12'b000000000010,
	S2			= 12'b000000000100,
	S3			= 12'b000000001000,
	S4			= 12'b000000010000,
	S5			= 12'b000000100000,
	S6			= 12'b000001000000,
	S7			= 12'b000010000000,
	S8			= 12'b000100000000,
	S9			= 12'b001000000000,
	S10		= 12'b010000000000,
	DONE		= 12'b100000000000;
	
	always @ (posedge Clk) begin : FFT_ALGORITHM
		if(reset) begin
			state <= INITIAL;
		end
			
		case (state)
			INITIAL: begin
				topIndex <= 0;
				butterflyStep <= 1;
				subGroupings <= 511;
			end
			S1: begin
				
			end
		endcase
	end
	

endmodule
