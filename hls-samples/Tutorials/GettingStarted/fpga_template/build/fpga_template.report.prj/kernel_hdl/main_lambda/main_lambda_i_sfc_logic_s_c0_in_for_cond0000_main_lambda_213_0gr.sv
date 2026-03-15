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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_213_0gr
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_i_sfc_logic_s_c0_in_for_cond0000_main_lambda_213_0gr (
    input wire [63:0] in_arg_c,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [31:0] out_c0_exi9_1_tpl,
    output wire [31:0] out_c0_exi9_2_tpl,
    output wire [31:0] out_c0_exi9_3_tpl,
    output wire [63:0] out_c0_exi9_4_tpl,
    output wire [0:0] out_c0_exi9_5_tpl,
    output wire [0:0] out_c0_exi9_6_tpl,
    output wire [0:0] out_c0_exi9_7_tpl,
    output wire [0:0] out_c0_exi9_8_tpl,
    output wire [0:0] out_c0_exi9_9_tpl,
    output wire [0:0] out_c0_exi9_10_tpl,
    output wire [31:0] out_c0_exi9_11_tpl,
    output wire [0:0] out_c0_exi9_12_tpl,
    output wire [0:0] out_main_lambda_B2_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [31:0] in_c0_eni4_1_tpl,
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
    wire [31:0] c_i32_0_216_59_q;
    wire [5:0] c_i6_1_216_57_q;
    wire [5:0] c_i6_30_216_54_q;
    wire [6:0] c_i7_0_216_53_q;
    wire [1:0] i_arrayidx18_i_main_lambda_216_16_vt_const_1_q;
    wire [63:0] i_arrayidx18_i_main_lambda_216_16_vt_join_q;
    wire [61:0] i_arrayidx18_i_main_lambda_216_16_vt_select_63_b;
    wire [0:0] i_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_not_main_lambda_216_20_q;
    wire [6:0] i_fpga_indvars_iv_next10_main_lambda_216_23_a;
    wire [6:0] i_fpga_indvars_iv_next10_main_lambda_216_23_b;
    logic [6:0] i_fpga_indvars_iv_next10_main_lambda_216_23_o;
    wire [6:0] i_fpga_indvars_iv_next10_main_lambda_216_23_q;
    wire [23:0] i_inc21_i_zext_main_lambda_216_26_vt_const_31_q;
    wire [31:0] i_inc21_i_zext_main_lambda_216_26_vt_join_q;
    wire [7:0] i_inc21_i_zext_main_lambda_216_26_vt_select_7_b;
    wire [0:0] i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_a;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_b;
    logic [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_o;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22_out_feedback_valid_out_3;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_select_63_b;
    wire [0:0] i_main_lambda_b2_current_iter_isspec_main_lambda_216_5gr_q;
    wire [0:0] i_main_lambda_b2_next_iter_isreal_main_lambda_216_7gr_q;
    wire [4:0] i_mul_i_main_lambda_216_10_vt_const_4_q;
    wire [31:0] i_mul_i_main_lambda_216_10_vt_join_q;
    wire [31:0] i_mul_i_main_lambda_216_10_vt_select_31_in;
    wire [26:0] i_mul_i_main_lambda_216_10_vt_select_31_b;
    wire [24:0] i_unnamed_main_lambda_216_12_vt_const_31_q;
    wire [31:0] i_unnamed_main_lambda_216_12_vt_join_q;
    wire [6:0] i_unnamed_main_lambda_216_12_vt_select_6_b;
    wire [31:0] bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next10_main_lambda_216_23_sel_x_b;
    wire [61:0] i_arrayidx18_i_main_lambda_280_0gr_narrow_x_b;
    wire [63:0] i_arrayidx18_i_main_lambda_280_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx18_i_main_lambda_280_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom17_i_main_lambda_216_14_sel_x_b;
    wire [31:0] i_inc21_i_zext_main_lambda_216_26_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_element_extension_295_3_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_s;
    reg [6:0] i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_q;
    wire [7:0] i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_element_extension_344_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_adapt_scalar_trunc_344_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_element_extension_250_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_adapt_scalar_trunc_250_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_element_extension_356_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_adapt_scalar_trunc_356_4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_element_extension_321_2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_adapt_scalar_trunc_321_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_element_extension_332_2_x_q;
    wire [0:0] i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_valid;
    wire i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_stall;
    wire i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_o_data;
    wire [6:0] i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_adapt_scalar_trunc_332_4_sel_x_b;
    wire [31:0] i_unnamed_main_lambda_216_12_sel_x_b;
    wire [6:0] i_unnamed_main_lambda_216_27_sel_x_b;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    wire [26:0] i_add16_i_main_lambda_216_13_lhsMSBs_select_b;
    wire [27:0] i_add16_i_main_lambda_216_13_MSBs_sums_a;
    wire [27:0] i_add16_i_main_lambda_216_13_MSBs_sums_b;
    logic [27:0] i_add16_i_main_lambda_216_13_MSBs_sums_o;
    wire [27:0] i_add16_i_main_lambda_216_13_MSBs_sums_q;
    wire [32:0] i_add16_i_main_lambda_216_13_split_join_q;
    wire [61:0] i_arrayidx18_i_main_lambda_280_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx18_i_main_lambda_280_0gr_add_x_split_join_q;
    wire [36:0] i_mul_i_main_lambda_262_0gr_shift_x_fs_q;
    wire [36:0] i_mul_i_main_lambda_262_0gr_shift_x_fs_qint;
    wire [26:0] i_add16_i_main_lambda_216_13_rhsMSBs_select_bit_select_merged_b;
    wire [4:0] i_add16_i_main_lambda_216_13_rhsMSBs_select_bit_select_merged_c;
    wire [61:0] i_arrayidx18_i_main_lambda_280_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [31:0] redist0_sync_together_216_64_aunroll_x_in_c0_eni4_1_tpl_1_q;
    reg [0:0] redist1_sync_together_216_64_aunroll_x_in_c0_eni4_3_tpl_1_q;
    reg [0:0] redist2_sync_together_216_64_aunroll_x_in_c0_eni4_4_tpl_1_q;
    reg [0:0] redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_together_216_64_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q_1_q;
    reg [0:0] redist6_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q_1_q;
    reg [0:0] redist7_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q_1_q;
    reg [31:0] redist8_bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b_1_q;
    reg [31:0] redist9_i_unnamed_main_lambda_216_12_vt_join_q_1_q;
    reg [31:0] redist10_i_mul_i_main_lambda_216_10_vt_join_q_1_q;
    reg [0:0] redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_2_q;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr_out_dummy_out_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist3_sync_together_216_64_aunroll_x_in_i_valid_1(DELAY,183)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_arrayidx18_i_main_lambda_216_16_vt_const_1(CONSTANT,29)
    assign i_arrayidx18_i_main_lambda_216_16_vt_const_1_q = 2'b00;

    // c_i6_30_216_54(CONSTANT,26)
    assign c_i6_30_216_54_q = 6'b011110;

    // c_i6_1_216_57(CONSTANT,25)
    assign c_i6_1_216_57_q = 6'b111111;

    // i_fpga_indvars_iv_next10_main_lambda_216_23(ADD,33)@1
    assign i_fpga_indvars_iv_next10_main_lambda_216_23_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_q};
    assign i_fpga_indvars_iv_next10_main_lambda_216_23_b = {1'b0, c_i6_1_216_57_q};
    assign i_fpga_indvars_iv_next10_main_lambda_216_23_o = $unsigned(i_fpga_indvars_iv_next10_main_lambda_216_23_a) + $unsigned(i_fpga_indvars_iv_next10_main_lambda_216_23_b);
    assign i_fpga_indvars_iv_next10_main_lambda_216_23_q = i_fpga_indvars_iv_next10_main_lambda_216_23_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next10_main_lambda_216_23_sel_x(BITSELECT,64)@1
    assign bgTrunc_i_fpga_indvars_iv_next10_main_lambda_216_23_sel_x_b = i_fpga_indvars_iv_next10_main_lambda_216_23_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_element_extension_321_2_x(BITJOIN,111)@1
    assign i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_element_extension_321_2_x_q = {i_arrayidx18_i_main_lambda_216_16_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next10_main_lambda_216_23_sel_x_b};

    // i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x(FIFODELAY,112)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_stall = ~ (redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q & VCC_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_valid = redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q & VCC_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_element_extension_321_2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_element_extension_321_2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_adapt_scalar_trunc_321_4_sel_x(BITSELECT,114)@1
    assign i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_adapt_scalar_trunc_321_4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_1gr_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x(MUX,86)@1
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_s = redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv9_push8_main_lambda_321_0gr_adapt_scalar_trunc_321_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_q = c_i6_30_216_54_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_q = 6'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_element_extension_295_3_x(BITJOIN,80)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_element_extension_295_3_x_q = {i_arrayidx18_i_main_lambda_216_16_vt_const_1_q, i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_289_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop8_main_lambda_216_17_mux_x_q};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x(CHOOSEBITS,76)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_element_extension_295_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_a[5:5];

    // i_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_not_main_lambda_216_20(LOGICAL,32)@1
    assign i_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_not_main_lambda_216_20_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22(BLACKBOX,44)@1
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    main_lambda_i_llvm_fpga_push_i1_notexitcond18_311_0gr thei_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22 (
        .in_data_in(i_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_not_main_lambda_216_20_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr(BLACKBOX,40)@0
    // in in_stall_in@20000000
    main_lambda_i_llvm_fpga_dummy_thread_b2_0000_main_lambda_221_0gr thei_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr_out_dummy_out_1(DELAY,193)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr_out_dummy_out_1_q <= i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr_out_dummy_out;
        end
    end

    // i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr(BLACKBOX,41)@0
    // in in_stall_in@20000000
    main_lambda_i_llvm_fpga_forked_b2_forked_main_lambda_229_0gr thei_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1(DELAY,191)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr(BLACKBOX,43)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    main_lambda_i_llvm_fpga_pipeline_keep_going17_242_0gr thei_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr (
        .in_data_in(redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q),
        .in_dummy_in(redist13_i_llvm_fpga_dummy_thread_main_lambda_b2_dummy_main_lambda_216_2gr_out_dummy_out_1_q),
        .in_forked_in(redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond18_main_lambda_216_22_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,61)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,65)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,66)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,67)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_pipeline_valid_out;

    // redist4_sync_together_216_64_aunroll_x_in_i_valid_2(DELAY,184)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together_216_64_aunroll_x_in_i_valid_2_q <= redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg0(REG,129)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q;
        end
    end

    // c_i7_0_216_53(CONSTANT,27)
    assign c_i7_0_216_53_q = 7'b0000000;

    // i_main_lambda_b2_next_iter_isreal_main_lambda_216_7gr(LOGICAL,50)@1
    assign i_main_lambda_b2_next_iter_isreal_main_lambda_216_7gr_q = i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q & i_llvm_fpga_pipeline_keep_going17_main_lambda_216_6gr_out_data_out;

    // i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_element_extension_250_2_x(BITJOIN,96)@1
    assign i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_element_extension_250_2_x_q = {c_i7_0_216_53_q, i_main_lambda_b2_next_iter_isreal_main_lambda_216_7gr_q};

    // valid_fanout_reg3(REG,132)@0 + 1
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

    // valid_fanout_reg2(REG,131)@0 + 1
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

    // i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x(FIFODELAY,97)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_data = i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_element_extension_250_2_x_q;
    assign i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_element_extension_250_2_x_q),
        .o_data(i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_adapt_scalar_trunc_250_4_sel_x(BITSELECT,99)@1
    assign i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_adapt_scalar_trunc_250_4_sel_x_b = i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x(MUX,82)@1
    assign i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_s = redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q = i_llvm_fpga_push_i1_main_lambda_b2_next_iter_isreal_push_main_lambda_250_0gr_adapt_scalar_trunc_250_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q = 1'b0;
        endcase
    end

    // redist6_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q_1(DELAY,186)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q_1_q <= i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q;
        end
    end

    // i_main_lambda_b2_current_iter_isspec_main_lambda_216_5gr(LOGICAL,49)@2
    assign i_main_lambda_b2_current_iter_isspec_main_lambda_216_5gr_q = redist6_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_237_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b2_current_iter_isreal_main_lambda_216_4gr_mux_x_q_1_q ^ VCC_q;

    // c_i32_0_216_59(CONSTANT,23)
    assign c_i32_0_216_59_q = 32'b00000000000000000000000000000000;

    // redist12_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_2(DELAY,192)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_2_q <= redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
        end
    end

    // redist2_sync_together_216_64_aunroll_x_in_c0_eni4_4_tpl_1(DELAY,182)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_216_64_aunroll_x_in_c0_eni4_4_tpl_1_q <= in_c0_eni4_4_tpl;
        end
    end

    // i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_element_extension_356_2_x(BITJOIN,102)@2
    assign i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_element_extension_356_2_x_q = {c_i7_0_216_53_q, i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_q};

    // valid_fanout_reg16(REG,145)@0 + 1
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

    // valid_fanout_reg15(REG,144)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x(FIFODELAY,103)@1
    // in i_valid@2
    // in i_write_pred@2
    // in i_data@2
    assign i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_stall = ~ (valid_fanout_reg16_q & VCC_q);
    assign i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_valid = valid_fanout_reg15_q & VCC_q;
    assign i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_data = i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_element_extension_356_2_x_q;
    assign i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_element_extension_356_2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_adapt_scalar_trunc_356_4_sel_x(BITSELECT,105)@1
    assign i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_adapt_scalar_trunc_356_4_sel_x_b = i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x(MUX,84)@1 + 1
    assign i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_s = redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_q <= i_llvm_fpga_push_i1_notcmp2029_push12_main_lambda_356_0gr_adapt_scalar_trunc_356_4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_q <= redist2_sync_together_216_64_aunroll_x_in_c0_eni4_4_tpl_1_q;
                default : i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist1_sync_together_216_64_aunroll_x_in_c0_eni4_3_tpl_1(DELAY,181)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_216_64_aunroll_x_in_c0_eni4_3_tpl_1_q <= in_c0_eni4_3_tpl;
        end
    end

    // i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_element_extension_344_2_x(BITJOIN,90)@2
    assign i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_element_extension_344_2_x_q = {c_i7_0_216_53_q, i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_q};

    // valid_fanout_reg13(REG,142)@0 + 1
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

    // valid_fanout_reg12(REG,141)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x(FIFODELAY,91)@1
    // in i_valid@2
    // in i_write_pred@2
    // in i_data@2
    assign i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_stall = ~ (valid_fanout_reg13_q & VCC_q);
    assign i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_valid = valid_fanout_reg12_q & VCC_q;
    assign i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_data = i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_element_extension_344_2_x_q;
    assign i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_element_extension_344_2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_adapt_scalar_trunc_344_4_sel_x(BITSELECT,93)@1
    assign i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_adapt_scalar_trunc_344_4_sel_x_b = i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x(MUX,83)@1 + 1
    assign i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_s = redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_q <= i_llvm_fpga_push_i1_forked2627_push10_main_lambda_344_0gr_adapt_scalar_trunc_344_4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_q <= redist1_sync_together_216_64_aunroll_x_in_c0_eni4_3_tpl_1_q;
                default : i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist7_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q_1(DELAY,187)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q_1_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q;
        end
    end

    // redist0_sync_together_216_64_aunroll_x_in_c0_eni4_1_tpl_1(DELAY,180)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_216_64_aunroll_x_in_c0_eni4_1_tpl_1_q <= in_c0_eni4_1_tpl;
        end
    end

    // valid_fanout_reg8(REG,137)@0 + 1
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

    // valid_fanout_reg7(REG,136)@0 + 1
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

    // i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x(FIFODELAY,106)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_stall = ~ (valid_fanout_reg8_q & VCC_q);
    assign i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_valid = valid_fanout_reg7_q & VCC_q;
    assign i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_data = i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q;
    assign i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x(MUX,85)@1
    assign i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_s = redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q = i_llvm_fpga_push_i32_push11_main_lambda_305_0gr_i_llvm_fpga_push_i32_push11_main_lambda_305_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q = redist0_sync_together_216_64_aunroll_x_in_c0_eni4_1_tpl_1_q;
            default : i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q = 32'b0;
        endcase
    end

    // i_mul_i_main_lambda_262_0gr_shift_x_fs(BITSHIFT,176)@1
    assign i_mul_i_main_lambda_262_0gr_shift_x_fs_qint = { i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q, 5'b00000 };
    assign i_mul_i_main_lambda_262_0gr_shift_x_fs_q = i_mul_i_main_lambda_262_0gr_shift_x_fs_qint[36:0];

    // i_mul_i_main_lambda_216_10_vt_select_31(BITSELECT,53)@1
    assign i_mul_i_main_lambda_216_10_vt_select_31_in = i_mul_i_main_lambda_262_0gr_shift_x_fs_q[31:0];
    assign i_mul_i_main_lambda_216_10_vt_select_31_b = i_mul_i_main_lambda_216_10_vt_select_31_in[31:5];

    // i_mul_i_main_lambda_216_10_vt_const_4(CONSTANT,51)
    assign i_mul_i_main_lambda_216_10_vt_const_4_q = 5'b00000;

    // i_mul_i_main_lambda_216_10_vt_join(BITJOIN,52)@1
    assign i_mul_i_main_lambda_216_10_vt_join_q = {i_mul_i_main_lambda_216_10_vt_select_31_b, i_mul_i_main_lambda_216_10_vt_const_4_q};

    // i_add16_i_main_lambda_216_13_lhsMSBs_select(BITSELECT,168)@1
    assign i_add16_i_main_lambda_216_13_lhsMSBs_select_b = $signed(i_mul_i_main_lambda_216_10_vt_join_q[31:5]);

    // i_add16_i_main_lambda_216_13_MSBs_sums(ADD,169)@1
    assign i_add16_i_main_lambda_216_13_MSBs_sums_a = {1'b0, i_add16_i_main_lambda_216_13_lhsMSBs_select_b};
    assign i_add16_i_main_lambda_216_13_MSBs_sums_b = {1'b0, i_add16_i_main_lambda_216_13_rhsMSBs_select_bit_select_merged_b};
    assign i_add16_i_main_lambda_216_13_MSBs_sums_o = $unsigned(i_add16_i_main_lambda_216_13_MSBs_sums_a) + $unsigned(i_add16_i_main_lambda_216_13_MSBs_sums_b);
    assign i_add16_i_main_lambda_216_13_MSBs_sums_q = $signed(i_add16_i_main_lambda_216_13_MSBs_sums_o[27:0]);

    // i_unnamed_main_lambda_216_12_vt_const_31(CONSTANT,55)
    assign i_unnamed_main_lambda_216_12_vt_const_31_q = 25'b0000000000000000000000000;

    // i_inc21_i_zext_main_lambda_216_26_vt_const_31(CONSTANT,37)
    assign i_inc21_i_zext_main_lambda_216_26_vt_const_31_q = 24'b000000000000000000000000;

    // i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25(ADD,42)@1
    assign i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_a = {1'b0, i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_q};
    assign i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_b = {7'b0000000, VCC_q};
    assign i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_o = $unsigned(i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_a) + $unsigned(i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_b);
    assign i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_q = i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_o[7:0];

    // i_inc21_i_zext_main_lambda_216_26_sel_x(BITSELECT,75)@1
    assign i_inc21_i_zext_main_lambda_216_26_sel_x_b = {24'b000000000000000000000000, i_llvm_fpga_int_add_i8_i7_i1_inc21_i_i_main_lambda_216_25_q[7:0]};

    // i_inc21_i_zext_main_lambda_216_26_vt_select_7(BITSELECT,39)@1
    assign i_inc21_i_zext_main_lambda_216_26_vt_select_7_b = i_inc21_i_zext_main_lambda_216_26_sel_x_b[7:0];

    // i_inc21_i_zext_main_lambda_216_26_vt_join(BITJOIN,38)@1
    assign i_inc21_i_zext_main_lambda_216_26_vt_join_q = {i_inc21_i_zext_main_lambda_216_26_vt_const_31_q, i_inc21_i_zext_main_lambda_216_26_vt_select_7_b};

    // i_unnamed_main_lambda_216_27_sel_x(BITSELECT,126)@1
    assign i_unnamed_main_lambda_216_27_sel_x_b = i_inc21_i_zext_main_lambda_216_26_vt_join_q[6:0];

    // i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_element_extension_332_2_x(BITJOIN,117)@1
    assign i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_element_extension_332_2_x_q = {GND_q, i_unnamed_main_lambda_216_27_sel_x_b};

    // valid_fanout_reg10(REG,139)@0 + 1
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

    // valid_fanout_reg9(REG,138)@0 + 1
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

    // i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x(FIFODELAY,118)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_stall = ~ (valid_fanout_reg10_q & VCC_q);
    assign i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_valid = valid_fanout_reg9_q & VCC_q;
    assign i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_data = i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_element_extension_332_2_x_q;
    assign i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x (
        .i_valid(i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_element_extension_332_2_x_q),
        .o_data(i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_adapt_scalar_trunc_332_4_sel_x(BITSELECT,120)@1
    assign i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_adapt_scalar_trunc_332_4_sel_x_b = i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_1gr_x_o_data[6:0];

    // i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x(MUX,87)@1
    assign i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_s = redist11_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_q = i_llvm_fpga_push_i7_j_0_i5_narrowing_push9_main_lambda_332_0gr_adapt_scalar_trunc_332_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_q = c_i7_0_216_53_q;
            default : i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_q = 7'b0;
        endcase
    end

    // i_unnamed_main_lambda_216_12_sel_x(BITSELECT,125)@1
    assign i_unnamed_main_lambda_216_12_sel_x_b = {25'b0000000000000000000000000, i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_267_0gr_i_llvm_fpga_pop_i7_j_0_i5_narrowing_pop9_main_lambda_216_11_mux_x_q[6:0]};

    // i_unnamed_main_lambda_216_12_vt_select_6(BITSELECT,57)@1
    assign i_unnamed_main_lambda_216_12_vt_select_6_b = i_unnamed_main_lambda_216_12_sel_x_b[6:0];

    // i_unnamed_main_lambda_216_12_vt_join(BITJOIN,56)@1
    assign i_unnamed_main_lambda_216_12_vt_join_q = {i_unnamed_main_lambda_216_12_vt_const_31_q, i_unnamed_main_lambda_216_12_vt_select_6_b};

    // i_add16_i_main_lambda_216_13_rhsMSBs_select_bit_select_merged(BITSELECT,177)@1
    assign i_add16_i_main_lambda_216_13_rhsMSBs_select_bit_select_merged_b = $signed(i_unnamed_main_lambda_216_12_vt_join_q[31:5]);
    assign i_add16_i_main_lambda_216_13_rhsMSBs_select_bit_select_merged_c = $signed(i_unnamed_main_lambda_216_12_vt_join_q[4:0]);

    // i_add16_i_main_lambda_216_13_split_join(BITJOIN,170)@1
    assign i_add16_i_main_lambda_216_13_split_join_q = {i_add16_i_main_lambda_216_13_MSBs_sums_q, i_add16_i_main_lambda_216_13_rhsMSBs_select_bit_select_merged_c};

    // bgTrunc_i_add16_i_main_lambda_216_13_sel_x(BITSELECT,63)@1
    assign bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b = i_add16_i_main_lambda_216_13_split_join_q[31:0];

    // redist8_bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b_1(DELAY,188)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b_1_q <= bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b;
        end
    end

    // i_idxprom17_i_main_lambda_216_14_sel_x(BITSELECT,74)@2
    assign i_idxprom17_i_main_lambda_216_14_sel_x_b = {{32{redist8_bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b_1_q[31]}}, redist8_bgTrunc_i_add16_i_main_lambda_216_13_sel_x_b_1_q[31:0]};

    // i_arrayidx18_i_main_lambda_280_0gr_narrow_x(BITSELECT,70)@2
    assign i_arrayidx18_i_main_lambda_280_0gr_narrow_x_b = i_idxprom17_i_main_lambda_216_14_sel_x_b[61:0];

    // i_arrayidx18_i_main_lambda_280_0gr_shift_join_x(BITJOIN,71)@2
    assign i_arrayidx18_i_main_lambda_280_0gr_shift_join_x_q = {i_arrayidx18_i_main_lambda_280_0gr_narrow_x_b, i_arrayidx18_i_main_lambda_216_16_vt_const_1_q};

    // i_arrayidx18_i_main_lambda_280_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,178)@2
    assign i_arrayidx18_i_main_lambda_280_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx18_i_main_lambda_280_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg6(REG,135)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= redist3_sync_together_216_64_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15(BLACKBOX,45)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    main_lambda_i_llvm_fpga_sync_buffer_p1020000_sync_buffer_275_0gr thei_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15 (
        .in_buffer_in(in_arg_c),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_select_63(BITSELECT,48)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_join(BITJOIN,47)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_select_63_b, i_arrayidx18_i_main_lambda_216_16_vt_const_1_q};

    // i_arrayidx18_i_main_lambda_280_0gr_add_x_lhsMSBs_select(BITSELECT,173)@2
    assign i_arrayidx18_i_main_lambda_280_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_c_sync_buffer_main_lambda_216_15_vt_join_q[63:2]);

    // i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums(ADD,174)@2
    assign i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx18_i_main_lambda_280_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx18_i_main_lambda_280_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx18_i_main_lambda_280_0gr_add_x_split_join(BITJOIN,175)@2
    assign i_arrayidx18_i_main_lambda_280_0gr_add_x_split_join_q = {i_arrayidx18_i_main_lambda_280_0gr_add_x_MSBs_sums_q, i_arrayidx18_i_main_lambda_216_16_vt_const_1_q};

    // i_arrayidx18_i_main_lambda_280_0gr_dupName_0_trunc_sel_x(BITSELECT,73)@2
    assign i_arrayidx18_i_main_lambda_280_0gr_dupName_0_trunc_sel_x_b = i_arrayidx18_i_main_lambda_280_0gr_add_x_split_join_q[63:0];

    // i_arrayidx18_i_main_lambda_216_16_vt_select_63(BITSELECT,31)@2
    assign i_arrayidx18_i_main_lambda_216_16_vt_select_63_b = i_arrayidx18_i_main_lambda_280_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx18_i_main_lambda_216_16_vt_join(BITJOIN,30)@2
    assign i_arrayidx18_i_main_lambda_216_16_vt_join_q = {i_arrayidx18_i_main_lambda_216_16_vt_select_63_b, i_arrayidx18_i_main_lambda_216_16_vt_const_1_q};

    // redist9_i_unnamed_main_lambda_216_12_vt_join_q_1(DELAY,189)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_unnamed_main_lambda_216_12_vt_join_q_1_q <= i_unnamed_main_lambda_216_12_vt_join_q;
        end
    end

    // redist10_i_mul_i_main_lambda_216_10_vt_join_q_1(DELAY,190)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_mul_i_main_lambda_216_10_vt_join_q_1_q <= i_mul_i_main_lambda_216_10_vt_join_q;
        end
    end

    // redist5_i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q_1(DELAY,185)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q_1_q <= i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q;
        end
    end

    // sync_out_2_aunroll_x(GPOUT,127)@2
    assign out_c0_exi9_0_tpl = GND_q;
    assign out_c0_exi9_1_tpl = redist5_i_llvm_fpga_pop_i32_pop11_main_lambda_258_0gr_i_llvm_fpga_pop_i32_pop11_main_lambda_216_9gr_mux_x_q_1_q;
    assign out_c0_exi9_2_tpl = redist10_i_mul_i_main_lambda_216_10_vt_join_q_1_q;
    assign out_c0_exi9_3_tpl = redist9_i_unnamed_main_lambda_216_12_vt_join_q_1_q;
    assign out_c0_exi9_4_tpl = i_arrayidx18_i_main_lambda_216_16_vt_join_q;
    assign out_c0_exi9_5_tpl = GND_q;
    assign out_c0_exi9_6_tpl = redist7_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond6_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv9_pop8_struct_0_shuffle_bit5_main_lambda_295_0gr_NO_NAME_x_q_1_q;
    assign out_c0_exi9_7_tpl = i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_340_0gr_i_llvm_fpga_pop_i1_forked2627_pop10_main_lambda_216_29_mux_x_q;
    assign out_c0_exi9_8_tpl = i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_352_0gr_i_llvm_fpga_pop_i1_notcmp2029_pop12_main_lambda_216_31_mux_x_q;
    assign out_c0_exi9_9_tpl = redist12_i_llvm_fpga_forked_main_lambda_b2_forked_main_lambda_216_3gr_out_buffer_out_2_q;
    assign out_c0_exi9_10_tpl = GND_q;
    assign out_c0_exi9_11_tpl = c_i32_0_216_59_q;
    assign out_c0_exi9_12_tpl = GND_q;
    assign out_main_lambda_B2_current_iter_isspec = i_main_lambda_b2_current_iter_isspec_main_lambda_216_5gr_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist4_sync_together_216_64_aunroll_x_in_i_valid_2_q;

endmodule
