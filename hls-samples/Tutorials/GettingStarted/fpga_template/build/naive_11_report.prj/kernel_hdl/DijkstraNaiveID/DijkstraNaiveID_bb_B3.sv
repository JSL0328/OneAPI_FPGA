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

// SystemVerilog created from bb_DijkstraNaiveID_B3
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B3 (
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_exitcond3060_0,
    input wire [0:0] in_exitcond3060_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_load4_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load5_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_memdep_phi22_pop863_0,
    input wire [0:0] in_memdep_phi22_pop863_1,
    input wire [0:0] in_memdep_phi_pop762_0,
    input wire [0:0] in_memdep_phi_pop762_1,
    input wire [0:0] in_notcmp4561_0,
    input wire [0:0] in_notcmp4561_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe393,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_c2_exe1,
    output wire [40:0] out_load4_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load4_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load4_lm_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load5_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load5_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load5_lm_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load_DijkstraNaiveID_avm_writedata,
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

    wire [0:0] DijkstraNaiveID_B3_branch_out_c0_exe393;
    wire [0:0] DijkstraNaiveID_B3_branch_out_c0_exe8;
    wire [0:0] DijkstraNaiveID_B3_branch_out_c0_exe9;
    wire [31:0] DijkstraNaiveID_B3_branch_out_c2_exe1;
    wire [0:0] DijkstraNaiveID_B3_branch_out_stall_out;
    wire [0:0] DijkstraNaiveID_B3_branch_out_valid_out_0;
    wire [0:0] DijkstraNaiveID_B3_branch_out_valid_out_1;
    wire [0:0] DijkstraNaiveID_B3_merge_out_exitcond3060;
    wire [0:0] DijkstraNaiveID_B3_merge_out_memdep_phi22_pop863;
    wire [0:0] DijkstraNaiveID_B3_merge_out_memdep_phi_pop762;
    wire [0:0] DijkstraNaiveID_B3_merge_out_notcmp4561;
    wire [0:0] DijkstraNaiveID_B3_merge_out_stall_out_0;
    wire [0:0] DijkstraNaiveID_B3_merge_out_stall_out_1;
    wire [0:0] DijkstraNaiveID_B3_merge_out_valid_out;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_c0_exe393;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_c0_exe7;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_c0_exe8;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_c0_exe9;
    wire [31:0] bb_DijkstraNaiveID_B3_stall_region_out_c2_exe1;
    wire [40:0] bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraNaiveID_B3_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraNaiveID_B3_merge(BLACKBOX,3)
    DijkstraNaiveID_B3_merge theDijkstraNaiveID_B3_merge (
        .in_exitcond3060_0(in_exitcond3060_0),
        .in_exitcond3060_1(in_exitcond3060_1),
        .in_memdep_phi22_pop863_0(in_memdep_phi22_pop863_0),
        .in_memdep_phi22_pop863_1(in_memdep_phi22_pop863_1),
        .in_memdep_phi_pop762_0(in_memdep_phi_pop762_0),
        .in_memdep_phi_pop762_1(in_memdep_phi_pop762_1),
        .in_notcmp4561_0(in_notcmp4561_0),
        .in_notcmp4561_1(in_notcmp4561_1),
        .in_stall_in(bb_DijkstraNaiveID_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond3060(DijkstraNaiveID_B3_merge_out_exitcond3060),
        .out_memdep_phi22_pop863(DijkstraNaiveID_B3_merge_out_memdep_phi22_pop863),
        .out_memdep_phi_pop762(DijkstraNaiveID_B3_merge_out_memdep_phi_pop762),
        .out_notcmp4561(DijkstraNaiveID_B3_merge_out_notcmp4561),
        .out_stall_out_0(DijkstraNaiveID_B3_merge_out_stall_out_0),
        .out_stall_out_1(DijkstraNaiveID_B3_merge_out_stall_out_1),
        .out_valid_out(DijkstraNaiveID_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B3_stall_region(BLACKBOX,4)
    DijkstraNaiveID_bb_B3_stall_region thebb_DijkstraNaiveID_B3_stall_region (
        .in_arg_dist(in_arg_dist),
        .in_arg_visited(in_arg_visited),
        .in_exitcond3060(DijkstraNaiveID_B3_merge_out_exitcond3060),
        .in_flush(in_flush),
        .in_load4_lm_DijkstraNaiveID_avm_readdata(in_load4_lm_DijkstraNaiveID_avm_readdata),
        .in_load4_lm_DijkstraNaiveID_avm_readdatavalid(in_load4_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load4_lm_DijkstraNaiveID_avm_waitrequest(in_load4_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load4_lm_DijkstraNaiveID_avm_writeack(in_load4_lm_DijkstraNaiveID_avm_writeack),
        .in_load5_lm_DijkstraNaiveID_avm_readdata(in_load5_lm_DijkstraNaiveID_avm_readdata),
        .in_load5_lm_DijkstraNaiveID_avm_readdatavalid(in_load5_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load5_lm_DijkstraNaiveID_avm_waitrequest(in_load5_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load5_lm_DijkstraNaiveID_avm_writeack(in_load5_lm_DijkstraNaiveID_avm_writeack),
        .in_load_DijkstraNaiveID_avm_readdata(in_load_DijkstraNaiveID_avm_readdata),
        .in_load_DijkstraNaiveID_avm_readdatavalid(in_load_DijkstraNaiveID_avm_readdatavalid),
        .in_load_DijkstraNaiveID_avm_waitrequest(in_load_DijkstraNaiveID_avm_waitrequest),
        .in_load_DijkstraNaiveID_avm_writeack(in_load_DijkstraNaiveID_avm_writeack),
        .in_memdep_phi22_pop863(DijkstraNaiveID_B3_merge_out_memdep_phi22_pop863),
        .in_memdep_phi_pop762(DijkstraNaiveID_B3_merge_out_memdep_phi_pop762),
        .in_notcmp4561(DijkstraNaiveID_B3_merge_out_notcmp4561),
        .in_stall_in(DijkstraNaiveID_B3_branch_out_stall_out),
        .in_valid_in(DijkstraNaiveID_B3_merge_out_valid_out),
        .out_c0_exe393(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe393),
        .out_c0_exe7(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe9),
        .out_c2_exe1(bb_DijkstraNaiveID_B3_stall_region_out_c2_exe1),
        .out_load4_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_address),
        .out_load4_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_burstcount),
        .out_load4_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_byteenable),
        .out_load4_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_enable),
        .out_load4_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_read),
        .out_load4_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_write),
        .out_load4_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_writedata),
        .out_load5_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_address),
        .out_load5_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_burstcount),
        .out_load5_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_byteenable),
        .out_load5_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_enable),
        .out_load5_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_read),
        .out_load5_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_write),
        .out_load5_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_writedata),
        .out_load_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_address),
        .out_load_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_burstcount),
        .out_load_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_byteenable),
        .out_load_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_enable),
        .out_load_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_read),
        .out_load_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_write),
        .out_load_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_writedata),
        .out_profile_loop_o_valid(bb_DijkstraNaiveID_B3_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_DijkstraNaiveID_B3_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraNaiveID_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraNaiveID_B3_branch(BLACKBOX,2)
    DijkstraNaiveID_B3_branch theDijkstraNaiveID_B3_branch (
        .in_c0_exe393(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe393),
        .in_c0_exe7(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_DijkstraNaiveID_B3_stall_region_out_c0_exe9),
        .in_c2_exe1(bb_DijkstraNaiveID_B3_stall_region_out_c2_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_DijkstraNaiveID_B3_stall_region_out_valid_out),
        .out_c0_exe393(DijkstraNaiveID_B3_branch_out_c0_exe393),
        .out_c0_exe8(DijkstraNaiveID_B3_branch_out_c0_exe8),
        .out_c0_exe9(DijkstraNaiveID_B3_branch_out_c0_exe9),
        .out_c2_exe1(DijkstraNaiveID_B3_branch_out_c2_exe1),
        .out_stall_out(DijkstraNaiveID_B3_branch_out_stall_out),
        .out_valid_out_0(DijkstraNaiveID_B3_branch_out_valid_out_0),
        .out_valid_out_1(DijkstraNaiveID_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe393(GPOUT,33)
    assign out_c0_exe393 = DijkstraNaiveID_B3_branch_out_c0_exe393;

    // out_c0_exe8(GPOUT,34)
    assign out_c0_exe8 = DijkstraNaiveID_B3_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,35)
    assign out_c0_exe9 = DijkstraNaiveID_B3_branch_out_c0_exe9;

    // out_c2_exe1(GPOUT,36)
    assign out_c2_exe1 = DijkstraNaiveID_B3_branch_out_c2_exe1;

    // out_load4_lm_DijkstraNaiveID_avm_address(GPOUT,37)
    assign out_load4_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_address;

    // out_load4_lm_DijkstraNaiveID_avm_burstcount(GPOUT,38)
    assign out_load4_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_burstcount;

    // out_load4_lm_DijkstraNaiveID_avm_byteenable(GPOUT,39)
    assign out_load4_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_byteenable;

    // out_load4_lm_DijkstraNaiveID_avm_enable(GPOUT,40)
    assign out_load4_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_enable;

    // out_load4_lm_DijkstraNaiveID_avm_read(GPOUT,41)
    assign out_load4_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_read;

    // out_load4_lm_DijkstraNaiveID_avm_write(GPOUT,42)
    assign out_load4_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_write;

    // out_load4_lm_DijkstraNaiveID_avm_writedata(GPOUT,43)
    assign out_load4_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B3_stall_region_out_load4_lm_DijkstraNaiveID_avm_writedata;

    // out_load5_lm_DijkstraNaiveID_avm_address(GPOUT,44)
    assign out_load5_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_address;

    // out_load5_lm_DijkstraNaiveID_avm_burstcount(GPOUT,45)
    assign out_load5_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_burstcount;

    // out_load5_lm_DijkstraNaiveID_avm_byteenable(GPOUT,46)
    assign out_load5_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_byteenable;

    // out_load5_lm_DijkstraNaiveID_avm_enable(GPOUT,47)
    assign out_load5_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_enable;

    // out_load5_lm_DijkstraNaiveID_avm_read(GPOUT,48)
    assign out_load5_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_read;

    // out_load5_lm_DijkstraNaiveID_avm_write(GPOUT,49)
    assign out_load5_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_write;

    // out_load5_lm_DijkstraNaiveID_avm_writedata(GPOUT,50)
    assign out_load5_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B3_stall_region_out_load5_lm_DijkstraNaiveID_avm_writedata;

    // out_load_DijkstraNaiveID_avm_address(GPOUT,51)
    assign out_load_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_address;

    // out_load_DijkstraNaiveID_avm_burstcount(GPOUT,52)
    assign out_load_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_burstcount;

    // out_load_DijkstraNaiveID_avm_byteenable(GPOUT,53)
    assign out_load_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_byteenable;

    // out_load_DijkstraNaiveID_avm_enable(GPOUT,54)
    assign out_load_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_enable;

    // out_load_DijkstraNaiveID_avm_read(GPOUT,55)
    assign out_load_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_read;

    // out_load_DijkstraNaiveID_avm_write(GPOUT,56)
    assign out_load_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_write;

    // out_load_DijkstraNaiveID_avm_writedata(GPOUT,57)
    assign out_load_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B3_stall_region_out_load_DijkstraNaiveID_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,58)
    assign out_profile_loop_o_valid = bb_DijkstraNaiveID_B3_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,59)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,60)
    assign out_stall_out_0 = DijkstraNaiveID_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,61)
    assign out_stall_out_1 = DijkstraNaiveID_B3_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,62)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = DijkstraNaiveID_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,64)
    assign out_valid_out_1 = DijkstraNaiveID_B3_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,65)
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
