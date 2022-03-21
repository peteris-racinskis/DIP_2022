`timescale 1ns / 1ps

module SimulatedSRAM(ADDR,D,WE,CLK,RDY);
	
	input [31:0] ADDR;
	inout [31:0] D;
	input WE, CLK;
	output RDY;
	
	reg [31:0] dout;
	reg [31:0] memory [1023:0];
	reg welast;
	
	assign D = WE ? 32'bZ : dout;
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
		for (i=0;i<1024;i=i+1) begin
			memory[i] = 2 * i;
		end
	end

endmodule
