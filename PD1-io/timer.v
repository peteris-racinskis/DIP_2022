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
	
	always @(posedge clk)
	begin
		if (cnt > FREQ + FREQ || rst) begin
			cnt <= 0;
		end else begin
			cnt <= cnt + 1;
		end
	end

	assign result = (cnt > FREQ);

endmodule
