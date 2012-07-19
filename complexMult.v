`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:58 05/01/2012 
// Design Name: 
// Module Name:    complexMult_BottomBranch_Twiddle 
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
module complexMult(DinA, DinB, DinC, DinD, DoutR, DoutI);

	input 	[17:0] DinA, DinB, DinC, DinD;
	output 	[17:0] DoutR, DoutI;

	wire 		[35:0] tempReal, tempImag;
	
	assign 	tempReal = (DinA*DinC)-(DinB*DinD);
	assign 	tempImag = (DinA*DinD)+(DinC*DinB);
	
	assign	DoutR = tempReal[27:10];
	assign 	DoutI = tempImag[27:10];
	
endmodule
