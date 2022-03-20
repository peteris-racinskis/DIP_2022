`timescale 1ns / 1ps
module BusMux2_32(IN1,IN2,RD1,RD2,SEL,OUTD,OUTRD);

	input [31:0] IN1, IN2;
	input RD1,RD2,SEL;
	output reg [31:0] OUTD;
	output reg OUTRD;
	
	always @(*)
	begin
		if (SEL) begin
			OUTD = IN1;
			OUTRD = RD1;
		end else begin
			OUTD = IN2;
			OUTRD = RD2;
		end
	end

endmodule
