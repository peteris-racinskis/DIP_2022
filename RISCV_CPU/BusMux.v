`timescale 1ns / 1ps

module BusMux2(
    input [31:0] IN1,
    input [31:0] IN2,
    input SEL,
    output reg [31:0] R
    );

	always @(*)
	begin
		if (SEL) begin
			R = IN1;
		end else begin
			R = IN2;
		end
	end

endmodule
