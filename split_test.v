`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:06:22 11/09/2015
// Design Name:   split_output
// Module Name:   C:/Users/Ferit/Digital_Calendar/split_test.v
// Project Name:  Digital_Calendar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: split_output
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module split_test;

	// Inputs
	reg [7:0] total;

	// Outputs
	wire [3:0] left;
	wire [3:0] right;

	// Instantiate the Unit Under Test (UUT)
	split_output uut (
		.total(total), 
		.left(left), 
		.right(right)
	);

	initial begin
		// Initialize Inputs
		total = 8'b00011111;

		// Wait 100 ns for global reset to finish
		#100;
        		total = 8'd12;
				
				#100;
        		total = 8'b0001001;
#100;
        		total = 8'b0001111;
#100;
        		total = 8'b0011011;
				#100;
        		total = 8'b0011111;



		// Add stimulus here

	end
      
endmodule

