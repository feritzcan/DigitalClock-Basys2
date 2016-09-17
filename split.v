`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:20:51 11/17/2015 
// Design Name: 
// Module Name:    split 
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
module split(input[15:0] in,output [3:0] thousents,hundreds,tens,ones
    );

initial 
begin 
 reg x = 0; 
  while( x <= 10 ) 
  begin 
     #2 $display("y= ", y); 
     x = x + 1; 
  end 
end 
	
endmodule


