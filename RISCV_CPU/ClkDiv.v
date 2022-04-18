`timescale 1ns / 1ps
module ClkDiv(CLK,DIV);

	parameter SPLIT = 10;
	parameter HALF = SPLIT / 2;
	
	input CLK;
	output DIV;
	reg [31:0] cnt = 0;
	
	assign DIV = (cnt > HALF);
	
	always @(posedge CLK)
	begin
		cnt <= (cnt >= SPLIT) ? 0 : cnt + 1;
	end

endmodule
