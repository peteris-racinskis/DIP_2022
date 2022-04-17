`timescale 1ns / 1ps

module IoCtl(DIN,ADDR,WE,RREQ,RST,RX,SW,GPIO,CLK,DO,RDY,TX,SSGD,SSGS,LED);
	
	parameter BAUD = 600;
	// 7 segment states
	parameter SSG_START = 1;
	parameter SSG_REFRESH = 2;
	// controller states
	parameter START = 1;
	parameter WAIT = 2;
	parameter READ = 3;
	parameter WRITE = 4;
	
	// 7-segment constants:
	// Order in ucf: [dot][GFEDCBA] = [7][6543210]
	// 1 - BC - 8'b0000110
	// 2 - BC - 8'b0000110
	//    ----A----
	//   |			|
	//   |			|
	//   F         B
	//   |			|
	//   |			|
	//    ----G----
	//   |			|
	//   |			|
	//   E         C 
	//   |			|
	//   |			|
	//	   ----D----
	parameter SSG_ONE = 8'b00000110; // BC
	parameter SSG_TWO = 8'b01011011; // ABGED
	parameter SSG_THREE = 8'b01001111; // ABCDG
	parameter SSG_FOUR = 8'b01100110; // BCFG
	parameter SSG_FIVE = 8'b1101101;//ACDFG
	parameter SSG_SIX = 8'b1111101; //ACDEFG
	
	
	input [31:0] DIN, ADDR;
	input [7:0] SW;
	input WE, RREQ, RST, RX, CLK;
	inout [15:0] GPIO;
	output [31:0] DO;
	output [7:0] SSGS;
	output reg [7:0] SSGD, LED;
	output reg RDY;
	output TX;
	
	wire [7:0] byte_in, io_addr, tx_status, rx_status, rx_do;
	wire io_flag, bg_pulse;
	reg [15:0] gpio_mode, gpio_wdata, gpio_rdata;
	reg [7:0] byte_out, sw_rdata, ld_wdata, ssg_enable, ssgs_inv, tx_control,rx_control,tx_din;
	reg [7:0] ssg_data [5:0];
	reg [3:0] cnt_state;
	reg [2:0] ssg_incr;
	reg [1:0] ssg_state;
	reg bg_rst;
	
	assign DO = {{24{1'b0}},byte_out};
	assign byte_in = DIN[7:0];
	assign io_flag = ADDR[31];
	assign io_addr = ADDR[7:0];
	assign SSGS = {2'b00,ssgs_inv[0],ssgs_inv[5:1]}; // is the cathode already inverted?
	
	
	// set gpio_mode bit to 1 for output
	// set gpio_mode bit to 0 for input
	generate
		genvar i;
		for (i=0;i<16;i=i+1) begin
			assign GPIO[i] = gpio_mode[i] ? gpio_wdata[i] : 1'bz;
		end
	endgenerate
	
	// Input Reads
	always @(posedge CLK)
	begin
		gpio_rdata <= GPIO;
		sw_rdata <= SW;
	end

	// Output writes
	always @(posedge CLK)
	begin
		LED <= ld_wdata;
	end
	
	// 7-segment state machine
	// use baud generator to generate pulses
	// cycle through the data bank, illuminate
	// each digit in turn
	BaudGenerator #(
	 .BAUD(BAUD),
	 .SPLIT(0)
	) bg (
	 .RST(bg_rst), 
	 .CLK(CLK), 
	 .OUT(bg_pulse)
	);
	always @(posedge CLK)
	begin
		// put anything other than 0 into ssg_enable to make display work
		if (RST | !(|ssg_enable)) begin
			ssg_state <= SSG_START;
			bg_rst <= 1;
			SSGD <= 0;
		end else begin
			case (ssg_state)
				SSG_START: begin
					ssg_incr <= 0;
					bg_rst <= 0;
					ssgs_inv <= 1;
					ssg_state <= SSG_REFRESH;
				end
				SSG_REFRESH: begin
					if (bg_pulse) begin
						ssg_incr <= (ssg_incr >= 5) ? 0 : ssg_incr + 1;
						SSGD <= ssg_data[ssg_incr];
						ssgs_inv <= (ssgs_inv >= 8'b00100000) ? 1 : ssgs_inv << 1;
					end
				end
				default: ssg_state <= SSG_START;
			endcase
		end
	end
	
	// UART modules
	TXBlock tmter (
    .CONTROL(tx_control), 
    .DATA(tx_din), 
    .CLK(CLK), 
    .STATUS(tx_status), 
    .LINE_OUT(TX)
    );
	
	RXBlock rcver (
    .LINE_IN(RX), 
    .CONTROL(rx_control), 
    .CLK(CLK), 
    .STATUS(rx_status), 
    .DATA(rx_do)
    );
	
	// Control loop
	always @(posedge CLK)
	begin
		if (RST) begin
			cnt_state <= START;
		end else begin
			case (cnt_state)
				START: begin
					RDY <= 1;
					cnt_state <= WAIT;
				end
				WAIT: begin
					RDY <= 0;
					if (io_flag) begin
						if (WE) begin
							cnt_state <= WRITE;
						end else if (RREQ) begin
							cnt_state <= READ;
						end
					end				
				end
				READ: begin
					case (io_addr)
						0: byte_out <= sw_rdata;
						1: byte_out <= ld_wdata;
						2: byte_out <= gpio_mode[7:0]; 
						3: byte_out <= gpio_mode[15:8];
						4: byte_out <= gpio_rdata[7:0]; 
						5: byte_out <= gpio_rdata[15:8];
						6: byte_out <= gpio_wdata[7:0]; 
						7: byte_out <= gpio_wdata[15:8];
						8,9,10,11,12,13: byte_out <= ssg_data[io_addr - 8];
						14: byte_out <= ssg_enable;
						15: byte_out <= rx_status;
						16: byte_out <= rx_control;
						17: byte_out <= rx_do;
						18: byte_out <= tx_status;
						19: byte_out <= tx_control;
						20: byte_out <= tx_din;
						default: byte_out <= -1;
					endcase
					cnt_state <= START;
				end
				WRITE: begin
					case (io_addr)
						1: ld_wdata <= byte_in;
						2: gpio_mode[7:0] <= byte_in; 
						3: gpio_mode[15:8] <= byte_in;
						6: gpio_wdata[7:0] <= byte_in; 
						7: gpio_wdata[15:8] <= byte_in;
						8,9,10,11,12,13: ssg_data[io_addr - 8] <= byte_in;
						14: ssg_enable <= byte_in;
						16: rx_control <= byte_in;
						19: tx_control <= byte_in;
						20: tx_din <= byte_in;
					endcase
					cnt_state <= START;
				end
			endcase
		end
	end
	
	// Initialization
	initial
	begin
		ld_wdata <= -1;
		gpio_mode <= -1;
		gpio_wdata <= -1;
		ssg_data[0] <= SSG_ONE;
		ssg_data[1] <= SSG_TWO;
		ssg_data[2] <= SSG_THREE;
		ssg_data[3] <= SSG_FOUR;
		ssg_data[4] <= SSG_FIVE;
		ssg_data[5] <= SSG_SIX;
		ssg_enable <= 0;
		rx_control = 0;
		tx_control = 0;
		tx_din = 0;
	end

endmodule
