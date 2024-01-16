`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2024 17:28:19
// Design Name: 
// Module Name: des_tb
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


module des_tb(

    );
    reg clk,reset,j,k;
    wire out;
    always #5 clk=~clk;
    des dut(.clk(clk),.reset(reset),.j(j),.k(k),.out(out));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%t reset=%b j=%b k=%b out=%b",$time,reset,j,k,out);
    clk<=0;
    reset<=0;
    j<=0;
    k<=0;
    #4 j<=1;
    #10 k<=1;
    #10 j<=0;
    #10 reset<=1;
    #10 $finish;
    end
endmodule
