// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 2025.0 (Release Build #4f8f97ee91)
// 
// Legal Notice: Copyright 2024 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from DijkstraNaiveID_B3_branch
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_B3_branch (
    input wire [0:0] in_c0_exe393,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_c0_exe9,
    input wire [31:0] in_c2_exe1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe393,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_c2_exe1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] DijkstraNaiveID_B3_branch_enable_q;
    wire [0:0] DijkstraNaiveID_B3_branch_enable_not_q;
    reg [0:0] c0_exe393_reg_q;
    wire [0:0] c0_exe7_cmp_q;
    reg [0:0] c0_exe8_reg_q;
    reg [0:0] c0_exe9_reg_q;
    reg [31:0] c2_exe1_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_in_1(LOGICAL,10)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe7_cmp(LOGICAL,5)
    assign c0_exe7_cmp_q = ~ (in_c0_exe7);

    // valid_out_1_and(LOGICAL,18)
    assign valid_out_1_and_q = in_valid_in & c0_exe7_cmp_q;

    // valid_1_reg(REG,16)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (DijkstraNaiveID_B3_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,12)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,14)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,9)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,17)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe7;

    // valid_0_reg(REG,15)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (DijkstraNaiveID_B3_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,11)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,13)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // DijkstraNaiveID_B3_branch_enable(LOGICAL,2)
    assign DijkstraNaiveID_B3_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe393_reg(REG,4)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe393_reg_q <= $unsigned(1'b0);
        end
        else if (DijkstraNaiveID_B3_branch_enable_q == 1'b1)
        begin
            c0_exe393_reg_q <= in_c0_exe393;
        end
    end

    // out_c0_exe393(GPOUT,27)
    assign out_c0_exe393 = c0_exe393_reg_q;

    // c0_exe8_reg(REG,6)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe8_reg_q <= $unsigned(1'b0);
        end
        else if (DijkstraNaiveID_B3_branch_enable_q == 1'b1)
        begin
            c0_exe8_reg_q <= in_c0_exe8;
        end
    end

    // out_c0_exe8(GPOUT,28)
    assign out_c0_exe8 = c0_exe8_reg_q;

    // c0_exe9_reg(REG,7)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe9_reg_q <= $unsigned(1'b0);
        end
        else if (DijkstraNaiveID_B3_branch_enable_q == 1'b1)
        begin
            c0_exe9_reg_q <= in_c0_exe9;
        end
    end

    // out_c0_exe9(GPOUT,29)
    assign out_c0_exe9 = c0_exe9_reg_q;

    // c2_exe1_reg(REG,8)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c2_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (DijkstraNaiveID_B3_branch_enable_q == 1'b1)
        begin
            c2_exe1_reg_q <= in_c2_exe1;
        end
    end

    // out_c2_exe1(GPOUT,30)
    assign out_c2_exe1 = c2_exe1_reg_q;

    // DijkstraNaiveID_B3_branch_enable_not(LOGICAL,3)
    assign DijkstraNaiveID_B3_branch_enable_not_q = ~ (DijkstraNaiveID_B3_branch_enable_q);

    // out_stall_out(GPOUT,31)
    assign out_stall_out = DijkstraNaiveID_B3_branch_enable_not_q;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,33)
    assign out_valid_out_1 = valid_1_reg_q;

    // rst_sync(RESETSYNC,34)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
