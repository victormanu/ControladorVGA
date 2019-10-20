module comparator_display #(parameter N) (countH, countV, vga_blank, vga_sync, selector);
	input logic [N:0] countH, countV;
	output logic vga_blank, vga_sync;
	output logic [1:0] selector;
	
	always @(countH, countV)  begin 
		// Verificación de área de video
		if ((countH > 141 && countV > 34) && (countH < 782 && countV < 515)) begin
				vga_blank = 1'b1;
				vga_sync = 1'b0;
				selector = 2'b00;
		end
		else begin
			vga_blank = 1'b0;
			vga_sync = 1'b1;
			selector = 2'b01;
		end
		if (countH == 353 || countH == 565) begin
			selector = 2'b10;
		end
		if (countV == 193 || countV == 352) begin
			selector = 2'b10;
		end
		// Marcar imagen posición 1
		if ((countH > 216 && countH < 278 ) && (countV > 83 && countV < 145)) begin
			selector = 2'b11;
		end
		// Marcar imagen posición 2
		if ((countH > 429 && countH < 491 ) && (countV > 83 && countV < 145)) begin
			selector = 2;
		end
		// Marcar imagen posición 3
		 if ((countH > 642 && countH < 704 ) && (countV > 83 && countV < 145)) begin
			selector = 2;
		end
		// Marcar imagen posición 4
		 if ((countH > 216 && countH < 278 ) && (countV > 243 && countV < 305)) begin
			selector = 2;
		end
		// Marcar imagen posición 5
		 if ((countH > 429 && countH < 491 ) && (countV > 243 && countV < 305)) begin
			selector = 2;
		end
		// Marcar imagen posición 6
		 if ((countH > 642 && countH < 704 ) && (countV > 243 && countV < 305)) begin
			selector = 2;
		end
		// Marcar imagen posición 7
		 if ((countH > 216 && countH < 278 ) && (countV > 403 && countV < 465)) begin
			selector = 2;
		end
		// Marcar imagen posición 8
		 if ((countH > 429 && countH < 491 ) && (countV > 403 && countV < 465)) begin
			selector = 2;
		end
		// Marcar imagen posición 9
		 if ((countH > 642 && countH < 704 ) && (countV > 403 && countV < 465)) begin
			selector = 2;
		end
	end
endmodule 	