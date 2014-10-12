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
	reg clk_pin_p;
	reg en_proc; 
    reg [7:0] not_empty;

	

	reg [15:0] inA;
    reg [15:0] inB;
    wire [31:0] outP;
    wire pipe;
    initial begin
        inA = 0;
        inB = 0;
    end
    
    always @(posedge clk_pin_p) begin
        inA <= 16'd50;
        inB <= 16'd40;
        not_empty <= outP[7:0];
    end
    
	initial begin
		// Initialize Inputs
		clk_pin_p = 0;
		en_proc = 0;
		#10	en_proc = 1'b1;	
	end

    pipe_mult #(3,16,16) stage2_5mult_0(
        .pipe_in(en_proc), .pipe_out(pipe), .clk(clk_pin_p),
        .a(inA), .b(inB), .p(outP)
    );
    

	// Add stimulus here
	// clocks
	always begin
		#0.5 clk_pin_p = ~clk_pin_p;		// 500 MHz
	end
	
endmodule

