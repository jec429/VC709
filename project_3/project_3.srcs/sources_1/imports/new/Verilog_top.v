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
    output wire not_empty
    );
    
    wire clk;
    wire locked;
    //wire en_proc;
    /*
    clk_wiz_0 clock_gen(
       .clk_pin_p          (clk_pin_p), 
        .clk_pin_n          (clk_pin_n), 
        .clk_rx             (clk),
        .reset              (rst_pin),
        .locked             (locked)
    );
    */
   
    verilog_trigger_top trigger_top(
        .cross_clk(clk_pin_p),
        .reset(rst_pin),
        .en_proc(en_proc),
        .led_test(not_empty)
    );
    
    
endmodule
