module counter #(parameter N)(clk, reset, v_enable, count);
	input logic clk, reset;
	output logic [N-1:0] count;
	output logic v_enable;
	
	
	always @(posedge clk or posedge reset) begin
		case (reset)
			1'b1: count = 1'b0;
			1'b0: count = count + 1'b1;
		endcase
	end
endmodule 