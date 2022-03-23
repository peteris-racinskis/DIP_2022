`timescale 1ns / 1ps

module CacheController(WE,ADDR,DIN,FOUND,MD,RREQ,RST,CLK,MADDR,MWE,MRDY,CDOUT,CDIN,CWE,DOUT,RDY);
	
	parameter START = 1;
	parameter WAIT = 3;
	parameter CHECK_CACHE = 4;
	parameter WAIT_MREAD = 5;
	parameter CACHE_UPDATE = 6;
	parameter WAIT_MWRITE = 7;
	
	input [31:0] ADDR, DIN, CDOUT;
	inout [31:0] MD;
	output reg[31:0] MADDR, CDIN, DOUT;
	input WE, CLK, FOUND, RREQ, MRDY, RST;
	output reg MWE, CWE, RDY;
	reg [2:0] state;
	reg [31:0] mdin;
	
	// MAYBE SET THE MUX WITH CACHE CONTROLLER?
	// HOLD IT FOR 1 CYCLE, THEN GO TO WAIT AND SET RDY
	// Need to draw a state machine for this.
	
	// Tristate the memory data channel
	// Not strictly necessary in this homework
	// design where the memory is just some
	// BRAM, but most external SRAMs have bidirectional
	// data channels.
	assign MD = MWE ? mdin : 32'bZ;
	
	always @(posedge CLK)
	begin
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
							mdin <= DIN;
							state <= WAIT_MWRITE;
						// start the read loop on READ REQUEST signal
						end else if (RREQ) begin
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
							state <= CACHE_UPDATE;
						end
					end
				// Need one cycle delay for the 
				// memory value to propagate.
				CACHE_UPDATE: begin
						CWE <= 1;
						CDIN <= MD;
						DOUT <= MD;
						state <= START;
					end
				WAIT_MWRITE: begin
						if (MRDY) begin
							state <= START;
						end
					end
				default: state <= START;
			endcase
		end
	end

endmodule
