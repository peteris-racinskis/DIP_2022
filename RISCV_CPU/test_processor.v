// Verilog test fixture created from schematic /home/user/repos/DIP_2022/RISCV_CPU/top.sch - Wed Mar 16 14:18:41 2022

`timescale 1ns / 1ps

module top_top_sch_tb();

// Inputs
   reg CLK;
   reg RST;

// Output
   wire [31:0] B;
   wire [31:0] A;
   wire V;
   wire N;
   wire C;
   wire Z;

// Bidirs

// Instantiate the UUT
   top UUT (
		.B(B), 
		.A(A), 
		.CLK(CLK), 
		.V(V), 
		.N(N), 
		.C(C), 
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
