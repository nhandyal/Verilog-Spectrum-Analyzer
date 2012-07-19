`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:01:46 04/30/2012 
// Design Name: 
// Module Name:    counter9bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	9 bit loadable counter, increments on external signal called inc
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter9bit(Clk, load, inc, count, Din,
							md2, md4, md8, md16,
							md32, md64, md128,
							md216, md512);
		
		input Clk, load, inc;
		input [8:0] Din;
		
		output md2, md4, md8, md16, md32, md64, md128, md216, md512;
		output reg [8:0] count;
		
		always @(posedge Clk) begin
			if (load)
				count <= Din;
			else if	(inc)
				count <= count + 1;
		end
		
		assign md2 		= count[0];
		assign md4 		= count[0] & count[1];
		assign md8 		= count[0] & count[1] & count[2];
		assign md16 	= count[0] & count[1] & count[2] & count[3];
		assign md32	 	= count[0] & count[1] & count[2] & count[3] & count[4];
		assign md64 	= count[0] & count[1] & count[2] & count[3] & count[4] & count[5];
		assign md128 	= count[0] & count[1] & count[2] & count[3] & count[4] & count[5] & count [6];
		assign md216 	= count[0] & count[1] & count[2] & count[3] & count[4] & count[5] & count [6] & count[7];
		assign md512 	= count[0] & count[1] & count[2] & count[3] & count[4] & count[5] & count [6] & count[7] & count[8];
		
endmodule
