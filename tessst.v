`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:06:01 11/17/2015
// Design Name:   split_1000
// Module Name:   C:/Users/Ferit/Digital_Calendar/tessst.v
// Project Name:  Digital_Calendar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: split_1000
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tessst;

	// Inputs
	reg [15:0] total;

	// Outputs
	wire [3:0] thosent;
	wire [3:0] hundred;
	wire [3:0] tens;
	wire [3:0] ones;

	// Instantiate the Unit Under Test (UUsT)
	split_1000 uut (
		.total(total), 
		.thosent(thosent), 
		.hundred(hundred), 
		.tens(tens), 
		.ones(ones)
	);

	initial begin
		// Initialize Inputs
		total = 16'd8400;
				#100;

		total = 16'd7400;
				#100;

		total = 16'd3400;
				#100;

		total = 16'd2400;
				#100;

		total = 16'd1400;		#100;

		total = 16'd6400;		#100;

		total = 16'd0400;		#100;



		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

