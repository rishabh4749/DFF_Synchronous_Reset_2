`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 13:00:06
// Design Name: 
// Module Name: DFF_SynchronousReset_2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DFF_SynchronousReset_2(
    input clk,
    input d, 
    input r,   // synchronous reset
    output reg q
    );
    always @ (posedge clk) begin
    if(r)
    q<=0;
    else
    q<=d;
    end
endmodule
