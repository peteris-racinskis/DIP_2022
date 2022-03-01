`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:30:45 02/28/2022
// Design Name:   ALU
// Module Name:   /home/user/repos/DIP_2022/RISCV_CPU/ALU_test.v
// Project Name:  RISCV_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;
	
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
	
	parameter WORDSIZE = 32;
	parameter IMMSIZE = 20;
	parameter OPSIZE = $clog2(11);
	parameter UI = WORDSIZE-IMMSIZE;
	parameter maxint_u = {WORDSIZE{1'b1}};
	parameter maxint_s = {WORDSIZE-1{1'b1}};
	
	// Inputs
	reg [WORDSIZE-1:0] A, B;
	integer aa;
	integer bb;
	integer i;
	reg [OPSIZE-1:0] OP;

	// Outputs
	wire [WORDSIZE-1:0] R;
	wire C,V,Z,N;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.OP(OP), 
		.OUT(R),
		.V(V),
		.Z(Z),
		.N(N),
		.C(C)
	);

	// WRITE SOME SERIOUS TEST ROUTINES TOMORROW.
	task test_logic(input integer AA, BB);
		begin
			A = AA;
			B = BB;
			OP = ADD;
			#5;
			if (R != AA + BB) begin
				$display("Error: %0d + %0d = %0d",AA,BB,R);
			end
			#20 OP = SUB;
			#5;
			if (R != AA - BB) begin
				$display("Error: %0d - %0d = %0d",AA,BB,R);
			end
			#20 OP = SLL;
			#5;
			if (R != AA << BB) begin
				$display("Error: %0b << %0d = %0b",AA,BB,R);
			end
			#20 OP = SRL;
			#5;
			if (R != AA >> BB) begin
				$display("Error: %0b >> %0d = %0b",AA,BB,R);
			end
			#20 OP = SRA;
			#5;
			if (R != AA >>> BB) begin
				$display("Error: %0b >>> %0d = %0b",AA,BB,R);
			end
			#20 OP = SLU;
			#5;
			if (R != (A < B)) begin
				$display("Error: %0d < %0d = %0d (unsigned)",AA,BB,R);
			end
			#20 OP = SLT;
			#5;
			if (R != (AA < BB)) begin
				$display("Error: %0d < %0d = %0d",AA,BB,R);
			end
			#20 OP = OR;
			#5;
			if (R != (A | B)) begin
				$display("Error: %0b | %0b = %0b; expected = %0b",AA,BB,R,AA|BB);
			end
			#20 OP = AND;
			#5;
			if (R != (A & B)) begin
				$display("Error: %0b & %0b = %0b; expected = %0b",AA,BB,R,AA&BB);
			end
			#20 OP = XOR;
			#5;
			if (R != (A ^ B)) begin
				$display("Error: %0b ^ %0b = %0b",AA,BB,R);
			end
			#20 OP = SIU;
			#5;
			if (R != AA << UI) begin
				$display("Error: %0b << %0d = %0b",AA,UI,R);
			end
		end
	endtask
	
	task test_flags(input integer AA, BB);
		integer result;
		begin
			A = AA;
			B = BB;
			#10 OP = ADD;
			result = AA + BB;
			#10;
			if ((result == 0) & !Z) begin
				$display("Error: %0d + %0d = %0d; Zero flag not triggered",AA,BB,R);
			end
			if ((result < 0) & !N) begin
				$display("Error: %0d + %0d = %0d; Negative flag not triggered",AA,BB,R);
			end
			if ((result > maxint_u) & !C) begin
				$display("Error: %0b + %0b = %0b; Carry flag not triggered",AA,BB,R);
			end
			if ((result > maxint_s) & !V) begin
				$display("Info: %0b + %0b = %0b; Overflow flag not triggered",AA,BB,R);
			end
			#10 OP = SUB;
			result = AA - BB;
			#10;
			if ((result == 0) & !Z) begin
				$display("Error: %0d + %0d = %0d; Zero flag not triggered",AA,BB,R);
			end
			if ((result < 0) & !N) begin
				$display("Error: %0d + %0d = %0d; Negative flag not triggered",AA,BB,R);
			end
			if ((result > maxint_u) & !C) begin
				$display("Error: %0b + %0b = %0b; Carry flag not triggered",AA,BB,R);
			end
			if ((result > maxint_s) & !V) begin
				$display("Info: %0b + %0b = %0b; Overflow flag not triggered",AA,BB,R);
			end
		end
	endtask
	
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		OP = 0;

		// Wait 100 ns for global reset to finish
		#100;
		aa = maxint_u;
		bb = maxint_u;
		#10;
		test_flags(aa,bb);
		#50;
		aa = maxint_s;
		bb = maxint_s;
		#10;
		test_flags(aa,bb);
		#50;
		test_logic(0,0);
		test_flags(0,0);
		test_flags(0,1); // check carry flag for subtract
		// Add stimulus here
		for (i=1;i<32;i=i+1) begin
			aa = 2 * aa;
			bb = -1+i;
			test_logic(aa,bb);
		end
	end
      
endmodule

