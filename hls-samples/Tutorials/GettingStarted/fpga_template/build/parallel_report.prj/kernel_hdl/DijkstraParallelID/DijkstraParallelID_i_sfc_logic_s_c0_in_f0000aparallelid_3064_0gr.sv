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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3064_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c0_in_f0000aparallelid_3064_0gr (
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_visited,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [31:0] out_c0_exi9_1_tpl,
    output wire [63:0] out_c0_exi9_2_tpl,
    output wire [0:0] out_c0_exi9_3_tpl,
    output wire [63:0] out_c0_exi9_4_tpl,
    output wire [0:0] out_c0_exi9_5_tpl,
    output wire [0:0] out_c0_exi9_6_tpl,
    output wire [0:0] out_c0_exi9_7_tpl,
    output wire [0:0] out_c0_exi9_8_tpl,
    output wire [0:0] out_c0_exi9_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [0:0] in_c0_eni4_1_tpl,
    input wire [0:0] in_c0_eni4_2_tpl,
    input wire [0:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] c_i5_0_3067_60_q;
    wire [4:0] c_i5_1_3067_63_q;
    wire [4:0] c_i5_9_3067_61_q;
    wire [1:0] i_arrayidx8_i_dijkstraparallelid_3067_22_vt_const_1_q;
    wire [63:0] i_arrayidx8_i_dijkstraparallelid_3067_22_vt_join_q;
    wire [61:0] i_arrayidx8_i_dijkstraparallelid_3067_22_vt_select_63_b;
    wire [0:0] i_dijkstraparallelid_b3_current_iter_isspec_dijkstraparallelid_3067_5gr_q;
    wire [0:0] i_dijkstraparallelid_b3_current_thread_isreal_dijkstraparallelid_3067_6gr_q;
    wire [0:0] i_dijkstraparallelid_b3_fullexited_dijkstraparallelid_3067_7gr_q;
    wire [0:0] i_dijkstraparallelid_b3_lastiter_dijkstraparallelid_3067_13_q;
    wire [0:0] i_dijkstraparallelid_b3_latchcond_dijkstraparallelid_3067_14_q;
    wire [0:0] i_dijkstraparallelid_b3_next_iter_isreal_dijkstraparallelid_3067_9gr_q;
    wire [0:0] i_dijkstraparallelid_b3_next_iter_isrealreal_dijkstraparallelid_3067_10_q;
    wire [0:0] i_dijkstraparallelid_b3_next_iter_isspec_dijkstraparallelid_3067_12_q;
    wire [0:0] i_dijkstraparallelid_b3_realexit_dijkstraparallelid_3067_29_q;
    wire [5:0] i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_a;
    wire [5:0] i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_b;
    logic [5:0] i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_o;
    wire [5:0] i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_q;
    wire [0:0] i_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_not_dijkstraparallelid_3067_30_q;
    wire [58:0] i_idxprom_i_dijkstraparallelid_3067_17_vt_const_63_q;
    wire [63:0] i_idxprom_i_dijkstraparallelid_3067_17_vt_join_q;
    wire [4:0] i_idxprom_i_dijkstraparallelid_3067_17_vt_select_4_b;
    wire [25:0] i_inc_i_zext_dijkstraparallelid_3067_24_vt_const_31_q;
    wire [31:0] i_inc_i_zext_dijkstraparallelid_3067_24_vt_join_q;
    wire [5:0] i_inc_i_zext_dijkstraparallelid_3067_24_vt_select_5_b;
    wire [0:0] i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_a;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_b;
    logic [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_o;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33_out_feedback_valid_out_1;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer200_dijkstraparallelid_3067_18_out_buffer_out;
    wire [26:0] i_unnamed_dijkstraparallelid_3067_16_vt_const_31_q;
    wire [31:0] i_unnamed_dijkstraparallelid_3067_16_vt_join_q;
    wire [4:0] i_unnamed_dijkstraparallelid_3067_16_vt_select_4_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_sel_x_b;
    wire [61:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_narrow_x_b;
    wire [63:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_a;
    wire [64:0] i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_b;
    logic [64:0] i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_o;
    wire [64:0] i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_q;
    wire [63:0] i_arrayidx_i_dijkstraparallelid_3126_0gr_trunc_sel_x_b;
    wire [63:0] i_idxprom_i_dijkstraparallelid_3067_17_sel_x_b;
    wire [31:0] i_inc_i_zext_dijkstraparallelid_3067_24_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x_q;
    wire [2:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_c_i3_0_3158_4gr_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_element_extension_3158_3_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_c_i7_0_3104_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_element_extension_3104_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_adapt_scalar_trunc_3104_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_element_extension_3207_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_adapt_scalar_trunc_3207_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_element_extension_3219_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_adapt_scalar_trunc_3219_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_element_extension_3195_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_adapt_scalar_trunc_3195_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_element_extension_3177_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_adapt_scalar_trunc_3177_4_sel_x_b;
    wire [31:0] i_unnamed_dijkstraparallelid_3067_16_sel_x_b;
    wire [4:0] i_unnamed_dijkstraparallelid_3067_25_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    wire [61:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [0:0] redist0_sync_together_3067_71_aunroll_x_in_c0_eni4_3_tpl_1_q;
    reg [0:0] redist1_sync_together_3067_71_aunroll_x_in_c0_eni4_4_tpl_1_q;
    reg [0:0] redist2_sync_together_3067_71_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist2_sync_together_3067_71_aunroll_x_in_i_valid_1(DELAY,168)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_3067_71_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_c_i3_0_3158_4gr_x(CONSTANT,82)
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_c_i3_0_3158_4gr_x_q = 3'b000;

    // c_i5_9_3067_61(CONSTANT,23)
    assign c_i5_9_3067_61_q = 5'b01001;

    // c_i5_1_3067_63(CONSTANT,22)
    assign c_i5_1_3067_63_q = 5'b11111;

    // i_fpga_indvars_iv_next_dijkstraparallelid_3067_34(ADD,36)@1
    assign i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_q};
    assign i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_b = {1'b0, c_i5_1_3067_63_q};
    assign i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_o = $unsigned(i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_a) + $unsigned(i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_b);
    assign i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_q = i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_sel_x(BITSELECT,65)@1
    assign bgTrunc_i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_sel_x_b = i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_element_extension_3195_2_x(BITJOIN,111)@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_element_extension_3195_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_c_i3_0_3158_4gr_x_q, bgTrunc_i_fpga_indvars_iv_next_dijkstraparallelid_3067_34_sel_x_b};

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x(FIFODELAY,112)@1 + 107
    // out o_data@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_stall = ~ (redist2_sync_together_3067_71_aunroll_x_in_i_valid_1_q & VCC_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_valid = redist2_sync_together_3067_71_aunroll_x_in_i_valid_1_q & VCC_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_element_extension_3195_2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(107),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(107),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_element_extension_3195_2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_adapt_scalar_trunc_3195_4_sel_x(BITSELECT,114)@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_adapt_scalar_trunc_3195_4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x(MUX,89)@1
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_s = redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv_push6_dijkstraparallelid_3195_0gr_adapt_scalar_trunc_3195_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_q = c_i5_9_3067_61_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_q = 5'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_element_extension_3158_3_x(BITJOIN,84)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_element_extension_3158_3_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_c_i3_0_3158_4gr_x_q, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3152_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_dijkstraparallelid_3067_26_mux_x_q};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x(CHOOSEBITS,80)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_element_extension_3158_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x_a[4:4];

    // i_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_not_dijkstraparallelid_3067_30(LOGICAL,37)@1
    assign i_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_not_dijkstraparallelid_3067_30_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33(BLACKBOX,50)@1
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    DijkstraParallelID_i_llvm_fpga_push_i1_n0000aparallelid_3185_0gr thei_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33 (
        .in_data_in(i_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_not_dijkstraparallelid_3067_30_q),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together_3067_71_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr(BLACKBOX,46)@0
    // in in_stall_in@20000000
    DijkstraParallelID_i_llvm_fpga_dummy_thr0000aparallelid_3072_0gr thei_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out_1(DELAY,170)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out_1_q <= i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out;
        end
    end

    // i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr(BLACKBOX,47)@0
    // in in_stall_in@20000000
    DijkstraParallelID_i_llvm_fpga_forked_di0000aparallelid_3080_0gr thei_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1(DELAY,169)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr(BLACKBOX,49)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    DijkstraParallelID_i_llvm_fpga_pipeline_0000aparallelid_3095_0gr thei_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr (
        .in_data_in(redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q),
        .in_dummy_in(redist4_i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out_1_q),
        .in_forked_in(redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33_out_feedback_out_1),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_dijkstraparallelid_3067_33_out_feedback_valid_out_1),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together_3067_71_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,63)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,66)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,67)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,68)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,125)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= in_i_valid;
        end
    end

    // redist1_sync_together_3067_71_aunroll_x_in_c0_eni4_4_tpl_1(DELAY,167)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_3067_71_aunroll_x_in_c0_eni4_4_tpl_1_q <= in_c0_eni4_4_tpl;
        end
    end

    // i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_c_i7_0_3104_3gr_x(CONSTANT,92)
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_c_i7_0_3104_3gr_x_q = 7'b0000000;

    // i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_element_extension_3219_2_x(BITJOIN,105)@1
    assign i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_element_extension_3219_2_x_q = {i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_c_i7_0_3104_3gr_x_q, i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_q};

    // valid_fanout_reg17(REG,142)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= in_i_valid;
        end
    end

    // valid_fanout_reg16(REG,141)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x(FIFODELAY,106)@1 + 107
    // out o_data@1
    assign i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_stall = ~ (valid_fanout_reg17_q & VCC_q);
    assign i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_valid = valid_fanout_reg16_q & VCC_q;
    assign i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_data = i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_element_extension_3219_2_x_q;
    assign i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(107),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(107),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_element_extension_3219_2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_adapt_scalar_trunc_3219_4_sel_x(BITSELECT,108)@1
    assign i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_adapt_scalar_trunc_3219_4_sel_x_b = i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x(MUX,88)@1
    assign i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_s = redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_q = i_llvm_fpga_push_i1_notcmp206213_push10_dijkstraparallelid_3219_0gr_adapt_scalar_trunc_3219_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_q = redist1_sync_together_3067_71_aunroll_x_in_c0_eni4_4_tpl_1_q;
            default : i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_q = 1'b0;
        endcase
    end

    // redist0_sync_together_3067_71_aunroll_x_in_c0_eni4_3_tpl_1(DELAY,166)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_3067_71_aunroll_x_in_c0_eni4_3_tpl_1_q <= in_c0_eni4_3_tpl;
        end
    end

    // i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_element_extension_3207_2_x(BITJOIN,99)@1
    assign i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_element_extension_3207_2_x_q = {i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_c_i7_0_3104_3gr_x_q, i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_q};

    // valid_fanout_reg14(REG,139)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= in_i_valid;
        end
    end

    // valid_fanout_reg13(REG,138)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x(FIFODELAY,100)@1 + 107
    // out o_data@1
    assign i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_stall = ~ (valid_fanout_reg14_q & VCC_q);
    assign i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_valid = valid_fanout_reg13_q & VCC_q;
    assign i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_data = i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_element_extension_3207_2_x_q;
    assign i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(107),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(107),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_element_extension_3207_2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_adapt_scalar_trunc_3207_4_sel_x(BITSELECT,102)@1
    assign i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_adapt_scalar_trunc_3207_4_sel_x_b = i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x(MUX,87)@1
    assign i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_s = redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_q = i_llvm_fpga_push_i1_exitcond160212_push9_dijkstraparallelid_3207_0gr_adapt_scalar_trunc_3207_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_q = redist0_sync_together_3067_71_aunroll_x_in_c0_eni4_3_tpl_1_q;
            default : i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_q = 1'b0;
        endcase
    end

    // i_dijkstraparallelid_b3_current_thread_isreal_dijkstraparallelid_3067_6gr(LOGICAL,28)@1
    assign i_dijkstraparallelid_b3_current_thread_isreal_dijkstraparallelid_3067_6gr_q = redist4_i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out_1_q ^ VCC_q;

    // i_dijkstraparallelid_b3_next_iter_isreal_dijkstraparallelid_3067_9gr(LOGICAL,32)@1
    assign i_dijkstraparallelid_b3_next_iter_isreal_dijkstraparallelid_3067_9gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_q & i_llvm_fpga_pipeline_keep_going_dijkstraparallelid_3067_8gr_out_data_out;

    // i_dijkstraparallelid_b3_next_iter_isspec_dijkstraparallelid_3067_12(LOGICAL,34)@1
    assign i_dijkstraparallelid_b3_next_iter_isspec_dijkstraparallelid_3067_12_q = i_dijkstraparallelid_b3_next_iter_isreal_dijkstraparallelid_3067_9gr_q ^ VCC_q;

    // i_dijkstraparallelid_b3_next_iter_isrealreal_dijkstraparallelid_3067_10(LOGICAL,33)@1
    assign i_dijkstraparallelid_b3_next_iter_isrealreal_dijkstraparallelid_3067_10_q = i_dijkstraparallelid_b3_next_iter_isreal_dijkstraparallelid_3067_9gr_q & i_dijkstraparallelid_b3_current_thread_isreal_dijkstraparallelid_3067_6gr_q;

    // i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_element_extension_3104_2_x(BITJOIN,93)@1
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_element_extension_3104_2_x_q = {i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_c_i7_0_3104_3gr_x_q, i_dijkstraparallelid_b3_next_iter_isrealreal_dijkstraparallelid_3067_10_q};

    // valid_fanout_reg3(REG,128)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= in_i_valid;
        end
    end

    // valid_fanout_reg2(REG,127)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x(FIFODELAY,94)@1 + 107
    // out o_data@1
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_data = i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_element_extension_3104_2_x_q;
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(107),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(107),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_element_extension_3104_2_x_q),
        .o_data(i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_adapt_scalar_trunc_3104_4_sel_x(BITSELECT,96)@1
    assign i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_adapt_scalar_trunc_3104_4_sel_x_b = i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x(MUX,86)@1
    assign i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_s = redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_q = i_llvm_fpga_push_i1_dijkstraparallelid_b3_next_iter_isreal_push_dijkstraparallelid_3104_0gr_adapt_scalar_trunc_3104_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_q = 1'b0;
        endcase
    end

    // i_dijkstraparallelid_b3_lastiter_dijkstraparallelid_3067_13(LOGICAL,30)@1
    assign i_dijkstraparallelid_b3_lastiter_dijkstraparallelid_3067_13_q = i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_q & i_dijkstraparallelid_b3_next_iter_isspec_dijkstraparallelid_3067_12_q;

    // i_dijkstraparallelid_b3_latchcond_dijkstraparallelid_3067_14(LOGICAL,31)@1
    assign i_dijkstraparallelid_b3_latchcond_dijkstraparallelid_3067_14_q = i_dijkstraparallelid_b3_lastiter_dijkstraparallelid_3067_13_q & i_dijkstraparallelid_b3_current_thread_isreal_dijkstraparallelid_3067_6gr_q;

    // i_dijkstraparallelid_b3_realexit_dijkstraparallelid_3067_29(LOGICAL,35)@1
    assign i_dijkstraparallelid_b3_realexit_dijkstraparallelid_3067_29_q = i_dijkstraparallelid_b3_latchcond_dijkstraparallelid_3067_14_q & i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_NO_NAME_x_q;

    // i_idxprom_i_dijkstraparallelid_3067_17_vt_const_63(CONSTANT,39)
    assign i_idxprom_i_dijkstraparallelid_3067_17_vt_const_63_q = 59'b00000000000000000000000000000000000000000000000000000000000;

    // i_idxprom_i_dijkstraparallelid_3067_17_sel_x(BITSELECT,78)@1
    assign i_idxprom_i_dijkstraparallelid_3067_17_sel_x_b = {32'b00000000000000000000000000000000, i_unnamed_dijkstraparallelid_3067_16_vt_join_q[31:0]};

    // i_idxprom_i_dijkstraparallelid_3067_17_vt_select_4(BITSELECT,41)@1
    assign i_idxprom_i_dijkstraparallelid_3067_17_vt_select_4_b = i_idxprom_i_dijkstraparallelid_3067_17_sel_x_b[4:0];

    // i_idxprom_i_dijkstraparallelid_3067_17_vt_join(BITJOIN,40)@1
    assign i_idxprom_i_dijkstraparallelid_3067_17_vt_join_q = {i_idxprom_i_dijkstraparallelid_3067_17_vt_const_63_q, i_idxprom_i_dijkstraparallelid_3067_17_vt_select_4_b};

    // i_arrayidx8_i_dijkstraparallelid_3140_0gr_narrow_x(BITSELECT,71)@1
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_narrow_x_b = i_idxprom_i_dijkstraparallelid_3067_17_vt_join_q[61:0];

    // i_arrayidx8_i_dijkstraparallelid_3140_0gr_shift_join_x(BITJOIN,72)@1
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_shift_join_x_q = {i_arrayidx8_i_dijkstraparallelid_3140_0gr_narrow_x_b, i_arrayidx8_i_dijkstraparallelid_3067_22_vt_const_1_q};

    // i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,164)@1
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx8_i_dijkstraparallelid_3140_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg7(REG,132)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21(BLACKBOX,51)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraParallelID_i_llvm_fpga_sync_buff0000aparallelid_3135_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21 (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_select_63(BITSELECT,54)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_join(BITJOIN,53)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_select_63_b, i_arrayidx8_i_dijkstraparallelid_3067_22_vt_const_1_q};

    // i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_lhsMSBs_select(BITSELECT,161)@1
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer187_dijkstraparallelid_3067_21_vt_join_q[63:2]);

    // i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums(ADD,162)@1
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_split_join(BITJOIN,163)@1
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_split_join_q = {i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_MSBs_sums_q, i_arrayidx8_i_dijkstraparallelid_3067_22_vt_const_1_q};

    // i_arrayidx8_i_dijkstraparallelid_3140_0gr_dupName_0_trunc_sel_x(BITSELECT,74)@1
    assign i_arrayidx8_i_dijkstraparallelid_3140_0gr_dupName_0_trunc_sel_x_b = i_arrayidx8_i_dijkstraparallelid_3140_0gr_add_x_split_join_q[63:0];

    // i_arrayidx8_i_dijkstraparallelid_3067_22_vt_select_63(BITSELECT,26)@1
    assign i_arrayidx8_i_dijkstraparallelid_3067_22_vt_select_63_b = i_arrayidx8_i_dijkstraparallelid_3140_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx8_i_dijkstraparallelid_3067_22_vt_const_1(CONSTANT,24)
    assign i_arrayidx8_i_dijkstraparallelid_3067_22_vt_const_1_q = 2'b00;

    // i_arrayidx8_i_dijkstraparallelid_3067_22_vt_join(BITJOIN,25)@1
    assign i_arrayidx8_i_dijkstraparallelid_3067_22_vt_join_q = {i_arrayidx8_i_dijkstraparallelid_3067_22_vt_select_63_b, i_arrayidx8_i_dijkstraparallelid_3067_22_vt_const_1_q};

    // valid_fanout_reg5(REG,130)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer200_dijkstraparallelid_3067_18(BLACKBOX,55)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraParallelID_i_llvm_fpga_sync_buff0000aparallelid_3121_0gr thei_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer200_dijkstraparallelid_3067_18 (
        .in_buffer_in(in_arg_visited),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer200_dijkstraparallelid_3067_18_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x(ADD,75)@1
    assign i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer200_dijkstraparallelid_3067_18_out_buffer_out};
    assign i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_b = {1'b0, i_idxprom_i_dijkstraparallelid_3067_17_vt_join_q};
    assign i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_o = $unsigned(i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_a) + $unsigned(i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_b);
    assign i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_q = i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_o[64:0];

    // i_arrayidx_i_dijkstraparallelid_3126_0gr_trunc_sel_x(BITSELECT,77)@1
    assign i_arrayidx_i_dijkstraparallelid_3126_0gr_trunc_sel_x_b = i_arrayidx_i_dijkstraparallelid_3126_0gr_add_x_q[63:0];

    // i_unnamed_dijkstraparallelid_3067_16_vt_const_31(CONSTANT,57)
    assign i_unnamed_dijkstraparallelid_3067_16_vt_const_31_q = 27'b000000000000000000000000000;

    // c_i5_0_3067_60(CONSTANT,21)
    assign c_i5_0_3067_60_q = 5'b00000;

    // i_inc_i_zext_dijkstraparallelid_3067_24_vt_const_31(CONSTANT,43)
    assign i_inc_i_zext_dijkstraparallelid_3067_24_vt_const_31_q = 26'b00000000000000000000000000;

    // i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23(ADD,48)@1
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_a = {1'b0, i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_b = {5'b00000, VCC_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_o = $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_a) + $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_b);
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_q = i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_o[5:0];

    // i_inc_i_zext_dijkstraparallelid_3067_24_sel_x(BITSELECT,79)@1
    assign i_inc_i_zext_dijkstraparallelid_3067_24_sel_x_b = {26'b00000000000000000000000000, i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraparallelid_3067_23_q[5:0]};

    // i_inc_i_zext_dijkstraparallelid_3067_24_vt_select_5(BITSELECT,45)@1
    assign i_inc_i_zext_dijkstraparallelid_3067_24_vt_select_5_b = i_inc_i_zext_dijkstraparallelid_3067_24_sel_x_b[5:0];

    // i_inc_i_zext_dijkstraparallelid_3067_24_vt_join(BITJOIN,44)@1
    assign i_inc_i_zext_dijkstraparallelid_3067_24_vt_join_q = {i_inc_i_zext_dijkstraparallelid_3067_24_vt_const_31_q, i_inc_i_zext_dijkstraparallelid_3067_24_vt_select_5_b};

    // i_unnamed_dijkstraparallelid_3067_25_sel_x(BITSELECT,122)@1
    assign i_unnamed_dijkstraparallelid_3067_25_sel_x_b = i_inc_i_zext_dijkstraparallelid_3067_24_vt_join_q[4:0];

    // i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_element_extension_3177_2_x(BITJOIN,117)@1
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_element_extension_3177_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_dijkstraparallelid_3158_0gr_c_i3_0_3158_4gr_x_q, i_unnamed_dijkstraparallelid_3067_25_sel_x_b};

    // valid_fanout_reg11(REG,136)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= in_i_valid;
        end
    end

    // valid_fanout_reg10(REG,135)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x(FIFODELAY,118)@1 + 107
    // out o_data@1
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_stall = ~ (valid_fanout_reg11_q & VCC_q);
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_valid = valid_fanout_reg10_q & VCC_q;
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_data = i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_element_extension_3177_2_x_q;
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(107),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(107),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_element_extension_3177_2_x_q),
        .o_data(i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_adapt_scalar_trunc_3177_4_sel_x(BITSELECT,120)@1
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_adapt_scalar_trunc_3177_4_sel_x_b = i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x(MUX,90)@1
    assign i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_s = redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_q = i_llvm_fpga_push_i5_i_0_i12_narrowing_push7_dijkstraparallelid_3177_0gr_adapt_scalar_trunc_3177_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_q = c_i5_0_3067_60_q;
            default : i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_q = 5'b0;
        endcase
    end

    // i_unnamed_dijkstraparallelid_3067_16_sel_x(BITSELECT,121)@1
    assign i_unnamed_dijkstraparallelid_3067_16_sel_x_b = {27'b000000000000000000000000000, i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3115_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop7_dijkstraparallelid_3067_15_mux_x_q[4:0]};

    // i_unnamed_dijkstraparallelid_3067_16_vt_select_4(BITSELECT,59)@1
    assign i_unnamed_dijkstraparallelid_3067_16_vt_select_4_b = i_unnamed_dijkstraparallelid_3067_16_sel_x_b[4:0];

    // i_unnamed_dijkstraparallelid_3067_16_vt_join(BITJOIN,58)@1
    assign i_unnamed_dijkstraparallelid_3067_16_vt_join_q = {i_unnamed_dijkstraparallelid_3067_16_vt_const_31_q, i_unnamed_dijkstraparallelid_3067_16_vt_select_4_b};

    // i_dijkstraparallelid_b3_current_iter_isspec_dijkstraparallelid_3067_5gr(LOGICAL,27)@1
    assign i_dijkstraparallelid_b3_current_iter_isspec_dijkstraparallelid_3067_5gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3088_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraparallelid_b3_current_iter_isreal_dijkstraparallelid_3067_4gr_mux_x_q ^ VCC_q;

    // i_dijkstraparallelid_b3_fullexited_dijkstraparallelid_3067_7gr(LOGICAL,29)@1
    assign i_dijkstraparallelid_b3_fullexited_dijkstraparallelid_3067_7gr_q = i_dijkstraparallelid_b3_current_iter_isspec_dijkstraparallelid_3067_5gr_q | redist4_i_llvm_fpga_dummy_thread_dijkstraparallelid_b3_dummy_dijkstraparallelid_3067_2gr_out_dummy_out_1_q;

    // sync_out_51_aunroll_x(GPOUT,123)@1
    assign out_c0_exi9_0_tpl = i_dijkstraparallelid_b3_fullexited_dijkstraparallelid_3067_7gr_q;
    assign out_c0_exi9_1_tpl = i_unnamed_dijkstraparallelid_3067_16_vt_join_q;
    assign out_c0_exi9_2_tpl = i_arrayidx_i_dijkstraparallelid_3126_0gr_trunc_sel_x_b;
    assign out_c0_exi9_3_tpl = GND_q;
    assign out_c0_exi9_4_tpl = i_arrayidx8_i_dijkstraparallelid_3067_22_vt_join_q;
    assign out_c0_exi9_5_tpl = i_fpga_indvars_iv_pop6_struct_0_shuffle_bit4_not_dijkstraparallelid_3067_30_q;
    assign out_c0_exi9_6_tpl = i_dijkstraparallelid_b3_realexit_dijkstraparallelid_3067_29_q;
    assign out_c0_exi9_7_tpl = i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3203_0gr_i_llvm_fpga_pop_i1_exitcond160212_pop9_dijkstraparallelid_3067_36_mux_x_q;
    assign out_c0_exi9_8_tpl = i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3215_0gr_i_llvm_fpga_pop_i1_notcmp206213_pop10_dijkstraparallelid_3067_38_mux_x_q;
    assign out_c0_exi9_9_tpl = redist3_i_llvm_fpga_forked_dijkstraparallelid_b3_forked_dijkstraparallelid_3067_3gr_out_buffer_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist2_sync_together_3067_71_aunroll_x_in_i_valid_1_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
