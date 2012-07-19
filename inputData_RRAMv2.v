`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:23 04/29/2012 
// Design Name: 
// Module Name:    inputData_RRAMv2 
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
module inputData_RRAMv2(ClkA, ClkB,
								EnA, EnB,
								write_enableA, write_enableB, 
								addrA, addrB, 
								DoutA, DoutB, 
								DinA, DinB);
	
   parameter RAM_WIDTH = 18;
   parameter RAM_ADDR_BITS = 10;

	input ClkA, ClkB, EnA, EnB, write_enableA, write_enableB;

   (* RAM_STYLE="{BLOCK |  BLOCK_POWER1 | BLOCK_POWER2}" *)
   reg [RAM_WIDTH-1:0] rmem[(2**RAM_ADDR_BITS)-1:0];
   output 	reg 	[RAM_WIDTH-1:0] 			DoutA, DoutB;

   input  			[RAM_ADDR_BITS-1:0] 	addrA, addrB;
   input  			[RAM_WIDTH-1:0] 			DinA, DinB;
	
	reg [RAM_ADDR_BITS-1:0] addrA_reg, addrB_reg;

   always @(posedge ClkA)
      addrA_reg <= addrA;
		if (EnA) begin
         if (write_enableA)
            rmem[addrA_reg] <= DinA;
         DoutA <= rmem[addrA_reg];
      end
      
   always @(posedge ClkB)
		addrB_reg <= addrB;
      if (EnB) begin
         if (write_enableB)
            rmem[addrB_reg] <= DinB;
         DoutB <= rmem[addrB_reg];
      end
						

endmodule
