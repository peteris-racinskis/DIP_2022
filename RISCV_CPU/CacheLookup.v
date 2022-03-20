`timescale 1ns / 1ps

module CacheLookup(ADDR,DIN,WE,CLK,DOUT,FOUND,RD);

	input [31:0] ADDR, DIN;
	input WE, CLK;
	output reg [31:0] DOUT;
	output reg FOUND;
	output RD;
	
	// Memory storing {addr,caddr}
	reg [31+32:0] lookup [31:0];
	reg [31:0] found_row [31:0];
	reg [31:0] above, m_one;
	integer i;
	integer j;
	
	// On write, shift in the write address and 
	// looping cache memory address.
	always @(posedge CLK)
	begin
		if (WE) begin
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
				above[i] = (ADDR == lookup[i][31+32:32]);
			end else begin
				above[i] = (above[i-1]) | (ADDR == lookup[i][31+32:32]);
			end
		end
		// OR reduction checks if there are any 1's 
		FOUND = |above;
		// output the one that matches.
		// should fill out as 
		// 1111111
		// 0111111
		// 0011111
		// .......
		// USE THE FOUNDROW AS AN ACCUMULATOR DIRECTLY
		// HOW DID THIS NOT OCCUR TO ME??!?!?
		for (i=0;i<32;i=i+1) begin
			// the logical bishift should work?
			if (i == 0) begin
				found_row[i] = (above == m_one >> i) ? lookup[i][31:0] : 0;
			end else begin
				found_row[i] = found_row[i-1] + ((above == m_one >> i) ? lookup[i][31:0] : 0);
			end
		end
		DOUT = found_row[31];
	end
	
	assign RD = 1'b1;
	
	initial
	begin
		for (i=0;i<32;i=i+1) begin
			lookup[i] = 0;
		end
	end
	
endmodule
