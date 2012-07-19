 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nikhil Handyal
// 
// Create Date:    	00:41:00 04/26/2012 
// Design Name: 
// Module Name:    	bitRevOrder 
// Project Name: 		spectrum_analyzer
// Target Devices: 	Spartan 6
// Tool versions: 
// Description: 		Module to perform a bit reversal index swap to prepare 
//							target data for a FFT analysis
//
// Dependencies: 		inputData_RRAM 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bitRevOrderSM(Clk, start, reset, DinA, DinB,
						write_enableA, write_enableB,
						addrA, addrB,
						DoutA, DoutB,
						tc);
	
	input						Clk, start, reset;
	input			[17:0]	DinA, DinB;
	
	output reg				write_enableA, write_enableB;
	output		[9:0]		addrA, addrB;
	output		[17:0] 	DoutA, DoutB;
	output 					tc;
	
	reg			[8:0] 	addr;
	reg			[3:0] 	state;
	
	localparam
	INITIAL 	= 4'b0001,
	C1DELAY	= 4'b0010,
	RDATA		= 4'b0100,
	DONE		= 4'b1000;

	bitRevRam brRam(.Clk(Clk), .addr(addr), .DoutA(addrA), .DoutB(addrB));
	
	assign DoutB = DinA;
	assign DoutA = DinB;
	assign tc = addr[8] & addr[7] & addr[6] & addr[5] & addr[4] & ~addr[3] & ~addr[2] & ~addr[1] & ~addr[0]; 
	
	always @ (posedge Clk) begin
		if (reset) begin
			state <= INITIAL;
			addr <= 9'bxxxxxxxxx;
			write_enableA <= 1'bx;
			write_enableB <= 1'bx;
		end
		
		case (state)
			INITIAL: begin
				// State transitions
				if (start) state <= C1DELAY;
				
				// RTL Statements
				addr <= 9'b000000000;
				write_enableA <= 0;
				write_enableB <= 0;
			end
			C1DELAY: begin
				// State transitions
				state <= RDATA;
				
				// RTL Statements
				write_enableA <= 1;
				write_enableB <= 1;
			end
			RDATA: begin
				// State transitions and RTL
				if (tc) begin
					state <= DONE;
				end
				else begin
					state <= RDATA;
					addr <= addr + 1;
				end
			end
			DONE: begin
				// State transitions
				state <= INITIAL;
				
				// RTL Statements
				write_enableA <= 0;
				write_enableB <= 0;
			end
		endcase
	end
endmodule
