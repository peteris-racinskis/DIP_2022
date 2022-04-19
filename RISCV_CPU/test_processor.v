// Verilog test fixture created from schematic /home/user/repos/DIP_2022/RISCV_CPU/top.sch - Wed Mar 16 14:18:41 2022

`timescale 1ns / 1ps

module top_top_sch_tb();
	
	integer test_bit_period = 10 * 100000000 / 9600;
	
	integer i;
// Inputs
   reg CLK;
   reg RST;
	reg [7:0] SW;
	reg RX;

// Output
	wire [7:0] LED;
	wire top_tx;

// Bidirs
	wire [15:0] GPIO;

	reg [15:0] r_GPIO;
	reg [15:0] w_GPIO;
	reg [9:0] msg;
	//reg [15:0] m_GPIO;
// Instantiate the UUT
   top UUT (
		.CLK(CLK), 
		.RST(RST),
		.SW(SW),
		.LED(LED),
		.RS232_Uart_RX(RX),
		.RS232_Uart_TX(top_tx),
		.GPIO(GPIO)
   );
	
	task send_msg;
		integer cnt;
		begin
			for (i=0;i<10;i=i+1) begin
				RX = msg[i];
				#test_bit_period;
			end
			RX = 1;
		end
	endtask
	
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
	
	initial
	begin
		SW = 8'b01010101;
		RX = 1;
		msg = 10'b0101010101;
		w_GPIO = {8'b00001111,{8{1'b0}}};
		RST = 1;
		#2000;
		RST = 0;
		#1000;
		send_msg();
		#60000000;
		send_msg();
	end
endmodule
