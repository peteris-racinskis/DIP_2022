`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:44 04/16/2022 
// Design Name: 
// Module Name:    UART_tb_wrap 
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
module UART_tb_wrap(
    input [7:0] RX_CONTROL,
    input [7:0] TX_CONTROL,
    input CLK,
    input [7:0] TX_DIN,
    output [7:0] RX_STATUS,
    output [7:0] TX_STATUS,
    output [7:0] RX_DATA
    );
	
	wire line;
	
	TXBlock tmter (
    .CONTROL(TX_CONTROL), 
    .DATA(TX_DIN), 
    .CLK(CLK), 
    .STATUS(TX_STATUS), 
    .LINE_OUT(line)
    );
	
	RXBlock rcver (
    .LINE_IN(line), 
    .CONTROL(RX_CONTROL), 
    .CLK(CLK), 
    .STATUS(RX_STATUS), 
    .DATA(RX_DATA)
    );

endmodule
