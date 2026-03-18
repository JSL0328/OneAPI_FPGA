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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_748_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000aoptimisedid_748_0gr (
    input wire [63:0] in_arg_in_g,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_DijkstraOptimisedID_B3_current_iter_isspec,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [31:0] out_c0_exi7_1_tpl,
    output wire [63:0] out_c0_exi7_2_tpl,
    output wire [0:0] out_c0_exi7_3_tpl,
    output wire [0:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [31:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [0:0] in_c0_eni4_1_tpl,
    input wire [31:0] in_c0_eni4_2_tpl,
    input wire [0:0] in_c0_eni4_3_tpl,
    input wire [31:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] c_i5_0_751_58_q;
    wire [4:0] c_i5_1_751_61_q;
    wire [4:0] c_i5_9_751_59_q;
    wire [32:0] i_add_i_dijkstraoptimisedid_751_12_a;
    wire [32:0] i_add_i_dijkstraoptimisedid_751_12_b;
    logic [32:0] i_add_i_dijkstraoptimisedid_751_12_o;
    wire [32:0] i_add_i_dijkstraoptimisedid_751_12_q;
    wire [1:0] i_arrayidx_i_dijkstraoptimisedid_751_15_vt_const_1_q;
    wire [63:0] i_arrayidx_i_dijkstraoptimisedid_751_15_vt_join_q;
    wire [61:0] i_arrayidx_i_dijkstraoptimisedid_751_15_vt_select_63_b;
    wire [0:0] i_dijkstraoptimisedid_b3_current_iter_isspec_dijkstraoptimisedid_751_5gr_q;
    wire [0:0] i_dijkstraoptimisedid_b3_next_iter_isreal_dijkstraoptimisedid_751_7gr_q;
    wire [0:0] i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q;
    wire [5:0] i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_a;
    wire [5:0] i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_b;
    logic [5:0] i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_o;
    wire [5:0] i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_q;
    wire [25:0] i_inc_i_zext_dijkstraoptimisedid_751_17_vt_const_31_q;
    wire [31:0] i_inc_i_zext_dijkstraoptimisedid_751_17_vt_join_q;
    wire [5:0] i_inc_i_zext_dijkstraoptimisedid_751_17_vt_select_5_b;
    wire [0:0] i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b3_dummy_dijkstraoptimisedid_751_2gr_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_a;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_b;
    logic [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_o;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_select_63_b;
    wire [26:0] i_unnamed_dijkstraoptimisedid_751_10_vt_const_31_q;
    wire [31:0] i_unnamed_dijkstraoptimisedid_751_10_vt_join_q;
    wire [4:0] i_unnamed_dijkstraoptimisedid_751_10_vt_select_4_b;
    wire [31:0] bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_sel_x_b;
    wire [61:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_narrow_x_b;
    wire [63:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_i_dijkstraoptimisedid_751_13_sel_x_b;
    wire [31:0] i_inc_i_zext_dijkstraoptimisedid_751_17_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q;
    wire [2:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_c_i3_0_828_4gr_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_element_extension_828_3_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_c_i7_0_785_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_element_extension_785_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_adapt_scalar_trunc_785_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_element_extension_874_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_adapt_scalar_trunc_874_4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_element_extension_862_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_adapt_scalar_trunc_862_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_element_extension_844_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_adapt_scalar_trunc_844_4_sel_x_b;
    wire [31:0] i_unnamed_dijkstraoptimisedid_751_10_sel_x_b;
    wire [4:0] i_unnamed_dijkstraoptimisedid_751_18_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    wire [61:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [31:0] redist0_sync_together_751_68_aunroll_x_in_c0_eni4_2_tpl_1_q;
    reg [0:0] redist1_sync_together_751_68_aunroll_x_in_c0_eni4_3_tpl_2_q;
    reg [0:0] redist1_sync_together_751_68_aunroll_x_in_c0_eni4_3_tpl_2_delay_0;
    reg [31:0] redist2_sync_together_751_68_aunroll_x_in_c0_eni4_4_tpl_2_q;
    reg [31:0] redist2_sync_together_751_68_aunroll_x_in_c0_eni4_4_tpl_2_delay_0;
    reg [0:0] redist3_sync_together_751_68_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q_1_q;
    reg [0:0] redist5_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q_2_q;
    reg [0:0] redist5_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q_2_delay_0;
    reg [31:0] redist6_bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b_1_q;
    reg [31:0] redist7_i_unnamed_dijkstraoptimisedid_751_10_vt_join_q_1_q;
    reg [0:0] redist8_i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_2_q;
    reg [0:0] redist11_i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q_2_q;
    reg [0:0] redist11_i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q_2_delay_0;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_c_i3_0_828_4gr_x(CONSTANT,82)
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_c_i3_0_828_4gr_x_q = 3'b000;

    // c_i5_9_751_59(CONSTANT,34)
    assign c_i5_9_751_59_q = 5'b01001;

    // c_i5_1_751_61(CONSTANT,33)
    assign c_i5_1_751_61_q = 5'b11111;

    // i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26(ADD,42)@0
    assign i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_q};
    assign i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_b = {1'b0, c_i5_1_751_61_q};
    assign i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_o = $unsigned(i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_a) + $unsigned(i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_b);
    assign i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_q = i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_sel_x(BITSELECT,68)@0
    assign bgTrunc_i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_sel_x_b = i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_element_extension_862_2_x(BITJOIN,108)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_element_extension_862_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_c_i3_0_828_4gr_x_q, bgTrunc_i_fpga_indvars_iv_next28_dijkstraoptimisedid_751_26_sel_x_b};

    // i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x(FIFODELAY,109)@0 + 1
    // out o_data@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_stall = ~ (in_i_valid & VCC_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_valid = in_i_valid & VCC_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_element_extension_862_2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_element_extension_862_2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_adapt_scalar_trunc_862_4_sel_x(BITSELECT,111)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_adapt_scalar_trunc_862_4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x(MUX,89)@0
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_s = i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv27_push87_dijkstraoptimisedid_862_0gr_adapt_scalar_trunc_862_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_q = c_i5_9_751_59_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_q = 5'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_element_extension_828_3_x(BITJOIN,84)@0
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_element_extension_828_3_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_c_i3_0_828_4gr_x_q, i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_822_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv27_pop87_dijkstraoptimisedid_751_19_mux_x_q};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x(CHOOSEBITS,80)@0
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_element_extension_828_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_a[4:4];

    // i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22(LOGICAL,41)@0
    assign i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25(BLACKBOX,53)@0
    // in in_empty_in@20000000
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    DijkstraOptimisedID_i_llvm_fpga_push_i1_0000aoptimisedid_852_0gr thei_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b3_dummy_dijkstraoptimisedid_751_2gr(BLACKBOX,49)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_dummy_th0000aoptimisedid_756_0gr thei_llvm_fpga_dummy_thread_dijkstraoptimisedid_b3_dummy_dijkstraoptimisedid_751_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b3_dummy_dijkstraoptimisedid_751_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr(BLACKBOX,50)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_forked_d0000aoptimisedid_764_0gr thei_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr(BLACKBOX,52)@0
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    DijkstraOptimisedID_i_llvm_fpga_pipeline0000aoptimisedid_777_0gr thei_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr (
        .in_data_in(i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out),
        .in_dummy_in(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b3_dummy_dijkstraoptimisedid_751_2gr_out_dummy_out),
        .in_forked_in(i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond63_dijkstraoptimisedid_751_25_out_feedback_valid_out_7),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,65)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,69)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,70)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,71)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_pipeline_valid_out;

    // redist3_sync_together_751_68_aunroll_x_in_i_valid_1(DELAY,162)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together_751_68_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together_751_68_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg0(REG,122)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist3_sync_together_751_68_aunroll_x_in_i_valid_1_q;
        end
    end

    // redist2_sync_together_751_68_aunroll_x_in_c0_eni4_4_tpl_2(DELAY,161)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_751_68_aunroll_x_in_c0_eni4_4_tpl_2_delay_0 <= $unsigned(in_c0_eni4_4_tpl);
            redist2_sync_together_751_68_aunroll_x_in_c0_eni4_4_tpl_2_q <= $signed(redist2_sync_together_751_68_aunroll_x_in_c0_eni4_4_tpl_2_delay_0);
        end
    end

    // redist9_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_1(DELAY,168)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out;
        end
    end

    // redist10_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_2(DELAY,169)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_2_q <= redist9_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_1_q;
        end
    end

    // redist1_sync_together_751_68_aunroll_x_in_c0_eni4_3_tpl_2(DELAY,160)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_751_68_aunroll_x_in_c0_eni4_3_tpl_2_delay_0 <= $unsigned(in_c0_eni4_3_tpl);
            redist1_sync_together_751_68_aunroll_x_in_c0_eni4_3_tpl_2_q <= $signed(redist1_sync_together_751_68_aunroll_x_in_c0_eni4_3_tpl_2_delay_0);
        end
    end

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_c_i7_0_785_3gr_x(CONSTANT,92)
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_c_i7_0_785_3gr_x_q = 7'b0000000;

    // i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_element_extension_874_2_x(BITJOIN,99)@2
    assign i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_element_extension_874_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_c_i7_0_785_3gr_x_q, i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_q};

    // valid_fanout_reg13(REG,135)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= redist3_sync_together_751_68_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg12(REG,134)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= redist3_sync_together_751_68_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x(FIFODELAY,100)@2 + 1
    // out o_data@2
    assign i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_stall = ~ (valid_fanout_reg13_q & VCC_q);
    assign i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_valid = valid_fanout_reg12_q & VCC_q;
    assign i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_data = i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_element_extension_874_2_x_q;
    assign i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_element_extension_874_2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_adapt_scalar_trunc_874_4_sel_x(BITSELECT,102)@2
    assign i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_adapt_scalar_trunc_874_4_sel_x_b = i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x(MUX,87)@2
    assign i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_s = redist10_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_2_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_q = i_llvm_fpga_push_i1_notcmp65100_push91_dijkstraoptimisedid_874_0gr_adapt_scalar_trunc_874_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_q = redist1_sync_together_751_68_aunroll_x_in_c0_eni4_3_tpl_2_q;
            default : i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_q = 1'b0;
        endcase
    end

    // redist5_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q_2(DELAY,164)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q);
            redist5_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q_2_q <= $signed(redist5_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q_2_delay_0);
        end
    end

    // redist11_i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q_2(DELAY,170)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q_2_delay_0 <= $unsigned(i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q);
            redist11_i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q_2_q <= $signed(redist11_i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q_2_delay_0);
        end
    end

    // redist0_sync_together_751_68_aunroll_x_in_c0_eni4_2_tpl_1(DELAY,159)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_751_68_aunroll_x_in_c0_eni4_2_tpl_1_q <= in_c0_eni4_2_tpl;
        end
    end

    // valid_fanout_reg8(REG,130)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= in_i_valid;
        end
    end

    // valid_fanout_reg7(REG,129)@0 + 1
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

    // i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x(FIFODELAY,103)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_stall = ~ (valid_fanout_reg8_q & VCC_q);
    assign i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_valid = valid_fanout_reg7_q & VCC_q;
    assign i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_data = i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_q;
    assign i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x(MUX,88)@1
    assign i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_s = redist9_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_q = i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_0gr_i_llvm_fpga_push_i32_mul_i_add3699_push90_dijkstraoptimisedid_838_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_q = redist0_sync_together_751_68_aunroll_x_in_c0_eni4_2_tpl_1_q;
            default : i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_q = 32'b0;
        endcase
    end

    // i_unnamed_dijkstraoptimisedid_751_10_vt_const_31(CONSTANT,59)
    assign i_unnamed_dijkstraoptimisedid_751_10_vt_const_31_q = 27'b000000000000000000000000000;

    // c_i5_0_751_58(CONSTANT,32)
    assign c_i5_0_751_58_q = 5'b00000;

    // i_inc_i_zext_dijkstraoptimisedid_751_17_vt_const_31(CONSTANT,46)
    assign i_inc_i_zext_dijkstraoptimisedid_751_17_vt_const_31_q = 26'b00000000000000000000000000;

    // i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16(ADD,51)@1
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_a = {1'b0, i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_b = {5'b00000, VCC_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_o = $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_a) + $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_b);
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_q = i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_o[5:0];

    // i_inc_i_zext_dijkstraoptimisedid_751_17_sel_x(BITSELECT,79)@1
    assign i_inc_i_zext_dijkstraoptimisedid_751_17_sel_x_b = {26'b00000000000000000000000000, i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstraoptimisedid_751_16_q[5:0]};

    // i_inc_i_zext_dijkstraoptimisedid_751_17_vt_select_5(BITSELECT,48)@1
    assign i_inc_i_zext_dijkstraoptimisedid_751_17_vt_select_5_b = i_inc_i_zext_dijkstraoptimisedid_751_17_sel_x_b[5:0];

    // i_inc_i_zext_dijkstraoptimisedid_751_17_vt_join(BITJOIN,47)@1
    assign i_inc_i_zext_dijkstraoptimisedid_751_17_vt_join_q = {i_inc_i_zext_dijkstraoptimisedid_751_17_vt_const_31_q, i_inc_i_zext_dijkstraoptimisedid_751_17_vt_select_5_b};

    // i_unnamed_dijkstraoptimisedid_751_18_sel_x(BITSELECT,119)@1
    assign i_unnamed_dijkstraoptimisedid_751_18_sel_x_b = i_inc_i_zext_dijkstraoptimisedid_751_17_vt_join_q[4:0];

    // i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_element_extension_844_2_x(BITJOIN,114)@1
    assign i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_element_extension_844_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_c_i3_0_828_4gr_x_q, i_unnamed_dijkstraoptimisedid_751_18_sel_x_b};

    // valid_fanout_reg10(REG,132)@0 + 1
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

    // valid_fanout_reg9(REG,131)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x(FIFODELAY,115)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_stall = ~ (valid_fanout_reg10_q & VCC_q);
    assign i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_valid = valid_fanout_reg9_q & VCC_q;
    assign i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_data = i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_element_extension_844_2_x_q;
    assign i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_element_extension_844_2_x_q),
        .o_data(i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_adapt_scalar_trunc_844_4_sel_x(BITSELECT,117)@1
    assign i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_adapt_scalar_trunc_844_4_sel_x_b = i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x(MUX,90)@1
    assign i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_s = redist9_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_q = i_llvm_fpga_push_i5_j_0_i1_narrowing_push88_dijkstraoptimisedid_844_0gr_adapt_scalar_trunc_844_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_q = c_i5_0_751_58_q;
            default : i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_q = 5'b0;
        endcase
    end

    // i_unnamed_dijkstraoptimisedid_751_10_sel_x(BITSELECT,118)@1
    assign i_unnamed_dijkstraoptimisedid_751_10_sel_x_b = {27'b000000000000000000000000000, i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_793_0gr_i_llvm_fpga_pop_i5_j_0_i1_narrowing_pop88_dijkstraoptimisedid_751_9gr_mux_x_q[4:0]};

    // i_unnamed_dijkstraoptimisedid_751_10_vt_select_4(BITSELECT,61)@1
    assign i_unnamed_dijkstraoptimisedid_751_10_vt_select_4_b = i_unnamed_dijkstraoptimisedid_751_10_sel_x_b[4:0];

    // i_unnamed_dijkstraoptimisedid_751_10_vt_join(BITJOIN,60)@1
    assign i_unnamed_dijkstraoptimisedid_751_10_vt_join_q = {i_unnamed_dijkstraoptimisedid_751_10_vt_const_31_q, i_unnamed_dijkstraoptimisedid_751_10_vt_select_4_b};

    // i_add_i_dijkstraoptimisedid_751_12(ADD,35)@1
    assign i_add_i_dijkstraoptimisedid_751_12_a = {1'b0, i_unnamed_dijkstraoptimisedid_751_10_vt_join_q};
    assign i_add_i_dijkstraoptimisedid_751_12_b = {1'b0, i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_798_0gr_i_llvm_fpga_pop_i32_mul_i_add3699_pop90_dijkstraoptimisedid_751_11_mux_x_q};
    assign i_add_i_dijkstraoptimisedid_751_12_o = $unsigned(i_add_i_dijkstraoptimisedid_751_12_a) + $unsigned(i_add_i_dijkstraoptimisedid_751_12_b);
    assign i_add_i_dijkstraoptimisedid_751_12_q = i_add_i_dijkstraoptimisedid_751_12_o[32:0];

    // bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x(BITSELECT,67)@1
    assign bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b = i_add_i_dijkstraoptimisedid_751_12_q[31:0];

    // redist6_bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b_1(DELAY,165)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b_1_q <= bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b;
        end
    end

    // i_idxprom_i_dijkstraoptimisedid_751_13_sel_x(BITSELECT,78)@2
    assign i_idxprom_i_dijkstraoptimisedid_751_13_sel_x_b = {{32{redist6_bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b_1_q[31]}}, redist6_bgTrunc_i_add_i_dijkstraoptimisedid_751_12_sel_x_b_1_q[31:0]};

    // i_arrayidx_i_dijkstraoptimisedid_810_0gr_narrow_x(BITSELECT,74)@2
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_narrow_x_b = i_idxprom_i_dijkstraoptimisedid_751_13_sel_x_b[61:0];

    // i_arrayidx_i_dijkstraoptimisedid_810_0gr_shift_join_x(BITJOIN,75)@2
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_shift_join_x_q = {i_arrayidx_i_dijkstraoptimisedid_810_0gr_narrow_x_b, i_arrayidx_i_dijkstraoptimisedid_751_15_vt_const_1_q};

    // i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,157)@2
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx_i_dijkstraoptimisedid_810_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg6(REG,128)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= redist3_sync_together_751_68_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14(BLACKBOX,54)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    DijkstraOptimisedID_i_llvm_fpga_sync_buf0000aoptimisedid_805_0gr thei_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14 (
        .in_buffer_in(in_arg_in_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_select_63(BITSELECT,57)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_join(BITJOIN,56)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_select_63_b, i_arrayidx_i_dijkstraoptimisedid_751_15_vt_const_1_q};

    // i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_lhsMSBs_select(BITSELECT,154)@2
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_in_g_sync_buffer_dijkstraoptimisedid_751_14_vt_join_q[63:2]);

    // i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums(ADD,155)@2
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_split_join(BITJOIN,156)@2
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_split_join_q = {i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_MSBs_sums_q, i_arrayidx_i_dijkstraoptimisedid_751_15_vt_const_1_q};

    // i_arrayidx_i_dijkstraoptimisedid_810_0gr_dupName_0_trunc_sel_x(BITSELECT,77)@2
    assign i_arrayidx_i_dijkstraoptimisedid_810_0gr_dupName_0_trunc_sel_x_b = i_arrayidx_i_dijkstraoptimisedid_810_0gr_add_x_split_join_q[63:0];

    // i_arrayidx_i_dijkstraoptimisedid_751_15_vt_select_63(BITSELECT,38)@2
    assign i_arrayidx_i_dijkstraoptimisedid_751_15_vt_select_63_b = i_arrayidx_i_dijkstraoptimisedid_810_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx_i_dijkstraoptimisedid_751_15_vt_const_1(CONSTANT,36)
    assign i_arrayidx_i_dijkstraoptimisedid_751_15_vt_const_1_q = 2'b00;

    // i_arrayidx_i_dijkstraoptimisedid_751_15_vt_join(BITJOIN,37)@2
    assign i_arrayidx_i_dijkstraoptimisedid_751_15_vt_join_q = {i_arrayidx_i_dijkstraoptimisedid_751_15_vt_select_63_b, i_arrayidx_i_dijkstraoptimisedid_751_15_vt_const_1_q};

    // redist7_i_unnamed_dijkstraoptimisedid_751_10_vt_join_q_1(DELAY,166)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_unnamed_dijkstraoptimisedid_751_10_vt_join_q_1_q <= i_unnamed_dijkstraoptimisedid_751_10_vt_join_q;
        end
    end

    // redist8_i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_data_out_1(DELAY,167)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_data_out_1_q <= i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_data_out;
        end
    end

    // i_dijkstraoptimisedid_b3_next_iter_isreal_dijkstraoptimisedid_751_7gr(LOGICAL,40)@1
    assign i_dijkstraoptimisedid_b3_next_iter_isreal_dijkstraoptimisedid_751_7gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q & redist8_i_llvm_fpga_pipeline_keep_going62_dijkstraoptimisedid_751_6gr_out_data_out_1_q;

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_element_extension_785_2_x(BITJOIN,93)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_element_extension_785_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_c_i7_0_785_3gr_x_q, i_dijkstraoptimisedid_b3_next_iter_isreal_dijkstraoptimisedid_751_7gr_q};

    // valid_fanout_reg3(REG,125)@0 + 1
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

    // valid_fanout_reg2(REG,124)@0 + 1
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

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x(FIFODELAY,94)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_data = i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_element_extension_785_2_x_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_element_extension_785_2_x_q),
        .o_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_adapt_scalar_trunc_785_4_sel_x(BITSELECT,96)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_adapt_scalar_trunc_785_4_sel_x_b = i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x(MUX,86)@1
    assign i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_s = redist9_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q = i_llvm_fpga_push_i1_dijkstraoptimisedid_b3_next_iter_isreal_push_dijkstraoptimisedid_785_0gr_adapt_scalar_trunc_785_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q = 1'b0;
        endcase
    end

    // redist4_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q_1(DELAY,163)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q_1_q <= i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q;
        end
    end

    // i_dijkstraoptimisedid_b3_current_iter_isspec_dijkstraoptimisedid_751_5gr(LOGICAL,39)@2
    assign i_dijkstraoptimisedid_b3_current_iter_isspec_dijkstraoptimisedid_751_5gr_q = redist4_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_772_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b3_current_iter_isreal_dijkstraoptimisedid_751_4gr_mux_x_q_1_q ^ VCC_q;

    // sync_out_2_aunroll_x(GPOUT,120)@2
    assign out_DijkstraOptimisedID_B3_current_iter_isspec = i_dijkstraoptimisedid_b3_current_iter_isspec_dijkstraoptimisedid_751_5gr_q;
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist7_i_unnamed_dijkstraoptimisedid_751_10_vt_join_q_1_q;
    assign out_c0_exi7_2_tpl = i_arrayidx_i_dijkstraoptimisedid_751_15_vt_join_q;
    assign out_c0_exi7_3_tpl = redist11_i_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_not_dijkstraoptimisedid_751_22_q_2_q;
    assign out_c0_exi7_4_tpl = redist5_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv27_pop87_struct_0_shuffle_bit4_dijkstraoptimisedid_828_0gr_NO_NAME_x_q_2_q;
    assign out_c0_exi7_5_tpl = i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_870_0gr_i_llvm_fpga_pop_i1_notcmp65100_pop91_dijkstraoptimisedid_751_28_mux_x_q;
    assign out_c0_exi7_6_tpl = redist10_i_llvm_fpga_forked_dijkstraoptimisedid_b3_forked_dijkstraoptimisedid_751_3gr_out_buffer_out_2_q;
    assign out_c0_exi7_7_tpl = redist2_sync_together_751_68_aunroll_x_in_c0_eni4_4_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
