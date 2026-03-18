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

// SystemVerilog created from bb_DijkstraParallelID_B1
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_bb_B1 (
    input wire [0:0] in_feedback_in_5,
    output wire [0:0] out_feedback_stall_out_5,
    input wire [0:0] in_feedback_valid_in_5,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_memdep_phi_pop5,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraParallelID_B1_branch_out_c0_exe1;
    wire [0:0] DijkstraParallelID_B1_branch_out_c0_exe2;
    wire [0:0] DijkstraParallelID_B1_branch_out_memdep_phi_pop5;
    wire [0:0] DijkstraParallelID_B1_branch_out_stall_out;
    wire [0:0] DijkstraParallelID_B1_branch_out_valid_out_0;
    wire [0:0] DijkstraParallelID_B1_merge_out_stall_out_0;
    wire [0:0] DijkstraParallelID_B1_merge_out_stall_out_1;
    wire [0:0] DijkstraParallelID_B1_merge_out_valid_out;
    wire [0:0] bb_DijkstraParallelID_B1_stall_region_out_c0_exe1;
    wire [0:0] bb_DijkstraParallelID_B1_stall_region_out_c0_exe2;
    wire [0:0] bb_DijkstraParallelID_B1_stall_region_out_feedback_stall_out_5;
    wire [0:0] bb_DijkstraParallelID_B1_stall_region_out_memdep_phi_pop5;
    wire [0:0] bb_DijkstraParallelID_B1_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_DijkstraParallelID_B1_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraParallelID_B1_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraParallelID_B1_merge(BLACKBOX,3)
    DijkstraParallelID_B1_merge theDijkstraParallelID_B1_merge (
        .in_stall_in(bb_DijkstraParallelID_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(DijkstraParallelID_B1_merge_out_stall_out_0),
        .out_stall_out_1(DijkstraParallelID_B1_merge_out_stall_out_1),
        .out_valid_out(DijkstraParallelID_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraParallelID_B1_branch(BLACKBOX,2)
    DijkstraParallelID_B1_branch theDijkstraParallelID_B1_branch (
        .in_c0_exe1(bb_DijkstraParallelID_B1_stall_region_out_c0_exe1),
        .in_c0_exe2(bb_DijkstraParallelID_B1_stall_region_out_c0_exe2),
        .in_memdep_phi_pop5(bb_DijkstraParallelID_B1_stall_region_out_memdep_phi_pop5),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraParallelID_B1_stall_region_out_valid_out),
        .out_c0_exe1(DijkstraParallelID_B1_branch_out_c0_exe1),
        .out_c0_exe2(DijkstraParallelID_B1_branch_out_c0_exe2),
        .out_memdep_phi_pop5(DijkstraParallelID_B1_branch_out_memdep_phi_pop5),
        .out_stall_out(DijkstraParallelID_B1_branch_out_stall_out),
        .out_valid_out_0(DijkstraParallelID_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraParallelID_B1_stall_region(BLACKBOX,4)
    DijkstraParallelID_bb_B1_stall_region thebb_DijkstraParallelID_B1_stall_region (
        .in_feedback_in_5(in_feedback_in_5),
        .in_feedback_valid_in_5(in_feedback_valid_in_5),
        .in_stall_in(DijkstraParallelID_B1_branch_out_stall_out),
        .in_valid_in(DijkstraParallelID_B1_merge_out_valid_out),
        .out_c0_exe1(bb_DijkstraParallelID_B1_stall_region_out_c0_exe1),
        .out_c0_exe2(bb_DijkstraParallelID_B1_stall_region_out_c0_exe2),
        .out_feedback_stall_out_5(bb_DijkstraParallelID_B1_stall_region_out_feedback_stall_out_5),
        .out_memdep_phi_pop5(bb_DijkstraParallelID_B1_stall_region_out_memdep_phi_pop5),
        .out_profile_loop_o_valid(bb_DijkstraParallelID_B1_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_DijkstraParallelID_B1_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraParallelID_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_5_sync(GPOUT,6)
    assign out_feedback_stall_out_5 = bb_DijkstraParallelID_B1_stall_region_out_feedback_stall_out_5;

    // out_c0_exe1(GPOUT,14)
    assign out_c0_exe1 = DijkstraParallelID_B1_branch_out_c0_exe1;

    // out_c0_exe2(GPOUT,15)
    assign out_c0_exe2 = DijkstraParallelID_B1_branch_out_c0_exe2;

    // out_memdep_phi_pop5(GPOUT,16)
    assign out_memdep_phi_pop5 = DijkstraParallelID_B1_branch_out_memdep_phi_pop5;

    // out_profile_loop_o_valid(GPOUT,17)
    assign out_profile_loop_o_valid = bb_DijkstraParallelID_B1_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = DijkstraParallelID_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,19)
    assign out_stall_out_1 = DijkstraParallelID_B1_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,20)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = DijkstraParallelID_B1_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,22)
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
