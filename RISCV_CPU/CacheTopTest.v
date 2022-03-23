`timescale 1ns / 1ps

module CacheTopTest;

	// Inputs
	reg [31:0] ADDR;
	reg [31:0] DIN;
	reg WE;
	reg RST;
	reg CLK;

	// Outputs
	wire [31:0] DOUT;
	wire RDY;

	integer i;

	// Instantiate the Unit Under Test (UUT)
	CacheTop uut (
		.ADDR(ADDR), 
		.DIN(DIN), 
		.WE(WE), 
		.RST(RST), 
		.CLK(CLK), 
		.DOUT(DOUT), 
		.RDY(RDY)
	);
	
	always
	begin
		CLK = 1;
		#5;
		CLK = 0;
		#5;
	end

	initial begin
		ADDR = 0;
		DIN = 0;
		WE = 0;
		RST = 1;
		#100;
		ADDR = 22;
		RST = 0;
		#100;
		DIN = -5942;
		WE = 1;
		#10;
		WE = 0;
		#80;
		ADDR = 2;
		#100;
		ADDR = 22;
		for (i=0;i<20;i=i+1) begin
			ADDR = i;
			#50;
		end
		for (i=0;i<10;i=i+1) begin
			ADDR = i;
			#50;
		end
		for (i=0;i<10;i=i+1) begin
			ADDR = i;
			DIN = -i;
			WE = 1;
			#20;
			WE = 0;
			#30;
		end
		for (i=0;i<10;i=i+1) begin
			ADDR = i;
			#50;
		end
		#50;
		RST = 1;
		#50;
		RST = 0;
		#10;
		for (i=0;i<10;i=i+1) begin
			ADDR = i;
			#50;
		end
	end
      
endmodule

