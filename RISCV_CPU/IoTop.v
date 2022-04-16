`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:54 04/15/2022 
// Design Name: 
// Module Name:    IoTop 
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
module IoTop(ADDR,DIN,WE,RREQ,SW,RST,CLK,DOUT,RDY);

	input [31:0] ADDR, DIN;
	input [7:0] SW;
	input WE, CLK, RREQ, RST;
	output [31:0] DOUT;
	output RDY;
	
	output reg [7:0] LED;
	

endmodule
