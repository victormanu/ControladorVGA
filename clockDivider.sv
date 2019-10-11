module clockDivider (clk, reset, vgaClk);
	input logic clk, reset;
	output logic vgaClk;
	
	always @(posedge clk or posedge reset) begin
		case (reset)
			1'b1: vgaClk = 1'b0; 
			1'b0: vgaClk = ~vgaClk;
		endcase
	end
endmodule 