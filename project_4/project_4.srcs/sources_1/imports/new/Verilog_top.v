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
    input wire rst_pin,
    input wire en_proc,
    output wire [7:0] not_empty
    );
    
    pipe_mult #(.STAGES(3), .AWIDTH(21), .BWIDTH(12))
        stage2_5mult_0(.pipe_in(en2_5), .pipe_out(en3b), .clk(proc_clk),
        .a(is2_2), .b(12'h1E8), .p(pre_is2_2_5[32:0]));
    
    
    
    
endmodule
