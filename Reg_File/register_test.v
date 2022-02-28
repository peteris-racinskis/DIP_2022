`timescale 1ns / 1ps

module register_test;
	parameter W = 24;
	parameter S = 64;
	parameter Adr = $clog2(S);
	reg [Adr-1:0] AW;
	reg [Adr-1:0] AR;
	reg [Adr-1:0] BR;
	reg WE;
	reg CLK;
	reg [W-1:0] D;

	wire [W-1:0] A;
	wire [W-1:0] B;
	
	reg_file #(
		.WORDSIZE(W),
		.BLOCKSIZE(S)
	) uut (
		.AW(AW), 
		.AR(AR), 
		.BR(BR), 
		.WE(WE), 
		.CLK(CLK), 
		.D(D), 
		.A(A), 
		.B(B)
	);

	always
	begin
		CLK = 1;
		#40;
		CLK = 0;
		#40;
	end

	initial begin
		AW = 0;
		AR = 24;
		BR = 25;
		WE = 0;
		D = 8596;
		#100;
		// Test writing
		AW = 24;
		WE = 1;
		#65;
		AW = 25;
		D = 72145;
		#80;
		WE = 0;
		// Test address switching
		#40;
		AR = 10;
		#80;
		AR = 25;
		#80;
		AR = 24;		
	end
endmodule

