`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:48 04/16/2022 
// Design Name: 
// Module Name:    BaudGenerator 
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
module BaudGenerator(RST,CLK,OUT);
	
	//parameter REF = 10417;	// 9600 @ 100MHz
	parameter BAUD = 115200;
	parameter REF = 100000000 / BAUD;	// 115200 @ 100MHz
	parameter H_REF = REF / 2;
	parameter SPLIT = 0;
	
	input RST, CLK;
	output OUT;
	reg [31:0] cnt;
	wire half, full;
	
	assign OUT = SPLIT ? half : full;
	assign half = (cnt == H_REF);
	assign full = (cnt == REF);
	
	always @(posedge CLK)
	begin
		if (RST | (cnt > REF)) begin
			cnt <= 0;
		end else begin
			cnt <= cnt + 1;
		end
	end

endmodule
