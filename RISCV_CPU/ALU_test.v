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

	// Inputs
	integer A;
	integer B;
	reg [31:0] OP;

	// Outputs
	wire [31:0] R;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.OP(OP), 
		.R(R)
	);

	// WRITE SOME SERIOUS TEST ROUTINES TOMORROW.
	
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		OP = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = -2;
		B = 2;
		#100;
		OP = 1;
		#100;
		OP = 2;
		#100;
		OP = 3;
		#100;
		OP = 4;
		#100;
		OP = 5;
		#100;
		OP = 6;
		#100;
		OP = 7;
		#100;
		OP = 8;
		// Add stimulus here

	end
      
endmodule

