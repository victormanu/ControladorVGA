`timescale 1ns/1ps
module controladorVGA_tb ();
	logic clk, reset;
	logic [2:0] R, G, B;
	logic horiz_sync, vert_sync;
	logic clkVGA;
	logic display, v_enable;
	logic [15:0] horiz_count, vert_count;
	
	controladorVGA #(9) DUT (v_enable, clk, reset, horiz_count, vert_count, R, G, B, horiz_sync, vert_sync, clkVGA, display);
	
	
	initial begin
		reset = 1;
		#5;
		reset = 0;
		#5;
	end
	 
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk; 
		#10;
	end
endmodule 