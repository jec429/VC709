`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2014 03:11:54 PM
// Design Name: 
// Module Name: Verilog_top
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


module Verilog_top(
    input wire clk_pin_p,
    input wire clk_pin_n,
    input wire [15:0] inA,
    input wire [15:0] inB,
    input wire rst_pin,
    input wire en_proc,
    output wire [29:0] not_empty
    );
    
    //reg [31:0] outP;
    wire [31:0] outP;
    wire pipe;
    
//    always @(posedge clk_pin_p) begin
//        inA <= 16'd50;
//        inB <= 16'd40;
//        //outP <= inA * inB;
//        not_empty <= outP[7:0];
//    end
    
    
    pipe_mult #(.STAGES(3), .AWIDTH(16), .BWIDTH(16))
    stage2_5mult_0(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk_pin_p),
    .a(inA), .b(inB), .p(not_empty));
//    pipe_mult #(.STAGES(2), .AWIDTH(16), .BWIDTH(16))    
//            stage2_5mult_0(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk_pin_p),
//        .a(inA), .b(inB), .p(outP));    
endmodule
