`timescale 1ns / 1ps

module InstrCache(PC,INSTR);
	
	parameter INIT_FLAG = 0;
	parameter INIT_FILE = "code.bin";
	
	input [31:0] PC;
	output reg [31:0] INSTR;
	reg [31:0] memory [255:0];
	
	always @(PC)
	begin
		INSTR = memory[PC];
	end
	
	initial
		if (INIT_FLAG) begin
			$readmemb(INIT_FILE, memory, 0, 255);
		end
	
endmodule
