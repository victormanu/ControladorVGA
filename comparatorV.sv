module comparatorV #(parameter N) (countV, selector);
	input logic [N:0] countV;
	output logic selector;
	
	always @(countV)  begin
		if ((countV < 2) || (countV > 524)) begin
				selector = 1'b1;
		end
		else selector = 1'b0;
	end 
endmodule 	