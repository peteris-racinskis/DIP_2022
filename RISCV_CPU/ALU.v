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
module ALU(A,B,OP,R);
	
	parameter WORDSIZE = 32;
	parameter OPSIZE = 32;
	parameter UI = 32 - 12;
	
	input [WORDSIZE-1:0] A,B;
	input [OPSIZE-1:0]	OP;
	output reg [WORDSIZE-1:0]	R;
	// if this doesn't work use (A < B) & !(sig(A) ^ sig(B))
	wire signed [WORDSIZE-1:0] AA, BB;
	
	assign AA = A;
	assign BB = B;
	
	always @(*)
	begin
		case (OP)
			0	: R = A + B;			// ADD
			1	: R = A - B;			// SUB
			3	: R = A << B;			// SLA/SLL
			4	: R = A >> B;			// SRL
			5	: R = A >>> B;			// SRA
			6	: R = A < B;			// SLTU 
			7	: R = AA < BB ;		// SLT 
			8	: R = A | B;			// OR
			9	: R = A & B;			// AND
			10	: R = A ^ B;			// XOR
			11	: R = ((A << UI) | 0);	// Shift immediate to upper
			default: R = 0;
		endcase
	end

endmodule
