`timescale 1ns / 1ps

module InstrCache(PC,CLK,INSTR);
	
	parameter INIT_FLAG = 1;
	parameter INIT_FILE = "code.mem";
	
	input [31:0] PC;
	input CLK;
	output reg [31:0] INSTR;
	reg [31:0] memory [256:0];
	
	always @(posedge CLK)
	begin
		INSTR = memory[PC >> 2];
	end
	
	initial
		if (INIT_FLAG) begin
			// Fill with a addi x0, zero instruction
			// because right now the first instruction
			// after reset gets missed. Hacky but it works.
			memory[0] <= {{12{1'b0}},{5{1'b0}},{3{1'b0}},{5{1'b0}},7'b0010011};
			$readmemb(INIT_FILE, memory, 1, 256);
		end
	
endmodule
