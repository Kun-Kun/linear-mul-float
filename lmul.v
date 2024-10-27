`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:39 10/23/2024 
// Design Name: 
// Module Name:    lmul 
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
module lmul(
	input clk,
	input res_n,
	input[31:0] a,
	input[31:0] b,
	output reg[31:0] result
    );


always@(posedge clk or negedge res_n)
begin
	if(res_n==1'b0)
		result <= 32'b0;
	else
	begin
		result <= {(a[31]^b[31]), a[30:0] + b[30:0] - 31'h3f780000};
	end
end


endmodule
