`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:29:35 11/17/2015 
// Design Name: 
// Module Name:    Calendar 
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
module Calendar(input clk,sw5,btn0,btn3,newDay,output  [3:0] digit1,digit2,digit3,digit4,blink
    );
	  
	  parameter ocak=8'd31,subat=8'd28,mart=8'd31,nisan=8'd30
	 ,mayis=8'd31,haziran=8'd30,temmuz=8'd31,agust=8'd31,eylul=8'd30,ekim=8'd31,kasim=8'd30,aralik=8'd31;
	  
	  
	  // SETTÝNG REGS
		 parameter setDay=2'b00,setMonth=2'b01,setYear=2'b10;
		 reg [1:0] settingNow=setDay;

   	reg show=0;
	 
	 
	 //COUNT REGS
	 reg[7:0] currentMount=ocak;
	 reg [7:0] mounth=8'b0001;
	 reg [7:0] day=8'b000001;
	 reg[15:0] year=16'd2000;
	 wire buttonPush;
  
  pulse_controller sync(clk,btn3,0,buttonPush);
		
	 
	 // NUMBERS DÝSPLAY FOR LED
	 wire [3:0] monthLeft,monthRight,dayLeft,dayRight;
	 reg [3:0] ones=0,tens=0,hundreds=0,thousents=2;

	 split_output dayy(day,dayLeft,dayRight);
	 split_output mont(mounth,monthLeft,monthRight);
	 

	 
	 assign digit1=(show&&sw5==0)?thousents:(settingNow==setYear&&sw5==1)?thousents:dayLeft;
	 assign digit2=(show&&sw5==0)?hundreds:(settingNow==setYear&&sw5==1)?hundreds:dayRight;
	 assign digit3=(show&&sw5==0)?tens:(settingNow==setYear&&sw5==1)?tens:monthLeft;
	 assign digit4=(show&&sw5==0)?ones:(settingNow==setYear&&sw5==1)?ones:monthRight;
	 assign blink=(sw5==1&&settingNow==setDay)?4'b1100:(sw5==1&&settingNow==setYear)?4'b1111:
	 (sw5==1&&settingNow==setMonth)?4'b0011:4'b0000;
	 
	 
	 
	 always@(posedge buttonPush)
	 begin
	 if(sw5==0)
	 begin
		show=~show;
		end
		
	 end
	
	always@(posedge btn0)
		begin
			if(settingNow==setMonth&&sw5==1)
			begin
				settingNow=setYear;
				
			end
			else if(settingNow==setYear&&sw5==1)
				begin
				settingNow=setDay;
				
				end
			else if(settingNow==setDay&&sw5==1)
				begin
				settingNow=setMonth;
				
				end
		end
	 
	 always@(posedge clk)
	 begin
	 
		if(buttonPush&&sw5==1)
		begin
			if(settingNow==setDay)
			begin
				day<=day+1;
			end
			else if(settingNow==setMonth)
			begin
				mounth<=mounth+1;
			end
			else if(settingNow==setYear)
			begin
				year<=year+1;
				ones<=ones+1;
			end
		
		end
		
		
		if(newDay&&sw5==0)
		begin
			day<=day+1;
		end
		if(day>currentMount)
		begin
			day<=6'b000001;
			mounth<=mounth+1;
		end
		
		if(mounth==4'd13)
		begin
			mounth<=4'b0001;
			year<=year+1;
			ones<=ones+1;
		end
		if(ones==4'd10)
		begin
			ones<=0;
			tens<=tens+1;
		end
		if(tens==4'd10)
		begin
			tens<=0;
			hundreds<=hundreds+1;
		end
		if(hundreds==4'd10)
		begin
			hundreds<=0;
			thousents<=thousents+1;
		end
	 
	 
		if(mounth==4'b0001)
		begin
			currentMount<=ocak;
		end
		if(mounth==4'b0010)
		begin
			currentMount<=subat;
		end
		if(mounth==4'b0011)
		begin
			currentMount<=mart;
		end
		if(mounth==4'b0100)
		begin
			currentMount<=nisan;
		end
		if(mounth==4'b0101)
		begin
			currentMount<=mayis;
		end
		if(mounth==4'b0111)
		begin
			currentMount<=haziran;
		end
		if(mounth==4'b1000)
		begin
			currentMount<=temmuz;
		end
		if(mounth==4'b1001)
		begin
			currentMount<=agust;
		end
		if(mounth==4'b1010)
		begin
			currentMount<=eylul;
		end
		if(mounth==4'b1011)
		begin
			currentMount<=ekim;
		end
				if(mounth==4'b1100)
		begin
			currentMount<=kasim;
		end
				if(mounth==4'b1101)
		begin
			currentMount<=aralik;
		end
		
		
	 end
	 
	 


endmodule
