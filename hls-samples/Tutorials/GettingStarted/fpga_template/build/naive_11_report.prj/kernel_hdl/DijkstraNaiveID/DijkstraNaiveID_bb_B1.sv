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

// SystemVerilog created from bb_DijkstraNaiveID_B1
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B1 (
    input wire [0:0] in_feedback_in_7,
    input wire [0:0] in_feedback_in_8,
    output wire [0:0] out_feedback_stall_out_7,
    output wire [0:0] out_feedback_stall_out_8,
    input wire [0:0] in_feedback_valid_in_7,
    input wire [0:0] in_feedback_valid_in_8,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_memdep_phi22_pop8,
    output wire [0:0] out_memdep_phi_pop7,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraNaiveID_B1_branch_out_c0_exe1;
    wire [0:0] DijkstraNaiveID_B1_branch_out_c0_exe2;
    wire [0:0] DijkstraNaiveID_B1_branch_out_memdep_phi22_pop8;
    wire [0:0] DijkstraNaiveID_B1_branch_out_memdep_phi_pop7;
    wire [0:0] DijkstraNaiveID_B1_branch_out_stall_out;
    wire [0:0] DijkstraNaiveID_B1_branch_out_valid_out_0;
    wire [0:0] DijkstraNaiveID_B1_merge_out_stall_out_0;
    wire [0:0] DijkstraNaiveID_B1_merge_out_stall_out_1;
    wire [0:0] DijkstraNaiveID_B1_merge_out_valid_out;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_c0_exe1;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_c0_exe2;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_feedback_stall_out_7;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_feedback_stall_out_8;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_memdep_phi22_pop8;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_memdep_phi_pop7;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraNaiveID_B1_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraNaiveID_B1_merge(BLACKBOX,3)
    DijkstraNaiveID_B1_merge theDijkstraNaiveID_B1_merge (
        .in_stall_in(bb_DijkstraNaiveID_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(DijkstraNaiveID_B1_merge_out_stall_out_0),
        .out_stall_out_1(DijkstraNaiveID_B1_merge_out_stall_out_1),
        .out_valid_out(DijkstraNaiveID_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraNaiveID_B1_branch(BLACKBOX,2)
    DijkstraNaiveID_B1_branch theDijkstraNaiveID_B1_branch (
        .in_c0_exe1(bb_DijkstraNaiveID_B1_stall_region_out_c0_exe1),
        .in_c0_exe2(bb_DijkstraNaiveID_B1_stall_region_out_c0_exe2),
        .in_memdep_phi22_pop8(bb_DijkstraNaiveID_B1_stall_region_out_memdep_phi22_pop8),
        .in_memdep_phi_pop7(bb_DijkstraNaiveID_B1_stall_region_out_memdep_phi_pop7),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraNaiveID_B1_stall_region_out_valid_out),
        .out_c0_exe1(DijkstraNaiveID_B1_branch_out_c0_exe1),
        .out_c0_exe2(DijkstraNaiveID_B1_branch_out_c0_exe2),
        .out_memdep_phi22_pop8(DijkstraNaiveID_B1_branch_out_memdep_phi22_pop8),
        .out_memdep_phi_pop7(DijkstraNaiveID_B1_branch_out_memdep_phi_pop7),
        .out_stall_out(DijkstraNaiveID_B1_branch_out_stall_out),
        .out_valid_out_0(DijkstraNaiveID_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B1_stall_region(BLACKBOX,4)
    DijkstraNaiveID_bb_B1_stall_region thebb_DijkstraNaiveID_B1_stall_region (
        .in_feedback_in_7(in_feedback_in_7),
        .in_feedback_in_8(in_feedback_in_8),
        .in_feedback_valid_in_7(in_feedback_valid_in_7),
        .in_feedback_valid_in_8(in_feedback_valid_in_8),
        .in_stall_in(DijkstraNaiveID_B1_branch_out_stall_out),
        .in_valid_in(DijkstraNaiveID_B1_merge_out_valid_out),
        .out_c0_exe1(bb_DijkstraNaiveID_B1_stall_region_out_c0_exe1),
        .out_c0_exe2(bb_DijkstraNaiveID_B1_stall_region_out_c0_exe2),
        .out_feedback_stall_out_7(bb_DijkstraNaiveID_B1_stall_region_out_feedback_stall_out_7),
        .out_feedback_stall_out_8(bb_DijkstraNaiveID_B1_stall_region_out_feedback_stall_out_8),
        .out_memdep_phi22_pop8(bb_DijkstraNaiveID_B1_stall_region_out_memdep_phi22_pop8),
        .out_memdep_phi_pop7(bb_DijkstraNaiveID_B1_stall_region_out_memdep_phi_pop7),
        .out_profile_loop_o_valid(bb_DijkstraNaiveID_B1_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_DijkstraNaiveID_B1_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraNaiveID_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_7_sync(GPOUT,7)
    assign out_feedback_stall_out_7 = bb_DijkstraNaiveID_B1_stall_region_out_feedback_stall_out_7;

    // feedback_stall_out_8_sync(GPOUT,8)
    assign out_feedback_stall_out_8 = bb_DijkstraNaiveID_B1_stall_region_out_feedback_stall_out_8;

    // out_c0_exe1(GPOUT,17)
    assign out_c0_exe1 = DijkstraNaiveID_B1_branch_out_c0_exe1;

    // out_c0_exe2(GPOUT,18)
    assign out_c0_exe2 = DijkstraNaiveID_B1_branch_out_c0_exe2;

    // out_memdep_phi22_pop8(GPOUT,19)
    assign out_memdep_phi22_pop8 = DijkstraNaiveID_B1_branch_out_memdep_phi22_pop8;

    // out_memdep_phi_pop7(GPOUT,20)
    assign out_memdep_phi_pop7 = DijkstraNaiveID_B1_branch_out_memdep_phi_pop7;

    // out_profile_loop_o_valid(GPOUT,21)
    assign out_profile_loop_o_valid = bb_DijkstraNaiveID_B1_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = DijkstraNaiveID_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,23)
    assign out_stall_out_1 = DijkstraNaiveID_B1_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,24)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = DijkstraNaiveID_B1_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,26)
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
