module instruction
(
	input [31:0] instruction,
	output reg [6:0] opcode, funct7,
	output reg [4:0] rd, rs1, rs2,
	output reg [2:0] funct3
);

	always @(*)
		begin
			assign opcode = instruction[6:0];
			assign rd = instruction[11:7];
			assign funct3 = instruction[14:12];
			assign rs1 = instruction[19:15];
			assign rs2 = instruction[24:20];
			assign funct7 = instruction[31:25];
		end

endmodule