module mux_color (clk, blank, color, selector, display);
	input logic clk;
	input logic [8:0] blank, color;
	input logic selector;
	output logic [8:0] display;
	
	always @(posedge clk)  begin 
		case(selector)
			1'b0: display = blank;
			1'b1: display = color;
		endcase
	end
endmodule 