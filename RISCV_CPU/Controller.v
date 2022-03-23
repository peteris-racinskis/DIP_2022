`timescale 1ns / 1ps

module Controller(
    input [6:0] FUNCT7,
    input [3:0] FUNCT3,
    input [6:0] OPCODE,
	 input RDY,
	 output HOLD,
    output SELA,
    output SELB,
	 output WE,
	 output CWE,
	 output RREQ,
	 output CMUXSEL,
    output reg [3:0] OP,
	 output reg [2:0] OP_B
    );
	
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
	parameter JMP = 5;
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

	// SELA == 1 => A register, else PC
	assign SELA = !((OPCODE == LUI) | (OPCODE == AUIPC));
	// SELB == 1 => B register, else Immediate
	assign SELB = (OPCODE == BTYPE) | (OPCODE == ARITHM_R);
	// Write Enable for most instructions
	assign WE = !((OPCODE == STORES) | (OPCODE == BTYPE)); 
	// Cache Write Enable for stores only
	assign CWE = (OPCODE == STORES);
	// Select cache output for loads only (1 = data, 0 = cache out)
	assign CMUXSEL = !(OPCODE == LOADS);
	// Actively trigger reads to prevent cache from halting
	// processor execution on normal instructions (which happens
	// if we try to simply monitor the address line for changes)
	assign RREQ = (OPCODE == LOADS);
	// Hold PC value constant when data access instruction and no RDY signal.
	assign HOLD = (((OPCODE == LOADS) | (OPCODE == STORES)) & !RDY);
	
	always @(*)
	begin
	
		// Branch logic opcode setter
		if (OPCODE == BTYPE) begin
			case (FUNCT3)
				BEQ: OP_B = ZER;
				BNE: OP_B = NZR;
				BLT, BLTU: OP_B = DAT;
				BGE, BGEU: OP_B = NDT;
				default: OP_B = 0;
			endcase
		end else if ((OPCODE == JAL) | (OPCODE == JALR)) begin
			OP_B = JMP;
		end else begin
			OP_B = 0;
		end
	
		// ALU opcode setter
		if ((OPCODE == AUIPC)) begin
			OP = AIU;
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
