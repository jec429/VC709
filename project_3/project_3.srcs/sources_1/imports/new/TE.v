`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 08:46:00 AM
// Design Name: 
// Module Name: TE
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


module TE #(parameter PHI_MEM = "D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/z1p1L1L2.txt",
            parameter Z_MEM = "D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/z1p1L1L2.txt")
    (
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [2:0] io_addr,        // slave address, memory or register. Top 16 bits already consumed.
    input wire io_rd_en,                // this is a read operation
    input wire io_wr_en,                // this is a write operation
    input wire [31:0] io_wr_data,    // data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,    // data returned for read operations
    output wire io_rd_ack,                // 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,
    
    input [5:0] number_in1,
    output reg [5:0] read_add1,
    input [17:0] innervmstubin,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [17:0] outervmstubin,
    
    output reg [11:0] stubpairout
    
    );
    
    
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(read_add1 + 1'b1 < number_in1)
            read_add1 <= read_add1 + 1'b1;
        else
            read_add1 <= read_add1;
        if(read_add2 + 1'b1 < number_in2)
            read_add2 <= read_add2 + 1'b1;
        else
            read_add2 <= read_add2;
    end
    
    //////////////////////////////////////////////////////////////////////////////
    
    wire [3:0] delta_phi;
    wire [2:0] delta_r;
    wire dout_phi;
    wire dout_z;
    assign delta_phi = outervmstubin[4:2] - innervmstubin[4:2];
    assign delta_r   = outervmstubin[1:0] - innervmstubin[1:0];
    
    Memory #(1,13,PHI_MEM) lookup_phi(
        // Output
        .output_data(dout_phi),
        // Input
        .clock(clk),
        .write_address(13'b0),
        .write_enable(1'b0),
        .read_address({innervmstubin[17:15],outervmstubin[17:15],delta_phi,delta_r}),
        .input_data(1'b0)
    );
    
    Memory #(1,12,Z_MEM) lookup_z(
        // Output
        .output_data(dout_z),
        // Input
        .clock(clk),
        .write_address(12'b0),
        .write_enable(1'b0),
        .read_address({innervmstubin[8:5],outervmstubin[8:5],innervmstubin[1:0],outervmstubin[1:0]}),
        .input_data(1'b0)
    );
    
    always @(posedge clk)
        if(dout_phi & dout_z)
            stubpairout <= {innervmstubin[14:9],outervmstubin[14:9]};
        else
            stubpairout <= 12'hfff;
    
endmodule
