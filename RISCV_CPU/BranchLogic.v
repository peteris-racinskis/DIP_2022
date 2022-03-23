`timescale 1ns / 1ps

module BranchLogic(IMM,PC,HOLD,D,Z,RST,OPCODE,INCR);
	
	parameter ZER = 1;
	parameter NZR = 2;
	parameter DAT = 3;
	parameter NDT = 4;
	parameter JMP = 5;
	
	input [31:0] IMM, PC, D;
   input [2:0] OPCODE;
   input Z, RST, HOLD;
   output reg [31:0] INCR;
	reg ADD_IMMEDIATE;
	wire DATA_NULL;
		
	/*
		Unconditional jumps: separate opcode.
		To create branch instructions using this and the ALU:
		1. BEQ - SUB A,B, x0; Take zero flag output;
		2. BNE - SUB A,B, x0; Invert zero flag output;
		3. BLT - SLT A,B, x0; Reduce ALU output;
		4. BLTU- SLU A,B, x0; Reduce ALU output;
		5. BGE - SLT A,B, x0; Invert reduced ALU output;
		6. BGEU- SLU A,B, x0; Invert reduced ALU output
		For the others, flip A,B registers.
	*/
	
	assign DATA_NULL = |D;
	
	always @(*)
	begin
		case(OPCODE)
			ZER: ADD_IMMEDIATE = Z;
			NZR: ADD_IMMEDIATE = !Z;
			DAT: ADD_IMMEDIATE = DATA_NULL;
			NDT: ADD_IMMEDIATE = !DATA_NULL;
			JMP: ADD_IMMEDIATE = 1'b1;
			default: ADD_IMMEDIATE = 1'b0;
		endcase
		if (HOLD) begin
			INCR = PC;
		end else if (ADD_IMMEDIATE) begin
			INCR = PC + IMM;
		end else begin
			INCR = PC + 4;
		end
	end	
	
endmodule
