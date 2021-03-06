`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:49 04/16/2022 
// Design Name: 
// Module Name:    TXBlock 
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
module TXBlock(CONTROL,DATA,RST,CLK,STATUS,LINE_OUT);
	
	parameter BAUD = 9600;
	// states
	parameter START = 1;
	parameter WAIT = 2;
	parameter TxBIT = 3;
	// statuses
	parameter RDY = 0;
	parameter BSY = 255;
	// control commands
	parameter NOP = 0;
	parameter SND = 255;
	
	input [7:0] CONTROL, DATA;
	input CLK, RST;
	output reg [7:0] STATUS;
	output reg LINE_OUT;
	
	reg [7:0] local_data;
	reg [3:0] incr;
	reg [2:0] state = START;
	reg bg_rst;
	wire bg_end;
	
	BaudGenerator #(
	 .BAUD(BAUD),
	 .SPLIT(0)
	) bg (
	 .RST(bg_rst), 
	 .CLK(CLK), 
	 .OUT(bg_end)
	);
	 
	 always @(posedge CLK)
	 begin
		if (RST) begin
			LINE_OUT <= 1;
			state <= START;
		end else begin
			case (state)
				START: begin
					LINE_OUT <= 1;
					STATUS <= RDY;
					bg_rst <= 1;
					state <= WAIT;
				end
				WAIT: begin
					if (CONTROL == SND) begin
						bg_rst <= 0;
						state <= TxBIT;
						LINE_OUT <= 0; // send a start bit
						local_data <= DATA;
						incr <= 0;
						STATUS <= BSY;
					end
				end
				TxBIT: begin
					if (bg_end) begin
						incr <= incr + 1;
						if (incr >= 8) begin
							LINE_OUT <= 1; // send a stop bit (longer than normal)
							if (incr == 10) begin // will using 1/2 stop bit make a difference?
								state <= START;
							end
						end else begin
							LINE_OUT <= local_data[incr];
						end
					end
				end
				default: state <= START;
			endcase
		end
	 end
	 

endmodule
