module counter_tb #(parameter N= 15)();
	logic clk, venable;
	logic [N-1:0] count;
	
	counterH #(N) DUT (clk, venable, count);
	
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk; 
		#10;
	end
endmodule 