`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:53:20 11/17/2015 
// Design Name: 
// Module Name:    split_1000 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - sFile Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module split_1000(input [15:0] total,output [3:0] thosent,hundred,tens,ones
    );
	 
	 reg [3:0] binler=0;
	 
	 
	 assign thosent=(total>=16'd9000&&total<16'd10000)?
	 4'b1001:(total>=16'd8000&&total<16'd9000)?
	 4'b1000:(total>=16'd7000&&total<16'd8000)?
	 4'b0111:(total>=16'd6000&&total<16'd7000)?
	 4'b0110:(total>=16'd5000&&total<16'd6000)?
	 4'b0101:(total>=16'd4000&&total<16'd5000)?
	 4'b0100:(total>=16'd3000&&total<16'd4000)?
	 4'b0011:(total>=16'd2000&&total<16'd3000)?
	 4'b0010:(total>=16'd1000&&total<16'd2000)?
	 4'b0001:16'd0;
	 
	 assign hundred=(total>=16'd9000&&total<16'd10000&&(total-16'd9000)<1000&&(total-16'd9000)>900)?
	 4'b1001:(total>=16'd8000&&total<16'd9000&&(total-16'd8000)<900&&(total-16'd8000)>800)?
	 4'b1000:(total>=16'd7000&&total<16'd8000&&(total-16'd7000)<800&&(total-16'd7000)>700)?
	 4'b0111:(total>=16'd6000&&total<16'd7000&&(total-16'd6000)<700&&(total-16'd6000)>600)?
	 4'b0110:(total>=16'd5000&&total<16'd6000&&(total-16'd5000)<600&&(total-16'd5000)>500)?
	 4'b0101:(total>=16'd4000&&total<16'd5000&&(total-16'd4000)<500&&(total-16'd4000)>400)?
	 4'b0100:(total>=16'd3000&&total<16'd4000&&(total-16'd3000)<400&&(total-16'd3000)>300)?
	 4'b0011:(total>=16'd2000&&total<16'd3000&&(total-16'd2000)<300&&(total-16'd2000)>200)?
	 4'b0010:(total>=16'd1000&&total<16'd2000&&(total-16'd1000)<200&&(total-16'd1000)>100)?
	 4'b0001:16'd0;
	 
	
	 
	 


endmodule
