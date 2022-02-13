// Verilog test fixture created from schematic /home/user/repos/DIP_2022/PD1-io/logic.sch - Sun Feb 13 15:12:57 2022

`timescale 1ns / 1ps

module logic_logic_sch_tb();

// Inputs
   reg XLXN_10;

// Output
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_11;

// Bidirs

// Instantiate the UUT
   logic UUT (
		.XLXN_3(XLXN_3), 
		.XLXN_4(XLXN_4), 
		.XLXN_5(XLXN_5), 
		.XLXN_6(XLXN_6), 
		.XLXN_10(XLXN_10), 
		.XLXN_11(XLXN_11)
   );
	
	initial
	begin
		XLXN_10 = 0;
		#100;
		XLXN_10 = 1;
		#500;
		XLXN_10 = 0;		
	end
	
endmodule
