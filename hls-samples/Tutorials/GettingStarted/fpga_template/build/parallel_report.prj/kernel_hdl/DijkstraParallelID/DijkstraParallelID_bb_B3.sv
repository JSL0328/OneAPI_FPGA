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

// SystemVerilog created from bb_DijkstraParallelID_B3
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_bb_B3 (
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_exitcond160215_0,
    input wire [0:0] in_exitcond160215_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_load4_lm_DijkstraParallelID_avm_readdata,
    input wire [0:0] in_load4_lm_DijkstraParallelID_avm_readdatavalid,
    input wire [0:0] in_load4_lm_DijkstraParallelID_avm_waitrequest,
    input wire [0:0] in_load4_lm_DijkstraParallelID_avm_writeack,
    input wire [63:0] in_load5_lm_DijkstraParallelID_avm_readdata,
    input wire [0:0] in_load5_lm_DijkstraParallelID_avm_readdatavalid,
    input wire [0:0] in_load5_lm_DijkstraParallelID_avm_waitrequest,
    input wire [0:0] in_load5_lm_DijkstraParallelID_avm_writeack,
    input wire [63:0] in_load_DijkstraParallelID_avm_readdata,
    input wire [0:0] in_load_DijkstraParallelID_avm_readdatavalid,
    input wire [0:0] in_load_DijkstraParallelID_avm_waitrequest,
    input wire [0:0] in_load_DijkstraParallelID_avm_writeack,
    input wire [0:0] in_memdep_phi_pop5217_0,
    input wire [0:0] in_memdep_phi_pop5217_1,
    input wire [0:0] in_notcmp206216_0,
    input wire [0:0] in_notcmp206216_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c2_exe1244,
    output wire [40:0] out_load4_lm_DijkstraParallelID_avm_address,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_burstcount,
    output wire [7:0] out_load4_lm_DijkstraParallelID_avm_byteenable,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_enable,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_read,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_write,
    output wire [63:0] out_load4_lm_DijkstraParallelID_avm_writedata,
    output wire [40:0] out_load5_lm_DijkstraParallelID_avm_address,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_burstcount,
    output wire [7:0] out_load5_lm_DijkstraParallelID_avm_byteenable,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_enable,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_read,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_write,
    output wire [63:0] out_load5_lm_DijkstraParallelID_avm_writedata,
    output wire [40:0] out_load_DijkstraParallelID_avm_address,
    output wire [0:0] out_load_DijkstraParallelID_avm_burstcount,
    output wire [7:0] out_load_DijkstraParallelID_avm_byteenable,
    output wire [0:0] out_load_DijkstraParallelID_avm_enable,
    output wire [0:0] out_load_DijkstraParallelID_avm_read,
    output wire [0:0] out_load_DijkstraParallelID_avm_write,
    output wire [63:0] out_load_DijkstraParallelID_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraParallelID_B3_branch_out_c0_exe7;
    wire [0:0] DijkstraParallelID_B3_branch_out_c0_exe8;
    wire [31:0] DijkstraParallelID_B3_branch_out_c2_exe1244;
    wire [0:0] DijkstraParallelID_B3_branch_out_stall_out;
    wire [0:0] DijkstraParallelID_B3_branch_out_valid_out_0;
    wire [0:0] DijkstraParallelID_B3_branch_out_valid_out_1;
    wire [0:0] DijkstraParallelID_B3_merge_out_exitcond160215;
    wire [0:0] DijkstraParallelID_B3_merge_out_memdep_phi_pop5217;
    wire [0:0] DijkstraParallelID_B3_merge_out_notcmp206216;
    wire [0:0] DijkstraParallelID_B3_merge_out_stall_out_0;
    wire [0:0] DijkstraParallelID_B3_merge_out_stall_out_1;
    wire [0:0] DijkstraParallelID_B3_merge_out_valid_out;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_c0_exe7;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_c0_exe8;
    wire [31:0] bb_DijkstraParallelID_B3_stall_region_out_c2_exe1244;
    wire [40:0] bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_address;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_burstcount;
    wire [7:0] bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_byteenable;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_enable;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_read;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_write;
    wire [63:0] bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_writedata;
    wire [40:0] bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_address;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_burstcount;
    wire [7:0] bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_byteenable;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_enable;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_read;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_write;
    wire [63:0] bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_writedata;
    wire [40:0] bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_address;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_burstcount;
    wire [7:0] bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_byteenable;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_enable;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_read;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_write;
    wire [63:0] bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_writedata;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraParallelID_B3_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraParallelID_B3_merge(BLACKBOX,3)
    DijkstraParallelID_B3_merge theDijkstraParallelID_B3_merge (
        .in_exitcond160215_0(in_exitcond160215_0),
        .in_exitcond160215_1(in_exitcond160215_1),
        .in_memdep_phi_pop5217_0(in_memdep_phi_pop5217_0),
        .in_memdep_phi_pop5217_1(in_memdep_phi_pop5217_1),
        .in_notcmp206216_0(in_notcmp206216_0),
        .in_notcmp206216_1(in_notcmp206216_1),
        .in_stall_in(bb_DijkstraParallelID_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond160215(DijkstraParallelID_B3_merge_out_exitcond160215),
        .out_memdep_phi_pop5217(DijkstraParallelID_B3_merge_out_memdep_phi_pop5217),
        .out_notcmp206216(DijkstraParallelID_B3_merge_out_notcmp206216),
        .out_stall_out_0(DijkstraParallelID_B3_merge_out_stall_out_0),
        .out_stall_out_1(DijkstraParallelID_B3_merge_out_stall_out_1),
        .out_valid_out(DijkstraParallelID_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraParallelID_B3_stall_region(BLACKBOX,4)
    DijkstraParallelID_bb_B3_stall_region thebb_DijkstraParallelID_B3_stall_region (
        .in_arg_dist(in_arg_dist),
        .in_arg_visited(in_arg_visited),
        .in_exitcond160215(DijkstraParallelID_B3_merge_out_exitcond160215),
        .in_flush(in_flush),
        .in_load4_lm_DijkstraParallelID_avm_readdata(in_load4_lm_DijkstraParallelID_avm_readdata),
        .in_load4_lm_DijkstraParallelID_avm_readdatavalid(in_load4_lm_DijkstraParallelID_avm_readdatavalid),
        .in_load4_lm_DijkstraParallelID_avm_waitrequest(in_load4_lm_DijkstraParallelID_avm_waitrequest),
        .in_load4_lm_DijkstraParallelID_avm_writeack(in_load4_lm_DijkstraParallelID_avm_writeack),
        .in_load5_lm_DijkstraParallelID_avm_readdata(in_load5_lm_DijkstraParallelID_avm_readdata),
        .in_load5_lm_DijkstraParallelID_avm_readdatavalid(in_load5_lm_DijkstraParallelID_avm_readdatavalid),
        .in_load5_lm_DijkstraParallelID_avm_waitrequest(in_load5_lm_DijkstraParallelID_avm_waitrequest),
        .in_load5_lm_DijkstraParallelID_avm_writeack(in_load5_lm_DijkstraParallelID_avm_writeack),
        .in_load_DijkstraParallelID_avm_readdata(in_load_DijkstraParallelID_avm_readdata),
        .in_load_DijkstraParallelID_avm_readdatavalid(in_load_DijkstraParallelID_avm_readdatavalid),
        .in_load_DijkstraParallelID_avm_waitrequest(in_load_DijkstraParallelID_avm_waitrequest),
        .in_load_DijkstraParallelID_avm_writeack(in_load_DijkstraParallelID_avm_writeack),
        .in_memdep_phi_pop5217(DijkstraParallelID_B3_merge_out_memdep_phi_pop5217),
        .in_notcmp206216(DijkstraParallelID_B3_merge_out_notcmp206216),
        .in_stall_in(DijkstraParallelID_B3_branch_out_stall_out),
        .in_valid_in(DijkstraParallelID_B3_merge_out_valid_out),
        .out_c0_exe6(bb_DijkstraParallelID_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_DijkstraParallelID_B3_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_DijkstraParallelID_B3_stall_region_out_c0_exe8),
        .out_c2_exe1244(bb_DijkstraParallelID_B3_stall_region_out_c2_exe1244),
        .out_load4_lm_DijkstraParallelID_avm_address(bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_address),
        .out_load4_lm_DijkstraParallelID_avm_burstcount(bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_burstcount),
        .out_load4_lm_DijkstraParallelID_avm_byteenable(bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_byteenable),
        .out_load4_lm_DijkstraParallelID_avm_enable(bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_enable),
        .out_load4_lm_DijkstraParallelID_avm_read(bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_read),
        .out_load4_lm_DijkstraParallelID_avm_write(bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_write),
        .out_load4_lm_DijkstraParallelID_avm_writedata(bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_writedata),
        .out_load5_lm_DijkstraParallelID_avm_address(bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_address),
        .out_load5_lm_DijkstraParallelID_avm_burstcount(bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_burstcount),
        .out_load5_lm_DijkstraParallelID_avm_byteenable(bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_byteenable),
        .out_load5_lm_DijkstraParallelID_avm_enable(bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_enable),
        .out_load5_lm_DijkstraParallelID_avm_read(bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_read),
        .out_load5_lm_DijkstraParallelID_avm_write(bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_write),
        .out_load5_lm_DijkstraParallelID_avm_writedata(bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_writedata),
        .out_load_DijkstraParallelID_avm_address(bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_address),
        .out_load_DijkstraParallelID_avm_burstcount(bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_burstcount),
        .out_load_DijkstraParallelID_avm_byteenable(bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_byteenable),
        .out_load_DijkstraParallelID_avm_enable(bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_enable),
        .out_load_DijkstraParallelID_avm_read(bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_read),
        .out_load_DijkstraParallelID_avm_write(bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_write),
        .out_load_DijkstraParallelID_avm_writedata(bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_writedata),
        .out_profile_loop_o_valid(bb_DijkstraParallelID_B3_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_DijkstraParallelID_B3_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraParallelID_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraParallelID_B3_branch(BLACKBOX,2)
    DijkstraParallelID_B3_branch theDijkstraParallelID_B3_branch (
        .in_c0_exe6(bb_DijkstraParallelID_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_DijkstraParallelID_B3_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_DijkstraParallelID_B3_stall_region_out_c0_exe8),
        .in_c2_exe1244(bb_DijkstraParallelID_B3_stall_region_out_c2_exe1244),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_DijkstraParallelID_B3_stall_region_out_valid_out),
        .out_c0_exe7(DijkstraParallelID_B3_branch_out_c0_exe7),
        .out_c0_exe8(DijkstraParallelID_B3_branch_out_c0_exe8),
        .out_c2_exe1244(DijkstraParallelID_B3_branch_out_c2_exe1244),
        .out_stall_out(DijkstraParallelID_B3_branch_out_stall_out),
        .out_valid_out_0(DijkstraParallelID_B3_branch_out_valid_out_0),
        .out_valid_out_1(DijkstraParallelID_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe7(GPOUT,31)
    assign out_c0_exe7 = DijkstraParallelID_B3_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,32)
    assign out_c0_exe8 = DijkstraParallelID_B3_branch_out_c0_exe8;

    // out_c2_exe1244(GPOUT,33)
    assign out_c2_exe1244 = DijkstraParallelID_B3_branch_out_c2_exe1244;

    // out_load4_lm_DijkstraParallelID_avm_address(GPOUT,34)
    assign out_load4_lm_DijkstraParallelID_avm_address = bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_address;

    // out_load4_lm_DijkstraParallelID_avm_burstcount(GPOUT,35)
    assign out_load4_lm_DijkstraParallelID_avm_burstcount = bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_burstcount;

    // out_load4_lm_DijkstraParallelID_avm_byteenable(GPOUT,36)
    assign out_load4_lm_DijkstraParallelID_avm_byteenable = bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_byteenable;

    // out_load4_lm_DijkstraParallelID_avm_enable(GPOUT,37)
    assign out_load4_lm_DijkstraParallelID_avm_enable = bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_enable;

    // out_load4_lm_DijkstraParallelID_avm_read(GPOUT,38)
    assign out_load4_lm_DijkstraParallelID_avm_read = bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_read;

    // out_load4_lm_DijkstraParallelID_avm_write(GPOUT,39)
    assign out_load4_lm_DijkstraParallelID_avm_write = bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_write;

    // out_load4_lm_DijkstraParallelID_avm_writedata(GPOUT,40)
    assign out_load4_lm_DijkstraParallelID_avm_writedata = bb_DijkstraParallelID_B3_stall_region_out_load4_lm_DijkstraParallelID_avm_writedata;

    // out_load5_lm_DijkstraParallelID_avm_address(GPOUT,41)
    assign out_load5_lm_DijkstraParallelID_avm_address = bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_address;

    // out_load5_lm_DijkstraParallelID_avm_burstcount(GPOUT,42)
    assign out_load5_lm_DijkstraParallelID_avm_burstcount = bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_burstcount;

    // out_load5_lm_DijkstraParallelID_avm_byteenable(GPOUT,43)
    assign out_load5_lm_DijkstraParallelID_avm_byteenable = bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_byteenable;

    // out_load5_lm_DijkstraParallelID_avm_enable(GPOUT,44)
    assign out_load5_lm_DijkstraParallelID_avm_enable = bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_enable;

    // out_load5_lm_DijkstraParallelID_avm_read(GPOUT,45)
    assign out_load5_lm_DijkstraParallelID_avm_read = bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_read;

    // out_load5_lm_DijkstraParallelID_avm_write(GPOUT,46)
    assign out_load5_lm_DijkstraParallelID_avm_write = bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_write;

    // out_load5_lm_DijkstraParallelID_avm_writedata(GPOUT,47)
    assign out_load5_lm_DijkstraParallelID_avm_writedata = bb_DijkstraParallelID_B3_stall_region_out_load5_lm_DijkstraParallelID_avm_writedata;

    // out_load_DijkstraParallelID_avm_address(GPOUT,48)
    assign out_load_DijkstraParallelID_avm_address = bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_address;

    // out_load_DijkstraParallelID_avm_burstcount(GPOUT,49)
    assign out_load_DijkstraParallelID_avm_burstcount = bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_burstcount;

    // out_load_DijkstraParallelID_avm_byteenable(GPOUT,50)
    assign out_load_DijkstraParallelID_avm_byteenable = bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_byteenable;

    // out_load_DijkstraParallelID_avm_enable(GPOUT,51)
    assign out_load_DijkstraParallelID_avm_enable = bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_enable;

    // out_load_DijkstraParallelID_avm_read(GPOUT,52)
    assign out_load_DijkstraParallelID_avm_read = bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_read;

    // out_load_DijkstraParallelID_avm_write(GPOUT,53)
    assign out_load_DijkstraParallelID_avm_write = bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_write;

    // out_load_DijkstraParallelID_avm_writedata(GPOUT,54)
    assign out_load_DijkstraParallelID_avm_writedata = bb_DijkstraParallelID_B3_stall_region_out_load_DijkstraParallelID_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,55)
    assign out_profile_loop_o_valid = bb_DijkstraParallelID_B3_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,56)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = DijkstraParallelID_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = DijkstraParallelID_B3_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,59)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,60)
    assign out_valid_out_0 = DijkstraParallelID_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,61)
    assign out_valid_out_1 = DijkstraParallelID_B3_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,62)
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
