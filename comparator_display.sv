module comparator_display #(parameter N) (countH, countV, vga_blank, vga_sync, selector);
	input logic [N:0] countH, countV;
	output logic vga_blank, vga_sync, selector;
	
	always @(countH, countV)  begin 
		if ((countH > 141 && countV > 34) && (countH < 782 && countV < 515)) begin
				vga_blank = 1'b1;
				vga_sync = 1'b0;
				selector = 1'b0;
		end
		else begin
			vga_blank = 1'b0;
			vga_sync = 1'b1;
			selector = 1'b0;
		end
		if (countH == 353 || countH == 565) begin
			selector = 1'b1;
		end
		if (countV == 193 || countV == 352) begin
			selector = 1'b1;
		end
	end
endmodule 	