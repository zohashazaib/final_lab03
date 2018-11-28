module Register_File
(
	input [63:0] writeData,
	input [4:0] rs1, rs2, rd,
	input regWrite, clk, reset,
	output reg [63:0] readData1, readData2
);

	reg [63:0] regFile [17:0];

	initial
		begin
			regFile[0] <= 0;
			regFile[1] <= 0;
			regFile[2] <= 0;
			regFile[3] <= 0;
			regFile[4] <= 0;
			regFile[5] <= 0;
			regFile[6] <= 0;
			regFile[7] <= 0;
			regFile[8] <= 0;
			regFile[9] <= 0;
			regFile[10] <= 0;
			regFile[11] <= 0;
			regFile[12] <= 0;
			regFile[13] <= 0;
			regFile[14] <= 0;
			regFile[15] <= 0;
			regFile[16] <= 0;
			regFile[17] <= 0;
		end
	
	always @(posedge clk)
		begin
			if (reset)
				begin
					readData1 <= 0;
					readData2 <= 0;
				end
			else
				begin
					readData1 <= regFile[rs1];
					readData2 <= regFile[rs2];
					if (regWrite) regFile[rd] <= writeData;
				end
		end
endmodule