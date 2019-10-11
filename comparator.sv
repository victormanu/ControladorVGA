/*module comparator #(parameter N) (clk, countH, countV, selector);
	input logic clk;
	input logic [N-1:0] countH, countV;
	output logic selector;
	
	always @(posedge clk)  begin 
		if ((countH < 96 && countV < 2) || (countH > 799 && countV > 524)) begin
				selector = 1'b1;
		end
		else selector = 1'b0;
	end
endmodule 	*/