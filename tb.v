module tb
(

);

	reg clk, reset;
	
    initial
    clk = 1'b0;

    always
    #5 clk = ~clk;
	
	initial
	begin
		reset = 1'b0;
		#10 reset = 1'b1;
		#10 reset = 1'b0;
	end
	
	RISC_V_Processor p0
	(
		.clk(clk),
		.reset(reset)
	);

endmodule