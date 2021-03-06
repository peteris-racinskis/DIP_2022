`timescale 1ns / 1ps

module Controller(FUNCT7,FUNCT3,OPCODE,RDY,RDY_IO,RST,CLK,HOLD,SELA,SELB,WE,CWE,RREQ,SIGNED,LIM,CMUXSEL,OP,OP_B);
	 
	input [6:0] FUNCT7, OPCODE;
	input [3:0] FUNCT3;
	input RDY, RDY_IO, RST, CLK;
	output reg [2:0] LIM;
	output reg [1:0] CMUXSEL;
	output SELA, SELB, WE, SIGNED;
	output reg HOLD, RREQ, CWE;
	//output HOLD,SELA,SELB,WE;
	//output reg RREQ, CWE, CMUXSEL;
	output reg [3:0] OP;
	output reg [2:0] OP_B;
	reg [2:0] state;
	reg restart;
	
	// Instruction opcodes
	parameter LUI = 7'b0110111;
	parameter AUIPC = 7'b0010111;
	parameter JAL = 7'b1101111;
	parameter JALR = 7'b1100111;
	parameter BTYPE = 7'b1100011;
	parameter LOADS = 7'b0000011;
	parameter STORES = 7'b0100011;
	parameter ARITHM_I = 7'b0010011;
	parameter ARITHM_R = 7'b0110011;
	// Branch logic opcodes
	parameter ZER = 1;
	parameter NZR = 2;
	parameter DAT = 3;
	parameter NDT = 4;
	parameter JLI = 5;
	parameter JLR = 6;
	// ALU opcodes
	parameter ADD = 1;
	parameter SUB = 2;
	parameter SLL = 3;
	parameter SRL = 4;
	parameter SRA = 5;
	parameter SLU = 6;	// set less than unsigned
	parameter SLT = 7;	// set less than
	parameter OR = 8;
	parameter AND = 9;
	parameter XOR = 10;
	parameter SIU = 11; // Shift immediate to upper
	parameter AIU = 12; // Add upper immediate
	parameter JLX = 13;
	// Constants making up part of the instruction
	parameter FUNCT3_ADD_SUB = 3'b000;
	parameter FUNCT3_SLL = 3'b001;
	parameter FUNCT3_SLT = 3'b010;
	parameter FUNCT3_SLU = 3'b011;
	parameter FUNCT3_XOR = 3'b100;
	parameter FUNCT3_SRX = 3'b101;
	parameter FUNCT3_OR = 3'b110;
	parameter FUNCT3_AND = 3'b111;
	parameter FUNCT7_DEF = 7'b0000000;
	parameter FUNCT7_MOD = 7'b0100000;
	// remapping for B-type instructions
	parameter BEQ = FUNCT3_ADD_SUB;
	parameter BNE = FUNCT3_SLL;
	parameter BLT = FUNCT3_XOR;
	parameter BGE = FUNCT3_SRX;
	parameter BLTU = FUNCT3_OR;
	parameter BGEU = FUNCT3_AND;
	// remapping for Load instructions
	parameter LB = FUNCT3_ADD_SUB;
	parameter LH = FUNCT3_SLL;
	parameter LW = FUNCT3_SLT;
	parameter LBU = FUNCT3_XOR;
	parameter LHU = FUNCT3_SRX;
	// remapping for Store instructions
	parameter SB = FUNCT3_ADD_SUB;
	parameter SH = FUNCT3_SLL;
	parameter SW = FUNCT3_SLT;
	// Memory operation state
	parameter START = 1;
	parameter R_UNSET = 2;
	parameter W_UNSET = 3;
	parameter WAIT = 4;
	// CMUXSEL values
	parameter CMUX_ALU = 0;
	parameter CMUX_CACHE = 1;
	parameter CMUX_IOCTL = 2;

	// SELA == 1 => A register, else PC
	assign SELA = !((OPCODE == LUI) | (OPCODE == AUIPC) | (OPCODE == JALR) | (OPCODE == JAL));
	// SELB == 1 => B register, else Immediate
	assign SELB = (OPCODE == BTYPE) | (OPCODE == ARITHM_R);
	// Write Enable for most instructions
	assign WE = !((OPCODE == STORES) | (OPCODE == BTYPE)); 
	// THIS SHOULDN'T BE NECESSARY WHEN USING OUT OF PHASE CLK
	// Immediately drop but restart synchronously
	//assign HOLD = (((OPCODE == LOADS) | (OPCODE == STORES)) & !restart);
	// whether to sign extend data from memory
	// NOTE: THIS ALSO NEEDS TO GO IN THE CACHE TAG
	// When storing always assume unsigned (no sign extension in the cached value)
	// because masked writes fill the excess with 0s
	assign SIGNED = !((FUNCT3 == LBU) | (FUNCT3 == LHU) | (OPCODE == STORES)); 
	
	// State machine for multi-cycle memory operations
	always @(negedge CLK)
	begin
		if (RST) begin
			state <= START;
			CMUXSEL <= CMUX_ALU;
		end else begin
			case (state)
				START: begin
						HOLD <= 0;
						//restart <= 0;
						RREQ <= 0;
						CWE <= 0;
						CMUXSEL <= CMUX_ALU;
						if (OPCODE == LOADS) begin
							HOLD <= 1;
							RREQ <= 1;
							//CMUXSEL <= 0;
							state <= R_UNSET;
						end else if (OPCODE == STORES) begin
							HOLD <= 1;
							CWE <= 1;
							state <= W_UNSET;
						end
					end
				R_UNSET: begin
						RREQ <= 0;
						state <= WAIT;
					end
				W_UNSET: begin
						CWE <= 0;
						state <= WAIT;
					end
				// Is this gonna work for loading memory into regfile?
				// Or do I need more steps?
				WAIT: begin
						if (RDY | RDY_IO) begin
							//restart <= 1;
							CMUXSEL <= RDY ? CMUX_CACHE : CMUX_IOCTL;
							HOLD <= 0;
							state <= START;
						end
					end
				default: state <= START;			
			endcase
		end
	end
	
	// Combinational logic for setting ALU and BranchLogic opcodes
	always @(*)
	begin
		
		// Load/store size setter
		case (FUNCT3)
			LB,LBU,SB: LIM = 0;
			LH,LHU,SH: LIM = 1;
			default: LIM = 3;
		endcase
	
		// Branch logic opcode setter
		if (OPCODE == BTYPE) begin
			case (FUNCT3)
				BEQ: OP_B = ZER;
				BNE: OP_B = NZR;
				BLT, BLTU: OP_B = DAT;
				BGE, BGEU: OP_B = NDT;
				default: OP_B = 0;
			endcase
		end else if (OPCODE == JAL) begin
			OP_B = JLI;
		end else if (OPCODE == JALR) begin
			OP_B = JLR;
		end else begin
			OP_B = 0;
		end
	
		// ALU opcode setter
		if ((OPCODE == AUIPC)) begin
			OP = AIU;
		end else if ((OPCODE ==  JAL) | (OPCODE == JALR)) begin
			OP = JLX;
		end else if ((OPCODE == STORES) | (OPCODE == LOADS)) begin
			OP = ADD;
		end else if (OPCODE == LUI) begin
			OP = SIU;
		end else if (OPCODE == BTYPE) begin
			case (FUNCT3)
				BEQ, BNE: OP = SUB;
				BLT, BGE: OP = SLT;
				BLTU,BGEU:OP = SLU;
				default: OP = 0;
			endcase
		end else begin
			OP_B = 0;
			case(FUNCT3)
				FUNCT3_ADD_SUB: if ((OPCODE == ARITHM_R) & (FUNCT7 == FUNCT7_MOD)) begin
					OP = SUB;
				end else begin
					OP = ADD;
				end
				FUNCT3_SLL: OP = SLL;
				FUNCT3_SLT: OP = SLT;
				FUNCT3_SLU: OP = SLU;
				FUNCT3_XOR: OP = XOR;
				FUNCT3_SRX: if (FUNCT7 == FUNCT7_MOD) begin
					OP = SRA;
				end else begin
					OP = SRL;
				end
				FUNCT3_OR: OP = OR;
				FUNCT3_AND: OP = AND;
				default: OP = 0;
			endcase
		end
		
	end // always @(*)

endmodule
