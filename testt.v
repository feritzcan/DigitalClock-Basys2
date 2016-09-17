`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:22:34 11/14/2015
// Design Name:   fsmClock
// Module Name:   C:/Users/Ferit/Digital_Calendar/testt.v
// Project Name:  Digital_Calendar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsmClock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testt;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [6:0] cnt_minute;
	wire [6:0] cnt_second;
	wire [4:0] hour;
	wire new_day;

	// Instantiate the Unit Under Test (UUT)
	fsmClock uut (
		.clk(clk), 
		.reset(reset), 
		.cnt_minute(cnt_minute), 
		.cnt_second(cnt_second), 
		.hour(hour), 
		.new_day(new_day)
	);

	always begin
	clk=~clk;
	#1;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		#100;
		reset=1;
		// Wait 100 ns for global reset to finish
		#100;
		reset=0;
        
		// Add stimulus here

	end
      
endmodule

