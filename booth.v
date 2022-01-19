`timescale 1ns / 1ps


module booth(rst, clk, x, multiplier, result);

input   [3:0]     x;
input             rst, clk;
input   [3:0]     multiplier;
output  [7:0]    result;
         
wire     [4:0]    m;
wire     [4:0]    pp[1:0];
wire     [1:0]    sout;
wire     [1:0]    eout;


assign m[4] = multiplier[3];
assign m[3] = multiplier[2];
assign m[2] = multiplier[1];
assign m[1] = multiplier[0];
        
assign m[0] = 0;        

    
partial_product pp0(.x(x), .m(m[2:0]), .pp(pp[0]), .rst(rst), .clk(clk), .sout(sout[0]), .eout(eout[0]));
partial_product pp1(.x(x), .m(m[4:2]), .pp(pp[1]), .rst(rst), .clk(clk), .sout(sout[1]), .eout(eout[1]));

cra cra0(.in0(pp[0]), .in1(pp[1]), .s(sout), .e(eout), .out(result));




endmodule
