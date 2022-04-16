`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:58:35 04/16/2022
// Design Name:   BaudGenerator
// Module Name:   /home/user/repos/DIP_2022/RISCV_CPU/BaudGeneratorTest.v
// Project Name:  RISCV_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BaudGenerator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BaudGeneratorTest;

	// Inputs
	reg RST;
	reg CLK;

	// Outputs
	wire MID;
	wire END;

	// Instantiate the Unit Under Test (UUT)
	BaudGenerator #(.SPLIT(1)) middle (
		.RST(RST), 
		.CLK(CLK), 
		.OUT(MID)
	);
	
	// Instantiate the Unit Under Test (UUT)
	BaudGenerator #(.SPLIT(0)) full (
		.RST(RST), 
		.CLK(CLK), 
		.OUT(END)
	);
	
	always
	begin
		CLK = 1;
		#5;
		CLK = 0;
		#5;
	end
	
	initial begin
		// Initialize Inputs
		RST = 1;
		CLK = 0;
		// Wait 100 ns for global reset to finish
		#100;
		RST = 0;
		#4000;
      RST = 1;
		#1000;
		RST = 0;
		// Add stimulus here

	end
      
endmodule

