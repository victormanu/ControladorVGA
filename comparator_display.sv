module comparator_display #(parameter N) (countH, countV, selector);
	input logic [N:0] countH, countV;
	output logic selector;
	
	
	always @(countH, countV)  begin 
		if ((countH > 141 && countV > 34) && (countH < 782 && countV < 515)) begin
				selector = 1'b1; 
		end
		else selector = 1'b0;
	end
endmodule 	