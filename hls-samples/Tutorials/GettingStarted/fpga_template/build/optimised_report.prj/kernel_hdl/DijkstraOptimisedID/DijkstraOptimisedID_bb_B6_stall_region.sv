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

// SystemVerilog created from bb_DijkstraOptimisedID_B6_stall_region
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B6_stall_region (
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
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_almost_empty_out,
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
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_0_1227_35_q;
    wire [7:0] c_i8_undef_1227_33_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out;
    wire [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl;
    wire [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_valid;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_data;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_empty;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_almost_empty;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_stall;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty;
    wire redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_valid;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_data;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_empty;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_almost_empty;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty;
    wire redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_valid;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_data;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_empty;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_almost_empty;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_stall;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty;
    wire redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_b;
    wire [2:0] bubble_join_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d;
    wire [407:0] bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_b;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_c;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_d;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_e;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_f;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_g;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_h;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_i;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_j;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_k;
    wire [7:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_v;
    wire [0:0] bubble_join_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_q;
    wire [0:0] bubble_select_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_b;
    wire [0:0] bubble_join_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_q;
    wire [0:0] bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_b;
    wire [0:0] bubble_join_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_q;
    wire [0:0] bubble_select_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V24;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V47;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V25;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V48;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V26;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V49;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V27;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V50;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V28;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V51;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V6;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V29;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V52;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V7;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V30;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V53;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V8;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V31;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V54;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V9;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V32;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V55;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V10;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V33;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V56;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V11;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V34;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V57;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V12;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V35;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V58;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V13;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V36;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V59;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V14;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V37;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V60;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V15;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V38;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V61;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V16;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V39;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V62;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V17;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V40;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V63;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V18;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V41;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V64;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V19;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V42;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V65;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V20;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V43;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V66;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V21;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V44;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V67;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V22;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V45;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V68;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V4;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V3;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V5;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_temp_back_stall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V1;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V2;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_fast_read;
    wire can_fast_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_slow_read;
    wire can_slow_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    wire forced_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_backStall;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V0;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V2;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V4;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V1;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V3;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V5;
    wire [0:0] merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_temp_back_stall;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg2_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg0_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg1_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg0_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg1_q;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg0_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg1_q;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg0_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg1_q;
    reg [7:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg0_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg1_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_reg1_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_reg0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg1_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg1_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg0_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg0_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg1_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg1_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg0_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg1_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg0_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg1_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg0_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg1_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_reg1_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_reg0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg1_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg1_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg0(REG,538)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg1(REG,539)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg2(REG,540)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg0(REG,589)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg1(REG,590)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22(BLACKBOX,99)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1450_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V67),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V44),
        .in_feedback_almost_empty_in_16(in_feedback_almost_empty_in_16),
        .in_feedback_data_in_16(in_feedback_data_in_16),
        .in_feedback_empty_in_16(in_feedback_empty_in_16),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V21),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg0(REG,592)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg1(REG,591)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg0(REG,535)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg1(REG,536)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg2(REG,537)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg0(REG,599)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg1(REG,600)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23(BLACKBOX,100)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1457_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V66),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V43),
        .in_feedback_almost_empty_in_15(in_feedback_almost_empty_in_15),
        .in_feedback_data_in_15(in_feedback_data_in_15),
        .in_feedback_empty_in_15(in_feedback_empty_in_15),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V20),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg0(REG,602)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg1(REG,601)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg0(REG,532)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg1(REG,533)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg2(REG,534)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg0(REG,609)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg1(REG,610)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24(BLACKBOX,101)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1464_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V65),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V42),
        .in_feedback_almost_empty_in_14(in_feedback_almost_empty_in_14),
        .in_feedback_data_in_14(in_feedback_data_in_14),
        .in_feedback_empty_in_14(in_feedback_empty_in_14),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V19),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg0(REG,612)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg1(REG,611)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg0(REG,622)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg1(REG,621)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg0(REG,526)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg1(REG,527)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg2(REG,528)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg0(REG,629)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg1(REG,630)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16(BLACKBOX,103)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1408_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V63),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V40),
        .in_feedback_almost_empty_in_22(in_feedback_almost_empty_in_22),
        .in_feedback_data_in_22(in_feedback_data_in_22),
        .in_feedback_empty_in_22(in_feedback_empty_in_22),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V17),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg0(REG,632)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg1(REG,631)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg0(REG,523)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg1(REG,524)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg2(REG,525)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg0(REG,639)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg1(REG,640)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17(BLACKBOX,104)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1415_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V62),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V39),
        .in_feedback_almost_empty_in_21(in_feedback_almost_empty_in_21),
        .in_feedback_data_in_21(in_feedback_data_in_21),
        .in_feedback_empty_in_21(in_feedback_empty_in_21),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V16),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg0(REG,642)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg1(REG,641)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg0(REG,520)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg1(REG,521)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg2(REG,522)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg0(REG,649)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg1(REG,650)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18(BLACKBOX,105)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1422_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V61),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V38),
        .in_feedback_almost_empty_in_20(in_feedback_almost_empty_in_20),
        .in_feedback_data_in_20(in_feedback_data_in_20),
        .in_feedback_empty_in_20(in_feedback_empty_in_20),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V15),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg0(REG,652)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg1(REG,651)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg0(REG,517)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg1(REG,518)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg2(REG,519)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg0(REG,659)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg1(REG,660)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19(BLACKBOX,106)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1429_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V60),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V37),
        .in_feedback_almost_empty_in_19(in_feedback_almost_empty_in_19),
        .in_feedback_data_in_19(in_feedback_data_in_19),
        .in_feedback_empty_in_19(in_feedback_empty_in_19),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V14),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg0(REG,662)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg1(REG,661)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg0(REG,514)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg1(REG,515)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg2(REG,516)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg0(REG,669)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg1(REG,670)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20(BLACKBOX,107)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1436_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V59),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V36),
        .in_feedback_almost_empty_in_18(in_feedback_almost_empty_in_18),
        .in_feedback_data_in_18(in_feedback_data_in_18),
        .in_feedback_empty_in_18(in_feedback_empty_in_18),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V13),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg0(REG,672)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg1(REG,671)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg0(REG,511)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg1(REG,512)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg2(REG,513)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg0(REG,679)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg1(REG,680)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg0_q;
        end
    end

    // c_i8_undef_1227_33(CONSTANT,6)
    assign c_i8_undef_1227_33_q = 8'b00000000;

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr(BLACKBOX,108)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_34@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1331_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V58),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V35),
        .in_feedback_almost_empty_in_34(in_feedback_almost_empty_in_34),
        .in_feedback_data_in_34(in_feedback_data_in_34),
        .in_feedback_empty_in_34(in_feedback_empty_in_34),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V12),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_feedback_stall_out_34),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg0(REG,682)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg1(REG,681)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg0(REG,508)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg1(REG,509)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg2(REG,510)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg0(REG,689)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg1(REG,690)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr(BLACKBOX,109)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1345_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V57),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V34),
        .in_feedback_almost_empty_in_32(in_feedback_almost_empty_in_32),
        .in_feedback_data_in_32(in_feedback_data_in_32),
        .in_feedback_empty_in_32(in_feedback_empty_in_32),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V11),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg0(REG,692)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg1(REG,691)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg0(REG,505)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg1(REG,506)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg2(REG,507)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg0(REG,699)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg1(REG,700)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr(BLACKBOX,110)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1352_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V56),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V33),
        .in_feedback_almost_empty_in_31(in_feedback_almost_empty_in_31),
        .in_feedback_data_in_31(in_feedback_data_in_31),
        .in_feedback_empty_in_31(in_feedback_empty_in_31),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V10),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg0(REG,702)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg1(REG,701)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg0(REG,502)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg1(REG,503)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg2(REG,504)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg0(REG,709)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg1(REG,710)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr(BLACKBOX,111)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1359_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V55),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V32),
        .in_feedback_almost_empty_in_30(in_feedback_almost_empty_in_30),
        .in_feedback_data_in_30(in_feedback_data_in_30),
        .in_feedback_empty_in_30(in_feedback_empty_in_30),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V9),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg0(REG,712)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg1(REG,711)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg0(REG,499)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg1(REG,500)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg2(REG,501)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg0(REG,719)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg1(REG,720)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10(BLACKBOX,112)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1366_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V54),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V31),
        .in_feedback_almost_empty_in_29(in_feedback_almost_empty_in_29),
        .in_feedback_data_in_29(in_feedback_data_in_29),
        .in_feedback_empty_in_29(in_feedback_empty_in_29),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V8),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg0(REG,722)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg1(REG,721)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg0(REG,496)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg1(REG,497)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg2(REG,498)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg0(REG,729)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg1(REG,730)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11(BLACKBOX,113)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1373_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V53),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V30),
        .in_feedback_almost_empty_in_28(in_feedback_almost_empty_in_28),
        .in_feedback_data_in_28(in_feedback_data_in_28),
        .in_feedback_empty_in_28(in_feedback_empty_in_28),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V7),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg0(REG,732)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg1(REG,731)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg0(REG,493)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg1(REG,494)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg2(REG,495)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg0(REG,739)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg1(REG,740)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12(BLACKBOX,114)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1380_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V52),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V29),
        .in_feedback_almost_empty_in_27(in_feedback_almost_empty_in_27),
        .in_feedback_data_in_27(in_feedback_data_in_27),
        .in_feedback_empty_in_27(in_feedback_empty_in_27),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V6),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg0(REG,742)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg1(REG,741)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg0(REG,490)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg1(REG,491)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg2(REG,492)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg0(REG,749)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg1(REG,750)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13(BLACKBOX,115)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1387_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V51),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V28),
        .in_feedback_almost_empty_in_26(in_feedback_almost_empty_in_26),
        .in_feedback_data_in_26(in_feedback_data_in_26),
        .in_feedback_empty_in_26(in_feedback_empty_in_26),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V5),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg0(REG,752)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg1(REG,751)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg0(REG,487)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg1(REG,488)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg2(REG,489)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg0(REG,759)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg1(REG,760)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14(BLACKBOX,116)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1394_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V50),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V27),
        .in_feedback_almost_empty_in_25(in_feedback_almost_empty_in_25),
        .in_feedback_data_in_25(in_feedback_data_in_25),
        .in_feedback_empty_in_25(in_feedback_empty_in_25),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V4),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg0(REG,762)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg1(REG,761)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg0(REG,484)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg1(REG,485)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg2(REG,486)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg0(REG,769)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg1(REG,770)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15(BLACKBOX,117)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1401_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V49),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V26),
        .in_feedback_almost_empty_in_24(in_feedback_almost_empty_in_24),
        .in_feedback_data_in_24(in_feedback_data_in_24),
        .in_feedback_empty_in_24(in_feedback_empty_in_24),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V3),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg0(REG,772)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg1(REG,771)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg0(REG,481)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg1(REG,482)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg2(REG,483)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg0(REG,779)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg1(REG,780)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr(BLACKBOX,118)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_33@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i8_v0000optimisedid_1338_0gr thei_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V48),
        .in_data_in(c_i8_undef_1227_33_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V25),
        .in_feedback_almost_empty_in_33(in_feedback_almost_empty_in_33),
        .in_feedback_data_in_33(in_feedback_data_in_33),
        .in_feedback_empty_in_33(in_feedback_empty_in_33),
        .in_stall_in(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V2),
        .out_almost_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_feedback_stall_out_33),
        .out_stall_out(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg0(REG,782)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg1(REG,781)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg0_q;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg0(REG,861)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg1(REG,862)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg1_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg0_q;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo(STALLFIFO,204)
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_reg1_q;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_valid_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_valid[0];
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall[0];
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid[0] = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_stall[0] = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_stall_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty[0] = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty[0] = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(35),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo (
        .i_valid(redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_valid_bitsignaltemp),
        .i_stall(redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .o_valid(redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_bitsignaltemp),
        .o_stall(redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_stall_bitsignaltemp),
        .o_data(redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data),
        .o_empty(redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg0(REG,870)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg0_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg1(REG,869)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg1_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg0(REG,478)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg1(REG,479)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg2(REG,480)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg0(REG,579)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg1(REG,580)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21(BLACKBOX,98)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1443_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V68),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V45),
        .in_feedback_almost_empty_in_17(in_feedback_almost_empty_in_17),
        .in_feedback_data_in_17(in_feedback_data_in_17),
        .in_feedback_empty_in_17(in_feedback_empty_in_17),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V22),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg0(REG,582)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg1(REG,581)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg0(REG,596)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg1(REG,595)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg0(REG,606)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg1(REG,605)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg0(REG,616)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg1(REG,615)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg0(REG,626)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg1(REG,625)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg0(REG,636)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg1(REG,635)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg0(REG,646)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg1(REG,645)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg0(REG,656)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg1(REG,655)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg0(REG,666)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg1(REG,665)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg0(REG,676)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg1(REG,675)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg0(REG,686)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg1(REG,685)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg0(REG,696)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg1(REG,695)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg0(REG,706)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg1(REG,705)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg0(REG,716)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg1(REG,715)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg0(REG,726)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg1(REG,725)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg0(REG,736)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg1(REG,735)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg0(REG,746)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg1(REG,745)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg0(REG,756)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg1(REG,755)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg0(REG,766)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg1(REG,765)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg0(REG,776)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg1(REG,775)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg0(REG,786)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg1(REG,785)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg0_q;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg0(REG,868)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg0_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg1(REG,867)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg1_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg0(REG,586)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg1(REG,585)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg0_q;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg0(REG,866)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg0_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg1(REG,865)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg1_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg0_q;
        end
    end

    // bubble_join_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo(BITJOIN,284)
    assign bubble_join_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_q = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_data_reg1_q;

    // bubble_select_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo(BITSELECT,285)
    assign bubble_select_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_b = bubble_join_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_q[0:0];

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg0(REG,880)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg0_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg1(REG,879)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg1_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg0_q;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg0(REG,878)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg0_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg1(REG,877)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg1_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg0_q;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg0(REG,890)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg0_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg1(REG,889)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg1_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg0(REG,572)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg1(REG,571)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg0(REG,624)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg1(REG,623)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25(BITJOIN,225)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_q = i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25(BITSELECT,226)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg0(REG,614)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg1(REG,613)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24(BITJOIN,222)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_q = i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24(BITSELECT,223)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg0(REG,604)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg1(REG,603)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23(BITJOIN,219)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_q = i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23(BITSELECT,220)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg0(REG,594)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg1(REG,593)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22(BITJOIN,216)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_q = i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22(BITSELECT,217)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg0(REG,584)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg1(REG,583)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21(BITJOIN,213)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_q = i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21(BITSELECT,214)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg0(REG,674)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg1(REG,673)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20(BITJOIN,240)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_q = i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20(BITSELECT,241)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg0(REG,664)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg1(REG,663)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19(BITJOIN,237)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_q = i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19(BITSELECT,238)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg0(REG,654)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg1(REG,653)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18(BITJOIN,234)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_q = i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18(BITSELECT,235)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg0(REG,644)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg1(REG,643)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17(BITJOIN,231)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_q = i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17(BITSELECT,232)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_q[31:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg0(REG,634)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg1(REG,633)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16(BITJOIN,228)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_q = i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16(BITSELECT,229)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_q[31:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg0(REG,774)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg1(REG,773)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15(BITJOIN,270)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_q = i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15(BITSELECT,271)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg0(REG,764)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg1(REG,763)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14(BITJOIN,267)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_q = i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14(BITSELECT,268)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg0(REG,754)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg1(REG,753)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13(BITJOIN,264)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_q = i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13(BITSELECT,265)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg0(REG,744)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg1(REG,743)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12(BITJOIN,261)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_q = i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12(BITSELECT,262)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg0(REG,734)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg1(REG,733)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11(BITJOIN,258)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_q = i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11(BITSELECT,259)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg0(REG,724)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg1(REG,723)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10(BITJOIN,255)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_q = i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10(BITSELECT,256)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg0(REG,714)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg1(REG,713)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr(BITJOIN,252)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_q = i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr(BITSELECT,253)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg0(REG,704)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg1(REG,703)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr(BITJOIN,249)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_q = i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr(BITSELECT,250)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg0(REG,694)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg1(REG,693)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr(BITJOIN,246)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_q = i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr(BITSELECT,247)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg0(REG,784)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg1(REG,783)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr(BITJOIN,273)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_q = i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr(BITSELECT,274)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_q[7:0];

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg0(REG,684)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg1(REG,683)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr(BITJOIN,243)
    assign bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_q = i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr(BITSELECT,244)
    assign bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_b = bubble_join_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_q[7:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg0(REG,554)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg1(REG,553)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg1_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg2(REG,552)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg2_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg3(REG,551)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg3_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg4(REG,550)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg4_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg5(REG,549)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg5_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg6(REG,548)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg6_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg5_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg0(REG,811)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg0_q <= merged_in_SE_sel_for_coalesced_delay_0_backStall;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg1(REG,812)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x(BLACKBOX,195)@49
    // in in_i_stall@20000000
    // out out_almost_empty_out@81
    // out out_empty_out@81
    // out out_o_stall@20000000
    // out out_o_valid@81
    // out out_c1_exit199_0_tpl@81
    // out out_c1_exit199_1_tpl@81
    // out out_c1_exit199_2_tpl@81
    // out out_c1_exit199_3_tpl@81
    // out out_c1_exit199_4_tpl@81
    // out out_c1_exit199_5_tpl@81
    // out out_c1_exit199_6_tpl@81
    // out out_c1_exit199_7_tpl@81
    // out out_c1_exit199_8_tpl@81
    // out out_c1_exit199_9_tpl@81
    // out out_c1_exit199_10_tpl@81
    // out out_c1_exit199_11_tpl@81
    // out out_c1_exit199_12_tpl@81
    // out out_c1_exit199_13_tpl@81
    // out out_c1_exit199_14_tpl@81
    // out out_c1_exit199_15_tpl@81
    // out out_c1_exit199_16_tpl@81
    // out out_c1_exit199_17_tpl@81
    // out out_c1_exit199_18_tpl@81
    // out out_c1_exit199_19_tpl@81
    // out out_c1_exit199_20_tpl@81
    // out out_c1_exit199_21_tpl@81
    DijkstraOptimisedID_i_sfc_s_c1_in_for_bo0000aoptimisedid_1227_28 thei_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V4),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V2),
        .in_i_stall(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0_sync_valid_reg6_q),
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
        .in_c1_eni22_0_tpl(GND_q),
        .in_c1_eni22_1_tpl(bubble_select_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_b),
        .in_c1_eni22_2_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_b),
        .in_c1_eni22_3_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_b),
        .in_c1_eni22_4_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_b),
        .in_c1_eni22_5_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_b),
        .in_c1_eni22_6_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_b),
        .in_c1_eni22_7_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_b),
        .in_c1_eni22_8_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_b),
        .in_c1_eni22_9_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_b),
        .in_c1_eni22_10_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_b),
        .in_c1_eni22_11_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_b),
        .in_c1_eni22_12_tpl(bubble_select_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_b),
        .in_c1_eni22_13_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_b),
        .in_c1_eni22_14_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_b),
        .in_c1_eni22_15_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_b),
        .in_c1_eni22_16_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_b),
        .in_c1_eni22_17_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_b),
        .in_c1_eni22_18_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_b),
        .in_c1_eni22_19_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_b),
        .in_c1_eni22_20_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_b),
        .in_c1_eni22_21_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_b),
        .in_c1_eni22_22_tpl(bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_b),
        .out_almost_empty_out(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid),
        .out_c1_exit199_0_tpl(),
        .out_c1_exit199_1_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl),
        .out_c1_exit199_2_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl),
        .out_c1_exit199_3_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl),
        .out_c1_exit199_4_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl),
        .out_c1_exit199_5_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl),
        .out_c1_exit199_6_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl),
        .out_c1_exit199_7_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl),
        .out_c1_exit199_8_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl),
        .out_c1_exit199_9_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl),
        .out_c1_exit199_10_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl),
        .out_c1_exit199_11_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl),
        .out_c1_exit199_12_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl),
        .out_c1_exit199_13_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl),
        .out_c1_exit199_14_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl),
        .out_c1_exit199_15_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl),
        .out_c1_exit199_16_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl),
        .out_c1_exit199_17_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl),
        .out_c1_exit199_18_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl),
        .out_c1_exit199_19_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl),
        .out_c1_exit199_20_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl),
        .out_c1_exit199_21_tpl(i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg0(REG,814)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg1(REG,813)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg0_q;
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,202)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_b};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,891)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= merged_in_SE_sel_for_coalesced_delay_0_backStall;
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,892)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= coalesced_delay_0_fifo_i_stall_reg0_q;
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,207)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V1;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V24;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V47;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(67),
        .WIDTH(2),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,900)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= coalesced_delay_0_fifo_o_almost_empty;
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,899)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= coalesced_delay_0_fifo_o_almost_empty_reg0_q;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg0(REG,888)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg0_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg1(REG,887)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg1_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg0(REG,576)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg1(REG,575)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg0(REG,816)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg1(REG,815)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg0_q;
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,898)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= coalesced_delay_0_fifo_o_empty;
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,897)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= coalesced_delay_0_fifo_o_empty_reg0_q;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_reg0(REG,884)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_reg0_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_reg1(REG,883)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_reg1_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out_reg0(REG,578)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out_reg1(REG,577)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid_reg0(REG,818)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid_reg1(REG,817)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_valid_reg0_q;
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,894)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= coalesced_delay_0_fifo_o_valid;
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,893)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= coalesced_delay_0_fifo_o_valid_reg0_q;
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0(STALLENABLE,476)
    // Sync
    assign merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall = in_stall_in;
    assign merged_in_SE_sel_for_coalesced_delay_0_can_fast_read = ~ ((coalesced_delay_0_fifo_o_almost_empty_reg1_q | i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out_reg1_q | redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_can_slow_read = ~ ((coalesced_delay_0_fifo_o_empty_reg1_q | i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out_reg1_q | redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_backStall = ~ (merged_in_SE_sel_for_coalesced_delay_0_forced_read);
    assign merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result = merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    assign merged_in_SE_sel_for_coalesced_delay_0_V0 = merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    assign merged_in_SE_sel_for_coalesced_delay_0_V1 = $unsigned(1'b0);
    assign merged_in_SE_sel_for_coalesced_delay_0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result[0];
    assign merged_in_SE_sel_for_coalesced_delay_0_forced_read[0] = forced_read_bitsignaltemp_dup_name_0;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_sel_for_coalesced_delay_0 (
        .can_fast_read(can_fast_read_bitsignaltemp_dup_name_0),
        .can_slow_read(can_slow_read_bitsignaltemp_dup_name_0),
        .no_space_for_result(no_space_for_result_bitsignaltemp_dup_name_0),
        .forced_read(forced_read_bitsignaltemp_dup_name_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg0(REG,545)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg0_q <= merged_in_SE_sel_for_coalesced_delay_0_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg1(REG,546)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg2(REG,547)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg0(REG,569)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg1(REG,570)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg0_q;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg0(REG,876)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg0_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg1(REG,875)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg1_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg0_q;
        end
    end

    // bubble_join_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo(BITJOIN,287)
    assign bubble_join_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_q = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data_reg1_q;

    // bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo(BITSELECT,288)
    assign bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_b = bubble_join_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_q[0:0];

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26(BLACKBOX,97)@64
    // in in_stall_in@20000000
    // out out_almost_empty_out@81
    // out out_data_out@81
    // out out_empty_out@81
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@81
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1478_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V5),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_b),
        .in_empty_in(merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V3),
        .in_feedback_almost_empty_in_23(in_feedback_almost_empty_in_23),
        .in_feedback_data_in_23(in_feedback_data_in_23),
        .in_feedback_empty_in_23(in_feedback_empty_in_23),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V1),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_empty_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg0(REG,881)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg0_q <= merged_in_SE_sel_for_coalesced_delay_0_backStall;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg1(REG,882)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg1_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg0_q;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo(STALLFIFO,206)
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_valid = merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V0;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_reg1_q;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_data = bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_b;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_empty = merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V2;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_almost_empty = merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V4;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_valid_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_valid[0];
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall[0];
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid[0] = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_stall[0] = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_stall_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty[0] = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty[0] = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(35),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo (
        .i_valid(redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_valid_bitsignaltemp),
        .i_stall(redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_b),
        .o_valid(redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_valid_bitsignaltemp),
        .o_stall(redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_stall_bitsignaltemp),
        .o_data(redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data),
        .o_empty(redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg0(REG,874)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg0_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg1(REG,873)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg1_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo(STALLENABLE,477)
    // Desync
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_temp_back_stall = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_stall | i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_stall_out;
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_backStall = merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_temp_back_stall;
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V0 = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V2 = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_reg1_q;
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V4 = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_reg1_q;
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V1 = merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V0;
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V3 = merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V2;
    assign merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V5 = merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_V4;

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg0(REG,871)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg0_q <= merged_in_SE_bubble_select_redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_backStall;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg1(REG,872)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg1_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg0(REG,561)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg1(REG,560)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg1_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg2(REG,559)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg2_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg3(REG,558)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg3_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg4(REG,557)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg4_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg5(REG,556)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg5_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg6(REG,555)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg6_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg5_q;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo(STALLFIFO,205)
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_valid = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1_sync_valid_reg6_q;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_reg1_q;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_data = bubble_select_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_b;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_empty = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V3;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_almost_empty = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V5;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_valid_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_valid[0];
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall[0];
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid[0] = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall[0] = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty[0] = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty[0] = redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(33),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(9),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo (
        .i_valid(redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_valid_bitsignaltemp),
        .i_stall(redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_b),
        .o_valid(redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_valid_bitsignaltemp),
        .o_stall(redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_bitsignaltemp),
        .o_data(redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_data),
        .o_empty(redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg0(REG,544)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg0_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall;
        end
    end

    // redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg1(REG,543)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg1_q <= redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg0(REG,542)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg1(REG,541)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out_reg0(REG,598)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out_reg1(REG,597)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out_reg0(REG,608)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out_reg1(REG,607)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out_reg0(REG,618)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out_reg1(REG,617)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out_reg0(REG,628)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out_reg1(REG,627)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out_reg0(REG,638)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out_reg1(REG,637)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out_reg0(REG,648)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out_reg1(REG,647)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out_reg0(REG,658)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out_reg1(REG,657)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out_reg0(REG,668)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out_reg1(REG,667)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out_reg0(REG,678)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out_reg1(REG,677)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out_reg0(REG,688)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out_reg1(REG,687)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out_reg0(REG,698)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out_reg1(REG,697)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out_reg0(REG,708)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out_reg1(REG,707)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out_reg0(REG,718)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out_reg1(REG,717)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out_reg0(REG,728)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out_reg1(REG,727)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out_reg0(REG,738)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out_reg1(REG,737)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out_reg0(REG,748)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out_reg1(REG,747)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out_reg0(REG,758)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out_reg1(REG,757)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out_reg0(REG,768)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out_reg1(REG,767)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out_reg0(REG,778)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out_reg1(REG,777)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_valid_out_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out_reg0(REG,788)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out_reg0_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out_reg1(REG,787)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out_reg1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_valid_out_reg0_q;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_reg0(REG,864)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_reg0_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid;
        end
    end

    // redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_reg1(REG,863)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_reg1_q <= redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_valid_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out_reg0(REG,588)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out_reg1(REG,587)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_valid_out_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21(STALLENABLE,475)
    // Sync - desync
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_temp_back_stall = i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_o_stall_desync_balance_reg1_q | redist3_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_32_fifo_o_stall_desync_balance_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_can_fast_read = ~ ((i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_almost_empty_out_reg1_q | redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_almost_empty_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_almost_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_can_slow_read = ~ ((i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_empty_out_reg1_q | redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_empty_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_empty_out_reg1_q | i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_empty_out_reg1_q | i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall = ~ (merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_forced_read);
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_no_space_for_result = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_temp_back_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0 = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_forced_read;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V2 = $unsigned(1'b0);
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V4 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_no_space_for_result[0];
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V1 = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V0;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V3 = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V2;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V5 = merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_V4;

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg0(REG,529)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg0_q <= merged_in_SE_bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_backStall;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg1(REG,530)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg0_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg2(REG,531)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg2_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg1_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg0(REG,619)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_sync_balance_reg2_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg1(REG,620)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg0(REG,797)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg0_q <= merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_backStall;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg1(REG,798)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg1_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg0_q;
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,796)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= in_almost_empty_in;
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,795)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= stall_entry_frontAlmostEmpty_reg0_q;
        end
    end

    // stall_entry_frontEmpty_reg0(REG,794)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= in_empty_in;
        end
    end

    // stall_entry_frontEmpty_reg1(REG,793)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= stall_entry_frontEmpty_reg0_q;
        end
    end

    // stall_entry_frontValid_reg0(REG,792)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= in_valid_in;
        end
    end

    // stall_entry_frontValid_reg1(REG,791)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= stall_entry_frontValid_reg0_q;
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,473)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x(BLACKBOX,194)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@32
    // out out_empty_out@32
    // out out_o_stall@20000000
    // out out_o_valid@32
    // out out_c0_exit184_0_tpl@32
    // out out_c0_exit184_1_tpl@32
    // out out_c0_exit184_2_tpl@32
    // out out_c0_exit184_3_tpl@32
    DijkstraOptimisedID_i_sfc_s_c0_in_for_bo0000optimisedid_1227_1gr thei_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_c0_eni1178_0_tpl(GND_q),
        .in_c0_eni1178_1_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid),
        .out_c0_exit184_0_tpl(),
        .out_c0_exit184_1_tpl(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl),
        .out_c0_exit184_2_tpl(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl),
        .out_c0_exit184_3_tpl(i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg0(REG,810)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg0_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg1(REG,809)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg1_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg0(REG,808)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg0_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg1(REG,807)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg1_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg0(REG,806)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg0_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg1(REG,805)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg1_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg0_q;
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x(BITJOIN,277)
    assign bubble_join_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_q = {i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_reg1_q, i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_2_tpl_reg1_q, i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x(BITSELECT,278)
    assign bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_q[1:1];
    assign bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_q[2:2];

    // c_i32_0_1227_35(CONSTANT,4)
    assign c_i32_0_1227_35_q = 32'b00000000000000000000000000000000;

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg0(REG,800)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg0_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg1(REG,799)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg1_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg0(REG,802)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg0_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg1(REG,801)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg1_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg0(REG,804)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg0_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid;
        end
    end

    // i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg1(REG,803)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg1_q <= i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x(STALLENABLE,474)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_temp_back_stall = redist2_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_17_fifo_o_stall | coalesced_delay_0_fifo_o_stall | i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_stall_out | i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_stall_out | i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_stall_out;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0 = i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23 = i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46 = i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V24 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V47 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V2 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V25 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V48 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V3 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V26 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V49 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V4 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V27 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V50 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V28 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V51 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V6 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V29 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V52 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V7 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V30 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V53 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V8 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V31 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V54 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V9 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V32 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V55 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V10 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V33 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V56 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V11 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V34 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V57 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V12 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V35 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V58 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V13 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V36 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V59 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V14 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V37 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V60 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V15 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V38 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V61 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V16 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V39 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V62 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V17 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V40 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V63 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V18 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V41 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V64 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V19 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V42 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V65 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V20 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V43 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V66 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V21 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V44 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V67 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V22 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V45 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V23;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V68 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V46;

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25(BLACKBOX,102)@32
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_data_out@49
    // out out_empty_out@49
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@49
    DijkstraOptimisedID_i_llvm_fpga_pop_i32_0000optimisedid_1471_0gr thei_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V64),
        .in_data_in(c_i32_0_1227_35_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V41),
        .in_feedback_almost_empty_in_13(in_feedback_almost_empty_in_13),
        .in_feedback_data_in_13(in_feedback_data_in_13),
        .in_feedback_empty_in_13(in_feedback_empty_in_13),
        .in_stall_in(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_V18),
        .out_almost_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_empty_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_stall_out_13_sync(GPOUT,75)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i32_dist_i_sroa_172_2_pop13_dijkstraoptimisedid_1227_25_out_feedback_stall_out_13;

    // feedback_stall_out_14_sync(GPOUT,76)
    assign out_feedback_stall_out_14 = i_llvm_fpga_pop_i32_dist_i_sroa_155_2_pop14_dijkstraoptimisedid_1227_24_out_feedback_stall_out_14;

    // feedback_stall_out_15_sync(GPOUT,77)
    assign out_feedback_stall_out_15 = i_llvm_fpga_pop_i32_dist_i_sroa_138_2_pop15_dijkstraoptimisedid_1227_23_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,78)
    assign out_feedback_stall_out_16 = i_llvm_fpga_pop_i32_dist_i_sroa_121_2_pop16_dijkstraoptimisedid_1227_22_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,79)
    assign out_feedback_stall_out_17 = i_llvm_fpga_pop_i32_dist_i_sroa_104_2_pop17_dijkstraoptimisedid_1227_21_out_feedback_stall_out_17;

    // feedback_stall_out_18_sync(GPOUT,80)
    assign out_feedback_stall_out_18 = i_llvm_fpga_pop_i32_dist_i_sroa_87_2_pop18_dijkstraoptimisedid_1227_20_out_feedback_stall_out_18;

    // feedback_stall_out_19_sync(GPOUT,81)
    assign out_feedback_stall_out_19 = i_llvm_fpga_pop_i32_dist_i_sroa_70_2_pop19_dijkstraoptimisedid_1227_19_out_feedback_stall_out_19;

    // feedback_stall_out_20_sync(GPOUT,82)
    assign out_feedback_stall_out_20 = i_llvm_fpga_pop_i32_dist_i_sroa_53_2_pop20_dijkstraoptimisedid_1227_18_out_feedback_stall_out_20;

    // feedback_stall_out_21_sync(GPOUT,83)
    assign out_feedback_stall_out_21 = i_llvm_fpga_pop_i32_dist_i_sroa_36_2_pop21_dijkstraoptimisedid_1227_17_out_feedback_stall_out_21;

    // feedback_stall_out_22_sync(GPOUT,84)
    assign out_feedback_stall_out_22 = i_llvm_fpga_pop_i32_dist_i_sroa_19_2_pop22_dijkstraoptimisedid_1227_16_out_feedback_stall_out_22;

    // feedback_stall_out_23_sync(GPOUT,85)
    assign out_feedback_stall_out_23 = i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_feedback_stall_out_23;

    // feedback_stall_out_24_sync(GPOUT,86)
    assign out_feedback_stall_out_24 = i_llvm_fpga_pop_i8_visited_i_sroa_42_2_pop24_dijkstraoptimisedid_1227_15_out_feedback_stall_out_24;

    // feedback_stall_out_25_sync(GPOUT,87)
    assign out_feedback_stall_out_25 = i_llvm_fpga_pop_i8_visited_i_sroa_38_2_pop25_dijkstraoptimisedid_1227_14_out_feedback_stall_out_25;

    // feedback_stall_out_26_sync(GPOUT,88)
    assign out_feedback_stall_out_26 = i_llvm_fpga_pop_i8_visited_i_sroa_34_2_pop26_dijkstraoptimisedid_1227_13_out_feedback_stall_out_26;

    // feedback_stall_out_27_sync(GPOUT,89)
    assign out_feedback_stall_out_27 = i_llvm_fpga_pop_i8_visited_i_sroa_30_2_pop27_dijkstraoptimisedid_1227_12_out_feedback_stall_out_27;

    // feedback_stall_out_28_sync(GPOUT,90)
    assign out_feedback_stall_out_28 = i_llvm_fpga_pop_i8_visited_i_sroa_26_2_pop28_dijkstraoptimisedid_1227_11_out_feedback_stall_out_28;

    // feedback_stall_out_29_sync(GPOUT,91)
    assign out_feedback_stall_out_29 = i_llvm_fpga_pop_i8_visited_i_sroa_22_2_pop29_dijkstraoptimisedid_1227_10_out_feedback_stall_out_29;

    // feedback_stall_out_30_sync(GPOUT,92)
    assign out_feedback_stall_out_30 = i_llvm_fpga_pop_i8_visited_i_sroa_18_2_pop30_dijkstraoptimisedid_1227_9gr_out_feedback_stall_out_30;

    // feedback_stall_out_31_sync(GPOUT,93)
    assign out_feedback_stall_out_31 = i_llvm_fpga_pop_i8_visited_i_sroa_14_2_pop31_dijkstraoptimisedid_1227_8gr_out_feedback_stall_out_31;

    // feedback_stall_out_32_sync(GPOUT,94)
    assign out_feedback_stall_out_32 = i_llvm_fpga_pop_i8_visited_i_sroa_10_2_pop32_dijkstraoptimisedid_1227_7gr_out_feedback_stall_out_32;

    // feedback_stall_out_33_sync(GPOUT,95)
    assign out_feedback_stall_out_33 = i_llvm_fpga_pop_i8_visited_i_sroa_6_2_pop33_dijkstraoptimisedid_1227_6gr_out_feedback_stall_out_33;

    // feedback_stall_out_34_sync(GPOUT,96)
    assign out_feedback_stall_out_34 = i_llvm_fpga_pop_i8_visited_i_sroa_0_2_pop34_dijkstraoptimisedid_1227_5gr_out_feedback_stall_out_34;

    // stall_entry_frontStall_reg0(REG,789)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= merged_in_SE_stall_entry_backStall;
        end
    end

    // stall_entry_frontStall_reg1(REG,790)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= stall_entry_frontStall_reg0_q;
        end
    end

    // sync_out_240(GPOUT,191)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0(REG,568)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q <= merged_in_SE_sel_for_coalesced_delay_0_V0;
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1(REG,567)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q <= merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2(REG,566)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q <= merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3(REG,565)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q <= merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4(REG,564)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q <= merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5(REG,563)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q <= merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6(REG,562)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q <= merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg0(REG,574)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg0_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out;
        end
    end

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg1(REG,573)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26(BITJOIN,209)
    assign bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_q = i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26(BITSELECT,210)
    assign bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_b = bubble_join_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_q[31:0];

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg0(REG,860)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg1(REG,859)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg0(REG,858)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg1(REG,857)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg0(REG,856)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg1(REG,855)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg0(REG,854)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg1(REG,853)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg0(REG,852)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg1(REG,851)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg0(REG,850)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg1(REG,849)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg0(REG,848)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg1(REG,847)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg0(REG,846)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg1(REG,845)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg0(REG,844)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg1(REG,843)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg0(REG,842)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg1(REG,841)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg0(REG,840)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg1(REG,839)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg0(REG,838)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg1(REG,837)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg0(REG,836)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg1(REG,835)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg0(REG,834)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg1(REG,833)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg0(REG,832)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg1(REG,831)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg0(REG,830)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg1(REG,829)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg0(REG,828)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg1(REG,827)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg0(REG,826)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg1(REG,825)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg0(REG,824)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg1(REG,823)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg0(REG,822)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg1(REG,821)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg0(REG,820)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg0_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl;
        end
    end

    // i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg1(REG,819)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg1_q <= i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg0_q;
        end
    end

    // bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x(BITJOIN,280)
    assign bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q = {i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_21_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_20_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_19_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_18_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_17_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_16_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_15_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_14_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_13_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_12_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_11_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_10_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_9_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_8_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_7_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_6_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_5_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_4_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_3_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_2_tpl_reg1_q, i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_out_c1_exit199_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x(BITSELECT,281)
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_b = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[7:0];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_c = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[15:8];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_d = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[23:16];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_e = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[31:24];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_f = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[39:32];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_g = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[47:40];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_h = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[55:48];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_i = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[63:56];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_j = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[71:64];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_k = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[79:72];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_l = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[87:80];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_m = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[119:88];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_n = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[151:120];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_o = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[183:152];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_p = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[215:184];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[247:216];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_r = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[279:248];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_s = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[311:280];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_t = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[343:312];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_u = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[375:344];
    assign bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_v = bubble_join_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q[407:376];

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg0(REG,886)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg0_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data;
        end
    end

    // redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg1(REG,885)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg1_q <= redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg0_q;
        end
    end

    // bubble_join_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo(BITJOIN,290)
    assign bubble_join_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_q = redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_o_data_reg1_q;

    // bubble_select_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo(BITSELECT,291)
    assign bubble_select_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_b = bubble_join_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_q[0:0];

    // coalesced_delay_0_fifo_o_data_reg0(REG,896)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= coalesced_delay_0_fifo_o_data;
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,895)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= coalesced_delay_0_fifo_o_data_reg0_q;
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,293)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,294)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[1:0];

    // sel_for_coalesced_delay_0(BITSELECT,203)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[0:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[1:1];

    // sync_out_241(GPOUT,192)@81
    assign out_almost_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V2;
    assign out_c0_exe1185 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2186 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe3187 = bubble_select_redist4_i_sfc_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1227_1gr_aunroll_x_out_c0_exit184_3_tpl_49_fifo_b;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_b;
    assign out_c1_exe10 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_k;
    assign out_c1_exe11 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_l;
    assign out_c1_exe12 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_m;
    assign out_c1_exe13 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_n;
    assign out_c1_exe14 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_o;
    assign out_c1_exe15 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_p;
    assign out_c1_exe16 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_q;
    assign out_c1_exe17 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_r;
    assign out_c1_exe18 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_s;
    assign out_c1_exe19 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_t;
    assign out_c1_exe2 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_c;
    assign out_c1_exe20 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_u;
    assign out_c1_exe21 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_v;
    assign out_c1_exe3 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_d;
    assign out_c1_exe4 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_e;
    assign out_c1_exe5 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_f;
    assign out_c1_exe6 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_g;
    assign out_c1_exe7 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_h;
    assign out_c1_exe8 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_i;
    assign out_c1_exe9 = bubble_select_i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28_aunroll_x_j;
    assign out_dist_i_sroa_0_0_pop23 = bubble_select_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop23_dijkstraoptimisedid_1227_26_b;
    assign out_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V1;
    assign out_valid_out = merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,901)
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
