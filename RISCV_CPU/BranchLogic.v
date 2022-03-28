`timescale 1ns / 1ps

module BranchLogic(IMM,RS1,PC,HOLD,D,Z,RST,OPCODE,INCR,MSL);
	
	parameter ZER = 1;
	parameter NZR = 2;
	parameter DAT = 3;
	parameter NDT = 4;
	parameter JLI = 5;
	parameter JLR = 6;
	
	input [31:0] IMM, PC, D, RS1;
   input [2:0] OPCODE;
   input Z, RST, HOLD;
   output reg [31:0] INCR;
	output MSL; // Address misaligned
	reg ADD_IMMEDIATE;
	wire DATA_NULL, ADD_REGISTER;
		
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
	assign ADD_REGISTER = (OPCODE == JLR);
	assign MSL = |INCR[1:0]; // See if there's anything under 4 bytes lol
	
	always @(*)
	begin
		case(OPCODE)
			ZER: ADD_IMMEDIATE = Z;
			NZR: ADD_IMMEDIATE = !Z;
			DAT: ADD_IMMEDIATE = DATA_NULL;
			NDT: ADD_IMMEDIATE = !DATA_NULL;
			JLI: ADD_IMMEDIATE = 1'b1;
			JLR: ADD_IMMEDIATE = 1'b0;
			default: ADD_IMMEDIATE = 1'b0;
		endcase
		if (HOLD) begin
			INCR = PC;
		end else if (ADD_IMMEDIATE) begin
			INCR = PC + IMM;
		end else if (ADD_REGISTER) begin
			// Add 4 to compensate for the empty first instruction and make
			// this entirely transparent to any compiler or programmer.
			INCR = IMM + RS1 + 4; // It adds an offset to RS1, not current PC!
		end else begin
			INCR = PC + 4;
		end
	end	
	
endmodule
