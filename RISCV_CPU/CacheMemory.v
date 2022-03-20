`timescale 1ns / 1ps

module CacheMemory(ADDR,WE,CLK,DIN,DO,RDY);
	
	input [31:0] DIN;
	input [4:0] ADDR;
	input WE,CLK;
	output [31:0] DO;
	output RDY;
	
	reg [31:0] memory [31:0];
	
	always @(posedge CLK)
	begin
		if (WE) begin
			memory[ADDR] <= DIN;
		end
	end
	
	assign RDY = 1'b1;
	assign DO = memory[ADDR];
	
endmodule
