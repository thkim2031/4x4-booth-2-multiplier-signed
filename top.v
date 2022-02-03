`timescale 1ns / 1ps

module top( RST, CLK, multiplicand, multiplier, final_result);

input RST, CLK;
input [3:0]     multiplicand, multiplier;
output[7:0]    final_result;

reg [3:0] multiplier_r, multiplicand_r;
wire [3:0] multiplier_w, multiplicand_w;

reg [7:0] final_result_r;
wire [7:0] final_result_w;

booth booth0(.rst(RST), .clk(CLK), .x(multiplicand_w), .multiplier(multiplier_w), .result(final_result_w));



always @(posedge CLK) begin
    multiplicand_r <= multiplicand;
    multiplier_r <= multiplier;
    final_result_r <= final_result_w; 
end

assign multiplicand_w = multiplicand_r;
assign multiplier_w = multiplier_r;
assign final_result = final_result_r;
    
endmodule
