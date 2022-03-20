`timescale 1ns / 1ps

module WriteIncrementCounter(WE,CLK,WIC);

	input WE, CLK;
	output reg [4:0] WIC;
	
	always @(posedge CLK)
	begin
		if (WE) begin
			WIC <= {WIC + 1}[4:0];
		end
	end

endmodule
