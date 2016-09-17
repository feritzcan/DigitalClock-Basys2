`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:31:47 11/05/2015 
// Design Name: 
// Module Name:    sevenseg 
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

module sevenseg(
 input clock, reset,bk0,bk1,bk2,bk3,
 input [3:0] in0, in1, in2, in3,  //the 4 inputs for each display
 output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
 output [3:0] an   // the 4 bit enable signal
 );
 
  reg on_off=1;
  reg [26:0] cnt_clk=0;
  
 	always@(posedge clock)
	begin
		// IF CLOCK COUNT ÝS 1 SECOND
		cnt_clk<=cnt_clk+1;
		if(cnt_clk==26'd30000000)
			begin
				cnt_clk<=27'd0;
				on_off=~on_off;
			end
	end
 
 
 
 
 
 
 /////////////// 
localparam N = 18;
 
reg [N-1:0]count; //the 18 bit counter which allows us to multiplex at 1000Hz
 
always @ (posedge clock or posedge reset)
 begin
  if (reset)
   count <= 0;
  else
   count <= count + 1;
 end
 
reg [6:0]sseg; //the 7 bit register to hold the data to output
reg [3:0]an_temp; //register for the 4 bit enable
 
always @ (*)
 begin
  case(count[N-1:N-2]) //using only the 2 MSB's of the counter
    
   2'b00 :  //When the 2 MSB's are 00 enable the fourth display
    begin
     sseg = in0;
		  if(bk0==0)
		  begin
		  an_temp = 4'b1110;
		  end
		  else if(bk0==1)
		  begin
		  an_temp = {3'b111,on_off};
		  end
    end
    
   2'b01:  //When the 2 MSB's are 01 enable the third display
    begin
     sseg = in1;
      if(bk1==0)
		  begin
		  an_temp = 4'b1101;
		  end
		  else if(bk1==1)
		  begin
		  an_temp = {2'b11,on_off,1'b1};
		  end
    end
    
   2'b10:  //When the 2 MSB's are 10 enable the second display
    begin
     sseg = in2;
			if(bk2==0)
				  begin
						an_temp = 4'b1011;
				  end
				  else if(bk2==1)
				  begin
						an_temp = {1'b1,on_off,2'b11};
				  end
		  end
     
   2'b11:  //When the 2 MSB's are 11 enable the first display
    begin
     sseg = in3;
	   if(bk3==0)
		  begin
		  an_temp = 4'b0111;
		  end
		  else if(bk3==1)
		  begin
		  an_temp = {on_off,3'b111};
		  end
    end
  endcase
 end
assign an = an_temp;
 
 
reg [6:0] sseg_temp; // 7 bit register to hold the binary value of each input given
 
always @ (*)
 begin
  case(sseg)
   4'd0 : sseg_temp = 7'b1000000; //to display 0
   4'd1 : sseg_temp = 7'b1111001; //to display 1
   4'd2 : sseg_temp = 7'b0100100; //to display 2
   4'd3 : sseg_temp = 7'b0110000; //to display 3
   4'd4 : sseg_temp = 7'b0011001; //to display 4
   4'd5 : sseg_temp = 7'b0010010; //to display 5
   4'd6 : sseg_temp = 7'b0000010; //to display 6
   4'd7 : sseg_temp = 7'b1111000; //to display 7
   4'd8 : sseg_temp = 7'b0000000; //to display 8
   4'd9 : sseg_temp = 7'b0010000; //to display 9
   default : sseg_temp = 7'b0111111; //dash
  endcase
 end
assign {g, f, e, d, c, b, a} = sseg_temp; //concatenate the outputs to the register, this is just a more neat way of doing this.

 
assign dp = 1'b1; //since the decimal point is not needed, all 4 of them are turned off
 
 
endmodule
