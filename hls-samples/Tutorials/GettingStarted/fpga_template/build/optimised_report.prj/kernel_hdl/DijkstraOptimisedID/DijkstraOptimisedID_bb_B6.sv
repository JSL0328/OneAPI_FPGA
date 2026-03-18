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

// SystemVerilog created from bb_DijkstraOptimisedID_B6
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B6 (
    input wire [0:0] in_feedback_almost_empty_in_13,
    input wire [0:0] in_feedback_almost_empty_in_14,
    input wire [0:0] in_feedback_almost_empty_in_15,
    input wire [0:0] in_feedback_almost_empty_in_16,
    input wire [0:0] in_feedback_almost_empty_in_17,
    input wire [0:0] in_feedback_almost_empty_in_18,
    input wire [0:0] in_feedback_almost_empty_in_19,
    input wire [0:0] in_feedback_almost_empty_in_20,
    input wire [0:0] in_feedback_almost_empty_in_21,
    input wire [0:0] in_feedback_almost_empty_in_22,
    input wire [0:0] in_feedback_almost_empty_in_23,
    input wire [0:0] in_feedback_almost_empty_in_24,
    input wire [0:0] in_feedback_almost_empty_in_25,
    input wire [0:0] in_feedback_almost_empty_in_26,
    input wire [0:0] in_feedback_almost_empty_in_27,
    input wire [0:0] in_feedback_almost_empty_in_28,
    input wire [0:0] in_feedback_almost_empty_in_29,
    input wire [0:0] in_feedback_almost_empty_in_30,
    input wire [0:0] in_feedback_almost_empty_in_31,
    input wire [0:0] in_feedback_almost_empty_in_32,
    input wire [0:0] in_feedback_almost_empty_in_33,
    input wire [0:0] in_feedback_almost_empty_in_34,
    input wire [31:0] in_feedback_data_in_13,
    input wire [31:0] in_feedback_data_in_14,
    input wire [31:0] in_feedback_data_in_15,
    input wire [31:0] in_feedback_data_in_16,
    input wire [31:0] in_feedback_data_in_17,
    input wire [31:0] in_feedback_data_in_18,
    input wire [31:0] in_feedback_data_in_19,
    input wire [31:0] in_feedback_data_in_20,
    input wire [31:0] in_feedback_data_in_21,
    input wire [31:0] in_feedback_data_in_22,
    input wire [31:0] in_feedback_data_in_23,
    input wire [7:0] in_feedback_data_in_24,
    input wire [7:0] in_feedback_data_in_25,
    input wire [7:0] in_feedback_data_in_26,
    input wire [7:0] in_feedback_data_in_27,
    input wire [7:0] in_feedback_data_in_28,
    input wire [7:0] in_feedback_data_in_29,
    input wire [7:0] in_feedback_data_in_30,
    input wire [7:0] in_feedback_data_in_31,
    input wire [7:0] in_feedback_data_in_32,
    input wire [7:0] in_feedback_data_in_33,
    input wire [7:0] in_feedback_data_in_34,
    input wire [0:0] in_feedback_empty_in_13,
    input wire [0:0] in_feedback_empty_in_14,
    input wire [0:0] in_feedback_empty_in_15,
    input wire [0:0] in_feedback_empty_in_16,
    input wire [0:0] in_feedback_empty_in_17,
    input wire [0:0] in_feedback_empty_in_18,
    input wire [0:0] in_feedback_empty_in_19,
    input wire [0:0] in_feedback_empty_in_20,
    input wire [0:0] in_feedback_empty_in_21,
    input wire [0:0] in_feedback_empty_in_22,
    input wire [0:0] in_feedback_empty_in_23,
    input wire [0:0] in_feedback_empty_in_24,
    input wire [0:0] in_feedback_empty_in_25,
    input wire [0:0] in_feedback_empty_in_26,
    input wire [0:0] in_feedback_empty_in_27,
    input wire [0:0] in_feedback_empty_in_28,
    input wire [0:0] in_feedback_empty_in_29,
    input wire [0:0] in_feedback_empty_in_30,
    input wire [0:0] in_feedback_empty_in_31,
    input wire [0:0] in_feedback_empty_in_32,
    input wire [0:0] in_feedback_empty_in_33,
    input wire [0:0] in_feedback_empty_in_34,
    output wire [0:0] out_feedback_stall_out_13,
    output wire [0:0] out_feedback_stall_out_14,
    output wire [0:0] out_feedback_stall_out_15,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_17,
    output wire [0:0] out_feedback_stall_out_18,
    output wire [0:0] out_feedback_stall_out_19,
    output wire [0:0] out_feedback_stall_out_20,
    output wire [0:0] out_feedback_stall_out_21,
    output wire [0:0] out_feedback_stall_out_22,
    output wire [0:0] out_feedback_stall_out_23,
    output wire [0:0] out_feedback_stall_out_24,
    output wire [0:0] out_feedback_stall_out_25,
    output wire [0:0] out_feedback_stall_out_26,
    output wire [0:0] out_feedback_stall_out_27,
    output wire [0:0] out_feedback_stall_out_28,
    output wire [0:0] out_feedback_stall_out_29,
    output wire [0:0] out_feedback_stall_out_30,
    output wire [0:0] out_feedback_stall_out_31,
    output wire [0:0] out_feedback_stall_out_32,
    output wire [0:0] out_feedback_stall_out_33,
    output wire [0:0] out_feedback_stall_out_34,
    input wire [63:0] in_arg_out_dist,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [7:0] in_intel_reserved_ffwd_10_0,
    input wire [7:0] in_intel_reserved_ffwd_11_0,
    input wire [7:0] in_intel_reserved_ffwd_12_0,
    input wire [7:0] in_intel_reserved_ffwd_13_0,
    input wire [7:0] in_intel_reserved_ffwd_14_0,
    input wire [7:0] in_intel_reserved_ffwd_15_0,
    input wire [7:0] in_intel_reserved_ffwd_16_0,
    input wire [7:0] in_intel_reserved_ffwd_17_0,
    input wire [7:0] in_intel_reserved_ffwd_18_0,
    input wire [7:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [7:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1185,
    output wire [0:0] out_c0_exe2186,
    output wire [0:0] out_c0_exe3187,
    output wire [7:0] out_c1_exe1,
    output wire [7:0] out_c1_exe10,
    output wire [7:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe15,
    output wire [31:0] out_c1_exe16,
    output wire [31:0] out_c1_exe17,
    output wire [31:0] out_c1_exe18,
    output wire [31:0] out_c1_exe19,
    output wire [7:0] out_c1_exe2,
    output wire [31:0] out_c1_exe20,
    output wire [31:0] out_c1_exe21,
    output wire [7:0] out_c1_exe3,
    output wire [7:0] out_c1_exe4,
    output wire [7:0] out_c1_exe5,
    output wire [7:0] out_c1_exe6,
    output wire [7:0] out_c1_exe7,
    output wire [7:0] out_c1_exe8,
    output wire [7:0] out_c1_exe9,
    output wire [31:0] out_dist_i_sroa_0_0_pop23,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraOptimisedID_B6_branch_out_c0_exe1185;
    wire [0:0] DijkstraOptimisedID_B6_branch_out_c0_exe2186;
    wire [0:0] DijkstraOptimisedID_B6_branch_out_c0_exe3187;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe1;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe10;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe11;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe12;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe13;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe14;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe15;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe16;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe17;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe18;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe19;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe2;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe20;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_c1_exe21;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe3;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe4;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe5;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe6;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe7;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe8;
    wire [7:0] DijkstraOptimisedID_B6_branch_out_c1_exe9;
    wire [31:0] DijkstraOptimisedID_B6_branch_out_dist_i_sroa_0_0_pop23;
    wire [0:0] DijkstraOptimisedID_B6_branch_out_stall_out;
    wire [0:0] DijkstraOptimisedID_B6_branch_out_valid_out_0;
    wire [0:0] DijkstraOptimisedID_B6_merge_out_almost_empty_out;
    wire [0:0] DijkstraOptimisedID_B6_merge_out_empty_out;
    wire [0:0] DijkstraOptimisedID_B6_merge_out_stall_out_0;
    wire [0:0] DijkstraOptimisedID_B6_merge_out_valid_out;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_almost_empty_out;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe1185;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe2186;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe3187;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe1;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe10;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe11;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe12;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe13;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe14;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe15;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe16;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe17;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe18;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe19;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe2;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe20;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe21;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe3;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe4;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe5;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe6;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe7;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe8;
    wire [7:0] bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe9;
    wire [31:0] bb_DijkstraOptimisedID_B6_stall_region_out_dist_i_sroa_0_0_pop23;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_empty_out;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_14;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_15;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_16;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_17;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_18;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_19;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_20;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_21;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_22;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_23;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_24;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_25;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_26;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_27;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_28;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_29;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_30;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_31;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_32;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_33;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_34;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraOptimisedID_B6_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraOptimisedID_B6_branch(BLACKBOX,2)
    DijkstraOptimisedID_B6_branch theDijkstraOptimisedID_B6_branch (
        .in_almost_empty_in(bb_DijkstraOptimisedID_B6_stall_region_out_almost_empty_out),
        .in_c0_exe1185(bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe1185),
        .in_c0_exe2186(bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe2186),
        .in_c0_exe3187(bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe3187),
        .in_c1_exe1(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe1),
        .in_c1_exe10(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe10),
        .in_c1_exe11(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe11),
        .in_c1_exe12(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe12),
        .in_c1_exe13(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe13),
        .in_c1_exe14(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe14),
        .in_c1_exe15(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe15),
        .in_c1_exe16(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe16),
        .in_c1_exe17(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe17),
        .in_c1_exe18(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe18),
        .in_c1_exe19(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe19),
        .in_c1_exe2(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe2),
        .in_c1_exe20(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe20),
        .in_c1_exe21(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe21),
        .in_c1_exe3(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe3),
        .in_c1_exe4(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe4),
        .in_c1_exe5(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe5),
        .in_c1_exe6(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe6),
        .in_c1_exe7(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe7),
        .in_c1_exe8(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe8),
        .in_c1_exe9(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe9),
        .in_dist_i_sroa_0_0_pop23(bb_DijkstraOptimisedID_B6_stall_region_out_dist_i_sroa_0_0_pop23),
        .in_empty_in(bb_DijkstraOptimisedID_B6_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraOptimisedID_B6_stall_region_out_valid_out),
        .out_c0_exe1185(DijkstraOptimisedID_B6_branch_out_c0_exe1185),
        .out_c0_exe2186(DijkstraOptimisedID_B6_branch_out_c0_exe2186),
        .out_c0_exe3187(DijkstraOptimisedID_B6_branch_out_c0_exe3187),
        .out_c1_exe1(DijkstraOptimisedID_B6_branch_out_c1_exe1),
        .out_c1_exe10(DijkstraOptimisedID_B6_branch_out_c1_exe10),
        .out_c1_exe11(DijkstraOptimisedID_B6_branch_out_c1_exe11),
        .out_c1_exe12(DijkstraOptimisedID_B6_branch_out_c1_exe12),
        .out_c1_exe13(DijkstraOptimisedID_B6_branch_out_c1_exe13),
        .out_c1_exe14(DijkstraOptimisedID_B6_branch_out_c1_exe14),
        .out_c1_exe15(DijkstraOptimisedID_B6_branch_out_c1_exe15),
        .out_c1_exe16(DijkstraOptimisedID_B6_branch_out_c1_exe16),
        .out_c1_exe17(DijkstraOptimisedID_B6_branch_out_c1_exe17),
        .out_c1_exe18(DijkstraOptimisedID_B6_branch_out_c1_exe18),
        .out_c1_exe19(DijkstraOptimisedID_B6_branch_out_c1_exe19),
        .out_c1_exe2(DijkstraOptimisedID_B6_branch_out_c1_exe2),
        .out_c1_exe20(DijkstraOptimisedID_B6_branch_out_c1_exe20),
        .out_c1_exe21(DijkstraOptimisedID_B6_branch_out_c1_exe21),
        .out_c1_exe3(DijkstraOptimisedID_B6_branch_out_c1_exe3),
        .out_c1_exe4(DijkstraOptimisedID_B6_branch_out_c1_exe4),
        .out_c1_exe5(DijkstraOptimisedID_B6_branch_out_c1_exe5),
        .out_c1_exe6(DijkstraOptimisedID_B6_branch_out_c1_exe6),
        .out_c1_exe7(DijkstraOptimisedID_B6_branch_out_c1_exe7),
        .out_c1_exe8(DijkstraOptimisedID_B6_branch_out_c1_exe8),
        .out_c1_exe9(DijkstraOptimisedID_B6_branch_out_c1_exe9),
        .out_dist_i_sroa_0_0_pop23(DijkstraOptimisedID_B6_branch_out_dist_i_sroa_0_0_pop23),
        .out_stall_out(DijkstraOptimisedID_B6_branch_out_stall_out),
        .out_valid_out_0(DijkstraOptimisedID_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraOptimisedID_B6_merge(BLACKBOX,3)
    DijkstraOptimisedID_B6_merge theDijkstraOptimisedID_B6_merge (
        .in_stall_in(bb_DijkstraOptimisedID_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(DijkstraOptimisedID_B6_merge_out_almost_empty_out),
        .out_empty_out(DijkstraOptimisedID_B6_merge_out_empty_out),
        .out_stall_out_0(DijkstraOptimisedID_B6_merge_out_stall_out_0),
        .out_valid_out(DijkstraOptimisedID_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraOptimisedID_B6_stall_region(BLACKBOX,4)
    DijkstraOptimisedID_bb_B6_stall_region thebb_DijkstraOptimisedID_B6_stall_region (
        .in_almost_empty_in(DijkstraOptimisedID_B6_merge_out_almost_empty_out),
        .in_empty_in(DijkstraOptimisedID_B6_merge_out_empty_out),
        .in_feedback_almost_empty_in_13(in_feedback_almost_empty_in_13),
        .in_feedback_almost_empty_in_14(in_feedback_almost_empty_in_14),
        .in_feedback_almost_empty_in_15(in_feedback_almost_empty_in_15),
        .in_feedback_almost_empty_in_16(in_feedback_almost_empty_in_16),
        .in_feedback_almost_empty_in_17(in_feedback_almost_empty_in_17),
        .in_feedback_almost_empty_in_18(in_feedback_almost_empty_in_18),
        .in_feedback_almost_empty_in_19(in_feedback_almost_empty_in_19),
        .in_feedback_almost_empty_in_20(in_feedback_almost_empty_in_20),
        .in_feedback_almost_empty_in_21(in_feedback_almost_empty_in_21),
        .in_feedback_almost_empty_in_22(in_feedback_almost_empty_in_22),
        .in_feedback_almost_empty_in_23(in_feedback_almost_empty_in_23),
        .in_feedback_almost_empty_in_24(in_feedback_almost_empty_in_24),
        .in_feedback_almost_empty_in_25(in_feedback_almost_empty_in_25),
        .in_feedback_almost_empty_in_26(in_feedback_almost_empty_in_26),
        .in_feedback_almost_empty_in_27(in_feedback_almost_empty_in_27),
        .in_feedback_almost_empty_in_28(in_feedback_almost_empty_in_28),
        .in_feedback_almost_empty_in_29(in_feedback_almost_empty_in_29),
        .in_feedback_almost_empty_in_30(in_feedback_almost_empty_in_30),
        .in_feedback_almost_empty_in_31(in_feedback_almost_empty_in_31),
        .in_feedback_almost_empty_in_32(in_feedback_almost_empty_in_32),
        .in_feedback_almost_empty_in_33(in_feedback_almost_empty_in_33),
        .in_feedback_almost_empty_in_34(in_feedback_almost_empty_in_34),
        .in_feedback_data_in_13(in_feedback_data_in_13),
        .in_feedback_data_in_14(in_feedback_data_in_14),
        .in_feedback_data_in_15(in_feedback_data_in_15),
        .in_feedback_data_in_16(in_feedback_data_in_16),
        .in_feedback_data_in_17(in_feedback_data_in_17),
        .in_feedback_data_in_18(in_feedback_data_in_18),
        .in_feedback_data_in_19(in_feedback_data_in_19),
        .in_feedback_data_in_20(in_feedback_data_in_20),
        .in_feedback_data_in_21(in_feedback_data_in_21),
        .in_feedback_data_in_22(in_feedback_data_in_22),
        .in_feedback_data_in_23(in_feedback_data_in_23),
        .in_feedback_data_in_24(in_feedback_data_in_24),
        .in_feedback_data_in_25(in_feedback_data_in_25),
        .in_feedback_data_in_26(in_feedback_data_in_26),
        .in_feedback_data_in_27(in_feedback_data_in_27),
        .in_feedback_data_in_28(in_feedback_data_in_28),
        .in_feedback_data_in_29(in_feedback_data_in_29),
        .in_feedback_data_in_30(in_feedback_data_in_30),
        .in_feedback_data_in_31(in_feedback_data_in_31),
        .in_feedback_data_in_32(in_feedback_data_in_32),
        .in_feedback_data_in_33(in_feedback_data_in_33),
        .in_feedback_data_in_34(in_feedback_data_in_34),
        .in_feedback_empty_in_13(in_feedback_empty_in_13),
        .in_feedback_empty_in_14(in_feedback_empty_in_14),
        .in_feedback_empty_in_15(in_feedback_empty_in_15),
        .in_feedback_empty_in_16(in_feedback_empty_in_16),
        .in_feedback_empty_in_17(in_feedback_empty_in_17),
        .in_feedback_empty_in_18(in_feedback_empty_in_18),
        .in_feedback_empty_in_19(in_feedback_empty_in_19),
        .in_feedback_empty_in_20(in_feedback_empty_in_20),
        .in_feedback_empty_in_21(in_feedback_empty_in_21),
        .in_feedback_empty_in_22(in_feedback_empty_in_22),
        .in_feedback_empty_in_23(in_feedback_empty_in_23),
        .in_feedback_empty_in_24(in_feedback_empty_in_24),
        .in_feedback_empty_in_25(in_feedback_empty_in_25),
        .in_feedback_empty_in_26(in_feedback_empty_in_26),
        .in_feedback_empty_in_27(in_feedback_empty_in_27),
        .in_feedback_empty_in_28(in_feedback_empty_in_28),
        .in_feedback_empty_in_29(in_feedback_empty_in_29),
        .in_feedback_empty_in_30(in_feedback_empty_in_30),
        .in_feedback_empty_in_31(in_feedback_empty_in_31),
        .in_feedback_empty_in_32(in_feedback_empty_in_32),
        .in_feedback_empty_in_33(in_feedback_empty_in_33),
        .in_feedback_empty_in_34(in_feedback_empty_in_34),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(DijkstraOptimisedID_B6_branch_out_stall_out),
        .in_valid_in(DijkstraOptimisedID_B6_merge_out_valid_out),
        .out_almost_empty_out(bb_DijkstraOptimisedID_B6_stall_region_out_almost_empty_out),
        .out_c0_exe1185(bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe1185),
        .out_c0_exe2186(bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe2186),
        .out_c0_exe3187(bb_DijkstraOptimisedID_B6_stall_region_out_c0_exe3187),
        .out_c1_exe1(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe1),
        .out_c1_exe10(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe10),
        .out_c1_exe11(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe11),
        .out_c1_exe12(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe12),
        .out_c1_exe13(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe13),
        .out_c1_exe14(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe14),
        .out_c1_exe15(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe15),
        .out_c1_exe16(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe16),
        .out_c1_exe17(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe17),
        .out_c1_exe18(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe18),
        .out_c1_exe19(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe19),
        .out_c1_exe2(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe2),
        .out_c1_exe20(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe20),
        .out_c1_exe21(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe21),
        .out_c1_exe3(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe3),
        .out_c1_exe4(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe4),
        .out_c1_exe5(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe5),
        .out_c1_exe6(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe6),
        .out_c1_exe7(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe7),
        .out_c1_exe8(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe8),
        .out_c1_exe9(bb_DijkstraOptimisedID_B6_stall_region_out_c1_exe9),
        .out_dist_i_sroa_0_0_pop23(bb_DijkstraOptimisedID_B6_stall_region_out_dist_i_sroa_0_0_pop23),
        .out_empty_out(bb_DijkstraOptimisedID_B6_stall_region_out_empty_out),
        .out_feedback_stall_out_13(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_13),
        .out_feedback_stall_out_14(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_14),
        .out_feedback_stall_out_15(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_15),
        .out_feedback_stall_out_16(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_16),
        .out_feedback_stall_out_17(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_17),
        .out_feedback_stall_out_18(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_18),
        .out_feedback_stall_out_19(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_19),
        .out_feedback_stall_out_20(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_20),
        .out_feedback_stall_out_21(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_21),
        .out_feedback_stall_out_22(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_22),
        .out_feedback_stall_out_23(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_23),
        .out_feedback_stall_out_24(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_24),
        .out_feedback_stall_out_25(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_25),
        .out_feedback_stall_out_26(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_26),
        .out_feedback_stall_out_27(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_27),
        .out_feedback_stall_out_28(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_28),
        .out_feedback_stall_out_29(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_29),
        .out_feedback_stall_out_30(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_30),
        .out_feedback_stall_out_31(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_31),
        .out_feedback_stall_out_32(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_32),
        .out_feedback_stall_out_33(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_33),
        .out_feedback_stall_out_34(bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_34),
        .out_stall_out(bb_DijkstraOptimisedID_B6_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraOptimisedID_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,71)
    assign out_feedback_stall_out_13 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_13;

    // feedback_stall_out_14_sync(GPOUT,72)
    assign out_feedback_stall_out_14 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_14;

    // feedback_stall_out_15_sync(GPOUT,73)
    assign out_feedback_stall_out_15 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,74)
    assign out_feedback_stall_out_16 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,75)
    assign out_feedback_stall_out_17 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_17;

    // feedback_stall_out_18_sync(GPOUT,76)
    assign out_feedback_stall_out_18 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_18;

    // feedback_stall_out_19_sync(GPOUT,77)
    assign out_feedback_stall_out_19 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_19;

    // feedback_stall_out_20_sync(GPOUT,78)
    assign out_feedback_stall_out_20 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_20;

    // feedback_stall_out_21_sync(GPOUT,79)
    assign out_feedback_stall_out_21 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_21;

    // feedback_stall_out_22_sync(GPOUT,80)
    assign out_feedback_stall_out_22 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_22;

    // feedback_stall_out_23_sync(GPOUT,81)
    assign out_feedback_stall_out_23 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_23;

    // feedback_stall_out_24_sync(GPOUT,82)
    assign out_feedback_stall_out_24 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_24;

    // feedback_stall_out_25_sync(GPOUT,83)
    assign out_feedback_stall_out_25 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_25;

    // feedback_stall_out_26_sync(GPOUT,84)
    assign out_feedback_stall_out_26 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_26;

    // feedback_stall_out_27_sync(GPOUT,85)
    assign out_feedback_stall_out_27 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_27;

    // feedback_stall_out_28_sync(GPOUT,86)
    assign out_feedback_stall_out_28 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_28;

    // feedback_stall_out_29_sync(GPOUT,87)
    assign out_feedback_stall_out_29 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_29;

    // feedback_stall_out_30_sync(GPOUT,88)
    assign out_feedback_stall_out_30 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_30;

    // feedback_stall_out_31_sync(GPOUT,89)
    assign out_feedback_stall_out_31 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_31;

    // feedback_stall_out_32_sync(GPOUT,90)
    assign out_feedback_stall_out_32 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_32;

    // feedback_stall_out_33_sync(GPOUT,91)
    assign out_feedback_stall_out_33 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_33;

    // feedback_stall_out_34_sync(GPOUT,92)
    assign out_feedback_stall_out_34 = bb_DijkstraOptimisedID_B6_stall_region_out_feedback_stall_out_34;

    // out_c0_exe1185(GPOUT,117)
    assign out_c0_exe1185 = DijkstraOptimisedID_B6_branch_out_c0_exe1185;

    // out_c0_exe2186(GPOUT,118)
    assign out_c0_exe2186 = DijkstraOptimisedID_B6_branch_out_c0_exe2186;

    // out_c0_exe3187(GPOUT,119)
    assign out_c0_exe3187 = DijkstraOptimisedID_B6_branch_out_c0_exe3187;

    // out_c1_exe1(GPOUT,120)
    assign out_c1_exe1 = DijkstraOptimisedID_B6_branch_out_c1_exe1;

    // out_c1_exe10(GPOUT,121)
    assign out_c1_exe10 = DijkstraOptimisedID_B6_branch_out_c1_exe10;

    // out_c1_exe11(GPOUT,122)
    assign out_c1_exe11 = DijkstraOptimisedID_B6_branch_out_c1_exe11;

    // out_c1_exe12(GPOUT,123)
    assign out_c1_exe12 = DijkstraOptimisedID_B6_branch_out_c1_exe12;

    // out_c1_exe13(GPOUT,124)
    assign out_c1_exe13 = DijkstraOptimisedID_B6_branch_out_c1_exe13;

    // out_c1_exe14(GPOUT,125)
    assign out_c1_exe14 = DijkstraOptimisedID_B6_branch_out_c1_exe14;

    // out_c1_exe15(GPOUT,126)
    assign out_c1_exe15 = DijkstraOptimisedID_B6_branch_out_c1_exe15;

    // out_c1_exe16(GPOUT,127)
    assign out_c1_exe16 = DijkstraOptimisedID_B6_branch_out_c1_exe16;

    // out_c1_exe17(GPOUT,128)
    assign out_c1_exe17 = DijkstraOptimisedID_B6_branch_out_c1_exe17;

    // out_c1_exe18(GPOUT,129)
    assign out_c1_exe18 = DijkstraOptimisedID_B6_branch_out_c1_exe18;

    // out_c1_exe19(GPOUT,130)
    assign out_c1_exe19 = DijkstraOptimisedID_B6_branch_out_c1_exe19;

    // out_c1_exe2(GPOUT,131)
    assign out_c1_exe2 = DijkstraOptimisedID_B6_branch_out_c1_exe2;

    // out_c1_exe20(GPOUT,132)
    assign out_c1_exe20 = DijkstraOptimisedID_B6_branch_out_c1_exe20;

    // out_c1_exe21(GPOUT,133)
    assign out_c1_exe21 = DijkstraOptimisedID_B6_branch_out_c1_exe21;

    // out_c1_exe3(GPOUT,134)
    assign out_c1_exe3 = DijkstraOptimisedID_B6_branch_out_c1_exe3;

    // out_c1_exe4(GPOUT,135)
    assign out_c1_exe4 = DijkstraOptimisedID_B6_branch_out_c1_exe4;

    // out_c1_exe5(GPOUT,136)
    assign out_c1_exe5 = DijkstraOptimisedID_B6_branch_out_c1_exe5;

    // out_c1_exe6(GPOUT,137)
    assign out_c1_exe6 = DijkstraOptimisedID_B6_branch_out_c1_exe6;

    // out_c1_exe7(GPOUT,138)
    assign out_c1_exe7 = DijkstraOptimisedID_B6_branch_out_c1_exe7;

    // out_c1_exe8(GPOUT,139)
    assign out_c1_exe8 = DijkstraOptimisedID_B6_branch_out_c1_exe8;

    // out_c1_exe9(GPOUT,140)
    assign out_c1_exe9 = DijkstraOptimisedID_B6_branch_out_c1_exe9;

    // out_dist_i_sroa_0_0_pop23(GPOUT,141)
    assign out_dist_i_sroa_0_0_pop23 = DijkstraOptimisedID_B6_branch_out_dist_i_sroa_0_0_pop23;

    // out_stall_out_0(GPOUT,142)
    assign out_stall_out_0 = DijkstraOptimisedID_B6_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,143)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,144)
    assign out_valid_out_0 = DijkstraOptimisedID_B6_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,145)
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
