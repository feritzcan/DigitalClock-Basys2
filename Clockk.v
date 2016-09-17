`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:32 11/11/2015 
// Design Name: 
// Module Name:    Clockk 
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
module Clockk(  input clk,
    output reg [5:0] second, minute,
    output reg [3:0] hour,
    output reg newDay 
    );


  // ... declare local regs
  reg [24:0] next_cnt_clk=0,cnt_clk=0;
  reg [5:0] next_second=0,next_minute=0;
	
  // SYNCHRONOUS ASSIGNMENTS
  always @(posedge clk) begin
    cnt_clk <= next_cnt_clk;
    second <= next_second;
    // ... other assignments
  end

  // COMBINATIONAL CALCULATIONS
  always @(*) begin
      // DEFAULT VALUES
      next_cnt_clk = cnt_clk + 1;
      next_second = second;
      // ... other default

      // IF CLOCK COUNT ÝS 1 SECOND
      if (next_cnt_clk == 24'd1) begin
        next_cnt_clk = 24'd0;
        next_second = second + 1;
      end

      // IF SECOND COUNT ÝS 60, RESET ÝT
      if (next_second == 6'd60) begin
        next_second = 6'd0;
        next_minute = minute + 1;
      end

      // ... other calculations
  end
endmodule

  
