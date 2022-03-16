`timescale 1ns / 1ps

module PC(INCR, CLK, PC);
	
	input [31:0] INCR;
   input CLK;
   output reg [31:0] PC;
		
	always @(posedge CLK)
	begin
		PC <= INCR;
	end

endmodule
