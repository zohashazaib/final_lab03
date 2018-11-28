module ALU_6_bit
(
	input CarryIn,
	input [63:0] a, b,
	input [3:0] ALUOp,
	output reg [63:0] Result, 
	output CarryOut
);

wire CarryIn1, CarryIn2, CarryIn3, CarryIn4, CarryIn5, CarryIn6, CarryIn7, CarryIn8, CarryIn9, CarryIn10,
CarryIn11, CarryIn12, CarryIn13, CarryIn14, CarryIn15, CarryIn16, CarryIn17, CarryIn18, CarryIn19, CarryIn20,
CarryIn21, CarryIn22, CarryIn23, CarryIn24, CarryIn25, CarryIn26, CarryIn27, CarryIn28, CarryIn29, CarryIn30,
CarryIn21, CarryIn22, CarryIn23, CarryIn24, CarryIn25, CarryIn26, CarryIn27, CarryIn28, CarryIn29, CarryIn30,

ALU_1_bit alu0
	(
		.a(a[0]),
		.b(b[0]),
		.CarryIn(CarryIn),
		.ALUOp(ALUOp),
		.Result(Result[0]),
		.CarryOut(CarryIn1)
	);	

ALU_1_bit alu1
(
.a(a[1]),
.b(b[1]),
.CarryIn(CarryIn1),
.ALUOp(ALUOp),
.Result(Result[1]),
.CarryOut(CarryIn2));

ALU_1_bit alu2
(
.a(a[2]),
.b(b[2]),
.CarryIn(CarryIn2),
.ALUOp(ALUOp),
.Result(Result[2]),
.CarryOut(CarryIn3));

ALU_1_bit alu3
(
.a(a[3]),
.b(b[3]),
.CarryIn(CarryIn3),
.ALUOp(ALUOp),
.Result(Result[3]),
.CarryOut(CarryIn4));

ALU_1_bit alu4
(
.a(a[4]),
.b(b[4]),
.CarryIn(CarryIn4),
.ALUOp(ALUOp),
.Result(Result[4]),
.CarryOut(CarryIn5));

ALU_1_bit alu5
(
.a(a[5]),
.b(b[5]),
.CarryIn(CarryIn5),
.ALUOp(ALUOp),
.Result(Result[5]),
.CarryOut(CarryIn6));

ALU_1_bit alu6
(
.a(a[6]),
.b(b[6]),
.CarryIn(CarryIn6),
.ALUOp(ALUOp),
.Result(Result[6]),
.CarryOut(CarryIn7));

ALU_1_bit alu7
(
.a(a[7]),
.b(b[7]),
.CarryIn(CarryIn7),
.ALUOp(ALUOp),
.Result(Result[7]),
.CarryOut(CarryIn8));

ALU_1_bit alu8
(
.a(a[8]),
.b(b[8]),
.CarryIn(CarryIn8),
.ALUOp(ALUOp),
.Result(Result[8]),
.CarryOut(CarryIn9));

ALU_1_bit alu9
(
.a(a[9]),
.b(b[9]),
.CarryIn(CarryIn9),
.ALUOp(ALUOp),
.Result(Result[9]),
.CarryOut(CarryIn10));

ALU_1_bit alu10
(
.a(a[10]),
.b(b[10]),
.CarryIn(CarryIn10),
.ALUOp(ALUOp),
.Result(Result[10]),
.CarryOut(CarryIn11));

ALU_1_bit alu11
(
.a(a[11]),
.b(b[11]),
.CarryIn(CarryIn11),
.ALUOp(ALUOp),
.Result(Result[11]),
.CarryOut(CarryIn12));

ALU_1_bit alu12
(
.a(a[12]),
.b(b[12]),
.CarryIn(CarryIn12),
.ALUOp(ALUOp),
.Result(Result[12]),
.CarryOut(CarryIn13));

ALU_1_bit alu13
(
.a(a[13]),
.b(b[13]),
.CarryIn(CarryIn13),
.ALUOp(ALUOp),
.Result(Result[13]),
.CarryOut(CarryIn14));

ALU_1_bit alu14
(
.a(a[14]),
.b(b[14]),
.CarryIn(CarryIn14),
.ALUOp(ALUOp),
.Result(Result[14]),
.CarryOut(CarryIn15));

ALU_1_bit alu15
(
.a(a[15]),
.b(b[15]),
.CarryIn(CarryIn15),
.ALUOp(ALUOp),
.Result(Result[15]),
.CarryOut(CarryIn16));

ALU_1_bit alu16
(
.a(a[16]),
.b(b[16]),
.CarryIn(CarryIn16),
.ALUOp(ALUOp),
.Result(Result[16]),
.CarryOut(CarryIn17));

ALU_1_bit alu17
(
.a(a[17]),
.b(b[17]),
.CarryIn(CarryIn17),
.ALUOp(ALUOp),
.Result(Result[17]),
.CarryOut(CarryIn18));

