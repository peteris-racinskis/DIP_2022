// Verilog test fixture created from schematic /home/user/repos/DIP_2022/RISCV_CPU/top.sch - Wed Mar 16 14:18:41 2022

`timescale 1ns / 1ps

module top_top_sch_tb();

// Inputs
   reg CLK;
   reg RST;
	reg [7:0] SW;

// Output
	wire [7:0] LED;
	wire top_tx;

// Bidirs

// Instantiate the UUT
   top UUT (
		.CLK(CLK), 
		.RST(RST),
		.SW(SW),
		.LED(LED),
		.RS232_Uart_TX(top_tx)
   );
	
	always
	begin
		CLK = 0;
		#5;
		CLK = 1;
		#5;
	end
	
	initial
	begin
		SW = 8'b01010101;
		RST = 1;
		#2000;
		RST = 0;
	end
endmodule
