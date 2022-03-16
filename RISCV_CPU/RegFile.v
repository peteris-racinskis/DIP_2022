`timescale 1ns / 1ps
/*
 Updated spec:
	1. Write on rising edge;
	2. Output COMBINATORICALLY!!!!!!!!!!!!!!!!!!!!
	Trying to output like a RAM - on clock cycles - 
	induces a delay of 1 clock cycle. Meaning that
	when the output of an instruction depends on the
	register file contents, we're loading the result of
	f(rs1(t), rs2(t)) into rd(t+1)
*/

module RegFile(AW,AR,BR,WE,CLK,D,A,B);
	
	input WE, CLK;
	reg AWW;
	input [4:0] AW, AR, BR;
	input [31:0] D;
	output [31:0] A, B;
	reg [31:0] memory [31:0];
	
	always @(posedge CLK)
	begin
		memory[0] <= 0;
		if (WE & AW != 0) begin
			memory[AW] <= D;
		end		
	end
	
	assign A = memory[AR];
	assign B = memory[BR];

endmodule