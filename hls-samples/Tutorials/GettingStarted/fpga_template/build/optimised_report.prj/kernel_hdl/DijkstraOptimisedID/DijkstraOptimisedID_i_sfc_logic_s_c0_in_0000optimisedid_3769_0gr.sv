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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body93_i_dijkstraoptimisedids_c0_enter32128_dijkstraoptimisedid_3769_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000optimisedid_3769_0gr (
    input wire [63:0] in_arg_out_dist,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_21_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_21_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_21_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_21_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_21_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_21_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_21_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_22_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_22_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_22_0_2_tpl,
    output wire [0:0] out_DijkstraOptimisedID_B9_current_iter_isspec,
    output wire [0:0] out_c0_exi4326_0_tpl,
    output wire [31:0] out_c0_exi4326_1_tpl,
    output wire [63:0] out_c0_exi4326_2_tpl,
    output wire [0:0] out_c0_exi4326_3_tpl,
    output wire [0:0] out_c0_exi4326_4_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1320_0_tpl,
    input wire [0:0] in_c0_eni1320_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0_3772_65_q;
    wire [31:0] c_i32_1_3772_59_q;
    wire [31:0] c_i32_2_3772_60_q;
    wire [31:0] c_i32_3_3772_61_q;
    wire [31:0] c_i32_4_3772_62_q;
    wire [31:0] c_i32_5_3772_63_q;
    wire [31:0] c_i32_6_3772_64_q;
    wire [31:0] c_i32_7_3772_58_q;
    wire [4:0] c_i5_0_3772_57_q;
    wire [4:0] c_i5_1_3772_69_q;
    wire [4:0] c_i5_9_3772_67_q;
    wire [0:0] comparator_q;
    wire [1:0] i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_const_1_q;
    wire [63:0] i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_join_q;
    wire [61:0] i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_select_63_b;
    wire [0:0] i_dijkstraoptimisedid_b9_current_iter_isspec_dijkstraoptimisedid_3772_5gr_q;
    wire [0:0] i_dijkstraoptimisedid_b9_next_iter_isreal_dijkstraoptimisedid_3772_7gr_q;
    wire [5:0] i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_a;
    wire [5:0] i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_b;
    logic [5:0] i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_o;
    wire [5:0] i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_q;
    wire [0:0] i_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3772_29_q;
    wire [58:0] i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_const_63_q;
    wire [63:0] i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_join_q;
    wire [4:0] i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_select_4_b;
    wire [25:0] i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_const_31_q;
    wire [31:0] i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_join_q;
    wire [5:0] i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_select_5_b;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt330_dijkstraoptimisedid_3772_20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b9_dummy_dijkstraoptimisedid_3772_2gr_out_dummy_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_2439_dijkstraoptimisedid_3772_11_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_a;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_b;
    logic [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_o;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31_out_feedback_valid_out_1;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_select_63_b;
    wire [28:0] i_sel_bits312_dijkstraoptimisedid_3772_15_vt_const_31_q;
    wire [31:0] i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q;
    wire [2:0] i_sel_bits312_dijkstraoptimisedid_3772_15_vt_select_2_b;
    wire [29:0] i_sel_shr326_dijkstraoptimisedid_3772_18_vt_const_31_q;
    wire [31:0] i_sel_shr326_dijkstraoptimisedid_3772_18_vt_join_q;
    wire [31:0] i_sel_shr326_dijkstraoptimisedid_3772_18_vt_select_1_in;
    wire [1:0] i_sel_shr326_dijkstraoptimisedid_3772_18_vt_select_1_b;
    wire [26:0] i_unnamed_dijkstraoptimisedid_3772_13_vt_const_31_q;
    wire [31:0] i_unnamed_dijkstraoptimisedid_3772_13_vt_join_q;
    wire [4:0] i_unnamed_dijkstraoptimisedid_3772_13_vt_select_4_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_sel_x_b;
    wire [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_9_comparator_x_q;
    wire [0:0] dupName_10_comparator_x_q;
    wire [61:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_narrow_x_b;
    wire [63:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom94_i_dijkstraoptimisedid_3772_14_sel_x_b;
    wire [31:0] i_inc99_i_zext_dijkstraoptimisedid_3772_24_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q;
    wire [2:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_c_i3_0_3908_4gr_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_element_extension_3908_3_x_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_2_tpl;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_c_i7_0_3806_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_element_extension_3806_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_adapt_scalar_trunc_3806_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_element_extension_3936_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_adapt_scalar_trunc_3936_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_element_extension_3918_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_adapt_scalar_trunc_3918_4_sel_x_b;
    wire [31:0] i_unnamed_dijkstraoptimisedid_3772_13_sel_x_b;
    wire [4:0] i_unnamed_dijkstraoptimisedid_3772_25_sel_x_b;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt325_dijkstraoptimisedid_3772_17_opt_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev1_id0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    wire [2:0] i_sel_bits312_dijkstraoptimisedid_3772_15_BitSelect_for_a_b;
    wire [31:0] i_sel_bits312_dijkstraoptimisedid_3772_15_join_q;
    wire [61:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_split_join_q;
    wire [28:0] i_sel_shr326_dijkstraoptimisedid_3874_0gr_shift_x_fs_q;
    wire [31:0] i_sel_shr326_dijkstraoptimisedid_3874_0gr_shift_x_fs_qint;
    wire [61:0] i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [0:0] redist0_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q_1_q;
    reg [0:0] redist1_i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_data_out_1_q;
    reg [0:0] redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_c_i3_0_3908_4gr_x(CONSTANT,107)
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_c_i3_0_3908_4gr_x_q = 3'b000;

    // c_i5_9_3772_67(CONSTANT,36)
    assign c_i5_9_3772_67_q = 5'b01001;

    // c_i5_1_3772_69(CONSTANT,35)
    assign c_i5_1_3772_69_q = 5'b11111;

    // i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32(ADD,43)@0
    assign i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_q};
    assign i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_b = {1'b0, c_i5_1_3772_69_q};
    assign i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_o = $unsigned(i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_a) + $unsigned(i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_b);
    assign i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_q = i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_sel_x(BITSELECT,82)@0
    assign bgTrunc_i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_sel_x_b = i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_element_extension_3936_2_x(BITJOIN,124)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_element_extension_3936_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_c_i3_0_3908_4gr_x_q, bgTrunc_i_fpga_indvars_iv_next_dijkstraoptimisedid_3772_32_sel_x_b};

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x(FIFODELAY,125)@0 + 1
    // out o_data@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_stall = ~ (in_i_valid & VCC_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_valid = in_i_valid & VCC_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_element_extension_3936_2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_element_extension_3936_2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_adapt_scalar_trunc_3936_4_sel_x(BITSELECT,127)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_adapt_scalar_trunc_3936_4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x(MUX,114)@0
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_s = i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstraoptimisedid_3936_0gr_adapt_scalar_trunc_3936_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_q = c_i5_9_3772_67_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_q = 5'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_element_extension_3908_3_x(BITJOIN,109)@0
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_element_extension_3908_3_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_c_i3_0_3908_4gr_x_q, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3902_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstraoptimisedid_3772_26_mux_x_q};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x(CHOOSEBITS,105)@0
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_element_extension_3908_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_a[4:4];

    // i_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3772_29(LOGICAL,44)@0
    assign i_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3772_29_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31(BLACKBOX,61)@0
    // in in_empty_in@20000000
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    DijkstraOptimisedID_i_llvm_fpga_push_i1_0000optimisedid_3926_0gr thei_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3772_29_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b9_dummy_dijkstraoptimisedid_3772_2gr(BLACKBOX,56)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_dummy_th0000optimisedid_3777_0gr thei_llvm_fpga_dummy_thread_dijkstraoptimisedid_b9_dummy_dijkstraoptimisedid_3772_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b9_dummy_dijkstraoptimisedid_3772_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr(BLACKBOX,58)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_forked_d0000optimisedid_3785_0gr thei_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr(BLACKBOX,60)@0
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    DijkstraOptimisedID_i_llvm_fpga_pipeline0000optimisedid_3798_0gr thei_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr (
        .in_data_in(i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out),
        .in_dummy_in(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b9_dummy_dijkstraoptimisedid_3772_2gr_out_dummy_out),
        .in_forked_in(i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31_out_feedback_out_1),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_dijkstraoptimisedid_3772_31_out_feedback_valid_out_1),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,80)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,84)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,86)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,88)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,148)@0 + 1
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

    // redist0_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q_1(DELAY,183)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q_1_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q;
        end
    end

    // i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_const_63(CONSTANT,46)
    assign i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_const_63_q = 59'b00000000000000000000000000000000000000000000000000000000000;

    // i_unnamed_dijkstraoptimisedid_3772_13_vt_const_31(CONSTANT,74)
    assign i_unnamed_dijkstraoptimisedid_3772_13_vt_const_31_q = 27'b000000000000000000000000000;

    // c_i5_0_3772_57(CONSTANT,34)
    assign c_i5_0_3772_57_q = 5'b00000;

    // i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_const_31(CONSTANT,50)
    assign i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_const_31_q = 26'b00000000000000000000000000;

    // i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23(ADD,59)@1
    assign i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_a = {1'b0, i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_b = {5'b00000, VCC_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_o = $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_a) + $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_b);
    assign i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_q = i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_o[5:0];

    // i_inc99_i_zext_dijkstraoptimisedid_3772_24_sel_x(BITSELECT,104)@1
    assign i_inc99_i_zext_dijkstraoptimisedid_3772_24_sel_x_b = {26'b00000000000000000000000000, i_llvm_fpga_int_add_i6_i5_i1_inc99_i_i_dijkstraoptimisedid_3772_23_q[5:0]};

    // i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_select_5(BITSELECT,52)@1
    assign i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_select_5_b = i_inc99_i_zext_dijkstraoptimisedid_3772_24_sel_x_b[5:0];

    // i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_join(BITJOIN,51)@1
    assign i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_join_q = {i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_const_31_q, i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_select_5_b};

    // i_unnamed_dijkstraoptimisedid_3772_25_sel_x(BITSELECT,139)@1
    assign i_unnamed_dijkstraoptimisedid_3772_25_sel_x_b = i_inc99_i_zext_dijkstraoptimisedid_3772_24_vt_join_q[4:0];

    // i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_element_extension_3918_2_x(BITJOIN,130)@1
    assign i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_element_extension_3918_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_c_i3_0_3908_4gr_x_q, i_unnamed_dijkstraoptimisedid_3772_25_sel_x_b};

    // valid_fanout_reg10(REG,158)@0 + 1
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

    // valid_fanout_reg9(REG,157)@0 + 1
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

    // i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x(FIFODELAY,131)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_stall = ~ (valid_fanout_reg10_q & VCC_q);
    assign i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_valid = valid_fanout_reg9_q & VCC_q;
    assign i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_data = i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_element_extension_3918_2_x_q;
    assign i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_element_extension_3918_2_x_q),
        .o_data(i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_adapt_scalar_trunc_3918_4_sel_x(BITSELECT,133)@1
    assign i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_adapt_scalar_trunc_3918_4_sel_x_b = i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_1gr_x_o_data[4:0];

    // redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out_1(DELAY,185)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x(MUX,115)@1
    assign i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_s = redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_q = i_llvm_fpga_push_i5_i89_0_i8_narrowing_push11_dijkstraoptimisedid_3918_0gr_adapt_scalar_trunc_3918_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_q = c_i5_0_3772_57_q;
            default : i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_q = 5'b0;
        endcase
    end

    // i_unnamed_dijkstraoptimisedid_3772_13_sel_x(BITSELECT,138)@1
    assign i_unnamed_dijkstraoptimisedid_3772_13_sel_x_b = {27'b000000000000000000000000000, i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3853_0gr_i_llvm_fpga_pop_i5_i89_0_i8_narrowing_pop11_dijkstraoptimisedid_3772_12_mux_x_q[4:0]};

    // i_unnamed_dijkstraoptimisedid_3772_13_vt_select_4(BITSELECT,76)@1
    assign i_unnamed_dijkstraoptimisedid_3772_13_vt_select_4_b = i_unnamed_dijkstraoptimisedid_3772_13_sel_x_b[4:0];

    // i_unnamed_dijkstraoptimisedid_3772_13_vt_join(BITJOIN,75)@1
    assign i_unnamed_dijkstraoptimisedid_3772_13_vt_join_q = {i_unnamed_dijkstraoptimisedid_3772_13_vt_const_31_q, i_unnamed_dijkstraoptimisedid_3772_13_vt_select_4_b};

    // i_idxprom94_i_dijkstraoptimisedid_3772_14_sel_x(BITSELECT,103)@1
    assign i_idxprom94_i_dijkstraoptimisedid_3772_14_sel_x_b = {32'b00000000000000000000000000000000, i_unnamed_dijkstraoptimisedid_3772_13_vt_join_q[31:0]};

    // i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_select_4(BITSELECT,48)@1
    assign i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_select_4_b = i_idxprom94_i_dijkstraoptimisedid_3772_14_sel_x_b[4:0];

    // i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_join(BITJOIN,47)@1
    assign i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_join_q = {i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_const_63_q, i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_select_4_b};

    // i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_narrow_x(BITSELECT,99)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_narrow_x_b = i_idxprom94_i_dijkstraoptimisedid_3772_14_vt_join_q[61:0];

    // i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_shift_join_x(BITJOIN,100)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_shift_join_x_q = {i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_narrow_x_b, i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_const_1_q};

    // i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,181)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg8(REG,156)@0 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21(BLACKBOX,62)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraOptimisedID_i_llvm_fpga_sync_buf0000optimisedid_3885_0gr thei_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21 (
        .in_buffer_in(in_arg_out_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_select_63(BITSELECT,65)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_join(BITJOIN,64)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_select_63_b, i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_const_1_q};

    // i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_lhsMSBs_select(BITSELECT,177)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_out_dist_sync_buffer_dijkstraoptimisedid_3772_21_vt_join_q[63:2]);

    // i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums(ADD,178)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_split_join(BITJOIN,179)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_split_join_q = {i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_MSBs_sums_q, i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_const_1_q};

    // i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_dupName_0_trunc_sel_x(BITSELECT,102)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_dupName_0_trunc_sel_x_b = i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_add_x_split_join_q[63:0];

    // i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_select_63(BITSELECT,40)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_select_63_b = i_arrayidx97_i_dijkstraoptimisedid_3890_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_const_1(CONSTANT,38)
    assign i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_const_1_q = 2'b00;

    // i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_join(BITJOIN,39)@1
    assign i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_join_q = {i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_select_63_b, i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_const_1_q};

    // valid_fanout_reg6(REG,154)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_2439_dijkstraoptimisedid_3772_11(BLACKBOX,57)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_3848_0gr thei_llvm_fpga_ffwd_dest_i32_acl_2439_dijkstraoptimisedid_3772_11 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i32_acl_2439_dijkstraoptimisedid_3772_11_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2_3772_60(CONSTANT,28)
    assign c_i32_2_3772_60_q = 32'b00000000000000000000000000000010;

    // i_sel_bits312_dijkstraoptimisedid_3772_15_vt_const_31(CONSTANT,67)
    assign i_sel_bits312_dijkstraoptimisedid_3772_15_vt_const_31_q = 29'b00000000000000000000000000000;

    // i_sel_bits312_dijkstraoptimisedid_3772_15_BitSelect_for_a(BITSELECT,173)@1
    assign i_sel_bits312_dijkstraoptimisedid_3772_15_BitSelect_for_a_b = $signed(i_unnamed_dijkstraoptimisedid_3772_13_vt_join_q[2:0]);

    // i_sel_bits312_dijkstraoptimisedid_3772_15_join(BITJOIN,174)@1
    assign i_sel_bits312_dijkstraoptimisedid_3772_15_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_sel_bits312_dijkstraoptimisedid_3772_15_BitSelect_for_a_b};

    // i_sel_bits312_dijkstraoptimisedid_3772_15_vt_select_2(BITSELECT,69)@1
    assign i_sel_bits312_dijkstraoptimisedid_3772_15_vt_select_2_b = i_sel_bits312_dijkstraoptimisedid_3772_15_join_q[2:0];

    // i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join(BITJOIN,68)@1
    assign i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q = {i_sel_bits312_dijkstraoptimisedid_3772_15_vt_const_31_q, i_sel_bits312_dijkstraoptimisedid_3772_15_vt_select_2_b};

    // dupName_0_comparator_x(LOGICAL,83)@1
    assign dupName_0_comparator_x_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_2_3772_60_q ? 1'b1 : 1'b0);

    // c_i32_1_3772_59(CONSTANT,27)
    assign c_i32_1_3772_59_q = 32'b00000000000000000000000000000001;

    // comparator(LOGICAL,37)@1
    assign comparator_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_1_3772_59_q ? 1'b1 : 1'b0);

    // valid_fanout_reg5(REG,153)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x(BLACKBOX,112)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_3835_0gr thei_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .in_intel_reserved_ffwd_22_0_0_tpl(in_intel_reserved_ffwd_22_0_0_tpl),
        .in_intel_reserved_ffwd_22_0_1_tpl(in_intel_reserved_ffwd_22_0_1_tpl),
        .in_intel_reserved_ffwd_22_0_2_tpl(in_intel_reserved_ffwd_22_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_22_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_0_tpl),
        .out_dest_data_out_22_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_1_tpl),
        .out_dest_data_out_22_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0_3772_65(CONSTANT,26)
    assign c_i32_0_3772_65_q = 32'b00000000000000000000000000000000;

    // dupName_6_comparator_x(LOGICAL,92)@1
    assign dupName_6_comparator_x_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_0_3772_65_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt325_dijkstraoptimisedid_3772_17_opt(SELECTOR,144)@1
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt325_dijkstraoptimisedid_3772_17_opt_q = i_llvm_fpga_ffwd_dest_i32_acl_2439_dijkstraoptimisedid_3772_11_out_dest_data_out_23_0;
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt325_dijkstraoptimisedid_3772_17_opt_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_2_tpl;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt325_dijkstraoptimisedid_3772_17_opt_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_1_tpl;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt325_dijkstraoptimisedid_3772_17_opt_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_assign32438_dijkstraoptimisedid_3772_10_aunroll_x_out_dest_data_out_22_0_0_tpl;
        end
    end

    // i_sel_shr326_dijkstraoptimisedid_3772_18_vt_const_31(CONSTANT,70)
    assign i_sel_shr326_dijkstraoptimisedid_3772_18_vt_const_31_q = 30'b000000000000000000000000000000;

    // i_sel_shr326_dijkstraoptimisedid_3874_0gr_shift_x_fs(BITSHIFT,180)@1
    assign i_sel_shr326_dijkstraoptimisedid_3874_0gr_shift_x_fs_qint = i_unnamed_dijkstraoptimisedid_3772_13_vt_join_q;
    assign i_sel_shr326_dijkstraoptimisedid_3874_0gr_shift_x_fs_q = i_sel_shr326_dijkstraoptimisedid_3874_0gr_shift_x_fs_qint[31:3];

    // i_sel_shr326_dijkstraoptimisedid_3772_18_vt_select_1(BITSELECT,72)@1
    assign i_sel_shr326_dijkstraoptimisedid_3772_18_vt_select_1_in = {3'b000, i_sel_shr326_dijkstraoptimisedid_3874_0gr_shift_x_fs_q};
    assign i_sel_shr326_dijkstraoptimisedid_3772_18_vt_select_1_b = i_sel_shr326_dijkstraoptimisedid_3772_18_vt_select_1_in[1:0];

    // i_sel_shr326_dijkstraoptimisedid_3772_18_vt_join(BITJOIN,71)@1
    assign i_sel_shr326_dijkstraoptimisedid_3772_18_vt_join_q = {i_sel_shr326_dijkstraoptimisedid_3772_18_vt_const_31_q, i_sel_shr326_dijkstraoptimisedid_3772_18_vt_select_1_b};

    // dupName_10_comparator_x(LOGICAL,96)@1
    assign dupName_10_comparator_x_q = $unsigned(i_sel_shr326_dijkstraoptimisedid_3772_18_vt_join_q == c_i32_1_3772_59_q ? 1'b1 : 1'b0);

    // valid_fanout_reg4(REG,152)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x(BLACKBOX,111)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_3814_0gr thei_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .in_intel_reserved_ffwd_21_0_0_tpl(in_intel_reserved_ffwd_21_0_0_tpl),
        .in_intel_reserved_ffwd_21_0_1_tpl(in_intel_reserved_ffwd_21_0_1_tpl),
        .in_intel_reserved_ffwd_21_0_2_tpl(in_intel_reserved_ffwd_21_0_2_tpl),
        .in_intel_reserved_ffwd_21_0_3_tpl(in_intel_reserved_ffwd_21_0_3_tpl),
        .in_intel_reserved_ffwd_21_0_4_tpl(in_intel_reserved_ffwd_21_0_4_tpl),
        .in_intel_reserved_ffwd_21_0_5_tpl(in_intel_reserved_ffwd_21_0_5_tpl),
        .in_intel_reserved_ffwd_21_0_6_tpl(in_intel_reserved_ffwd_21_0_6_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_21_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_0_tpl),
        .out_dest_data_out_21_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_1_tpl),
        .out_dest_data_out_21_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_2_tpl),
        .out_dest_data_out_21_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_3_tpl),
        .out_dest_data_out_21_0_4_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_4_tpl),
        .out_dest_data_out_21_0_5_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_5_tpl),
        .out_dest_data_out_21_0_6_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7_3772_58(CONSTANT,33)
    assign c_i32_7_3772_58_q = 32'b00000000000000000000000000000111;

    // dupName_5_comparator_x(LOGICAL,91)@1
    assign dupName_5_comparator_x_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_7_3772_58_q ? 1'b1 : 1'b0);

    // c_i32_6_3772_64(CONSTANT,32)
    assign c_i32_6_3772_64_q = 32'b00000000000000000000000000000110;

    // dupName_4_comparator_x(LOGICAL,90)@1
    assign dupName_4_comparator_x_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_6_3772_64_q ? 1'b1 : 1'b0);

    // c_i32_5_3772_63(CONSTANT,31)
    assign c_i32_5_3772_63_q = 32'b00000000000000000000000000000101;

    // dupName_3_comparator_x(LOGICAL,89)@1
    assign dupName_3_comparator_x_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_5_3772_63_q ? 1'b1 : 1'b0);

    // c_i32_4_3772_62(CONSTANT,30)
    assign c_i32_4_3772_62_q = 32'b00000000000000000000000000000100;

    // dupName_2_comparator_x(LOGICAL,87)@1
    assign dupName_2_comparator_x_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_4_3772_62_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1(SELECTOR,146)@1
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_v = 1'b0;
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_q = $signed(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_5_tpl);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_q = $signed(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_4_tpl);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_q = $signed(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_3_tpl);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_v = 1'b1;
        end
    end

    // c_i32_3_3772_61(CONSTANT,29)
    assign c_i32_3_3772_61_q = 32'b00000000000000000000000000000011;

    // dupName_1_comparator_x(LOGICAL,85)@1
    assign dupName_1_comparator_x_q = $unsigned(i_sel_bits312_dijkstraoptimisedid_3772_15_vt_join_q == c_i32_3_3772_61_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0(SELECTOR,145)@1
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_v = 1'b0;
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_q = $signed(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_2_tpl);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_v = 1'b1;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_q = $signed(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_1_tpl);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_v = 1'b1;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_q = $signed(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_0_tpl);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev1_id0(SELECTOR,147)@1
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev1_id0_q = i_llvm_fpga_ffwd_dest_i32_acl_2439_dijkstraoptimisedid_3772_11_out_dest_data_out_23_0;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev1_id0_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_assign31937_dijkstraoptimisedid_3772_9gr_aunroll_x_out_dest_data_out_21_0_6_tpl;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id1_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev0_id0_q;
        end
    end

    // dupName_9_comparator_x(LOGICAL,95)@1
    assign dupName_9_comparator_x_q = $unsigned(i_sel_shr326_dijkstraoptimisedid_3772_18_vt_join_q == c_i32_0_3772_65_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt330_dijkstraoptimisedid_3772_20(SELECTOR,53)@1
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt330_dijkstraoptimisedid_3772_20_q = i_llvm_fpga_ffwd_dest_i32_acl_2439_dijkstraoptimisedid_3772_11_out_dest_data_out_23_0;
        if (dupName_10_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt330_dijkstraoptimisedid_3772_20_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt325_dijkstraoptimisedid_3772_17_opt_q;
        end
        if (dupName_9_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt330_dijkstraoptimisedid_3772_20_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt320_dijkstraoptimisedid_3772_16_opt_lev1_id0_q;
        end
    end

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_c_i7_0_3806_3gr_x(CONSTANT,117)
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_c_i7_0_3806_3gr_x_q = 7'b0000000;

    // redist1_i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_data_out_1(DELAY,184)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_data_out_1_q <= i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_data_out;
        end
    end

    // i_dijkstraoptimisedid_b9_next_iter_isreal_dijkstraoptimisedid_3772_7gr(LOGICAL,42)@1
    assign i_dijkstraoptimisedid_b9_next_iter_isreal_dijkstraoptimisedid_3772_7gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_q & redist1_i_llvm_fpga_pipeline_keep_going_dijkstraoptimisedid_3772_6gr_out_data_out_1_q;

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_element_extension_3806_2_x(BITJOIN,118)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_element_extension_3806_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_c_i7_0_3806_3gr_x_q, i_dijkstraoptimisedid_b9_next_iter_isreal_dijkstraoptimisedid_3772_7gr_q};

    // valid_fanout_reg3(REG,151)@0 + 1
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

    // valid_fanout_reg2(REG,150)@0 + 1
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

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x(FIFODELAY,119)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_data = i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_element_extension_3806_2_x_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_element_extension_3806_2_x_q),
        .o_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_adapt_scalar_trunc_3806_4_sel_x(BITSELECT,121)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_adapt_scalar_trunc_3806_4_sel_x_b = i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x(MUX,113)@1
    assign i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_s = redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b9_forked_dijkstraoptimisedid_3772_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_q = i_llvm_fpga_push_i1_dijkstraoptimisedid_b9_next_iter_isreal_push_dijkstraoptimisedid_3806_0gr_adapt_scalar_trunc_3806_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_q = 1'b0;
        endcase
    end

    // i_dijkstraoptimisedid_b9_current_iter_isspec_dijkstraoptimisedid_3772_5gr(LOGICAL,41)@1
    assign i_dijkstraoptimisedid_b9_current_iter_isspec_dijkstraoptimisedid_3772_5gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3793_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b9_current_iter_isreal_dijkstraoptimisedid_3772_4gr_mux_x_q ^ VCC_q;

    // sync_out_9_aunroll_x(GPOUT,142)@1
    assign out_DijkstraOptimisedID_B9_current_iter_isspec = i_dijkstraoptimisedid_b9_current_iter_isspec_dijkstraoptimisedid_3772_5gr_q;
    assign out_c0_exi4326_0_tpl = GND_q;
    assign out_c0_exi4326_1_tpl = i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt330_dijkstraoptimisedid_3772_20_q;
    assign out_c0_exi4326_2_tpl = i_arrayidx97_i_dijkstraoptimisedid_3772_22_vt_join_q;
    assign out_c0_exi4326_3_tpl = GND_q;
    assign out_c0_exi4326_4_tpl = redist0_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body93_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_fpga_indvars_iv_pop10_struct_0_shuffle_bit4_dijkstraoptimisedid_3908_0gr_NO_NAME_x_q_1_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
