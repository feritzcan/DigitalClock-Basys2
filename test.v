`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:46 11/05/2015
// Design Name:   Clock
// Module Name:   C:/Users/Ferit/Digital_Calendar/test.v
// Project Name:  Digital_Calendar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;

	// Outputs
	wire [6:0] second;
	wire [6:0] minute;

	// Instantiate the Unit Under Test (UUT)
	Clock uut (
		.clk(clk), 
		.second(second), 
		.minute(minute)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

