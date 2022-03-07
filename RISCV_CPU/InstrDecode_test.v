`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:53 03/07/2022
// Design Name:   InstrDecode
// Module Name:   /home/user/repos/DIP_2022/RISCV_CPU/InstrDecode_test.v
// Project Name:  RISCV_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstrDecode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstrDecode_test;

	parameter LUI = 7'b0110111;
	parameter AUIPC = 7'b0010111;
	parameter JAL = 7'b1101111;
	parameter JALR = 7'b1100111;
	parameter BTYPE = 7'b1100011;
	parameter LOADS = 7'b0000011;
	parameter STORES = 7'b0100011;
	parameter ARITHM_I = 7'b0010011;
	parameter ARITHM_R = 7'b0110011;
	// Inputs
	reg [31:0] INSTR;

	// Outputs
	wire [6:0] FUNCT7;
	wire [3:0] FUNCT3;
	wire [6:0] OPCODE;
	wire [32:0] IMM;
	wire [4:0] RS1;
	wire [4:0] RS2;
	wire [4:0] RD;

	// Instantiate the Unit Under Test (UUT)
	InstrDecode uut (
		.INSTR(INSTR), 
		.FUNCT7(FUNCT7), 
		.FUNCT3(FUNCT3), 
		.OPCODE(OPCODE), 
		.IMM(IMM), 
		.RS1(RS1), 
		.RS2_SHAMT(RS2), 
		.RD(RD)
	);

	initial begin
		// Initialize Inputs
		INSTR = 0;
		INSTR[31:12] = -1;
		INSTR[6:0] = LUI;

		// Wait 100 ns for global reset to finish
		#100;
		INSTR[31:12] = -1;
		INSTR[6:0] = LUI;
		#200; 
		INSTR[31:12] = -20;
		INSTR[6:0] = LUI;
		#200; 
		INSTR[31:12] = 15;
		INSTR[6:0] = LUI;
		#400; 
		INSTR[11:8] = 4;
		INSTR[6:0] = BTYPE;
		// Add stimulus here

	end
      
endmodule

