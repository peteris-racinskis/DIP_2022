`timescale 1ns / 1ps

module Controller(
    input [6:0] FUNCT7,
    input [3:0] FUNCT3,
    input [6:0] OPCODE,
    output SELA,
    output SELB,
	 output WE,
    output reg [3:0] OP
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

	// SELA == 1 => A register, else PC
	assign SELA = !((OPCODE == LUI) | (OPCODE == AUIPC));
	// SELB == 1 => B register, else Immediate
	assign SELB = (OPCODE == BTYPE) | (OPCODE == STORES) | (OPCODE == ARITHM_R);
	// Write Enable for most instructions
	assign WE = !((OPCODE == STORES) | (OPCODE == BTYPE)); 
	
	always @(*)
	begin
		if (OPCODE == AUIPC) begin
			OP = AIU;
		end else if (OPCODE == LUI) begin
			OP = SIU;
		end else begin
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
	end

endmodule
