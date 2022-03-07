`timescale 1ns / 1ps

module InstrDecode(INSTR,FUNCT7,FUNCT3,OPCODE,IMM,RS1,RS2_SHAMT,RD);
	
	parameter LUI = 7'b0110111;
	parameter AUIPC = 7'b0010111;
	parameter JAL = 7'b1101111;
	parameter JALR = 7'b1100111;
	parameter BTYPE = 7'b1100011;
	parameter LOADS = 7'b0000011;
	parameter STORES = 7'b0100011;
	parameter ARITHM_I = 7'b0010011;
	parameter ARITHM_R = 7'b0110011;
	
	input [31:0] INSTR;
	output [6:0] FUNCT7;
	output [3:0] FUNCT3;
	output [6:0] OPCODE;
	output reg signed [32:0] IMM;
	output [4:0] RS1;
	output [4:0] RS2_SHAMT;
	output [4:0] RD;
	
	wire signed [11:0] IMM_I;
	wire signed [11:0] IMM_S;
	wire signed [12:0] IMM_B;
	wire signed [19:0] IMM_U;
	wire signed [19:0] IMM_J;

	// thank god this is always in the same place
	assign OPCODE = INSTR[6:0];
	assign FUNCT7 = INSTR[31:25];
	assign FUNCT3 = INSTR[14:12];
	assign RD = INSTR[11:7];
	assign RS1 = INSTR[19:15];
	assign RS2_SHAMT = INSTR[24:20];
	
	// ugh
	assign IMM_I = INSTR[31:20];
	assign IMM_S = {INSTR[31:25],INSTR[11:7]};
	assign IMM_B = {INSTR[31],INSTR[7],INSTR[30:25],INSTR[11:8],1'b0};
	assign IMM_U = INSTR[31:12];
	assign IMM_J = {INSTR[31],INSTR[19:12],INSTR[20],INSTR[30:21]};
	
	always @(*)
	begin
		case(OPCODE)
			LUI, AUIPC	: IMM = IMM_U;
			JAL 			: IMM = IMM_J;
			BTYPE			: IMM = IMM_B;
			STORES		: IMM = IMM_S;
			JALR, LOADS, ARITHM_I : IMM = IMM_I;
			default: IMM = 0;
		endcase
	end

endmodule
