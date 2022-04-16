`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:20 04/16/2022
// Design Name:   TXBlock
// Module Name:   /home/user/repos/DIP_2022/RISCV_CPU/TXBLockTest.v
// Project Name:  RISCV_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TXBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TXBLockTest;

	// Inputs
	reg [7:0] CONTROL;
	reg [7:0] DATA;
	reg CLK;

	// Outputs
	wire [7:0] STATUS;
	wire LINE_OUT;

	// Instantiate the Unit Under Test (UUT)
	TXBlock uut (
		.CONTROL(CONTROL), 
		.DATA(DATA), 
		.CLK(CLK), 
		.STATUS(STATUS), 
		.LINE_OUT(LINE_OUT)
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
		CONTROL = 0;
		DATA = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		DATA = 78;
		#20;
		CONTROL = 255;
		#50;
		if (STATUS == 255) begin
			CONTROL = 0;
		end
		#2000;
        
		// Add stimulus here

	end
      
endmodule

