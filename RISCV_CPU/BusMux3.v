`timescale 1ns / 1ps

module BusMux3(
    input [31:0] IN1,
    input [31:0] IN2,
	 input [31:0] IN3,
    input [1:0] SEL,
    output reg [31:0] R
    );

	always @(*)
	begin
		case (SEL)
			0: R = IN1;
			1: R = IN2;
			2: R = IN3;
			default: R = IN1;
		endcase
	end

endmodule

