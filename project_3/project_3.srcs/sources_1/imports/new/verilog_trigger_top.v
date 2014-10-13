`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 10:57:12 AM
// Design Name: 
// Module Name: verilog_trigger_top
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


module verilog_trigger_top(
    input wire cross_clk,
    input wire reset,
    input wire en_proc,
    // programming interface
    // Note: address and data bus sizes are hard coded in "ipbus_package.vhd"
    // inputs
    input wire ipb_clk,                    // programming clock
    input wire ipb_strobe,                // this ipb space is selected for an I/O operation 
    input wire [31:0] ipb_addr,        // slave address, memory or register
    input wire ipb_write,                // this is a write operation
    input wire [31:0] ipb_wdata,        // data to write for write operations
    // outputs
    output wire [31:0] ipb_rdata,    // data returned for read operations
    output wire ipb_ack,                // 'write' data has been stored, 'read' data is ready
    output wire ipb_err,                    // '1' if error, '0' if OK?
    output wire led_test    
    );
    
    // Connect a clock multiplier/divide to scale 'cross_clk' to feasable numbers.
    // Maybe divide the crossing clock down to something like 5 MHz and make the processing clock be 120 MHz.
    //!!! figure out how to do this
    // For now, just copy 'cross_clk'
    wire proc_clk;
    //wire en_proc;
    assign proc_clk = cross_clk;
    //assign en_proc = (ipb_addr == 32'h7fffffff);
    wire tracklet_processing_sel;
    assign tracklet_processing_sel = (ipb_addr[31:30]==3'b01);
    wire [31:0] tracklet_processing_io_rd_data;
    wire [31:0] tracklet_processing1_io_rd_data;
    wire [31:0] tracklet_processing2_io_rd_data;
    wire [31:0] tracklet_processing3_io_rd_data;
    wire tracklet_processing_io_rd_ack;
    wire tracklet_processing1_io_rd_ack;
    wire tracklet_processing2_io_rd_ack;
    wire tracklet_processing3_io_rd_ack;
    wire io_sync;
    wire io_rd_en;
    wire io_wr_en;
    wire led_test0;
    wire led_test1;
    wire led_test2;
    wire led_test3;
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // create the BX clocks,
    reg [5:0] clk_cnt;
    reg [2:0] BX;
    reg first_clk;
    reg not_first_clk;
    wire [31:0] TP_ipb_wdata1;
    wire [31:0] TP_ipb_wdata2;
    initial begin
        clk_cnt = 6'b0;
        BX = 3'b111;
    end
    
    always @(posedge proc_clk) begin
        if(en_proc)
            clk_cnt <= clk_cnt + 1'b1;
        else begin
            clk_cnt <= 6'b0;
            BX <= 3'b111;
        end
        if(clk_cnt == 7'b1) begin
            BX <= BX + 1'b1;
            first_clk <= 1'b1;
            not_first_clk <= 1'b0;
        end
        else begin
            first_clk <= 1'b0;
            not_first_clk <= 1'b1;
        end
    end
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect each sector
    
    TrackletProcessing tracklet_processing_phi0(
        // clocks and reset
        .reset(reset),                        // active HI
        .clk(proc_clk),                // processing clock at a multiple of the crossing clock
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(ipb_clk),                    // programming clock
        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
        .io_sync(io_sync),                // start the I/O operation
        .io_addr(ipb_addr[31:0]),        // slave address, memory or register. Top 4 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(ipb_wdata),    // data to write for write operations
        // outputs
        .io_rd_data(tracklet_processing_io_rd_data),    // data returned for read operations
        .io_rd_ack(tracklet_processing_io_rd_ack),        // 'read' data from this module is ready
        .led_test(led_test0),
        // clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk)
        
        );   
   /*      
    TrackletProcessing tracklet_processing_phi1(
        // clocks and reset
        .reset(reset),                        // active HI
        .clk(proc_clk),                // processing clock at a multiple of the crossing clock
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(ipb_clk),                    // programming clock
        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
        .io_sync(io_sync),                // start the I/O operation
        .io_addr(ipb_addr[31:0]),        // slave address, memory or register. Top 4 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(ipb_wdata),    // data to write for write operations
        // outputs
        .io_rd_data(tracklet_processing1_io_rd_data),    // data returned for read operations
        .io_rd_ack(tracklet_processing1_io_rd_ack),        // 'read' data from this module is ready
        .led_test(led_test1),
        // clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk)
        
        );   
         
    TrackletProcessing tracklet_processing_phi2(
        // clocks and reset
        .reset(reset),                        // active HI
        .clk(proc_clk),                // processing clock at a multiple of the crossing clock
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(ipb_clk),                    // programming clock
        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
        .io_sync(io_sync),                // start the I/O operation
        .io_addr(ipb_addr[31:0]),        // slave address, memory or register. Top 4 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(ipb_wdata),    // data to write for write operations
        // outputs
        .io_rd_data(tracklet_processing2_io_rd_data),    // data returned for read operations
        .io_rd_ack(tracklet_processing2_io_rd_ack),        // 'read' data from this module is ready
        .led_test(led_test2),
        // clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk)
        
        );    

    TrackletProcessing tracklet_processing_phi3(
        // clocks and reset
        .reset(reset),                        // active HI
        .clk(proc_clk),                // processing clock at a multiple of the crossing clock
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(ipb_clk),                    // programming clock
        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
        .io_sync(io_sync),                // start the I/O operation
        .io_addr(ipb_addr[31:0]),        // slave address, memory or register. Top 4 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(ipb_wdata),    // data to write for write operations
        // outputs
        .io_rd_data(tracklet_processing3_io_rd_data),    // data returned for read operations
        .io_rd_ack(tracklet_processing3_io_rd_ack),        // 'read' data from this module is ready
        .led_test(led_test3),
        // clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk)
        
        );    
*/
    assign led_test = led_test0 | led_test1 | led_test2 | led_test3;    
        
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect a mux to steer the readback data from one of the segments to the ipbus
    reg [31:0] io_rd_data_reg;
    assign ipb_rdata = io_rd_data_reg;
    // Assert 'io_rd_ack' if any modules below this function assert their 'io_rd_ack'.
    reg io_rd_ack_reg;
    always @(posedge ipb_clk) begin
        io_rd_ack_reg <= io_sync & io_rd_en & (tracklet_processing_io_rd_ack);
    end

    always @(posedge ipb_clk) begin
        if (tracklet_processing_io_rd_ack)    io_rd_data_reg <= tracklet_processing_io_rd_data;
    end
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect a state machine to handle wait states and drive 'ipb_ack'
    IPB_IO_interface IPB_IO_interface(
        // inputs
        .clk(ipb_clk),               // IPbus clock
        .res(reset),                // Global reset
        .ipb_strobe(ipb_strobe),    // IPbus strobe
        .ipb_write(ipb_write),     // IPbus write
        .io_rd_ack(io_rd_ack_reg),    // verilog ack
        // outputs
        .io_sync(io_sync),           // An operation is in progress
        .io_rd_en(io_rd_en),            // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),          // one cycle long write enable
        .ipb_ack(ipb_ack)            // one cycle long ack back to IPbus
    );
        
endmodule
