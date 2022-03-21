`timescale 1ns / 1ps

module PC(INCR, CLK, CE, PC);
	
	input [31:0] INCR;
   input CLK, CE;
   output reg [31:0] PC;
		
	always @(posedge CLK)
	begin
		if (CE) begin
			PC <= INCR;
		end
	end

endmodule
