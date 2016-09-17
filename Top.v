`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:40 11/05/2015 
// Design Name: 
// Module Name:    Top 
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
module Top(input clk,reset,sw7,sw4,sw0,sw6,sw5,sw2,sw1,btn3,btn0,output a, b, c, d, e, f, g, dp,output [3:0] an
    );
	 wire [3:0] watchDigit1,watchDigit2,watchDigit3,watchDigit4,watchBlink;
	 wire [3:0] calDigit1,calDigit2,calDigit3,calDigit4,calblink;
	 wire newDay;
	
  	reg [3:0] Digit1,Digit2,Digit3,Digit4,blink;


	 
	Calendar cccc(clk,sw5,btn0,btn3,newDay,calDigit1,calDigit2,calDigit3,calDigit4,calblink);
	WatchMode wat(clk,sw0,sw4,sw6,sw5,sw2,sw1,btn3,btn0, watchDigit1,watchDigit2,watchDigit3,watchDigit4,watchBlink,newDay);

	sevenseg  decoder(clk,0,blink[3],blink[2],blink[1],blink[0],Digit1,Digit2,Digit3,Digit4,a,b,c,d,e,f,g,dp,an);

	always@(sw7)
	begin 
		if(sw7)
		begin
			Digit1<=calDigit1;
			Digit2<=calDigit2;
			Digit3<=calDigit3;
			Digit4<=calDigit4;
			blink<=calblink;
		end
		else if(sw7==0)
		begin
			Digit1<=watchDigit1;
			Digit2<=watchDigit2;
			Digit3<=watchDigit3;
			Digit4<=watchDigit4;
			blink<=watchBlink;
		end
	end
endmodule 