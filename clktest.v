`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:29:35 11/11/2015
// Design Name:   Clockk
// Module Name:   C:/Users/Ferit/Digital_Calendar/clktest.v
// Project Name:  Digital_Calendar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clockk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clktest;

	// Inputs
	reg clk;

	// Outputs
	wire [5:0] second;
	wire [5:0] minute;
	wire [3:0] hour;
	wire newDay;

	// Instantiate the Unit Under Test (UUT)
	Clockk uut (
		.clk(clk), 
		.second(second), 
		.minute(minute), 
		.hour(hour), 
		.newDay(newDay)
	);

	always begin
	clk=~clk;
	#1;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
#1;
clk=1;
		// Wait 100 ns for global reset to finish
		#100000;
        
		// Add stimulus here

	end
      
endmodule

