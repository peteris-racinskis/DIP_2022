// Verilog test fixture created from schematic /home/user/repos/DIP_2022/RISCV_CPU/top.sch - Wed Mar 16 14:18:41 2022

`timescale 1ns / 1ps

module top_top_sch_tb();
	
	integer i;
// Inputs
   reg CLK;
   reg RST;
	reg [7:0] SW;

// Output
	wire [7:0] LED;
	wire top_tx;

// Bidirs
	wire [15:0] GPIO;

	reg [15:0] r_GPIO;
	reg [15:0] w_GPIO;
	//reg [15:0] m_GPIO;
// Instantiate the UUT
   top UUT (
		.CLK(CLK), 
		.RST(RST),
		.SW(SW),
		.LED(LED),
		.RS232_Uart_TX(top_tx),
		.GPIO(GPIO)
   );
	
	always
	begin
		CLK = 0;
		#5;
		CLK = 1;
		#5;
	end
	
	always @(posedge CLK)
	begin
		r_GPIO <= GPIO;
	end
	
	
	assign GPIO = {{8{1'b0}},8'bZ};
	// mirror the actual chip assignment for test
	/*
	generate
		genvar j;
		for (j=0;j<16;j=j+1) begin
			assign GPIO[j] = m_GPIO[j] ? 1'bz : w_GPIO[j];
		end
	endgenerate
	*/
	
	initial
	begin
		SW = 8'b01010101;
		w_GPIO = {8'b00001111,{8{1'b0}}};
		RST = 1;
		#2000;
		RST = 0;
	end
endmodule
