`timescale 1ns / 1ps

module RegFile(AW,AR,BR,WE,CLK,D,A,B,DBR,DBO);
	
	parameter WORDSIZE = 32;
	parameter BLOCKSIZE = 32;
	parameter ADDRSIZE = $clog2(BLOCKSIZE);
	input WE, CLK;
	input [4:0] AW, AR, BR,DBR;
	input [31:0] D;
	output reg [31:0] A,B,DBO;
	// Parameters don't work right with schematics.
	// Will probably port the top module to verilog next week.
	//input [ADDRSIZE-1:0] AW, AR, BR,DBR;
	//input [WORDSIZE-1:0] D;
	//output reg [WORDSIZE-1:0] A,B,DBO;

	//reg [WORDSIZE-1:0] memory [BLOCKSIZE-1:0];
	reg [31:0] memory [31:0];
	
	always @(posedge CLK)
	begin
		memory[0] <= 0;
		if (WE & AW != 0) begin
			memory[AW] <= D;
		end
		A <= memory[AR];
		B <= memory[BR];
		DBO <= memory[DBR]; // debug
	end

endmodule