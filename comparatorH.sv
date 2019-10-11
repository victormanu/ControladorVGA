module comparatorH #(parameter N) (countH, selector);
	input logic [N:0] countH;
	output logic selector;
	
	always @(countH)  begin 
		if ((countH < 96) || (countH > 799)) begin
				selector = 1'b1;
		end
		else selector = 1'b0; 
	end
endmodule 	