`timescale 1ns / 1ps

module reg_file(AW,AR,BR,WE,CLK,D,A,B);
	
	parameter WORDSIZE = 32;
	parameter BLOCKSIZE = 32;
	parameter ADDRSIZE = $clog2(BLOCKSIZE);
	input WE, CLK;
	input [ADDRSIZE-1:0] AW, AR, BR;
	input [WORDSIZE-1:0] D;
	output reg [WORDSIZE-1:0] A,B;

	reg [WORDSIZE-1:0] memory [BLOCKSIZE-1:0];
	
	always @(posedge CLK)
	begin
		if (WE) begin
			memory[AW] <= D;
		end
		A <= memory[AR];
		B <= memory[BR];
	end

endmodule
