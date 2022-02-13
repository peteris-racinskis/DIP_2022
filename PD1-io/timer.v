`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:37 02/13/2022 
// Design Name: 
// Module Name:    timer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module timer(
    input clk,
	 input rst,
    output result
    );
	
	localparam [32:0] FREQ = 20;
	reg [32:0] cnt;
	reg res;
	reg reset_last;
	
	always @(posedge clk)
	begin
		if (rst & !reset_last) begin
			cnt <= 0;
			reset_last <= 1;
		end else if (cnt > FREQ + FREQ) begin
			cnt <= 0;
		end else begin
			cnt <= cnt + 1;
		end
		if (!rst) begin
			reset_last <= 0;
		end
		if (cnt > FREQ) begin
			res = 1;
		end else begin
			res = 0;
		end
	end

	assign result = res;

endmodule
