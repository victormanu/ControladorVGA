module mux_color (clk, selector, display);
	input logic clk;
	input logic [1:0] selector;
	output logic [23:0] display;
	
	//Colores
	logic [23:0] lineas, fondo, sprit, pru;
	
	assign fondo [7:0] = 8'h00000000;
	assign fondo [15:8] = 8'h00000000;
	assign fondo [23:16] = 8'h00000000;
	
	assign lineas [7:0] = 8'h00000000;
	assign lineas [15:8] = 8'h00000000;
	assign lineas [23:16] = 8'hFFFFFFFF;
	
	assign sprit [7:0] = 8'h00000000;
	assign sprit [15:8] = 8'hFFFFFFFF;
	assign sprit [23:16] = 8'h00000000;
	
	assign pru [7:0] = 8'hFFFFFFFF;
	assign pru [15:8] = 8'hFFFFFFFF;
	assign pru [23:16] = 8'hFFFFFFFF;
	
	always @(posedge clk)  begin
		case(selector)
			2'b00: display = fondo;
			2'b01: display = pru;
			2'b10: display = lineas;
			2'b11: display = sprit;
		endcase
	end
endmodule 