`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:56:47 04/17/2022
// Design Name:   IoCtl
// Module Name:   /home/user/repos/DIP_2022/RISCV_CPU/IoCtlTest.v
// Project Name:  RISCV_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IoCtl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IoCtlTest;

	// Inputs
	reg [31:0] DIN;
	reg [31:0] ADDR;
	reg WE;
	reg RREQ;
	reg RST;
	reg RX;
	reg [7:0] SW;
	reg CLK;

	// Outputs
	wire [31:0] DO;
	wire RDY;
	wire TX;
	wire [7:0] SSGD;
	wire [7:0] SSGS;
	wire [7:0] LED;

	// Bidirs
	wire [15:0] GPIO;

	// Instantiate the Unit Under Test (UUT)
	IoCtl uut (
		.DIN(DIN), 
		.ADDR(ADDR), 
		.WE(WE), 
		.RREQ(RREQ), 
		.RST(RST), 
		.RX(RX), 
		.SW(SW), 
		.GPIO(GPIO), 
		.CLK(CLK), 
		.DO(DO), 
		.RDY(RDY), 
		.TX(TX), 
		.SSGD(SSGD), 
		.SSGS(SSGS), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		DIN = 0;
		ADDR = 0;
		WE = 0;
		RREQ = 0;
		RST = 0;
		RX = 0;
		SW = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

