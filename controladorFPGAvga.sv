module controladorFPGAvga #(parameter N=15)(clk, reset, R, G, B, 
										horiz_sync, vert_sync, vga_blank, vga_sync, clkVGA);
	input logic clk, reset;
	output logic [7:0] R, G, B;
	output logic horiz_sync, vert_sync;
	output logic clkVGA;
	output logic vga_blank, vga_sync;
	
	logic [N:0] horiz_count, vert_count;
	logic v_enable;
	
	controlVGA #(N) ctrVGA (v_enable, clk, reset, horiz_count, vert_count, R, G, B, 
										horiz_sync, vert_sync, vga_blank, vga_sync, clkVGA);
endmodule 