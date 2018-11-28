module Control_Unit(
	input [6:0] Opcode,
	output reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite,
	output reg [1:0] ALUOp
);

always @(*)
	begin
	case (Opcode)
	  7'b0110011 : 
		begin
		ALUSrc = 1'b0;
		MemtoReg = 1'b0;
		RegWrite = 1'b1;
		MemRead = 1'b0;
		MemWrite = 1'b0;
		Branch = 1'b0;
		ALUOp = 2'b10;
		end
	  7'b0000011 :
	  begin 
		ALUSrc = 1'b1;
		MemtoReg = 1'b1;
		RegWrite = 1'b1;
		MemRead = 1'b1;
		MemWrite = 1'b0;
		Branch = 1'b0;
		ALUOp = 2'b00;
		end
	  7'b0100011 :
	  begin
		ALUSrc = 1'b1;
		MemtoReg = 1'bx;
		RegWrite = 1'b0;
		MemRead = 1'b0;
		MemWrite = 1'b1;
		Branch = 1'b0;
		ALUOp = 2'b00;
		end
	  7'b1100011 :
	  begin
		ALUSrc = 1'b0;
		MemtoReg = 1'bx;
		RegWrite = 1'b0;
		MemRead = 1'b0;
		MemWrite = 1'b0;
		Branch = 1'b1;
		ALUOp = 2'b01;
		end
		7'b0010011:
		begin
			ALUSrc = 1'b1;
			MemtoReg = 1'b0;
			RegWrite = 1'b1;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Branch = 1'b0;
			ALUOp = 2'b10;
		end
	endcase
	end
endmodule