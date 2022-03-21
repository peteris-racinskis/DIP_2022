`timescale 1ns / 1ps

module InstrCache(PC,CLK,CE,INSTR);
	
	parameter INIT_FLAG = 1;
	parameter INIT_FILE = "code.mem";
	
	input [31:0] PC;
	input CLK, CE;
	output reg [31:0] INSTR;
	reg [31:0] memory [255:0];
	
	always @(posedge CLK)
	begin
		if (CE) begin
			INSTR = memory[PC >> 2];
		end
	end
	
	initial
		if (INIT_FLAG) begin
			$readmemb(INIT_FILE, memory, 0, 255);
		end
	
endmodule
