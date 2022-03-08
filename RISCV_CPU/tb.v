// Verilog test fixture created from schematic /home/user/repos/DIP_2022/RISCV_CPU/top.sch - Tue Mar  8 14:37:55 2022

`timescale 1ns / 1ps

module top_top_sch_tb();

// Inputs
   reg CLK;
   reg [31:0] INSTR;
   reg [4:0] DBR;

// Output
   wire [31:0] B;
   wire [31:0] A;
   wire [31:0] IMM;
   wire [4:0] AR;
   wire [4:0] BR;
   wire [4:0] AW;
   wire WE;
   wire [31:0] DBO;
   wire V;
   wire Z;
   wire N;
   wire C;
   wire [31:0] D;

// Bidirs

// Instantiate the UUT
   top UUT (
		.B(B), 
		.A(A), 
		.IMM(IMM), 
		.AR(AR), 
		.BR(BR), 
		.AW(AW), 
		.WE(WE), 
		.CLK(CLK), 
		.INSTR(INSTR), 
		.DBO(DBO), 
		.DBR(DBR), 
		.V(V), 
		.Z(Z), 
		.N(N), 
		.C(C), 
		.D(D)
   );
	
	// Instruction opcodes
	parameter LUI = 7'b0110111;
	parameter AUIPC = 7'b0010111;
	parameter JAL = 7'b1101111;
	parameter JALR = 7'b1100111;
	parameter BTYPE = 7'b1100011;
	parameter LOADS = 7'b0000011;
	parameter STORES = 7'b0100011;
	parameter ARITHM_I = 7'b0010011;
	parameter ARITHM_R = 7'b0110011;
	// Constants making up part of the instruction
	parameter FUNCT3_ADD_SUB = 3'b000;
	parameter FUNCT3_SLL = 3'b001;
	parameter FUNCT3_SLT = 3'b010;
	parameter FUNCT3_SLU = 3'b011;
	parameter FUNCT3_XOR = 3'b100;
	parameter FUNCT3_SRX = 3'b101;
	parameter FUNCT3_OR = 3'b110;
	parameter FUNCT3_AND = 3'b111;
	parameter FUNCT7_DEF = 7'b0000000;
	parameter FUNCT7_MOD = 7'b0100000;

	// ARITHM_I Instructions:
	// { [31:20] imm | [19:15] rs1 | [14:12] funct3 | [11:7] rd | [6:0] opcode }
	// ARITHM_R Instructions:
	// { [31:25] funct7 | [24:20] rs2 | [19:15] rs1 | [14:12] funct3 | [11:7] rd | [6:0] opcode }	
	
	parameter r0 = 5'b00000;
	parameter r1 = 5'b00001;
	parameter r2 = 5'b00010;
	parameter r3 = 5'b00011;
	integer constant1 = 54;
	integer constant2 = -15;
	
	always
	begin
		CLK = 1;
		#10;
		CLK = 0;
		#10;
	end
	
	initial begin
		#100;
		// check that r0 is always 0
		DBR = r0;
		#50;
		DBR = r1;
		// add constant to reg[0] (aka load into memory)
		INSTR = {constant1[11:0],r0,FUNCT3_ADD_SUB,r1,ARITHM_I};
		#50;
		DBR = r2;
		// add constant to reg[0] (aka load into memory)
		INSTR = {constant2[11:0],r0,FUNCT3_ADD_SUB,r2,ARITHM_I};
		#50;
		DBR = r3;
		// add r1 to r2, put into r3
		INSTR = {FUNCT7_DEF,r1,r2,FUNCT3_ADD_SUB,r3,ARITHM_R};
		#100;
		DBR = r1;
		// sub r3 from r2, put into r1
		INSTR = {FUNCT7_MOD,r3,r2,FUNCT3_ADD_SUB,r1,ARITHM_R};
		#100;
		DBR = r0;
		// try sub r3 from r2, put into r0 - check that 0 remains!
		INSTR = {FUNCT7_MOD,r3,r2,FUNCT3_ADD_SUB,r0,ARITHM_R};
	end
endmodule
