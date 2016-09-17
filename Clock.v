`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:35 11/05/2015 
// Design Name: 
// Module Name:    Clock 
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
module Clock(input clk,sw4,btn0,btn3,sw0,output [6:0] minute,output [4:0] hour,output  reg newDay,output  [3:0] blink
    );
	  wire increaseEnable;

	 pulse_controller sync(clk,btn3,0,increaseEnable);
	 parameter setHour=0,setMinute=1;
	 reg settingNow=0;
	 //Clock counter for second
	  reg [25:0]cnt_clk=0;
	 //Second counter
	 reg [6:0]cnt_second=0;
	 //Minutes counter
	 reg [6:0]cnt_minute=0;
	 //Hour counter
	 reg [4:0]cnt_hour=0;
	 
	 reg clk_minute=0;
	 
	 assign minute=cnt_minute;
	 assign hour=cnt_hour;
	 assign blink= (sw4==1&&settingNow)?4'b0011:(sw4==1&&settingNow==0)?4'b1100:4'b0000;
	
	

	always@(posedge btn0)
	begin
		if(settingNow==setHour&&sw4==1)
		begin
			settingNow=setMinute;
		end
		else
			begin
			settingNow=setHour;
			end
	end
	//COUNT CLOCK, INCREASE SECOND
	always@(posedge clk)
	begin
	if(sw4==0)
	begin
		// IF CLOCK COUNT ÝS 1 SECOND
		
		
		
		
		//////////
		//////////
		        ///    cnt_clk==26'd50000000  YAPARSAN NORMAL SAAT HIZINDA ÇALIÞIR
		//////////
		/////////
		if(cnt_clk==26'd500)
			begin
				cnt_clk<=26'd0;
				
				// IF SECOND COUNT ÝS 60, RESET ÝT
				if(cnt_second==7'b0111011)
					begin
						cnt_second<=7'b0000000;
						cnt_minute<=cnt_minute+1;
					end
				else
					begin
						cnt_second<=cnt_second+1;
					end
			end
		else
			begin
				cnt_clk<=cnt_clk+1;
			end
			
			// ÝF 59 MÝNUTE
		if(cnt_minute==7'b0111100)
			begin
				cnt_minute<=7'b0000000;
				cnt_hour<=cnt_hour+1;
			end
		if(cnt_hour==5'b11000)
			begin
				newDay=1;
				cnt_hour<=5'b00000;
			end
		if(cnt_hour==5'b00000)
			begin
				newDay=0;
			end
			
	end
	
		else if(sw4==1&&increaseEnable)
		begin
			if(sw0)
			begin
				if(settingNow==setMinute)
				begin
					cnt_minute<=cnt_minute+1;
					if(cnt_minute==7'd59)
					begin
					cnt_minute<=7'd0;
					end
				end
				else
				begin
					cnt_hour<=cnt_hour+1;
					if(cnt_hour==5'd23)
					begin
						cnt_hour<=5'd0;
					end
				end
			end
			else	if(sw0==0)
			begin
				if(settingNow==setMinute)
				begin
					cnt_minute<=cnt_minute-1;
					if(cnt_minute==7'd0)
					begin
					cnt_minute<=7'd59;
					end
				end
				else
				begin
					cnt_hour<=cnt_hour-1;
					if(cnt_hour==5'd0)
					begin
						cnt_hour<=5'd23;
					end
				end
			end
		end
	end
	// UPDATE MÝNUTES, AS SECONDS INCREASE

	//UPDATE HOURS,AS MÝNUTES INCREASE
	

endmodule
