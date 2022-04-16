`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:18:57 04/16/2022
// Design Name:   UART_tb_wrap
// Module Name:   /home/user/repos/DIP_2022/RISCV_CPU/UART_tb.v
// Project Name:  RISCV_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UART_tb_wrap
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UART_tb;

	// Inputs
	reg [7:0] RX_CONTROL;
	reg [7:0] TX_CONTROL;
	reg CLK;
	reg [7:0] TX_DIN;
	integer i, k;
	// Outputs
	wire [7:0] RX_STATUS;
	wire [7:0] TX_STATUS;
	wire [7:0] RX_DATA;

	// Instantiate the Unit Under Test (UUT)
	UART_tb_wrap uut (
		.RX_CONTROL(RX_CONTROL), 
		.TX_CONTROL(TX_CONTROL), 
		.CLK(CLK), 
		.TX_DIN(TX_DIN), 
		.RX_STATUS(RX_STATUS), 
		.TX_STATUS(TX_STATUS), 
		.RX_DATA(RX_DATA)
	);
	
	always
	begin
		CLK = 1;
		#5;
		CLK = 0;
		#5;
	end
	
	task send_msg;
	input integer j;
	begin
		TX_DIN = j;
		#20;
		TX_CONTROL = 255;
		#20;
		if (TX_STATUS == 255) begin
			TX_CONTROL = 0;
		end
		while (TX_STATUS == 255) begin
			#20;
		end
	end
	endtask
	
	task read_msg;
	begin
		if (RX_STATUS == 255) begin
			RX_CONTROL = 255;
		end
		#10; 
		RX_CONTROL = 0;
		#100;
	end
	endtask
	
	initial begin
		// Initialize Inputs
		RX_CONTROL = 0;
		TX_CONTROL = 0;
		TX_DIN = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		for (i=0;i<258;i=i+1) begin
			if (i > 256) begin
				send_msg(-1);
			end else begin
				send_msg(i*3);
			end
		end
      for (i=0;i<20;i=i+1) begin
			read_msg();
		end
		send_msg(0);
		send_msg(-1);
		send_msg(-1);
		send_msg(-1);
	end
      
endmodule

