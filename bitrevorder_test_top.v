`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:43:15 04/30/2012 
// Design Name: 
// Module Name:    bitrevorder_test_top 
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
module bitrevorder_test_top();



bitRevOrder bitrevorderModule(.Clk(ClkA), .start(start), .reset(reset),
											.DinA(DinA), .DinB(DinB),
											.write_enableA(write_enableA), .write_enableB(write_enableB),
											.addrA(addrA), addr(addrB),
											.DoutA(DoutA), .DoutB(DoutB));

inputData_RRAM_test inputRam(.ClkA(ClkA), .ClkB(ClkB), .reset(Reset),
											.DoutA(DoutA), .DoutB(DoutB),
											.addrA(addrA), .addrB(addrB),
											.DinA(DinA), .DinB(DinB),
											.write_enableA(write_enableA), .write_enableB(write_enableB));
endmodule
