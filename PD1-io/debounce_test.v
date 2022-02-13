// Verilog test fixture created from schematic /home/user/repos/DIP_2022/PD1-io/debounce.sch - Sun Feb 13 16:23:55 2022

`timescale 1ns / 1ps

module debounce_debounce_sch_tb();

// Inputs
   reg CLK;
   reg PB;

// Output
   wire PB_debounced;

// Bidirs

// Instantiate the UUT
   debounce UUT (
		.CLK(CLK), 
		.PB(PB), 
		.PB_debounced(PB_debounced)
   );
	always
	begin
		CLK = 1'b0;
		#1;
		CLK = 1'b1;
		#1;
	end
		
	initial
	begin
		PB = 0;
		#50;
		PB = 1;
		#800;
		PB = 0;
		#200;
		PB = 1;
	end
endmodule
