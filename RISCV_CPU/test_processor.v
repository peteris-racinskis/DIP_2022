// Verilog test fixture created from schematic /home/user/repos/DIP_2022/RISCV_CPU/top.sch - Wed Mar 16 14:18:41 2022

`timescale 1ns / 1ps

module top_top_sch_tb();

// Inputs
   reg CLK;
   reg RST;

// Output
   wire [31:0] B;
   wire [31:0] A;
   wire [4:0] AR;
   wire [4:0] BR;
   wire [4:0] AW;
   wire WE;
   wire V;
   wire N;
   wire C;
   wire [31:0] D;
   wire Z;

// Bidirs

// Instantiate the UUT
   top UUT (
		.B(B), 
		.A(A), 
		.AR(AR), 
		.BR(BR), 
		.AW(AW), 
		.CLK(CLK), 
		.WE(WE), 
		.V(V), 
		.N(N), 
		.C(C), 
		.D(D), 
		.Z(Z), 
		.RST(RST)
   );
	
	always
	begin
		CLK = 0;
		#20;
		CLK = 1;
		#20;
	end
	
	initial
	begin
		RST = 1;
		#200;
		RST = 0;
	end
endmodule
