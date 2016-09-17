`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:22 11/09/2015 
// Design Name: 
// Module Name:    split_output 
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
module split_output(input [7:0] total,output [3:0] left,right
    );
	 
	 assign left=(total>=8'b00110010&&total<8'b00111100)?
	 4'b0101:(total>=8'b00101000&&total<8'b00110010)?
	 4'b0100:(total>=8'b00011110&&total<8'b00101000)?
	 4'b0011:(total>=8'b00010100&&total<8'b00011110)?
	 4'b0010:(total>=8'b00001010&&total<8'b00010100)?
	 4'b0001:(total<8'b00001010)?0:(total==8'b00111100)?4'b0110:4'b000;
	 
	 assign right=(total>=8'b00110010&&total<8'b00111100)?
	 (total-50):(total>=8'b00101000&&total<8'b00110010)?
	 (total-40):(total>=8'b00011110&&total<8'b00101000)?
	 (total-30):(total>=8'b00010100&&total<8'b00011110)?
	 (total-20):(total>=8'b00001010&&total<8'b00010100)?
	 (total-10):(total<8'b00001010)?(total):(total==8'b00111100)?0:4'b0000;
	  
	
		


endmodule
