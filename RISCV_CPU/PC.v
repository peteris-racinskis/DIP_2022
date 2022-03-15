`timescale 1ns / 1ps

module PC(INCR, CLK, RST, PC);
	
	input [31:0] INCR;
   input CLK, RST;
   output reg [31:0] PC;
		
	always @(posedge CLK)
	begin
		if (RST) begin
			PC <= 0;
		end else begin
			PC <= INCR;
		end
	end

endmodule
