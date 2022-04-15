`timescale 1ns / 1ps

module CacheLookup(ADDR,DIN,WE,RST,CLK,DOUT,FOUND);
	// 32 bits of address
	// 3 bits of offset
	// when writing tests, check this case:
	// - read/write byte at address
	// - read/write half at address
	// - read/write word at address
	// NOTE: need to use DIN rather than ADDR since it
	// comes from the controller\
	// Concatenate as follows: {addr}{offs,data}
	input [31:0] ADDR;
	input [31+3:0] DIN;
	input WE, RST, CLK;
	output reg [31:0] DOUT;
	output reg FOUND;
	
	// Memory storing {addr,caddr}
	// quick and dirty solution to partial words - 
	// simply store the access length with the address.
	// that way if the same address is read as w,h or b
	// you get different entries in the lookup table.
	// This isn't optimal but assuming that h,b access is
	// relatively rare it makes the system already built work
	// with byte addressed memory spaces.
	// NOTE: can't use address input. Need 
	reg [31+32+3:0] lookup [31:0];
	reg [31:0] found_row [31:0];
	reg [31:0] above, m_one;
	integer i;
	integer j;
	
	// On write, shift in the write address and 
	// data concatenated as a single vector
	// Added reset to zero out shift register
	// contents.
	always @(posedge CLK)
	begin
		if (RST) begin
			for (i=0;i<32;i=i+1) begin
				lookup[i] <= 0;
			end
		end else if (WE) begin
			for (i=31;i>0;i=i-1) begin
				lookup[i] <= lookup[i-1];
			end
			lookup[0] <= {ADDR,DIN};
		end
	end

	// Output the first non-zero element,
	// set the FOUND flag for the mux.
	// Output zero otherwise
	always @(*)
	begin
		m_one = -1;
		// for each row, check if the address matches and if
		// the elements above it match
		for (i=0;i<32;i=i+1) begin
			if (i == 0) begin
				above[i] = ({ADDR,DIN[31+3:32]} == lookup[i][31+32+3:32]);
			end else begin
				above[i] = (above[i-1]) | ({ADDR,DIN[31+3:32]} == lookup[i][31+32+3:32]);
			end
		end
		// OR reduction checks if there are any 1's 
		FOUND = |above;
		// output the one that matches.
		// should fill out as 
		// 1111111
		// 1111110
		// 1111100
		// .......
		// USE THE FOUNDROW AS AN ACCUMULATOR DIRECTLY
		// HOW DID THIS NOT OCCUR TO ME??!?!?
		for (i=0;i<32;i=i+1) begin
			if (i == 0) begin
				found_row[i] = (above == m_one << i) ? lookup[i][31:0] : 0;
			end else begin
				found_row[i] = found_row[i-1] + ((above == m_one << i) ? lookup[i][31:0] : 0);
			end
		end
		DOUT = found_row[31];
	end
	
endmodule
