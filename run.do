#compiling design modules
vlog tb.v Adder.v ALU_64_bit.v ALU_Control.v Control_Unit.v Data_Memory.v Immediate_Data_Extractor.v Instruction_Memory.v Instruction_Parser.v multiplexer.v Program_Counter.v Register_File.v RISC_V_Processor.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#adding waves

add wave sim:/tb/*
add wave sim:/tb/p0/*

run 60ns