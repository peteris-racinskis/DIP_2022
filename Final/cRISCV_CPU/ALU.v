`timescale 1ns / 1ps

module ALU(A,B,OP,R,V,Z,N,C);
	
	parameter WORDSIZE = 32;
	//parameter OPSIZE = $clog2(11);
	parameter OPSIZE = 4;
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
	parameter AIU = 12; // Add upper immediate
	parameter JLX = 13; // Do PC+4 for unconditional jumps (PC is coming in from mux)
	
	input [WORDSIZE-1:0] A,B;
	input [OPSIZE-1:0]	OP;
	output reg signed [WORDSIZE-1:0]	R;
	output V,N,Z;
	output reg C;
	wire signed [WORDSIZE-1:0] AA, BB;
	wire signA, signB, signR;
	
	assign AA = A;
	assign BB = B;
	assign signA = A[WORDSIZE-1];
	assign signB = B[WORDSIZE-1];
	assign signR = R[WORDSIZE-1];
	
	always @(*)
	begin
		// To avoid latch generation, the carry flag
		// must be toggle on every case.
		case (OP)
			ADD: {C,R} = A + B;
			SUB: {C,R} = A - B;
			SLL: {C,R} = A << B;
			SRL: {C,R} = A >> B;
			SRA: {C,R} = A >>> B;
			SLU: {C,R} = A < B;
			SLT: {C,R} = AA < BB;
			OR : {C,R} = A | B;
			AND: {C,R} = A & B;
			XOR: {C,R} = A ^ B;
			SIU: {C,R} = B << UI;
			AIU: {C,R} = A + (B << UI);
			JLX: {C,R} = A + 4;
			default: {C,R} = 0;
		endcase
	end
	
	assign V = (OP == ADD) & (signA == signB) & (signR != signA);
	assign N = R[WORDSIZE-1];
	assign Z = !(|R); // |x is apparently called the "reduction operator"
	
endmodule
