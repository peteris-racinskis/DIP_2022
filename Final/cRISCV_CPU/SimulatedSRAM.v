`timescale 1ns / 1ps

module SimulatedSRAM(ADDR,D,WE,CLK,RDY);
	
	input [31:0] ADDR;
	inout [7:0] D;
	input WE, CLK;
	output RDY;
	
	reg [7:0] dout;
	reg [7:0] memory [1024*4-1:0];
	reg welast;
	
	assign D = WE ? 8'bZ : dout;
	assign RDY = 1;
	
	always @(posedge CLK)
	begin
		if (WE) begin
			memory[ADDR] <= D;
		end else begin	
			dout <= memory[ADDR];
		end
	end
		
	// Setup for testing purposes
	integer i;
	initial
	begin
		for (i=0;i<1024*4;i=i+1) begin
			memory[i] = 2 * i;
		end
	end

endmodule
