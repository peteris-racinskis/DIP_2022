// Verilog test fixture created from schematic /home/user/repos/DIP_2022/PD1-io/logic.sch - Sun Feb 13 17:57:15 2022

`timescale 1ns / 1ps

module logic_logic_sch_tb();

// Inputs
   reg CLK;
   reg SW2;
   reg SW0;
   reg SW1;
   reg SW3;

// Output
   wire LD0;
   wire LD1;
   wire LD2;

// Bidirs

// Instantiate the UUT
   logic UUT (
		.CLK(CLK), 
		.SW2(SW2), 
		.SW0(SW0), 
		.LD0(LD0), 
		.SW1(SW1), 
		.LD1(LD1), 
		.SW3(SW3), 
		.LD2(LD2)
   );
	
		
	always
	begin 
		CLK = 1;
		#1;
		CLK = 0;
		#1;
	end
	
	initial
	begin
		// wait 100ns
		SW0 = 0;
		SW1 = 0;
		SW2 = 0;
		SW3 = 0;
		#500;
		// do stuff
		SW0 = 1;
		SW1 = 1;
		SW2 = 1;
		SW3 = 1;
		#1000;
		SW0 = 0;
		SW1 = 0;
		#1000;
		SW1 = 1;
		SW2 = 0;
		#1000;
		SW2 = 0;
		SW3 = 0;
	end
	
endmodule
