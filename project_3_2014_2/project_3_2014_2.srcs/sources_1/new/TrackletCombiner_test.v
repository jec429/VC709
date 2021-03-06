`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 10:49:27 AM
// Design Name: 
// Module Name: TrackletCombiner
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


module TrackletCombiner_test(
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
    input [11:0] stubpair1in,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [11:0] stubpair2in,
    input [5:0] number_in3,
    output reg [5:0] read_add3,
    input [11:0] stubpair3in,
    input [5:0] number_in4,
    output reg [5:0] read_add4,
    input [11:0] stubpair4in,
    input [5:0] number_in5,
    output reg [5:0] read_add5,
    input [11:0] stubpair5in,
    input [5:0] number_in6,
    output reg [5:0] read_add6,
    input [11:0] stubpair6in,
    input [5:0] number_in7,
    output reg [5:0] read_add7,
    input [11:0] stubpair7in,
    input [5:0] number_in8,
    output reg [5:0] read_add8,
    input [11:0] stubpair8in,
    input [5:0] number_in9,
    output reg [5:0] read_add9,
    input [11:0] stubpair9in,
    input [5:0] number_in10,
    output reg [5:0] read_add10,
    input [11:0] stubpair10in,
    input [5:0] number_in11,
    output reg [5:0] read_add11,
    input [11:0] stubpair11in,
    input [5:0] number_in12,
    output reg [5:0] read_add12,
    input [11:0] stubpair12in,
    input [5:0] number_in13,
    output reg [5:0] read_add13,
    input [11:0] stubpair13in,
    input [5:0] number_in14,
    output reg [5:0] read_add14,
    input [11:0] stubpair14in,
    input [5:0] number_in15,
    output reg [5:0] read_add15,
    input [11:0] stubpair15in,
    input [5:0] number_in16,
    output reg [5:0] read_add16,
    input [11:0] stubpair16in,
    input [5:0] number_in17,
    output reg [5:0] read_add17,
    input [11:0] stubpair17in,
    input [5:0] number_in18,
    output reg [5:0] read_add18,
    input [11:0] stubpair18in,
    
    output reg [5:0] read_add_innerall,
    output reg [5:0] read_add_outerall,
    input [35:0] innerallstubin,
    input [35:0] outerallstubin,
    
    output [53:0] trackpar,
    output [53:0] proj1,
    output [53:0] proj2,
    output [53:0] proj3,
    output [53:0] proj4
    );
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
        read_add4 = 6'h3f;
        read_add5 = 6'h3f;
        read_add6 = 6'h3f;
        read_add7 = 6'h3f;
        read_add8 = 6'h3f;
        read_add9 = 6'h3f;
        read_add10 = 6'h3f;
        read_add11 = 6'h3f;
        read_add12 = 6'h3f;
        read_add13 = 6'h3f;
        read_add14 = 6'h3f;
        read_add15 = 6'h3f;
        read_add16 = 6'h3f;
        read_add17 = 6'h3f;
        read_add18 = 6'h3f;
        read_add_innerall = 6'h3f;
        read_add_outerall = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(first_clk) begin
            read_add1 <= 6'h3f;
            read_add2 <= 6'h3f;
            read_add3 <= 6'h3f;
            read_add4 <= 6'h3f;
            read_add5 <= 6'h3f;
            read_add6 <= 6'h3f;
            read_add7 <= 6'h3f;
            read_add8 <= 6'h3f;
            read_add9 <= 6'h3f;
            read_add10 <= 6'h3f;
            read_add11 <= 6'h3f;
            read_add12 <= 6'h3f;
            read_add13 <= 6'h3f;
            read_add14 <= 6'h3f;
            read_add15 <= 6'h3f;
            read_add16 <= 6'h3f;
            read_add17 <= 6'h3f;
            read_add18 <= 6'h3f;
            read_add_innerall <= 6'h3f;
            read_add_outerall <= 6'h3f;
        end
        else begin
            if(read_add1 + 1'b1 < number_in1)
                read_add1 <= read_add1 + 1'b1;
            else begin
                read_add1 <= read_add1;
                if(read_add2 + 1'b1 < number_in2)
                    read_add2 <= read_add2 + 1'b1;
                else begin
                    read_add2 <= read_add2;
                    if(read_add3 + 1'b1 < number_in3)
                        read_add3 <= read_add3 + 1'b1;
                    else begin
                        read_add3 <= read_add3;
                        if(read_add4 + 1'b1 < number_in4)
                            read_add4 <= read_add4 + 1'b1;
                        else begin
                            read_add4 <= read_add5;
                            if(read_add5 + 1'b1 < number_in5)
                                read_add5 <= read_add5 + 1'b1;
                            else begin
                                read_add5 <= read_add5;
                                if(read_add6 + 1'b1 < number_in6)
                                    read_add6 <= read_add6 + 1'b1;
                                else begin
                                    read_add6 <= read_add6;
                                    if(read_add7 + 1'b1 < number_in7)
                                        read_add7 <= read_add7 + 1'b1;
                                    else begin
                                        read_add7 <= read_add7;
                                        if(read_add8 + 1'b1 < number_in8)
                                            read_add8 <= read_add8 + 1'b1;
                                        else begin
                                            read_add8 <= read_add8;
                                            if(read_add9 + 1'b1 < number_in9)
                                                read_add9 <= read_add9 + 1'b1;
                                            else begin
                                                read_add9 <= read_add9;
                                                if(read_add10 + 1'b1 < number_in10)
                                                    read_add10 <= read_add10 + 1'b1;
                                                else begin
                                                    read_add10 <= read_add10;
                                                    if(read_add11 + 1'b1 < number_in11)
                                                        read_add11 <= read_add11 + 1'b1;
                                                    else begin
                                                        read_add11 <= read_add11;
                                                        if(read_add12 + 1'b1 < number_in12)
                                                            read_add12 <= read_add12 + 1'b1;
                                                        else begin
                                                            read_add12 <= read_add12;
                                                            if(read_add13 + 1'b1 < number_in13)
                                                                read_add13 <= read_add13 + 1'b1;
                                                            else begin
                                                                read_add13 <= read_add13;
                                                                if(read_add14 + 1'b1 < number_in14)
                                                                    read_add14 <= read_add14 + 1'b1;
                                                                else begin
                                                                    read_add14 <= read_add14;
                                                                    if(read_add15 + 1'b1 < number_in15)
                                                                        read_add15 <= read_add15 + 1'b1;
                                                                    else begin
                                                                        read_add15 <= read_add15;
                                                                        if(read_add16 + 1'b1 < number_in16)
                                                                            read_add16 <= read_add16 + 1'b1;
                                                                        else begin
                                                                            read_add16 <= read_add16;
                                                                            if(read_add17 + 1'b1 < number_in17)
                                                                                read_add17 <= read_add17 + 1'b1;
                                                                            else begin
                                                                                read_add17 <= read_add17;
                                                                                if(read_add18 + 1'b1 < number_in18)
                                                                                    read_add18 <= read_add18 + 1'b1;
                                                                                else begin
                                                                                    read_add18 <= read_add18;
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    
    //////////////////////////////////////////////////////////////////
           
   reg [11:0] stubpair;
   
    always @(posedge clk) begin
        if(stubpair18in != 12'hfff)
            stubpair <= stubpair18in;
        else begin
            if(stubpair17in != 12'hfff)
                stubpair <= stubpair17in;
            else begin
                if(stubpair16in != 12'hfff)
                    stubpair <= stubpair16in;
                else begin
                    if(stubpair15in != 12'hfff)
                        stubpair <= stubpair15in;
                    else begin
                        if(stubpair14in != 12'hfff)
                            stubpair <= stubpair14in;
                        else begin
                            if(stubpair13in != 12'hfff)
                                stubpair <= stubpair13in;
                            else begin
                                if(stubpair12in != 12'hfff)
                                    stubpair <= stubpair12in;
                                else begin
                                    if(stubpair11in != 12'hfff)
                                        stubpair <= stubpair11in;
                                    else begin
                                        if(stubpair10in != 12'hfff)
                                            stubpair <= stubpair10in;
                                        else begin
                                            if(stubpair9in != 12'hfff)
                                                stubpair <= stubpair9in;
                                            else begin
                                                if(stubpair8in != 12'hfff)
                                                    stubpair <= stubpair8in;
                                                else begin
                                                    if(stubpair7in != 12'hfff)
                                                        stubpair <= stubpair7in;
                                                    else begin
                                                        if(stubpair6in != 12'hfff)
                                                            stubpair <= stubpair6in;
                                                        else begin
                                                            if(stubpair5in != 12'hfff)
                                                                stubpair <= stubpair5in;
                                                            else begin
                                                                if(stubpair4in != 12'hfff)
                                                                    stubpair <= stubpair4in;
                                                                else begin
                                                                    if(stubpair3in != 12'hfff)
                                                                        stubpair <= stubpair3in;
                                                                    else begin
                                                                        if(stubpair2in != 12'hfff)
                                                                            stubpair <= stubpair2in;
                                                                        else begin
                                                                            if(stubpair1in != 12'hfff)
                                                                                stubpair <= stubpair1in;
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        
        if(stubpair >= 0) begin
            read_add_innerall <= stubpair[11:6];
            read_add_outerall <= stubpair[5:0];
        end
    end
    
   
    
    //////////////////////////////////////////////////////////////////
       
    parameter krA = 12'sd981;
    parameter krB = 12'sd1514;
    
    // Step 0: Define the variables
    reg signed [7:0] r_A_0;
    reg [11:0] z_A_0;
    reg [16:0] phi_A_0;
    reg signed [7:0] r_B_0;
    reg [11:0] z_B_0;
    reg [16:0] phi_B_0;
    
    reg signed [11:0] k_r_A;
    reg signed [11:0] k_r_B;

    // Why multiply these numbers???????
    // Because you want to always have the same number of bits for all layers
    // phi = 17, r = 8, z =8
    
    
    
    always @(posedge clk) begin
        k_r_A        <= krA;
        k_r_B        <= krB;
        r_A_0        <= innerallstubin[32:26]<<<1'b1;
        z_A_0        <= innerallstubin[25:14];
        phi_A_0      <= innerallstubin[13:0]<<<2'b11;
        r_B_0        <= outerallstubin[32:26]<<<1'b1;
        z_B_0        <= outerallstubin[25:14];
        phi_B_0      <= outerallstubin[13:0]<<<2'b11;
    end
    
    
    // Step 1: Calculate deltas and absolute radii
    // Carry over:
    wire [11:0] z_A_pipe13;
    wire [16:0] phi_A_pipe13;
    // Declare:
    reg signed [14:0] idelta_phi_1;
    reg signed [12:0] idelta_z_1;
    reg [13:0] idelta_r_1;
    reg signed [12:0] rA_abs_1;
    reg signed [12:0] rB_abs_1;
    
    pipe_delay #(.STAGES(33), .WIDTH(12))
            z_A_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
            .val_in(z_A_0), .val_out(z_A_pipe13));
    pipe_delay #(.STAGES(33), .WIDTH(17))
            phi_A_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
            .val_in(phi_A_0), .val_out(phi_A_pipe13));
    
    
    always @(posedge clk) begin
        //z_A_1             <= z_A_0;
        //phi_A_1             <= phi_A_0;
        idelta_phi_1     <= phi_B_0 - phi_A_0; // bit size mismatch here
        idelta_z_1         <= z_B_0 - z_A_0;
        idelta_r_1        <= (k_r_B-k_r_A)+(r_B_0 - r_A_0);
        rA_abs_1            <= k_r_A+r_A_0;
        rB_abs_1            <= k_r_B+r_B_0;
    end
    
    wire signed [14:0] idelta_phi_pipe8;
    
    pipe_delay #(.STAGES(22), .WIDTH(15))
        idelta_phi_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
        .val_in(idelta_phi_1), .val_out(idelta_phi_pipe8));
    
    wire signed [12:0] idelta_z_pipe9;
    
    pipe_delay #(.STAGES(23), .WIDTH(13))
        idelta_z_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
        .val_in(idelta_z_1), .val_out(idelta_z_pipe9));
    
    wire signed [12:0] rA_abs_pipe10;
    
    pipe_delay #(.STAGES(25), .WIDTH(13))
                    rA_abs_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
                    .val_in(rA_abs_1), .val_out(rA_abs_pipe10));
    // Step 2: Lookup dr inverse
    // Carry over:
    reg signed [14:0] idelta_phi_2;
    // Declare:
    wire signed [17:0] idr_inv_2;
    reg [23:0] full_it1;    
    reg [23:0] full_it1_pipe;    
    wire [11:0] it1_2;
    
    // how do I write to this memory?
    Memory #(18, 14, "D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/dr_inv.txt") lookup_dr_inv(
        // Output
        .output_data(idr_inv_2),
        // Input
        .clock(clk),
        .write_address(14'b0),
        .write_enable(1'b0),
        .input_data(18'b0),
        .read_address(idelta_r_1)
    );
    
    wire signed [17:0] idr_inv_pipe8;
    
    pipe_delay #(.STAGES(19), .WIDTH(18))
        idr_inv_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
        .val_in(idr_inv_2), .val_out(idr_inv_pipe8));
    
    always @(posedge clk) begin
        idelta_phi_2     <= idelta_phi_1;
        //idelta_z_2         <= idelta_z_1;
        //rA_abs_2            <= rA_abs_1;
        //z_A_2             <= z_A_1;
        //phi_A_2             <= phi_A_1;
        full_it1            <= rA_abs_1 * rB_abs_1;
        full_it1_pipe       <= full_it1;
    end
    
    assign it1_2 = full_it1_pipe >>>4'd12;
    
    wire [11:0] it1_pipe4;
    
    pipe_delay #(.STAGES(6), .WIDTH(12))
        it1_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
        .val_in(it1_2), .val_out(it1_pipe4));
    
    // Step 3: 
    // Carry over
    reg [17:0] idr_inv_3;
    reg signed [14:0] idelta_phi_3;
    // Declare:
    reg signed [23:0] full_it2;
    reg signed [23:0] full_it2_pipe;
    reg signed [15:0] it2_3;
    
    always @(posedge clk) begin
        //it1_3             <= it1_2;
        idr_inv_3         <= idr_inv_2;
        idelta_phi_3     <= idelta_phi_2;
        //idelta_z_3         <= idelta_z_2;
        //rA_abs_3            <= rA_abs_2;
        //z_A_3             <= z_A_2;
        //phi_A_3             <= phi_A_2;
        full_it2            <= idr_inv_3 * idelta_phi_3;
        full_it2_pipe   <= full_it2;
        it2_3           <= full_it2_pipe >>> 4'b1000;
    end
        
    // Step 4: 
    // Declare:
    reg [31:0] full_it3;
    reg [31:0] full_it3_pipe;
    reg [23:0] it3_4;
    
    always @(posedge clk) begin
        //it1_4             <= it1_3;
        //idr_inv_4         <= idr_inv_3;
        //idelta_phi_4     <= idelta_phi_3;
        //idelta_z_4         <= idelta_z_3;
        //rA_abs_4            <= rA_abs_3;
        //z_A_4             <= z_A_3;
        //phi_A_4             <= phi_A_3;
        full_it3            <= it2_3 * it2_3;
        full_it3_pipe       <= full_it3;
        it3_4 <= full_it3_pipe >>> 4'd12;
    end
    
    // Step 5: 
    // Declare:
    reg [35:0] full_idelta;
    reg [35:0] full_idelta_pipe;
    reg [40:0] pre_idelta_tmp_5;
    
    always @(posedge clk) begin
        //idr_inv_5         <= idr_inv_4;
        //idelta_phi_5     <= idelta_phi_4;
        //idelta_z_5         <= idelta_z_4;
        //rA_abs_5            <= rA_abs_4;
        //z_A_5                <= z_A_4;
        //phi_A_5             <= phi_A_4;
        full_idelta     <= it1_pipe4 * it3_4;
        full_idelta_pipe <= full_idelta;
        pre_idelta_tmp_5 <= full_idelta_pipe <<< 3'h7;
    end
    
    // Step 6:
    reg [40:0] full_idelta_tmp;
    reg [40:0] full_idelta_tmp_pipe;
    reg [6:0] idelta_tmp_6; // WHY DO WE DO THIS????

    always @(posedge clk) begin
        //idr_inv_6             <= idr_inv_5;
        //idelta_phi_6         <= idelta_phi_5;
        //idelta_z_6             <= idelta_z_5;
        //rA_abs_6                <= rA_abs_5;
        //z_A_6                 <= z_A_5;
        //phi_A_6                <= phi_A_5;
        full_idelta_tmp    <= pre_idelta_tmp_5 * 8'hb7;
        full_idelta_tmp_pipe <= full_idelta_tmp;
        idelta_tmp_6 <= full_idelta_tmp_pipe >>> 8'h23;
    end
        
    // Step 7:
    reg signed [6:0] idelta_tmp_7;
    // Declare:
    reg [17:0] it4_7;
    
    always @(posedge clk) begin
        //idr_inv_7         <= idr_inv_6;
        idelta_tmp_7     <= idelta_tmp_6; // bit size mismatch fixed
        //idelta_phi_7     <= idelta_phi_6;
        //idelta_z_7         <= idelta_z_6;
        //rA_abs_7            <= rA_abs_6;
        //z_A_7             <= z_A_6;
        //phi_A_7             <= phi_A_6;
        it4_7             <= 17'h10000 + 3*(idelta_tmp_6 >>> 1'b1);
    end
    
    // Step 8:
    // Declare:
    wire [23:0] full_it5_test;
    reg [12:0] pre_it5_8;
    
    pipe_mult #(.STAGES(3), .AWIDTH(18), .BWIDTH(7))
            full_it5_mult(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
            .a(it4_7), .b(idelta_tmp_7), .p(full_it5_test));
    
    always @(posedge clk) begin
        //idr_inv_8           <= idr_inv_7;
        //idelta_phi_8        <= idelta_phi_7;
        //idelta_z_8          <= idelta_z_7;
        //rA_abs_8            <= rA_abs_7;
        //z_A_8               <= z_A_7;
        //phi_A_8             <= phi_A_7;
        pre_it5_8           <= (17'h10000 - (full_it5_test >>> 5'b10000)) >>> 3'b100;
    end
    
    // Step 9:
    reg signed [14:0] idelta_phi_9;
    reg [30:0] full_iDelta_inv;
    reg [30:0] full_iDelta_inv_pipe;
    reg signed [17:0] iDelta_inv_9;
    
    always @(posedge clk) begin
        idelta_phi_9         <= -idelta_phi_pipe8;
        //idelta_z_9             <= idelta_z_8;
        //rA_abs_9                <= rA_abs_8;
        //it5_9                    <= it5_8;
        //z_A_9                 <= z_A_8;
        //phi_A_9                 <= phi_A_8;
        full_iDelta_inv     <= idr_inv_pipe8 * pre_it5_8;
        full_iDelta_inv_pipe <= full_iDelta_inv;
        iDelta_inv_9        <= full_iDelta_inv_pipe >>> 4'd12;
    end
    
    // Step 10:
    reg signed [27:0] full_irinv;
    reg signed [27:0] full_irinv_pipe;
    reg signed [21:0] it_10;
    reg signed [21:0] it_10_pipe;
    wire signed [21:0] irinv_10;
    wire signed [18:0] pre_irinv_10;
    
    always @(posedge clk) begin
        //rA_abs_10       <= rA_abs_9;
        //it5_10          <= it5_9;
        //z_A_10          <= z_A_9;
        //phi_A_10        <= phi_A_9;    
        full_irinv      <= idelta_phi_9 * iDelta_inv_9;
        full_irinv_pipe <= full_irinv;
        it_10           <= idelta_z_pipe9 * iDelta_inv_9;
        it_10_pipe      <= it_10;
    end
    
    assign irinv_10 = full_irinv_pipe <<< 1'b1;
    assign pre_irinv_10 = full_irinv_pipe >>> 2'b10;
    
    wire signed [21:0] it_pipe13;
    
    pipe_delay #(.STAGES(7), .WIDTH(22))
        it_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
        .val_in(it_10_pipe), .val_out(it_pipe13));
    
    wire signed [21:0] irinv_pipe13;
    
    pipe_delay #(.STAGES(7), .WIDTH(22))
        irinv_pipe(.pipe_in(en2_5), .pipe_out(en5b), .clk(clk),
        .val_in(irinv_10), .val_out(irinv_pipe13));
    
    // Step 11:
    reg signed [12:0] rA_abs_11;
    reg signed [21:0] it_11;
    wire signed [31:0] full_it7_test;
    wire signed [30:0] it7_11;
    reg signed [10:0] it7_tmp_11;
    reg signed [20:0] it7_tmp_sqr_11;
    reg signed [20:0] it7_tmp_sqr_11_pipe;
    reg signed [12:0] pre_it_11;
    
    pipe_mult #(.STAGES(3), .AWIDTH(13), .BWIDTH(19))
                full_it7_mult(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
                .a(rA_abs_pipe10), .b(pre_irinv_10), .p(full_it7_test));
    
    always @(posedge clk) begin
        //it5_11        <= it5_10;
        rA_abs_11    <= rA_abs_pipe10;
        //z_A_11        <= z_A_10;
        //phi_A_11        <= phi_A_10;
        it_11            <= it_10;
        //irinv_11        <= irinv_10;
        pre_it_11             <= it_10_pipe >>> 4'd10;
        it7_tmp_11         <= full_it7_test >>> 5'd25 ;
        it7_tmp_sqr_11     <= it7_tmp_11 * it7_tmp_11 ;
        it7_tmp_sqr_11_pipe <= it7_tmp_sqr_11;
    end
    
    assign it7_11                 = full_it7_test >>> 1'b1;
    
    // Step 12:
    // Carry over:
    reg signed [30:0] it7_12;
    // Declare:
    reg signed [25:0] it9_12;
    reg signed [25:0] full_pre_it12;
    reg signed [25:0] full_pre_it12_pipe;
    wire signed [15:0] pre_it9_12;
    wire signed [15:0] pre_it7_12;      
    reg signed [20:0] pre_it12_12;      
    
    always @(posedge clk) begin
        it7_12             <= it7_11;
        //z_A_12            <= z_A_11;
        //phi_A_12            <= phi_A_11;
        //it_12                <= it_11;
        //irinv_12            <= irinv_11;
        it9_12             <= 25'h1000000 + it7_tmp_sqr_11_pipe; // Top bits are constant and are trimmed during synthesis
        full_pre_it12    <= pre_it_11 * rA_abs_11;
        full_pre_it12_pipe <= full_pre_it12;
        pre_it12_12     <= full_pre_it12_pipe >>> 3'h5;
    end
    
    assign pre_it9_12     = it9_12 >>> 4'd10;
    assign pre_it7_12     = it7_12 >>> 4'hf;
    
    
    // Step 13:
    reg signed [31:0] it10_13;
    reg signed [31:0] it10_13_pipe;
    reg signed [35:0] it12_13;
    reg signed [35:0] it12_13_pipe;
    reg signed [35:0] it12_13_pipe2;
    wire signed [19:0] pre_it10_13;
    wire signed [15:0] pre_it12_13;
    
    always @(posedge clk) begin
        //z_A_13    <= z_A_12;
        //phi_A_13    <= phi_A_12;
        //it_13        <= it_12;
        //irinv_13     <= irinv_12;
        it10_13      <= pre_it7_12 * pre_it9_12;
        it10_13_pipe <= it10_13;
        it12_13      <= pre_it12_12 * pre_it9_12;
        it12_13_pipe <= it12_13;
        it12_13_pipe2 <= it12_13_pipe;
    end
    
    assign pre_it10_13 = it10_13_pipe >>> 5'd16; // size mismatch
    assign pre_it12_13 = it12_13_pipe2 >>> 5'h13; // NOT GOOD ENOUGH // size mismatch
    
    // Step 14:
    // Carry over:
    (*KEEP = "true"*) reg signed [12:0] it_14;
    (*KEEP = "true"*) reg signed [13:0] irinv_14;
    // Declare:
    (*KEEP = "true"*) reg signed [16:0] iphi0_14;
    (*KEEP = "true"*) reg signed [9:0] iz0_14;
    
    always @(posedge clk) begin
        it_14            <= it_pipe13>>>4'd10;
        irinv_14        <= irinv_pipe13>>>4'd13;
        iphi0_14     <= (phi_A_pipe13 + pre_it10_13)>>>1'b1;
        iz0_14        <= z_A_pipe13 - pre_it12_13;
    end
    
    assign trackpar = {irinv_14,iphi0_14,iz0_14,it_14};
    
    
TrackletProjections_test #(14,12,9,9,1'b1,16'h86a) projection1(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel_R3_io_block),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_R3_io_block),        // data returned for read operations
        .io_rd_ack(io_rd_ack_R3_io_block),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj1)
    );
    
    TrackletProjections_test #(17,8,11,8,1'b0,16'hb66) projection2(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel_R3_io_block),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_R3_io_block),        // data returned for read operations
        .io_rd_ack(io_rd_ack_R3_io_block),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj2)
    );
    
    TrackletProjections_test #(17,8,11,8,1'b0,16'hebb) projection3(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel_R3_io_block),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_R3_io_block),        // data returned for read operations
        .io_rd_ack(io_rd_ack_R3_io_block),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj3)
    );
    
    TrackletProjections_test #(17,8,11,8,1'b0,16'h11f7) projection4(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel_R3_io_block),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_R3_io_block),        // data returned for read operations
        .io_rd_ack(io_rd_ack_R3_io_block),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj4)
    );
    
endmodule

