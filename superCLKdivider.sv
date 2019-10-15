module superCLKdivider (clk, reset, vgaClk);
	input logic clk, reset;
	output logic vgaClk;
	
	clockDivider clkDIV0(clk, reset, clkVGA);
	clockDivider clkDIV1(clkVGA, reset, clkVGA);
	clockDivider clkDIV2(clkVGA, reset, clkVGA);
	clockDivider clkDIV3(clkVGA, reset, clkVGA);
endmodule  