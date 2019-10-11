module clockDivider_tb ();
	logic clk, reset;
	logic vgaClk;
	
	clockDivider DUT (clk, reset, vgaClk);
	
	
	initial begin
		reset = 1;
		#15;
		reset = 0;
	end
	
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk; 
		#10;
	end
endmodule 