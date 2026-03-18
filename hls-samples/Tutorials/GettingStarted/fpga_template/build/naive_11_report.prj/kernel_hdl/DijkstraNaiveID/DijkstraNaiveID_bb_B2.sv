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

// SystemVerilog created from bb_DijkstraNaiveID_B2
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B2 (
    output wire [0:0] out_feedback_out_8,
    input wire [0:0] in_feedback_stall_in_8,
    output wire [0:0] out_feedback_valid_out_8,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_c0_exe3931_0,
    input wire [0:0] in_c0_exe82_0,
    input wire [0:0] in_c0_exe93_0,
    input wire [31:0] in_c2_exe14_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_memdep_21_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe283,
    output wire [0:0] out_c0_exe3931,
    output wire [0:0] out_c0_exe82,
    output wire [0:0] out_c0_exe93,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_lsu_memdep_21_o_active,
    output wire [40:0] out_memdep_21_DijkstraNaiveID_avm_address,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_memdep_21_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_read,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_write,
    output wire [63:0] out_memdep_21_DijkstraNaiveID_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] DijkstraNaiveID_B2_branch_out_c0_exe283;
    wire [0:0] DijkstraNaiveID_B2_branch_out_c0_exe3931;
    wire [0:0] DijkstraNaiveID_B2_branch_out_c0_exe82;
    wire [0:0] DijkstraNaiveID_B2_branch_out_c0_exe93;
    wire [31:0] DijkstraNaiveID_B2_branch_out_c1_exe1;
    wire [0:0] DijkstraNaiveID_B2_branch_out_stall_out;
    wire [0:0] DijkstraNaiveID_B2_branch_out_valid_out_0;
    wire [0:0] DijkstraNaiveID_B2_merge_out_c0_exe3931;
    wire [0:0] DijkstraNaiveID_B2_merge_out_c0_exe82;
    wire [0:0] DijkstraNaiveID_B2_merge_out_c0_exe93;
    wire [31:0] DijkstraNaiveID_B2_merge_out_c2_exe14;
    wire [0:0] DijkstraNaiveID_B2_merge_out_stall_out_0;
    wire [0:0] DijkstraNaiveID_B2_merge_out_valid_out;
    wire [63:0] bb_DijkstraNaiveID_B2_stall_region_out_c0_exe283;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_c0_exe3931;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_c0_exe82;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_c0_exe93;
    wire [31:0] bb_DijkstraNaiveID_B2_stall_region_out_c1_exe1;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_feedback_out_8;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_feedback_valid_out_8;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_lsu_memdep_21_o_active;
    wire [40:0] bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraNaiveID_B2_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraNaiveID_B2_branch(BLACKBOX,2)
    DijkstraNaiveID_B2_branch theDijkstraNaiveID_B2_branch (
        .in_c0_exe283(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe283),
        .in_c0_exe3931(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe3931),
        .in_c0_exe82(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe82),
        .in_c0_exe93(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe93),
        .in_c1_exe1(bb_DijkstraNaiveID_B2_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraNaiveID_B2_stall_region_out_valid_out),
        .out_c0_exe283(DijkstraNaiveID_B2_branch_out_c0_exe283),
        .out_c0_exe3931(DijkstraNaiveID_B2_branch_out_c0_exe3931),
        .out_c0_exe82(DijkstraNaiveID_B2_branch_out_c0_exe82),
        .out_c0_exe93(DijkstraNaiveID_B2_branch_out_c0_exe93),
        .out_c1_exe1(DijkstraNaiveID_B2_branch_out_c1_exe1),
        .out_stall_out(DijkstraNaiveID_B2_branch_out_stall_out),
        .out_valid_out_0(DijkstraNaiveID_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraNaiveID_B2_merge(BLACKBOX,3)
    DijkstraNaiveID_B2_merge theDijkstraNaiveID_B2_merge (
        .in_c0_exe3931_0(in_c0_exe3931_0),
        .in_c0_exe82_0(in_c0_exe82_0),
        .in_c0_exe93_0(in_c0_exe93_0),
        .in_c2_exe14_0(in_c2_exe14_0),
        .in_stall_in(bb_DijkstraNaiveID_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe3931(DijkstraNaiveID_B2_merge_out_c0_exe3931),
        .out_c0_exe82(DijkstraNaiveID_B2_merge_out_c0_exe82),
        .out_c0_exe93(DijkstraNaiveID_B2_merge_out_c0_exe93),
        .out_c2_exe14(DijkstraNaiveID_B2_merge_out_c2_exe14),
        .out_stall_out_0(DijkstraNaiveID_B2_merge_out_stall_out_0),
        .out_valid_out(DijkstraNaiveID_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B2_stall_region(BLACKBOX,4)
    DijkstraNaiveID_bb_B2_stall_region thebb_DijkstraNaiveID_B2_stall_region (
        .in_arg_dist(in_arg_dist),
        .in_arg_visited(in_arg_visited),
        .in_c0_exe3931(DijkstraNaiveID_B2_merge_out_c0_exe3931),
        .in_c0_exe82(DijkstraNaiveID_B2_merge_out_c0_exe82),
        .in_c0_exe93(DijkstraNaiveID_B2_merge_out_c0_exe93),
        .in_c2_exe14(DijkstraNaiveID_B2_merge_out_c2_exe14),
        .in_feedback_stall_in_8(in_feedback_stall_in_8),
        .in_flush(in_flush),
        .in_memdep_21_DijkstraNaiveID_avm_readdata(in_memdep_21_DijkstraNaiveID_avm_readdata),
        .in_memdep_21_DijkstraNaiveID_avm_readdatavalid(in_memdep_21_DijkstraNaiveID_avm_readdatavalid),
        .in_memdep_21_DijkstraNaiveID_avm_waitrequest(in_memdep_21_DijkstraNaiveID_avm_waitrequest),
        .in_memdep_21_DijkstraNaiveID_avm_writeack(in_memdep_21_DijkstraNaiveID_avm_writeack),
        .in_stall_in(DijkstraNaiveID_B2_branch_out_stall_out),
        .in_valid_in(DijkstraNaiveID_B2_merge_out_valid_out),
        .out_c0_exe283(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe283),
        .out_c0_exe3931(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe3931),
        .out_c0_exe82(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe82),
        .out_c0_exe93(bb_DijkstraNaiveID_B2_stall_region_out_c0_exe93),
        .out_c1_exe1(bb_DijkstraNaiveID_B2_stall_region_out_c1_exe1),
        .out_feedback_out_8(bb_DijkstraNaiveID_B2_stall_region_out_feedback_out_8),
        .out_feedback_valid_out_8(bb_DijkstraNaiveID_B2_stall_region_out_feedback_valid_out_8),
        .out_lsu_memdep_21_o_active(bb_DijkstraNaiveID_B2_stall_region_out_lsu_memdep_21_o_active),
        .out_memdep_21_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_address),
        .out_memdep_21_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_burstcount),
        .out_memdep_21_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_byteenable),
        .out_memdep_21_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_enable),
        .out_memdep_21_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_read),
        .out_memdep_21_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_write),
        .out_memdep_21_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_writedata),
        .out_stall_out(bb_DijkstraNaiveID_B2_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraNaiveID_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_8_sync(GPOUT,5)
    assign out_feedback_out_8 = bb_DijkstraNaiveID_B2_stall_region_out_feedback_out_8;

    // feedback_valid_out_8_sync(GPOUT,7)
    assign out_feedback_valid_out_8 = bb_DijkstraNaiveID_B2_stall_region_out_feedback_valid_out_8;

    // out_c0_exe283(GPOUT,22)
    assign out_c0_exe283 = DijkstraNaiveID_B2_branch_out_c0_exe283;

    // out_c0_exe3931(GPOUT,23)
    assign out_c0_exe3931 = DijkstraNaiveID_B2_branch_out_c0_exe3931;

    // out_c0_exe82(GPOUT,24)
    assign out_c0_exe82 = DijkstraNaiveID_B2_branch_out_c0_exe82;

    // out_c0_exe93(GPOUT,25)
    assign out_c0_exe93 = DijkstraNaiveID_B2_branch_out_c0_exe93;

    // out_c1_exe1(GPOUT,26)
    assign out_c1_exe1 = DijkstraNaiveID_B2_branch_out_c1_exe1;

    // out_lsu_memdep_21_o_active(GPOUT,27)
    assign out_lsu_memdep_21_o_active = bb_DijkstraNaiveID_B2_stall_region_out_lsu_memdep_21_o_active;

    // out_memdep_21_DijkstraNaiveID_avm_address(GPOUT,28)
    assign out_memdep_21_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_address;

    // out_memdep_21_DijkstraNaiveID_avm_burstcount(GPOUT,29)
    assign out_memdep_21_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_burstcount;

    // out_memdep_21_DijkstraNaiveID_avm_byteenable(GPOUT,30)
    assign out_memdep_21_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_byteenable;

    // out_memdep_21_DijkstraNaiveID_avm_enable(GPOUT,31)
    assign out_memdep_21_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_enable;

    // out_memdep_21_DijkstraNaiveID_avm_read(GPOUT,32)
    assign out_memdep_21_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_read;

    // out_memdep_21_DijkstraNaiveID_avm_write(GPOUT,33)
    assign out_memdep_21_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_write;

    // out_memdep_21_DijkstraNaiveID_avm_writedata(GPOUT,34)
    assign out_memdep_21_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B2_stall_region_out_memdep_21_DijkstraNaiveID_avm_writedata;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = DijkstraNaiveID_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,36)
    assign out_valid_out_0 = DijkstraNaiveID_B2_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,37)
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
