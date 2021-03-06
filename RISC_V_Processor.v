module RISC_V_Processor(
input clk,
input reset
);

wire [63:0] PC_In, PC_Out, add0Out;
wire [31:0] Instruction;

wire [6:0] opcode, funct7;
wire [4:0] rd, rs1, rs2;
wire [2:0] funct3;
	
	

Program_Counter pc0
(
	.clk(clk),
	.reset(reset),
	.PC_In(PC_In),
	.PC_Out(PC_Out)
);

Adder add0
(
	.a(PC_Out),
	.b(64'd4),
	.sum(add0Out)
);


Instruction_Memory im0
(
	.Inst_Address(PC_Out),
	.Instruction(Instruction)
);

Instruction_Parser ip0
(
	.instruction(Instruction),
	.opcode(opcode),
	.funct7(funct7),
	.funct3(funct3),
	.rd(rd),
	.rs1(rs1),
	.rs2(rs2)
);

wire [63:0] writeData;
wire [63:0] readData1, readData2;

Register_File rf0
(
	.writeData(writeData),
	.rs1(rs1),
	.rs2(rs2),
	.rd(rd),
	.regWrite(regWrite),
	.clk(clk),
	.reset(reset),
	.readData1(readData1),
	.readData2(readData2)
);

wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
wire [1:0] ALUOp;

Control_Unit cu0
(
	.Opcode(opcode),
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.MemWrite(MemWrite),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite),
	.ALUOp(ALUOp)
);

wire [63:0] imm_data;

Immediate_Data_Extractor ide0
(	.instruction(Instruction),
	.imm_data(imm_data)
);

wire [3:0] Operation;

ALU_Control aluc0
(
	.ALUOp(ALUOp),
	.Funct({Instruction[30], Instruction[14:12]}),
	.Operation(Operation)
);

wire [63:0] alumux_out;

multiplexer alumux
(
	.sel(ALUSrc),
	.a(readData2),
	.b(imm_data),
	.data_out(alumux_out)
);

wire [63:0] ALU_Result;
wire Zero;

ALU_64_bit alu0 
(
	.ALUOp(Operation),
	.a(readData1),
	.b(alumux_out),
	.Result(ALU_Result),
	.Zero(Zero)
);

wire [63:0] ReadData;

Data_Memory dm0
(
	.Mem_Addr(ALU_Result),
	.Write_Data(readData2),
	.clk(clk),
	.MemRead(MemRead),
	.MemWrite(MemWrite),
	.ReadData(ReadData)
);

multiplexer regwritemux
(
	.sel(MemtoReg),
	.a(ALU_Result),
	.b(ReadData),
	.data_out(writeData)
);

reg [63:0] imm_data_shifted;

always @(imm_data)
	begin
		imm_data_shifted = imm_data << 1;
	end

wire [63:0] add1out;
	
Adder add1
(
	.a(PC_Out),
	.b(imm_data_shifted),
	.sum(add1out)
);

reg pcmuxsel;

always @(Branch)
	begin
		pcmuxsel = Branch & Zero;
	end

multiplexer pcmux
(
	.sel(pcmuxsel),
	.a(add0Out),
	.b(add1out),
	.data_out(PC_In)
);
	

endmodule