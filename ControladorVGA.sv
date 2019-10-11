module controladorVGA #(parameter N = 15)(v_enable, clk, reset, horiz_count, vert_count, R, G, B, horiz_sync, vert_sync, clkVGA, display);
	input logic clk, reset;
	output logic [2:0] R, G, B;
	output logic horiz_sync, vert_sync;
	output logic clkVGA;
	output logic [8:0] display;
	output logic [N:0] horiz_count, vert_count;
	
	// Variables locales
	output logic v_enable;
	//logic [N:0] horiz_count, vert_count;
	logic selector;
	logic [8:0] blank, color;
	
	assign blank = 0;
	assign color [2:0] = 3'hF;
	assign color [5:3] = 3'hF;
	assign color [8:6] = 3'hF;
	
	// Divisor de clk
	clockDivider clkDIV(clk, reset, clkVGA);
	 
	// Contadores
	counterH #(N) cont_h (clkVGA, v_enable, horiz_count);
	counterV #(N) cont_v (clkVGA, v_enable, vert_count);
	
	// Comparadores
	comparatorH #(N) comp_h (horiz_count, horiz_sync);
	comparatorV #(N) comp_v (vert_count, vert_sync);
	comparator_display #(N)  comp_display (horiz_count, vert_count, selector);
	
	// Mux
	mux_color muxColor(clkVGA, blank, color, selector, display);
	
	always @(posedge clkVGA)  begin
		R = display [2:0];
		G = display [5:3];
		B = display [8:6];
	end
endmodule 