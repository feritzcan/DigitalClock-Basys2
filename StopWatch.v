`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:56:26 11/14/2015 
// Design Name: 
// Module Name:    StopWatch 
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
module StopWatch(input clk,sw5,sw2,sw1,btn3,btn0,output [7:0] secLeft,secRight
    );

	reg start=0;
	
	
	  wire push;
	 reg reset=0;
	
	 pulse_controller sync(clk,btn3,0,push);
	//Clock counter for second
	  reg [25:0]cnt_clk=0;
	 //Second counter
	 reg [7:0]cnt_right=0;
	 //Minutes counter
	 reg [7:0]cnt_left=0;
	 
	 // Display for history
	 reg [7:0] histDisp_left;
	 reg [7:0] histDisp_right;
	 // HÝSTORY MAX
	 reg [7:0]maxLeft=0;
	 reg [7:0]maxRight=0;
	 // HÝSTORY MÝN
	 reg [7:0]minLeft=0;
	 reg [7:0]minRight=0;
	 // HÝSTORY ADDED VALUE
	 reg [7:0]historyLeft=0;
	 reg [7:0]historyRight=0;
	 
	 	 parameter first=2'b00,second=2'b01,third=2'b10;

	 reg[1:0]  display=first;
	 
	 // DÝSPLAY 
	 
	 assign secLeft=  (sw5==0) ? cnt_left:histDisp_left;
	 assign secRight= (sw5==0) ? cnt_right:histDisp_right;
	 
	 
	 always@(*)
	 begin
	
	 if(sw5==1)
	 begin
			if(sw2==0&&sw1==1&&push)
			begin
			historyLeft=0;
		historyRight=0;
		 maxLeft=0;	
		maxRight=0;		
		minLeft=0;
		minRight=0;
			end
		else if(sw2==0&&sw1==0)
		 begin
			
			if(push)
			begin
				
					historyLeft=cnt_left;
					historyRight=cnt_right;
				
				if(maxLeft<cnt_left)
					begin
						maxLeft=cnt_left;	
						maxRight=cnt_right;
					end
				else if(maxLeft==0)
					begin
						maxLeft=cnt_left;
						maxRight=cnt_right;
					end
				if(minLeft>cnt_left)
					begin
						minLeft=cnt_left;
						minRight=cnt_right;
					end
				else if(minLeft==0)
					begin
						minLeft=cnt_left;
						minRight=cnt_right;
					end
			end
			
			
		 
	 end
	 end
	 end
	 
	 always@(display)
		begin
				if(display==first)
				begin
					histDisp_left=minLeft;
					histDisp_right=minRight;				
				end
				else if(display==second)
				begin
					histDisp_left=maxLeft;
					histDisp_right=maxRight;				
				end
				else if(display==third)
				begin
					histDisp_left=historyLeft;
					histDisp_right=historyRight;				
				end
			end	
		
	 
	always@(posedge btn3)
	if(sw5==0)
	begin
		start=~start;
	end
	else if(sw2==1&&sw1==0)
		begin
			display=display+1;
			if(display==2'b11)
			display=first;
		end
	else if(sw2==0&&sw1==1)
		begin
		reset=1;
		end
	
	
	always@(posedge clk)
	begin
	if(btn0)
	begin
		if(sw5==0)begin
		cnt_left<=8'd0;
		cnt_right<=8'd0;
		end
	end
	
	else 
	begin
		if(start)	
		begin// IF CLOCK COUNT ÝS 1 SECOND
			if(cnt_clk==26'd500000)
				begin
					cnt_clk<=26'd0;
					
					// IF SECOND COUNT ÝS 60, RESET ÝT
					if(cnt_right==8'd99)
						begin
							cnt_right<=8'b00000000;
							cnt_left<=cnt_left+1;
						end
					else
						begin
							cnt_right<=cnt_right+1;
						end
				end
			else
				begin
					cnt_clk<=cnt_clk+1;
				end
			
			
			if(cnt_left==8'd99)
				begin
					cnt_left<=8'b00000000;
				end	
		end
	end
	end
endmodule
