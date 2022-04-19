`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:27 04/16/2022 
// Design Name: 
// Module Name:    FIFO 
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
module FIFO(DIN,RREQ,WE,CLK,DO,FF,FE);

	input [7:0] DIN;
	input RREQ, WE, CLK;
	output reg [7:0] DO;
	output FF, FE;
	
	reg [7:0] buffer [255:0];
	reg [7:0] rp, wp;
	
	//assign FE = &(rp - wp); // rp - wp == -1 = 11111111; and reduce checks that everything is a 1
	assign FE = ~(|(rp - wp)); // rp == wp. Does this work now that I fixed fifo read count?
	assign FF = &(wp - rp); // wastes a byte but I'm lazy
	
	always @(posedge CLK)
	begin
		if (RREQ) begin
		// Allow reading from empty buffer (indicate stale data)
			DO <= buffer[rp];
			if (!FE) begin
				rp <= rp + 1;			
			end
		end
		if (WE) begin
			if (!FF) begin
				buffer[wp] <= DIN;
				wp <= wp + 1;
			end
		end
	end
	
	
	integer i;
	initial
	begin
		wp <= 0;
		rp <= 0;
		for (i=0;i<256;i=i+1) begin
			buffer[i] <= 0;
		end
	end

endmodule
