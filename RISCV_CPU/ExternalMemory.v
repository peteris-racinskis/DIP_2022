`timescale 1ns / 1ps

module ExternalMemory(ADDR,DIN,CLK,WE,DO,RDY);

	input [31:0] ADDR,DIN;
	input WE, CLK;
	output reg [31:0] DO;
	output RDY;
	integer i;
	reg [31:0] memory [1023:0];
	
	always @(posedge CLK)
	begin
		if (WE) begin
			memory[ADDR] <= DIN;
		end else begin
			DO <= memory[ADDR];
		end
	end
	
	// This is just a dummy BRAM so no delay ever.
	assign RDY = 1'b1;
	
	
	initial
	begin 
		for (i=0;i<1024;i=i+1) begin
			memory[i] = i * 2;
		end
	end

endmodule
