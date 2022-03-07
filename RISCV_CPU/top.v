`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:48 03/07/2022 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
    input [31:0] instruction,
    output [31:0] data
    );
	
	ALU alu ();
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
	wire [6:0] FUNCT7;
	wire [3:0] FUNCT3;
	wire [6:0] OPCODE;
	wire [32:0] IMM;
	wire [4:0] RS1;
	wire [4:0] RD;


endmodule
