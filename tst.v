`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:02:55 11/14/2015
// Design Name:   fsmClock
// Module Name:   C:/Users/Ferit/Digital_Calendar/tst.v
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

module tst;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [6:0] cnt_minute;
	wire [6:0] cnt_second;
	wire [4:0] hour;
	wire new_day;
	wire [2:0] state;
	wire [2:0] nextState;

	// Instantiate the Unit Under Test (UUT)
	fsmClock uut (
		.clk(clk), 
		.reset(reset), 
		.cnt_minute(cnt_minute), 
		.cnt_second(cnt_second), 
		.hour(hour), 
		.new_day(new_day),
		.state(state),
		.nextState(nextState)
	);

always begin
clk=~clk;
#10;
end
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		#100;
		reset = 1;
		#100;
		reset = 0;
		#100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

