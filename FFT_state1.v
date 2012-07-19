`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:27 05/01/2012 
// Design Name: 
// Module Name:    FFT_state1 
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
module FFT_state1(Clk, start, reset, done,
							DinAR, DinAI,
							DinBR, DinBI,
							DinCos, DinSin,
							DoutAR, DoutAI,
							DoutBR, DoutBI,
							addrA, AddrB,
							writeEnableA, writeEnableB);

		input 				Clk, start, reset;
		output 				done;
		
		input 		[17:0] 	DinAR, DinAI, DinBR, DinBI, DinCos, DinSin;	// From the rams
		output 		[17:0] 	DoutAR, DoutAI, DoutBR, DoutBI;					// To the rams
		output 	 	[9:0] 	addrA, AddrB;
		output reg				writeEnableA, writeEnableB;
		
		wire 			[17:0]	bottomBranchR, bottomBranchI;
		reg			[17:0]	bottomBranchRReg, bottomBranchIReg;
		reg			[3:0]		state;
		reg 			[9:0]		addr;
		
		complexMult bottomTwiddle( .DinA(DinBR), .DinB(DinBI), .DinC(DinCos), .DinD(DinSin), .DoutR(bottomBranchR), .DoutI(bottomBranchI));
		(.Btnc(Btnc))
		localparam
		INITIAL	= 4'b0001,
		C1DELAY	= 4'b0010,
		MULTIPLY	= 4'b0100,
		C2DELAY	= 4'b1000;
		
		assign addrA = addr;
		assign addrB = addr + 1;
		
		always @(posedge Clk) begin : FFT_STATE1
			if (reset) begin
				state <= INITIAL;
				bottomBranchRReg <= 18'bxxxxxxxxxxxxxxxxxx;
				bottomBranchIREG <= 18'bxxxxxxxxxxxxxxxxxx;
				addr <= 10'bxxxxxxxxxx;
			end
			
			case (state)
				INITIAL: begin
					if (start) state <= C1DELAY;
					
					addr <= 0;
					bottomBranchRReg <= 0;
					bootomBranchIReg <= 0;
				end
				C1DELAY: begin
					state <= MULTIPLY;
					
					writeEnableA <= 1;
					writeEnableB <= 1;
				end
			endcase
		end
		
endmodule
