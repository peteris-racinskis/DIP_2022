`timescale 1ns / 1ps

module CacheTop(ADDR,DIN,WE,RST,CLK,DOUT,RDY);

	input [31:0] ADDR, DIN;
	input WE, CLK, RST;
	output [31:0] DOUT;
	output RDY;
	
	wire [31:0] MD, MADDR, CDIN, CDOUT;
	wire FOUND, MWE, CWE, MRDY;
	
	////////////////////////////
	/// Finite state machine ///
	////////////////////////////
   CacheController controller (
    .WE(WE), 
    .ADDR(ADDR), 
    .DIN(DIN), 
    .FOUND(FOUND), 
    .MD(MD), 
    .RST(RST), 
    .CLK(CLK), 
    .MADDR(MADDR), 
    .MWE(MWE), 
    .MRDY(MRDY), 
    .CDOUT(CDOUT), 
    .CDIN(CDIN), 
    .CWE(CWE), 
    .DOUT(DOUT), 
    .RDY(RDY)
    );
	
	////////////////////////////
	///  Cache lookup table. ///
	///   32+32 wide shift   ///
	///  		register.       ///
	////////////////////////////
	CacheLookup cache (
    .ADDR(ADDR), 
    .DIN(CDIN), 
    .WE(CWE),
	 .RST(RST),
    .CLK(CLK), 
    .DOUT(CDOUT), 
    .FOUND(FOUND)
    );
	 
	////////////////////////////
	///  BRAM wrapper set up ///
	///   to behave like an  ///
	///  external SRAM chip. ///
	////////////////////////////
	SimulatedSRAM external_memory (
    .ADDR(MADDR), 
    .D(MD), 
    .WE(MWE), 
    .CLK(CLK), 
    .RDY(MRDY)
    );
	
endmodule
