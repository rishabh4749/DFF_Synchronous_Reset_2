`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 13:02:50
// Design Name: 
// Module Name: DFF_SynRst_2_tb
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


module DFF_SynRst_2_tb(

    );
    reg clk;
    reg d;
    reg r;
    wire q;
    DFF_SynchronousReset_2 dut(.clk(clk),.d(d),.q(q),.r(r));
    always #5 clk=~clk;
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%0b r=%0b q=%0b",$time,d,r,q);
    #30 $finish;
    end
    initial
    begin
    clk<=0;
    #4;
    d<=1;
    r<=0;
    #9;
    d<=1;
    r<=1;
    end
endmodule
