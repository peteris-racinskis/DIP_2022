`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:54 04/16/2022 
// Design Name: 
// Module Name:    RXBlock 
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
module RXBlock(LINE_IN,CONTROL,CLK,STATUS,DATA);

	parameter BAUD = 9600;
	// status
	parameter HAVE_DATA = 255;
	parameter NO_DATA = 0;
	// states
	parameter START = 1;
	parameter WAIT = 2;
	parameter SKIP = 3;
	parameter RxBIT = 4;
	parameter WRITE = 5;

	input [7:0] CONTROL;
	input LINE_IN, CLK;
	output [7:0] DATA;
	output reg [7:0] STATUS;
	
	reg [7:0] rcv;
	reg [3:0] incr;
	reg [2:0] state = START;
	reg l_old, l_new, bg_rst, fifo_we;
	wire ff, fe, rreq, bg_mid;
	
	// read - last bit of the control register
	assign rreq = CONTROL[0];	
	
	FIFO recv_buf (
		 .DIN(rcv), 
		 .RREQ(rreq), 
		 .WE(fifo_we), 
		 .CLK(CLK), 
		 .DO(DATA), 
		 .FF(ff), 
		 .FE(fe)
	);
	
	BaudGenerator #(
	 .BAUD(BAUD),
	 .SPLIT(1)
	) bg (
	 .RST(bg_rst), 
	 .CLK(CLK), 
	 .OUT(bg_mid)
	);
	
	// Notify when buffer empty
	always @(posedge CLK)
	begin
		if (fe) begin 
			STATUS <= NO_DATA;
		end else begin
			STATUS <= HAVE_DATA;
		end
	end
	
	// Main receive loop
	always @(posedge CLK)
	begin
		l_new <= LINE_IN;
		l_old <= l_new;
		case (state)
			START: begin
				bg_rst <= 1;
				fifo_we <= 0; // don't just constantly write to the fifo
				state <= WAIT;
			end
			WAIT: begin
				if ((l_new == 0) & (l_old == 1)) begin
					bg_rst <= 0;
					state <= SKIP; // skip the startbit
				end
			end
			SKIP: begin
				if (bg_mid) begin
					incr <= 0;
					state <= RxBIT;
				end
			end
			RxBIT: begin
				if (bg_mid) begin
					incr <= incr + 1;
					if (incr < 8) begin
						rcv[incr] <= LINE_IN;
					end else begin
						fifo_we <= ff ? 0 : 1; // write when NOT full, dumbass
						state <= START;
					end
				end
			end
		endcase
	end
		
endmodule
