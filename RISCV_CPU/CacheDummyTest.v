// Verilog test fixture created from schematic /home/user/repos/DIP_2022/RISCV_CPU/CacheDummyTopSch.sch - Sun Mar 20 16:45:45 2022

`timescale 1ns / 1ps

module CacheDummyTopSch_CacheDummyTopSch_sch_tb();

// Inputs
   reg WE;
   reg CLK;
   reg [31:0] ADDR;
   reg [31:0] DIN;

// Output
   wire RDY;
   wire [31:0] DOUT;

// Bidirs

// Instantiate the UUT
   CacheDummyTopSch UUT (
		.WE(WE), 
		.CLK(CLK), 
		.ADDR(ADDR), 
		.RDY(RDY), 
		.DOUT(DOUT), 
		.DIN(DIN)
   );
	
	always
	begin
		CLK = 1;
		#20;
		CLK = 0;
		#20;
	end
	
	initial
	begin
		WE = 0;
		ADDR = 0;
		DIN = 0;
		#100;
		ADDR = 15;
		DIN = -7584;
		#100;
		WE = 1;
		#100;
		WE = 0;
		ADDR = 12;
		#100;
		ADDR = 56;
		DIN = 9573;
		WE = 1;
		#100;
		WE = 0;
		ADDR = 15;		
	end
	
endmodule