ALU_1_bit alu18
(
.a(a[18]),
.b(b[18]),
.CarryIn(CarryIn18),
.ALUOp(ALUOp),
.Result(Result[18]),
.CarryOut(CarryIn19));

ALU_1_bit alu19
(
.a(a[19]),
.b(b[19]),
.CarryIn(CarryIn19),
.ALUOp(ALUOp),
.Result(Result[19]),
.CarryOut(CarryIn20));

ALU_1_bit alu20
(
.a(a[20]),
.b(b[20]),
.CarryIn(CarryIn20),
.ALUOp(ALUOp),
.Result(Result[20]),
.CarryOut(CarryIn21));

ALU_1_bit alu21
(
.a(a[21]),
.b(b[21]),
.CarryIn(CarryIn21),
.ALUOp(ALUOp),
.Result(Result[21]),
.CarryOut(CarryIn22));

ALU_1_bit alu22
(
.a(a[22]),
.b(b[22]),
.CarryIn(CarryIn22),
.ALUOp(ALUOp),
.Result(Result[22]),
.CarryOut(CarryIn23));

ALU_1_bit alu23
(
.a(a[23]),
.b(b[23]),
.CarryIn(CarryIn23),
.ALUOp(ALUOp),
.Result(Result[23]),
.CarryOut(CarryIn24));

ALU_1_bit alu24
(
.a(a[24]),
.b(b[24]),
.CarryIn(CarryIn24),
.ALUOp(ALUOp),
.Result(Result[24]),
.CarryOut(CarryIn25));

ALU_1_bit alu25
(
.a(a[25]),
.b(b[25]),
.CarryIn(CarryIn25),
.ALUOp(ALUOp),
.Result(Result[25]),
.CarryOut(CarryIn26));

ALU_1_bit alu26
(
.a(a[26]),
.b(b[26]),
.CarryIn(CarryIn26),
.ALUOp(ALUOp),
.Result(Result[26]),
.CarryOut(CarryIn27));

ALU_1_bit alu27
(
.a(a[27]),
.b(b[27]),
.CarryIn(CarryIn27),
.ALUOp(ALUOp),
.Result(Result[27]),
.CarryOut(CarryIn28));

ALU_1_bit alu28
(
.a(a[28]),
.b(b[28]),
.CarryIn(CarryIn28),
.ALUOp(ALUOp),
.Result(Result[28]),
.CarryOut(CarryIn29));

ALU_1_bit alu29
(
.a(a[29]),
.b(b[29]),
.CarryIn(CarryIn29),
.ALUOp(ALUOp),
.Result(Result[29]),
.CarryOut(CarryIn30));

ALU_1_bit alu30
(
.a(a[30]),
.b(b[30]),
.CarryIn(CarryIn30),
.ALUOp(ALUOp),
.Result(Result[30]),
.CarryOut(CarryIn31));

ALU_1_bit alu31
(
.a(a[31]),
.b(b[31]),
.CarryIn(CarryIn31),
.ALUOp(ALUOp),
.Result(Result[31]),
.CarryOut(CarryIn32));

ALU_1_bit alu32
(
.a(a[32]),
.b(b[32]),
.CarryIn(CarryIn32),
.ALUOp(ALUOp),
.Result(Result[32]),
.CarryOut(CarryIn33));

ALU_1_bit alu33
(
.a(a[33]),
.b(b[33]),
.CarryIn(CarryIn33),
.ALUOp(ALUOp),
.Result(Result[33]),
.CarryOut(CarryIn34));

ALU_1_bit alu34
(
.a(a[34]),
.b(b[34]),
.CarryIn(CarryIn34),
.ALUOp(ALUOp),
.Result(Result[34]),
.CarryOut(CarryIn35));

ALU_1_bit alu35
(
.a(a[35]),
.b(b[35]),
.CarryIn(CarryIn35),
.ALUOp(ALUOp),
.Result(Result[35]),
.CarryOut(CarryIn36));

ALU_1_bit alu36
(
.a(a[36]),
.b(b[36]),
.CarryIn(CarryIn36),
.ALUOp(ALUOp),
.Result(Result[36]),
.CarryOut(CarryIn37));

ALU_1_bit alu37
(
.a(a[37]),
.b(b[37]),
.CarryIn(CarryIn37),
.ALUOp(ALUOp),
.Result(Result[37]),
.CarryOut(CarryIn38));

ALU_1_bit alu38
(
.a(a[38]),
.b(b[38]),
.CarryIn(CarryIn38),
.ALUOp(ALUOp),
.Result(Result[38]),
.CarryOut(CarryIn39));

ALU_1_bit alu39
(
.a(a[39]),
.b(b[39]),
.CarryIn(CarryIn39),
.ALUOp(ALUOp),
.Result(Result[39]),
.CarryOut(CarryIn40));

ALU_1_bit alu40
(
.a(a[40]),
.b(b[40]),
.CarryIn(CarryIn40),
.ALUOp(ALUOp),
.Result(Result[40]),
.CarryOut(CarryIn41));

