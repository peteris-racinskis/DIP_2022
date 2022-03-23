`timescale 1ns / 1ps

module CacheTopTest;

	// Inputs
	reg [31:0] ADDR;
	reg [31:0] DIN;
	reg WE;
	reg RREQ;
	reg RST;
	reg CLK;

	// Outputs
	wire [31:0] DOUT;
	wire RDY;

	integer i;

	// Instantiate the Unit Under Test (UUT)
	CacheTop uut (
		.ADDR(ADDR), 
		.DIN(DIN), 
		.WE(WE), 
		.RST(RST),
		.RREQ(RREQ),
		.CLK(CLK), 
		.DOUT(DOUT), 
		.RDY(RDY)
	);
	
	task read_address(input integer addr);
		begin 
			WE = 0;
			ADDR = addr;
			RREQ = 1;
			#20;
			RREQ = 0;
			while (!(RDY)) begin
				#10;
			end
			#20;
		end
	endtask
	
	task write_address(input integer addr, value);
		begin 
			ADDR = addr;
			RREQ = 0;
			WE = 1;
			DIN = value;
			#20;
			WE = 0;
			while (!(RDY)) begin
				#10;
			end
			#20;
		end
	endtask
	
	always
	begin
		CLK = 1;
		#5;
		CLK = 0;
		#5;
	end

	initial begin
		ADDR = 0;
		DIN = 0;
		WE = 0;
		RREQ = 0;
		RST = 1;
		#100;
		RST = 0;
		read_address(22);
		write_address(22, -5942);
		read_address(2);
		for (i=0;i<20;i=i+1) begin
			read_address(i);
		end
		for (i=0;i<10;i=i+1) begin
			write_address(i,-i);
		end
		for (i=0;i<10;i=i+1) begin
			read_address(i);
		end
		for (i=0;i<10;i=i+1) begin
			write_address(2,i);
		end
		read_address(2);
		// what is the value at 2 here?
		RST = 1;
		#100;
		RST = 0;
		for (i=0;i<10;i=i+1) begin
			read_address(i);
		end
	end
      
endmodule

