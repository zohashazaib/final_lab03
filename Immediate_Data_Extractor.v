module Immediate_Data_Extractor
(
	input [31:0] instruction,
	output reg [63:0] imm_data
);

	always @(*)
	begin
		case (instruction[6])
			0: 
			begin
				case (instruction[5])
					0: assign imm_data = {52'd0, instruction[31:20]};
					1: assign imm_data = {52'd0, instruction[31:25], instruction[11:7]};
				endcase
			end
			1:
			begin
				assign imm_data = {52'd0, instruction[31], instruction[7], instruction[30:25], instruction[11:8]};
			end
		endcase
	end
	
endmodule