ALU_1_bit alu41
(
.a(a[41]),
.b(b[41]),
.CarryIn(CarryIn41),
.ALUOp(ALUOp),
.Result(Result[41]),
.CarryOut(CarryIn42));

ALU_1_bit alu42
(
.a(a[42]),
.b(b[42]),
.CarryIn(CarryIn42),
.ALUOp(ALUOp),
.Result(Result[42]),
.CarryOut(CarryIn43));

ALU_1_bit alu43
(
.a(a[43]),
.b(b[43]),
.CarryIn(CarryIn43),
.ALUOp(ALUOp),
.Result(Result[43]),
.CarryOut(CarryIn44));

ALU_1_bit alu44
(
.a(a[44]),
.b(b[44]),
.CarryIn(CarryIn44),
.ALUOp(ALUOp),
.Result(Result[44]),
.CarryOut(CarryIn45));

ALU_1_bit alu45
(
.a(a[45]),
.b(b[45]),
.CarryIn(CarryIn45),
.ALUOp(ALUOp),
.Result(Result[45]),
.CarryOut(CarryIn46));

ALU_1_bit alu46
(
.a(a[46]),
.b(b[46]),
.CarryIn(CarryIn46),
.ALUOp(ALUOp),
.Result(Result[46]),
.CarryOut(CarryIn47));

ALU_1_bit alu47
(
.a(a[47]),
.b(b[47]),
.CarryIn(CarryIn47),
.ALUOp(ALUOp),
.Result(Result[47]),
.CarryOut(CarryIn48));

ALU_1_bit alu48
(
.a(a[48]),
.b(b[48]),
.CarryIn(CarryIn48),
.ALUOp(ALUOp),
.Result(Result[48]),
.CarryOut(CarryIn49));

ALU_1_bit alu49
(
.a(a[49]),
.b(b[49]),
.CarryIn(CarryIn49),
.ALUOp(ALUOp),
.Result(Result[49]),
.CarryOut(CarryIn50));

ALU_1_bit alu50
(
.a(a[50]),
.b(b[50]),
.CarryIn(CarryIn50),
.ALUOp(ALUOp),
.Result(Result[50]),
.CarryOut(CarryIn51));

ALU_1_bit alu51
(
.a(a[51]),
.b(b[51]),
.CarryIn(CarryIn51),
.ALUOp(ALUOp),
.Result(Result[51]),
.CarryOut(CarryIn52));

ALU_1_bit alu52
(
.a(a[52]),
.b(b[52]),
.CarryIn(CarryIn52),
.ALUOp(ALUOp),
.Result(Result[52]),
.CarryOut(CarryIn53));

ALU_1_bit alu53
(
.a(a[53]),
.b(b[53]),
.CarryIn(CarryIn53),
.ALUOp(ALUOp),
.Result(Result[53]),
.CarryOut(CarryIn54));

ALU_1_bit alu54
(
.a(a[54]),
.b(b[54]),
.CarryIn(CarryIn54),
.ALUOp(ALUOp),
.Result(Result[54]),
.CarryOut(CarryIn55));

ALU_1_bit alu55
(
.a(a[55]),
.b(b[55]),
.CarryIn(CarryIn55),
.ALUOp(ALUOp),
.Result(Result[55]),
.CarryOut(CarryIn56));

ALU_1_bit alu56
(
.a(a[56]),
.b(b[56]),
.CarryIn(CarryIn56),
.ALUOp(ALUOp),
.Result(Result[56]),
.CarryOut(CarryIn57));

ALU_1_bit alu57
(
.a(a[57]),
.b(b[57]),
.CarryIn(CarryIn57),
.ALUOp(ALUOp),
.Result(Result[57]),
.CarryOut(CarryIn58));

ALU_1_bit alu58
(
.a(a[58]),
.b(b[58]),
.CarryIn(CarryIn58),
.ALUOp(ALUOp),
.Result(Result[58]),
.CarryOut(CarryIn59));

ALU_1_bit alu59
(
.a(a[59]),
.b(b[59]),
.CarryIn(CarryIn59),
.ALUOp(ALUOp),
.Result(Result[59]),
.CarryOut(CarryIn60));

ALU_1_bit alu60
(
.a(a[60]),
.b(b[60]),
.CarryIn(CarryIn60),
.ALUOp(ALUOp),
.Result(Result[60]),
.CarryOut(CarryIn61));

ALU_1_bit alu61
(
.a(a[61]),
.b(b[61]),
.CarryIn(CarryIn61),
.ALUOp(ALUOp),
.Result(Result[61]),
.CarryOut(CarryIn62));

ALU_1_bit alu62
(
.a(a[62]),
.b(b[62]),
.CarryIn(CarryIn62),
.ALUOp(ALUOp),
.Result(Result[62]),
.CarryOut(CarryIn63));

ALU_1_bit alu63
(
.a(a[63]),
.b(b[63]),
.CarryIn(CarryIn63),
.ALUOp(ALUOp),
.Result(Result[63]),
.CarryOut(CarryOut));


	
endmodule