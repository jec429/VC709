`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:47:38 08/12/2013
// Design Name:   verilog_trigger_top
// Module Name:   C:/USER_LOCAL/crs/CMS_trigger/Xilinx/glib/prj/sim1/verilog_trigger_top_test1.v
// Project Name:  sim1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: verilog_trigger_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module verilog_trigger_top_test1;

	// Inputs
	reg reset;
	reg cross_clk;
	reg ipb_clk;
	reg ipb_strobe;
	reg [31:0] ipb_addr;
	reg ipb_write;
	reg [31:0] ipb_wdata;
	reg en_proc; 

	// Outputs
	wire [31:0] ipb_rdata;
	wire ipb_ack;
	wire ipb_err;
		

	// Instantiate the Unit Under Test (UUT)
	verilog_trigger_top uut(
		.reset(reset), 
		.cross_clk(cross_clk),
		.en_proc(en_proc), 
		.ipb_clk(ipb_clk), 
		.ipb_strobe(ipb_strobe), 
		.ipb_addr(ipb_addr), 
		.ipb_write(ipb_write), 
		.ipb_wdata(ipb_wdata), 
		.ipb_rdata(ipb_rdata), 
		.ipb_ack(ipb_ack), 
		.ipb_err(ipb_err)
	);

	
	
	initial begin
		// Initialize Inputs
		reset = 0;
		cross_clk = 0;
		en_proc = 0;
		ipb_clk = 0;
		ipb_strobe = 0;
		ipb_addr = 0;
		ipb_write = 0;
		ipb_wdata = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

	// Add stimulus here
	// clocks
	always begin
		#4 ipb_clk = ~ipb_clk;   // 125 MHz
	end
	always begin
		//#3 cross_clk = ~cross_clk;   	// 166 MHz
		#2 cross_clk = ~cross_clk;		// 250 MHz
	end

	// reset
	initial begin
	#110
		reset = 1'b1;
	#10
		reset = 1'b0;
	end

	// start processing
	initial begin
	
	// Write the data
	#110;
	////////////////////////////////////////
    
        //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
    
    ////////////////////////////////////////
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003e01f; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000fffff; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10030420; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100c4146; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003d7fa; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0004bb6b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h100339f9; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h1008bdbb; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003cbf9; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0000bf83; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1003c7fe; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h1006117b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h000325fe; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00062aec; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10031afe; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100640cb; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003e000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00000000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
    ////////////////////////////////////////
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001e01f; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100fffff; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00010420; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000c4146; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001be03; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h1002734b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00013c0c; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0000783b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001e613; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h10067c33; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00011e0e; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00041183; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10012213; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100442fb; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00013519; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000473a3; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001e000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h10000000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
    ////////////////////////////////////////
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0004e01f; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000fffff; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10040420; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100c4146; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0004d81c; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00019a1b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10042423; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100f9de5; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00043c2c; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0005a1f3; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10043519; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100d34c3; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00043d1e; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000d5e0b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10041a24; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100d8463; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0004e000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00000000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
    
    ////////////////////////////////////////
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003e03f; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000fffff; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10030420; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100c4146; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003d7fa; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0004bb6b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h100339f9; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h1008bdbb; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003cbf9; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0000bf83; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1003c7fe; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h1006117b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h000325fe; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00062aec; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10031afe; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100640cb; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0003e020; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00000000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
    ////////////////////////////////////////
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001e03f; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100fffff; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00010420; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000c4146; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001be03; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h1002734b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00013c0c; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0000783b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001e613; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h10067c33; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00011e0e; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00041183; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10012213; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100442fb; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00013519; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000473a3; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h1001e020; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h10000000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
    ////////////////////////////////////////
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0004e03f; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000fffff; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10040420; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100c4146; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0004d81c; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00019a1b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10042423; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100f9de5; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00043c2c; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h0005a1f3; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10043519; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100d34c3; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h00043d1e; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h000d5e0b; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h10041a24; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h100d8463; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42600000;
                ipb_wdata=32'h0004e020; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;
    
        #2        ipb_addr =32'h42e00000;
                ipb_wdata=32'h00000000; ipb_write = 1'b1;
        #4        ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
        #2        ipb_strobe=1'b0; ipb_write=1'b0;

	
	//////////////////////////////////////////////////////////////////////////////
	
	//Enable processing
	#2		ipb_addr =32'h7fffffff; 
			ipb_wdata=32'h1; ipb_write = 1'b1;
	#4		ipb_strobe = 1'b1;
			while (ipb_ack == 1'b0) begin #4; end
	#2		ipb_strobe=1'b0; ipb_write=1'b0;
		
	// END EVENT INPUT
		
	#10	en_proc = 1'b1;
	
	
	end
	
//	always @(posedge ipb_clk) begin
//		while (for_counter < 100) 
//		for_counter <= for_counter + 1;
//	end
	
endmodule

