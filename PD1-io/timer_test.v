`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:34 02/13/2022
// Design Name:   timer
// Module Name:   /home/user/repos/DIP_2022/PD1-io/timer_test.v
// Project Name:  PD1-io
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module timer_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	timer uut (
		.clk(clk), 
		.rst(rst),
		.result(out)
	);
	
	always
	begin
		clk = 1;
		#5;
		clk = 0;
		#5;
	end
	
	initial begin
		#100;
		rst = 0;
		// Wait 100 ns for global reset to finish
		#150;
		rst = 1;
		#5;
		rst = 0;
		#660;
		rst = 1;
      
		// Add stimulus here

	end
      
endmodule

