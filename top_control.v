module top_control(
);

reg [6:0] Opcode;
reg [3:0] Funct;
wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
wire[1:0] ALUOp;
wire [3:0] Operation;


	Control_Unit cu0
	(
		.Opcode(Opcode),
		.Branch(Branch), 
		.MemRead(MemRead),
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.ALUSrc(ALUSrc), 
		.RegWrite(RegWrite),
		.ALUOp(ALUOp)
	);
	
	ALU_Control aluc0
	(
		.ALUOp(ALUOp),
		.Funct(Funct),
		.Operation(Operation)
	);
	
initial
	begin
		Opcode = 7'b0110011;
		Funct = 4'b0000;
		#5
		Funct = 4'b1000;
		#5
		Funct = 4'b0111;
		#5
		Funct = 4'b0110;
		Opcode = 7'b0000011;
		#20
		Opcode = 7'b0100011;
		#20
		Opcode = 7'b1100011;
	end

endmodule