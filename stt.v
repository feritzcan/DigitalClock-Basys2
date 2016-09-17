`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:22:16 11/17/2015
// Design Name:   split
// Module Name:   C:/Users/Ferit/Digital_Calendar/stt.v
// Project Name:  Digital_Calendar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: split
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stt;

	// Inputs
	reg [15:0] in;

	// Outputs
	wire [3:0] tens;

	// Instantiate the Unit Under Test (UUT)
	split uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 16'd1000;
		#100;		in = 16'd1000;
		#100;		in = 16'd2500;
		#100;		in = 16'd8400;
		#100;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

