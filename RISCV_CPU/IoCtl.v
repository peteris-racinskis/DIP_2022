`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:17 04/17/2022 
// Design Name: 
// Module Name:    IoCtl 
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
module IoCtl(
    input [31:0] DIN,
    input [31:0] ADDR,
    input WE,
    input RREQ,
    input RST,
    input RX,
    input [7:0] SW,
    inout [15:0] GPIO,
	 input CLK,
    output [31:0] DO,
    output RDY,
    output TX,
    output [7:0] SSGD,
    output [7:0] SSGS
    );

	assign RDY = 0;

endmodule
