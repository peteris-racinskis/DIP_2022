`timescale 1ns / 1ps

module CacheController(WE,ADDR,DIN,FOUND,MD,RREQ,RST,CLK,MADDR,MWE,MRDY,CDOUT,CDIN,CWE,DOUT,RDY);
	
	parameter START = 1;
	parameter WAIT = 3;
	parameter CHECK_CACHE = 4;
	parameter WAIT_MREAD = 5;
	parameter CACHE_UPDATE = 6;
	parameter WAIT_MWRITE = 7;
	parameter MREAD_BUF = 8;
	
	input [31:0] ADDR, DIN, CDOUT;
	inout [7:0] MD;
	output reg[31:0] MADDR, CDIN, DOUT;
	input WE, CLK, FOUND, RREQ, MRDY, RST;
	output reg MWE, CWE, RDY;
	reg [3:0] state;
	reg [7:0] mdin [3:0];
	reg [7:0] rbuf [3:0];
	reg [2:0] incr, lim;
	reg SIGNED;
	wire [31:0] flattened;
	
	// MAYBE SET THE MUX WITH CACHE CONTROLLER?
	// HOLD IT FOR 1 CYCLE, THEN GO TO WAIT AND SET RDY
	// Need to draw a state machine for this.
	
	// Tristate the memory data channel
	// Not strictly necessary in this homework
	// design where the memory is just some
	// BRAM, but most external SRAMs have bidirectional
	// data channels.
	assign MD = MWE ? mdin[incr] : 8'bZ;
	assign flattened = {rbuf[3],rbuf[2],rbuf[1],rbuf[0]};
		
	always @(posedge CLK)
	begin
		// For testing the old code
		lim <= 3;
		SIGNED <= 1;
		if (RST) begin
			state <= START;
		end else begin
			case (state)
			// give the rest of the CPU 1 cycle to react
			// This needs to happen after the output is set
			// output ready for a single cycle, combinatorial
			// otherwise.
				START: begin
						RDY <= 1;
						CWE <= 0;
						MWE <= 0;
						incr <= 0;
						state <= WAIT;
					end
				WAIT: begin
						RDY <= 0;
						// start the write loop on WE
						if (WE) begin
							CWE <= 1;
							CDIN <= DIN;
							MWE <= 1;
							MADDR <= ADDR;
							{mdin[3],mdin[2],mdin[1],mdin[0]} <= DIN;
							state <= WAIT_MWRITE;
						// start the read loop on READ REQUEST signal
						end else if (RREQ) begin
							{rbuf[3],rbuf[2],rbuf[1],rbuf[0]} <= {32{1'b0}};
							state <= CHECK_CACHE;
						end
					end
				CHECK_CACHE: begin
						// Cache hit
						if (FOUND) begin
							DOUT <= CDOUT;
							state <= START;
						// Cache miss
						end else begin
							MADDR <= ADDR;
							state <= WAIT_MREAD;
						end
					end
				WAIT_MREAD: begin
						if (MRDY) begin
							state <= MREAD_BUF;
						end
					end
				// Need one cycle delay for the 
				// memory value to propagate. THIS APPLIES
				// TO BUFFER READS TOO, DUH
				MREAD_BUF: begin
						MADDR <= MADDR + 1;
						incr <= incr + 1;
						rbuf[incr] <= MD;
						if (incr >= lim) begin						
							state <= CACHE_UPDATE;
						end else begin
							state <= WAIT_MREAD;
						end
					end
				// Need one cycle delay for the 
				// memory value to propagate. 
				CACHE_UPDATE: begin
						CWE <= 1;
						case (lim)
							1: {CDIN,DOUT} <= {2{{24{(SIGNED & flattened[7])}},flattened[7:0]}};
							2: {CDIN,DOUT} <= {2{{16{(SIGNED & flattened[15])}},flattened[15:0]}};
							default: {CDIN,DOUT} <= {2{flattened}};
						endcase
						state <= START;
					end
				WAIT_MWRITE: begin
						if (MRDY) begin
							if (incr >= lim) begin
								state <= START;
							end else begin
								MADDR <= MADDR + 1;
								incr <= incr + 1;
							end
						end
					end
				default: state <= START;
			endcase
			
		end // if/else
	end // always

endmodule
