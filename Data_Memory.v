module Data_Memory
(
	input [63:0] Mem_Addr, Write_Data,
	input clk, MemWrite, MemRead,
	output reg [63:0] ReadData
);

	reg [7:0] mem [63:0];
	
	always @(MemRead)
	begin
		case (Mem_Addr[5:0])
			6'b000000: ReadData = {mem[7], mem[6], mem[5], mem[4], mem[3], mem[2], mem[1], mem[0]};
			6'b001000: ReadData = {mem[15], mem[14], mem[13], mem[12], mem[11], mem[10], mem[9], mem[8]};
			6'b010000: ReadData = {mem[23], mem[22], mem[21], mem[20], mem[19], mem[18], mem[17], mem[16]};
			6'b011000: ReadData = {mem[31], mem[30], mem[29], mem[28], mem[27], mem[26], mem[25], mem[24]};
			6'b100000: ReadData = {mem[39], mem[38], mem[37], mem[36], mem[35], mem[34], mem[33], mem[32]};
			6'b101000: ReadData = {mem[47], mem[46], mem[45], mem[44], mem[43], mem[42], mem[41], mem[40]};
			6'b110000: ReadData = {mem[55], mem[54], mem[53], mem[52], mem[51], mem[50], mem[49], mem[48]};
			6'b111000: ReadData = {mem[63], mem[62], mem[61], mem[60], mem[59], mem[58], mem[57], mem[56]};
		endcase
	end
	
	always @(MemWrite && clk)
	begin
		case (Mem_Addr[5:0])
		6'b000000:
		begin
			mem[7] = Write_Data[63:56];
			mem[6] = Write_Data[55:48];
			mem[5] = Write_Data[47:40];
			mem[4] = Write_Data[39:32];
			mem[3] = Write_Data[31:24];
			mem[2] = Write_Data[23:16];
			mem[1] = Write_Data[15:8];
			mem[0] = Write_Data[7:0];
		end
		6'b001000:
		begin
			mem[15] = Write_Data[63:56];
			mem[14] = Write_Data[55:48];
			mem[13] = Write_Data[47:40];
			mem[12] = Write_Data[39:32];
			mem[11] = Write_Data[31:24];
			mem[10] = Write_Data[23:16];
			mem[9] = Write_Data[15:8];
			mem[8] = Write_Data[7:0];
			end
		6'b010000:
		begin
			mem[23] = Write_Data[63:56];
			mem[22] = Write_Data[55:48];
			mem[21] = Write_Data[47:40];
			mem[20] = Write_Data[39:32];
			mem[19] = Write_Data[31:24];
			mem[18] = Write_Data[23:16];
			mem[17] = Write_Data[15:8];
			mem[16] = Write_Data[7:0];
			end
		6'b011000:
		begin
			mem[31] = Write_Data[63:56];
			mem[30] = Write_Data[55:48];
			mem[29] = Write_Data[47:40];
			mem[28] = Write_Data[39:32];
			mem[27] = Write_Data[31:24];
			mem[26] = Write_Data[23:16];
			mem[25] = Write_Data[15:8];
			mem[24] = Write_Data[7:0];
			end
		6'b100000:
		begin
			mem[39] = Write_Data[63:56];
			mem[38] = Write_Data[55:48];
			mem[37] = Write_Data[47:40];
			mem[36] = Write_Data[39:32];
			mem[35] = Write_Data[31:24];
			mem[34] = Write_Data[23:16];
			mem[33] = Write_Data[15:8];
			mem[32] = Write_Data[7:0];
			end
		6'b101000:
		begin
			mem[47] = Write_Data[63:56];
			mem[46] = Write_Data[55:48];
			mem[45] = Write_Data[47:40];
			mem[44] = Write_Data[39:32];
			mem[43] = Write_Data[31:24];
			mem[42] = Write_Data[23:16];
			mem[41] = Write_Data[15:8];
			mem[40] = Write_Data[7:0];
			end
		6'b110000:
		begin
			mem[55] = Write_Data[63:56];
			mem[54] = Write_Data[55:48];
			mem[53] = Write_Data[47:40];
			mem[52] = Write_Data[39:32];
			mem[51] = Write_Data[31:24];
			mem[50] = Write_Data[23:16];
			mem[49] = Write_Data[15:8];
			mem[48] = Write_Data[7:0];
			end
		6'b111000:
		begin
			mem[63] = Write_Data[63:56];
			mem[62] = Write_Data[55:48];
			mem[61] = Write_Data[47:40];
			mem[60] = Write_Data[39:32];
			mem[59] = Write_Data[31:24];
			mem[58] = Write_Data[23:16];
			mem[57] = Write_Data[15:8];
			mem[56] = Write_Data[7:0];
			end
		endcase
	end

endmodule