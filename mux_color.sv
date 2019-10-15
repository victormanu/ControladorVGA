module mux_color (clk, lineas, color, selector, display);
	input logic clk;
	input logic [23:0] lineas, color;
	input logic selector;
	output logic [23:0] display;
	
	always @(posedge clk)  begin 
		case(selector)
			1'b1: display = lineas;
			1'b0: display = color;
		endcase
	end
endmodule 