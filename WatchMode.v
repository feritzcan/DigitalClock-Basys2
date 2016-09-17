`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:30 11/14/2015 
// Design Name: 
// Module Name:    WatchMode 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module WatchMode(input clk,sw0,sw4,sw6,sw5,sw2,sw1,btn3,btn0,output reg [3:0] digit1,digit2,digit3,digit4,output [3:0] blink,output newDay
    );
	 // CLOCK DATAS
	 wire [6:0] minute;
	 wire [3:0] minLeft,minRight;
	 wire [3:0] hourLeft,hourRight;
	 wire [4:0] hour;

	split_output split(minute,minLeft,minRight);
	split_output splitt({3'b000,hour},hourLeft,hourRight);
	Clock timer(clk,sw4,btn0,btn3,sw0,minute,hour,newDay,blink);

	 // STOP WATCH DATATAS
	 wire [6:0] secLeft,secRight;
	 wire [3:0] leftLeft,leftRight;
	 wire [3:0] rightLeft,rightRight;

	split_output s(secLeft,leftLeft,leftRight);
	split_output sp(secRight,rightLeft,rightRight);
	
	StopWatch watch(clk,sw5,sw2,sw1,btn3,btn0,secLeft,secRight);

 always@(sw6)
 begin
	if(sw6)
	begin
		digit1<=hourLeft;
		digit2<=hourRight;
		digit3<=minLeft;
		digit4<=minRight;
	end
	else
	begin
		digit1<=leftLeft;
		digit2<=leftRight;
		digit3<=rightLeft;
		digit4<=rightRight;
	end
 end
 
endmodule
