`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:00 02/28/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A,B,OP,OUT,V,Z,N,C);
	
	parameter WORDSIZE = 32;
	parameter OPSIZE = $clog2(11);
	parameter IMMSIZE = 20;
	parameter UI = WORDSIZE - IMMSIZE;
	parameter ADD = 1;
	parameter SUB = 2;
	parameter SLL = 3;
	parameter SRL = 4;
	parameter SRA = 5;
	parameter SLU = 6;	// set less than unsigned
	parameter SLT = 7;	// set less than
	parameter OR = 8;
	parameter AND = 9;
	parameter XOR = 10;
	parameter SIU = 11; // Shift immediate to upper
	
	input [WORDSIZE-1:0] A,B;
	input [OPSIZE-1:0]	OP;
	output reg signed [WORDSIZE-1:0]	OUT;
	output V,N,Z;
	output reg C;
	wire signed [WORDSIZE-1:0] AA, BB;
	wire signA, signB, signOUT;
	
	assign AA = A;
	assign BB = B;
	assign signA = A[WORDSIZE-1];
	assign signB = B[WORDSIZE-1];
	assign signOUT = OUT[WORDSIZE-1];
	
	always @(*)
	begin
		case (OP)
			ADD: {C,OUT} = A + B;
			SUB: {C,OUT} = A - B;
			SLL: OUT = A << B;
			SRL: OUT = A >> B;
			SRA: OUT = A >>> B;
			SLU: OUT = A < B;
			SLT: OUT = AA < BB;
			OR : OUT = A | B;
			AND: OUT = A & B;
			XOR: OUT = A ^ B;
			SIU: OUT = A << UI;
			default: OUT = 0;
		endcase
	end
	
	assign V = (OP == ADD) & (signA == signB) & (signOUT != signA);
	assign N = OUT[WORDSIZE-1];
	assign Z = !(|OUT); // |x is apparently called the "reduction operator"
	
endmodule
