module Instruction_Fetch
(
	input clk, reset,
	output [31:0] Instruction
);
	wire [63:0] PC_In;
	wire [63:0] PC_Out;
	
	Instruction_Memory im0
	(
		.Inst_Address(PC_Out),
		.Instruction(Instruction)
	);
	
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
		.sum(PC_In)
	);

endmodule