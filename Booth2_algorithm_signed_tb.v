`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/19 15:30:17
// Design Name: 
// Module Name: Booth2_algorithm_signed_tb
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


module Booth2_algorithm_signed_tb();
    reg rst, clk;
    reg [3:0] x, multiplier;

    wire [7:0]  result;

    top top0(.RST(rst), .CLK(clk), .multiplicand(x), .multiplier(multiplier), .final_result(result));

    initial 
    begin
        clk = 0;
        rst = 0;
        x = 0;
        multiplier = 0;
        
        #15;

        
        #15;
        x = 4'b1011;
        multiplier = 4'b1001;
        
        #100;

        
        #15;
        x = 4'b0110;
        multiplier = 4'b1101;
        
        #110;

        
        #15;
        x = 4'b1100;
        multiplier = 4'b1111;
    end

    always #20 clk = ~clk;
    
    
endmodule
