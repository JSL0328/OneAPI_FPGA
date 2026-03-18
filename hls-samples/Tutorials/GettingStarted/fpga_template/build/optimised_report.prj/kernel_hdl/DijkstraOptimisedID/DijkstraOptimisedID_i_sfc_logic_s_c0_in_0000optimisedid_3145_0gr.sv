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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000optimisedid_3145_0gr (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_DijkstraOptimisedID_B8_current_iter_isspec,
    output wire [0:0] out_c0_exi28_0_tpl,
    output wire [31:0] out_c0_exi28_1_tpl,
    output wire [31:0] out_c0_exi28_2_tpl,
    output wire [31:0] out_c0_exi28_3_tpl,
    output wire [31:0] out_c0_exi28_4_tpl,
    output wire [31:0] out_c0_exi28_5_tpl,
    output wire [31:0] out_c0_exi28_6_tpl,
    output wire [31:0] out_c0_exi28_7_tpl,
    output wire [31:0] out_c0_exi28_8_tpl,
    output wire [31:0] out_c0_exi28_9_tpl,
    output wire [31:0] out_c0_exi28_10_tpl,
    output wire [7:0] out_c0_exi28_11_tpl,
    output wire [7:0] out_c0_exi28_12_tpl,
    output wire [7:0] out_c0_exi28_13_tpl,
    output wire [7:0] out_c0_exi28_14_tpl,
    output wire [7:0] out_c0_exi28_15_tpl,
    output wire [7:0] out_c0_exi28_16_tpl,
    output wire [7:0] out_c0_exi28_17_tpl,
    output wire [7:0] out_c0_exi28_18_tpl,
    output wire [7:0] out_c0_exi28_19_tpl,
    output wire [7:0] out_c0_exi28_20_tpl,
    output wire [7:0] out_c0_exi28_21_tpl,
    output wire [31:0] out_c0_exi28_22_tpl,
    output wire [31:0] out_c0_exi28_23_tpl,
    output wire [0:0] out_c0_exi28_24_tpl,
    output wire [0:0] out_c0_exi28_25_tpl,
    output wire [0:0] out_c0_exi28_26_tpl,
    output wire [0:0] out_c0_exi28_27_tpl,
    output wire [0:0] out_c0_exi28_28_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni26_0_tpl,
    input wire [31:0] in_c0_eni26_1_tpl,
    input wire [0:0] in_c0_eni26_2_tpl,
    input wire [31:0] in_c0_eni26_3_tpl,
    input wire [31:0] in_c0_eni26_4_tpl,
    input wire [31:0] in_c0_eni26_5_tpl,
    input wire [31:0] in_c0_eni26_6_tpl,
    input wire [31:0] in_c0_eni26_7_tpl,
    input wire [31:0] in_c0_eni26_8_tpl,
    input wire [31:0] in_c0_eni26_9_tpl,
    input wire [31:0] in_c0_eni26_10_tpl,
    input wire [31:0] in_c0_eni26_11_tpl,
    input wire [7:0] in_c0_eni26_12_tpl,
    input wire [7:0] in_c0_eni26_13_tpl,
    input wire [7:0] in_c0_eni26_14_tpl,
    input wire [7:0] in_c0_eni26_15_tpl,
    input wire [7:0] in_c0_eni26_16_tpl,
    input wire [7:0] in_c0_eni26_17_tpl,
    input wire [7:0] in_c0_eni26_18_tpl,
    input wire [7:0] in_c0_eni26_19_tpl,
    input wire [7:0] in_c0_eni26_20_tpl,
    input wire [7:0] in_c0_eni26_21_tpl,
    input wire [7:0] in_c0_eni26_22_tpl,
    input wire [31:0] in_c0_eni26_23_tpl,
    input wire [0:0] in_c0_eni26_24_tpl,
    input wire [0:0] in_c0_eni26_25_tpl,
    input wire [0:0] in_c0_eni26_26_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0_3148_235_q;
    wire [31:0] c_i32_1_3148_242_q;
    wire [31:0] c_i32_1_3148_250_q;
    wire [31:0] c_i32_2_3148_243_q;
    wire [31:0] c_i32_3_3148_244_q;
    wire [31:0] c_i32_4_3148_245_q;
    wire [31:0] c_i32_5_3148_246_q;
    wire [31:0] c_i32_6_3148_247_q;
    wire [31:0] c_i32_7_3148_241_q;
    wire [4:0] c_i5_0_3148_240_q;
    wire [4:0] c_i5_1_3148_254_q;
    wire [4:0] c_i5_9_3148_252_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [0:0] i_acl_23_dijkstraoptimisedid_3148_67_s;
    reg [31:0] i_acl_23_dijkstraoptimisedid_3148_67_q;
    wire [0:0] i_case_stmt270_struct_0_shuffle_bit0_not_dijkstraoptimisedid_3148_48_q;
    wire [0:0] i_cmp37_i_dijkstraoptimisedid_3148_50_q;
    wire [33:0] i_cmp42_i_dijkstraoptimisedid_3148_63_a;
    wire [33:0] i_cmp42_i_dijkstraoptimisedid_3148_63_b;
    logic [33:0] i_cmp42_i_dijkstraoptimisedid_3148_63_o;
    wire [0:0] i_cmp42_i_dijkstraoptimisedid_3148_63_c;
    wire [0:0] i_dijkstraoptimisedid_b8_current_iter_isspec_dijkstraoptimisedid_3148_7gr_q;
    wire [0:0] i_dijkstraoptimisedid_b8_next_iter_isreal_dijkstraoptimisedid_3148_9gr_q;
    wire [0:0] i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q;
    wire [5:0] i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_a;
    wire [5:0] i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_b;
    logic [5:0] i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_o;
    wire [5:0] i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_q;
    wire [25:0] i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_const_31_q;
    wire [31:0] i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_join_q;
    wire [5:0] i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_select_5_b;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt290_dijkstraoptimisedid_3148_56_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt310_dijkstraoptimisedid_3148_62_q;
    reg [7:0] i_llvm_fpga_case_i8_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_35s_case_stmt270_dijkstraoptimisedid_3148_45_q;
    wire [0:0] i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b8_dummy_dijkstraoptimisedid_3148_4gr_out_dummy_out;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_fanout_adaptor_dijkstraoptimisedid_3148_76_q;
    wire [0:0] i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_a;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_b;
    logic [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_o;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102_out_feedback_valid_out_3;
    wire [0:0] i_notcmp51_dijkstraoptimisedid_3148_101_q;
    wire [0:0] i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_s;
    reg [0:0] i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_q;
    wire [28:0] i_sel_bits252_dijkstraoptimisedid_3148_39_vt_const_31_q;
    wire [31:0] i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q;
    wire [2:0] i_sel_bits252_dijkstraoptimisedid_3148_39_vt_select_2_b;
    wire [31:0] i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q;
    wire [2:0] i_sel_bits292_dijkstraoptimisedid_3148_57_vt_select_2_b;
    wire [29:0] i_sel_shr266_dijkstraoptimisedid_3148_43_vt_const_31_q;
    wire [31:0] i_sel_shr266_dijkstraoptimisedid_3148_43_vt_join_q;
    wire [31:0] i_sel_shr266_dijkstraoptimisedid_3148_43_vt_select_1_in;
    wire [1:0] i_sel_shr266_dijkstraoptimisedid_3148_43_vt_select_1_b;
    wire [2:0] i_sel_shr306_dijkstraoptimisedid_3148_60_vt_const_31_q;
    wire [31:0] i_sel_shr306_dijkstraoptimisedid_3148_60_vt_join_q;
    wire [31:0] i_sel_shr306_dijkstraoptimisedid_3148_60_vt_select_28_in;
    wire [28:0] i_sel_shr306_dijkstraoptimisedid_3148_60_vt_select_28_b;
    wire [0:0] i_selcond_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_65_q;
    wire [26:0] i_unnamed_dijkstraoptimisedid_3148_38_vt_const_31_q;
    wire [31:0] i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q;
    wire [4:0] i_unnamed_dijkstraoptimisedid_3148_38_vt_select_4_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_sel_x_b;
    wire [31:0] c_i32_1_3148_250_recast_x_q;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_qi;
    reg [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_qi;
    reg [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_qi;
    reg [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_qi;
    reg [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_9_comparator_x_q;
    wire [0:0] dupName_10_comparator_x_q;
    wire [0:0] dupName_23_comparator_x_q;
    wire [0:0] dupName_24_comparator_x_q;
    wire [0:0] dupName_25_comparator_x_q;
    wire [0:0] dupName_26_comparator_x_q;
    wire [0:0] dupName_27_comparator_x_q;
    wire [0:0] dupName_28_comparator_x_q;
    wire [0:0] dupName_29_comparator_x_q;
    wire [0:0] dupName_30_comparator_x_q;
    wire [0:0] dupName_33_comparator_x_q;
    wire [0:0] dupName_34_comparator_x_q;
    wire [31:0] i_inc44_i_zext_dijkstraoptimisedid_3148_69_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_element_extension_3401_3_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_c_i7_0_3184_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_element_extension_3184_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_adapt_scalar_trunc_3184_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_element_extension_3594_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_adapt_scalar_trunc_3594_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_element_extension_3582_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_adapt_scalar_trunc_3582_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_element_extension_3606_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_adapt_scalar_trunc_3606_4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_element_extension_3570_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_adapt_scalar_trunc_3570_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_element_extension_3551_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_adapt_scalar_trunc_3551_4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_valid;
    wire i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_stall;
    wire i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_o_data;
    wire [31:0] i_unnamed_dijkstraoptimisedid_3148_38_sel_x_b;
    wire [4:0] i_unnamed_dijkstraoptimisedid_3148_70_sel_x_b;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt285_dijkstraoptimisedid_3148_54_opt_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt305_dijkstraoptimisedid_3148_59_opt_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev1_id0_q;
    reg [7:0] i_llvm_fpga_case_i8_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_34s_case_stmt265_dijkstraoptimisedid_3148_42_opt_q;
    reg [7:0] i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_v;
    reg [7:0] i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_v;
    reg [7:0] i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev1_id0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg40_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg41_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg42_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg43_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg44_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg45_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg46_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg47_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg48_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg49_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg50_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg51_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg52_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg53_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg54_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg55_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg56_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg57_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg58_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg59_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg60_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg61_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg62_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg63_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg64_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg65_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg66_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg67_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg68_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg69_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg70_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg71_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg72_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg73_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg74_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg75_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg77_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg78_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg80_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg81_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg83_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg84_q;
    wire [2:0] i_sel_bits252_dijkstraoptimisedid_3148_39_BitSelect_for_a_b;
    wire [31:0] i_sel_bits252_dijkstraoptimisedid_3148_39_join_q;
    wire [2:0] i_sel_bits292_dijkstraoptimisedid_3148_57_BitSelect_for_a_b;
    wire [31:0] i_sel_bits292_dijkstraoptimisedid_3148_57_join_q;
    wire [28:0] i_sel_shr266_dijkstraoptimisedid_3308_0gr_shift_x_fs_q;
    wire [31:0] i_sel_shr266_dijkstraoptimisedid_3308_0gr_shift_x_fs_qint;
    wire [28:0] i_sel_shr306_dijkstraoptimisedid_3375_0gr_shift_x_fs_q;
    wire [31:0] i_sel_shr306_dijkstraoptimisedid_3375_0gr_shift_x_fs_qint;
    reg [31:0] redist0_sync_together_3148_259_aunroll_x_in_c0_eni26_1_tpl_1_q;
    reg [31:0] redist1_sync_together_3148_259_aunroll_x_in_c0_eni26_3_tpl_1_q;
    reg [31:0] redist2_sync_together_3148_259_aunroll_x_in_c0_eni26_4_tpl_1_q;
    reg [31:0] redist3_sync_together_3148_259_aunroll_x_in_c0_eni26_5_tpl_1_q;
    reg [31:0] redist4_sync_together_3148_259_aunroll_x_in_c0_eni26_6_tpl_1_q;
    reg [31:0] redist5_sync_together_3148_259_aunroll_x_in_c0_eni26_7_tpl_1_q;
    reg [31:0] redist6_sync_together_3148_259_aunroll_x_in_c0_eni26_8_tpl_1_q;
    reg [31:0] redist7_sync_together_3148_259_aunroll_x_in_c0_eni26_9_tpl_1_q;
    reg [31:0] redist8_sync_together_3148_259_aunroll_x_in_c0_eni26_10_tpl_1_q;
    reg [31:0] redist9_sync_together_3148_259_aunroll_x_in_c0_eni26_11_tpl_1_q;
    reg [7:0] redist10_sync_together_3148_259_aunroll_x_in_c0_eni26_12_tpl_1_q;
    reg [7:0] redist11_sync_together_3148_259_aunroll_x_in_c0_eni26_13_tpl_1_q;
    reg [7:0] redist12_sync_together_3148_259_aunroll_x_in_c0_eni26_14_tpl_1_q;
    reg [7:0] redist13_sync_together_3148_259_aunroll_x_in_c0_eni26_15_tpl_1_q;
    reg [7:0] redist14_sync_together_3148_259_aunroll_x_in_c0_eni26_16_tpl_1_q;
    reg [7:0] redist15_sync_together_3148_259_aunroll_x_in_c0_eni26_17_tpl_1_q;
    reg [7:0] redist16_sync_together_3148_259_aunroll_x_in_c0_eni26_18_tpl_1_q;
    reg [7:0] redist17_sync_together_3148_259_aunroll_x_in_c0_eni26_19_tpl_1_q;
    reg [7:0] redist18_sync_together_3148_259_aunroll_x_in_c0_eni26_20_tpl_1_q;
    reg [7:0] redist19_sync_together_3148_259_aunroll_x_in_c0_eni26_21_tpl_1_q;
    reg [7:0] redist20_sync_together_3148_259_aunroll_x_in_c0_eni26_22_tpl_2_q;
    reg [7:0] redist20_sync_together_3148_259_aunroll_x_in_c0_eni26_22_tpl_2_delay_0;
    reg [31:0] redist21_sync_together_3148_259_aunroll_x_in_c0_eni26_23_tpl_1_q;
    reg [0:0] redist22_sync_together_3148_259_aunroll_x_in_c0_eni26_24_tpl_1_q;
    reg [0:0] redist23_sync_together_3148_259_aunroll_x_in_c0_eni26_25_tpl_1_q;
    reg [0:0] redist24_sync_together_3148_259_aunroll_x_in_c0_eni26_26_tpl_1_q;
    reg [0:0] redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q;
    reg [7:0] redist26_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q_1_q;
    reg [7:0] redist27_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q_1_q;
    reg [7:0] redist28_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q_1_q;
    reg [7:0] redist29_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q_1_q;
    reg [7:0] redist30_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q_1_q;
    reg [7:0] redist31_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q_1_q;
    reg [7:0] redist32_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q_1_q;
    reg [7:0] redist33_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q_1_q;
    reg [7:0] redist34_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q_1_q;
    reg [7:0] redist35_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q_1_q;
    reg [31:0] redist36_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q_1_q;
    reg [31:0] redist37_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q_1_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q_1_q;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q_1_q;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q_1_q;
    reg [31:0] redist41_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q_1_q;
    reg [31:0] redist42_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q_1_q;
    reg [31:0] redist43_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q_1_q;
    reg [31:0] redist44_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q_1_q;
    reg [31:0] redist45_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q_1_q;
    reg [31:0] redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q_1_q;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q_1_q;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q_1_q;
    reg [0:0] redist50_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q_1_q;
    reg [31:0] redist51_i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q_1_q;
    reg [0:0] redist52_i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_data_out_1_q;
    reg [0:0] redist53_i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out_1_q;
    reg [0:0] redist54_i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q_1_q;
    reg [0:0] redist55_i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q_1_q;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_sel_shr306_dijkstraoptimisedid_3148_60_vt_const_31(CONSTANT,181)
    assign i_sel_shr306_dijkstraoptimisedid_3148_60_vt_const_31_q = 3'b000;

    // c_i5_9_3148_252(CONSTANT,137)
    assign c_i5_9_3148_252_q = 5'b01001;

    // c_i5_1_3148_254(CONSTANT,136)
    assign c_i5_1_3148_254_q = 5'b11111;

    // i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103(ADD,146)@0
    assign i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_q};
    assign i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_b = {1'b0, c_i5_1_3148_254_q};
    assign i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_o = $unsigned(i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_a) + $unsigned(i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_b);
    assign i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_q = i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_sel_x(BITSELECT,195)@0
    assign bgTrunc_i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_sel_x_b = i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_element_extension_3570_2_x(BITJOIN,337)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_element_extension_3570_2_x_q = {i_sel_shr306_dijkstraoptimisedid_3148_60_vt_const_31_q, bgTrunc_i_fpga_indvars_iv_next22_dijkstraoptimisedid_3148_103_sel_x_b};

    // i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x(FIFODELAY,338)@0 + 1
    // out o_data@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_stall = ~ (in_i_valid & VCC_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_valid = in_i_valid & VCC_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_element_extension_3570_2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_element_extension_3570_2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_adapt_scalar_trunc_3570_4_sel_x(BITSELECT,340)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_adapt_scalar_trunc_3570_4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x(MUX,262)@0
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_s = i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv21_push59_dijkstraoptimisedid_3570_0gr_adapt_scalar_trunc_3570_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_q = c_i5_9_3148_252_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_q = 5'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_element_extension_3401_3_x(BITJOIN,244)@0
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_element_extension_3401_3_x_q = {i_sel_shr306_dijkstraoptimisedid_3148_60_vt_const_31_q, i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3395_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv21_pop59_dijkstraoptimisedid_3148_71_mux_x_q};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_NO_NAME_x(CHOOSEBITS,240)@0
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_element_extension_3401_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_NO_NAME_x_a[4:4];

    // i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74(LOGICAL,145)@0
    assign i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_1s_v1i32_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_dijkstraoptimisedid_3401_0gr_NO_NAME_x_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102(BLACKBOX,167)@0
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    DijkstraOptimisedID_i_llvm_fpga_push_i1_0000optimisedid_3560_0gr thei_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b8_dummy_dijkstraoptimisedid_3148_4gr(BLACKBOX,160)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_dummy_th0000optimisedid_3155_0gr thei_llvm_fpga_dummy_thread_dijkstraoptimisedid_b8_dummy_dijkstraoptimisedid_3148_4gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b8_dummy_dijkstraoptimisedid_3148_4gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr(BLACKBOX,164)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_forked_d0000optimisedid_3163_0gr thei_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr(BLACKBOX,166)@0
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    DijkstraOptimisedID_i_llvm_fpga_pipeline0000optimisedid_3176_0gr thei_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr (
        .in_data_in(i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out),
        .in_dummy_in(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b8_dummy_dijkstraoptimisedid_3148_4gr_out_dummy_out),
        .in_forked_in(i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond54_dijkstraoptimisedid_3148_102_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,192)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,198)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,200)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,202)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_pipeline_valid_out;

    // redist25_sync_together_3148_259_aunroll_x_in_i_valid_1(DELAY,565)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg0(REG,404)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q;
        end
    end

    // redist24_sync_together_3148_259_aunroll_x_in_c0_eni26_26_tpl_1(DELAY,564)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_sync_together_3148_259_aunroll_x_in_c0_eni26_26_tpl_1_q <= in_c0_eni26_26_tpl;
        end
    end

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_c_i7_0_3184_3gr_x(CONSTANT,276)
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_c_i7_0_3184_3gr_x_q = 7'b0000000;

    // i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_element_extension_3606_2_x(BITJOIN,295)@1
    assign i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_element_extension_3606_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_c_i7_0_3184_3gr_x_q, i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q};

    // valid_fanout_reg84(REG,488)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg84_q <= in_i_valid;
        end
    end

    // valid_fanout_reg83(REG,487)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg83_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x(FIFODELAY,296)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_stall = ~ (valid_fanout_reg84_q & VCC_q);
    assign i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_valid = valid_fanout_reg83_q & VCC_q;
    assign i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_data = i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_element_extension_3606_2_x_q;
    assign i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_element_extension_3606_2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_adapt_scalar_trunc_3606_4_sel_x(BITSELECT,298)@1
    assign i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_adapt_scalar_trunc_3606_4_sel_x_b = i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_1gr_x_o_data[0:0];

    // i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr(REG,161)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr_q <= i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x(MUX,249)@1
    assign i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q = i_llvm_fpga_push_i1_notcmp5696_push85_dijkstraoptimisedid_3606_0gr_adapt_scalar_trunc_3606_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q = redist24_sync_together_3148_259_aunroll_x_in_c0_eni26_26_tpl_1_q;
            default : i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q = 1'b0;
        endcase
    end

    // redist47_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q_1(DELAY,587)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q_1_q <= i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q;
        end
    end

    // redist23_sync_together_3148_259_aunroll_x_in_c0_eni26_25_tpl_1(DELAY,563)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together_3148_259_aunroll_x_in_c0_eni26_25_tpl_1_q <= in_c0_eni26_25_tpl;
        end
    end

    // i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_element_extension_3594_2_x(BITJOIN,283)@1
    assign i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_element_extension_3594_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_c_i7_0_3184_3gr_x_q, i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q};

    // valid_fanout_reg81(REG,485)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg81_q <= in_i_valid;
        end
    end

    // valid_fanout_reg80(REG,484)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg80_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x(FIFODELAY,284)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_stall = ~ (valid_fanout_reg81_q & VCC_q);
    assign i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_valid = valid_fanout_reg80_q & VCC_q;
    assign i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_data = i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_element_extension_3594_2_x_q;
    assign i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_element_extension_3594_2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_adapt_scalar_trunc_3594_4_sel_x(BITSELECT,286)@1
    assign i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_adapt_scalar_trunc_3594_4_sel_x_b = i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x(MUX,247)@1
    assign i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q = i_llvm_fpga_push_i1_exitcond2695_push84_dijkstraoptimisedid_3594_0gr_adapt_scalar_trunc_3594_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q = redist23_sync_together_3148_259_aunroll_x_in_c0_eni26_25_tpl_1_q;
            default : i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q = 1'b0;
        endcase
    end

    // redist49_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q_1(DELAY,589)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q_1_q <= i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q;
        end
    end

    // redist22_sync_together_3148_259_aunroll_x_in_c0_eni26_24_tpl_1(DELAY,562)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together_3148_259_aunroll_x_in_c0_eni26_24_tpl_1_q <= in_c0_eni26_24_tpl;
        end
    end

    // i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_element_extension_3582_2_x(BITJOIN,289)@1
    assign i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_element_extension_3582_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_c_i7_0_3184_3gr_x_q, i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q};

    // valid_fanout_reg78(REG,482)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg78_q <= in_i_valid;
        end
    end

    // valid_fanout_reg77(REG,481)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg77_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x(FIFODELAY,290)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_stall = ~ (valid_fanout_reg78_q & VCC_q);
    assign i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_valid = valid_fanout_reg77_q & VCC_q;
    assign i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_data = i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_element_extension_3582_2_x_q;
    assign i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_element_extension_3582_2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_adapt_scalar_trunc_3582_4_sel_x(BITSELECT,292)@1
    assign i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_adapt_scalar_trunc_3582_4_sel_x_b = i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_1gr_x_o_data[0:0];

    // i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr(REG,162)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q <= i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x(MUX,248)@1
    assign i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q = i_llvm_fpga_push_i1_forked73_push62_dijkstraoptimisedid_3582_0gr_adapt_scalar_trunc_3582_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q = redist22_sync_together_3148_259_aunroll_x_in_c0_eni26_24_tpl_1_q;
            default : i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q = 1'b0;
        endcase
    end

    // redist48_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q_1(DELAY,588)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q_1_q <= i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q;
        end
    end

    // redist55_i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q_1(DELAY,595)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q_1_q <= i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q;
        end
    end

    // i_llvm_fpga_fanout_i1_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_fanout_adaptor_dijkstraoptimisedid_3148_76(REG,163)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_fanout_adaptor_dijkstraoptimisedid_3148_76_q <= redist55_i_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_dijkstraoptimisedid_3148_74_q_1_q;
        end
    end

    // i_notcmp51_dijkstraoptimisedid_3148_101(LOGICAL,168)@2
    assign i_notcmp51_dijkstraoptimisedid_3148_101_q = i_llvm_fpga_fanout_i1_fpga_indvars_iv21_pop59_struct_0_shuffle_bit4_not_fanout_adaptor_dijkstraoptimisedid_3148_76_q ^ VCC_q;

    // i_unnamed_dijkstraoptimisedid_3148_38_vt_const_31(CONSTANT,186)
    assign i_unnamed_dijkstraoptimisedid_3148_38_vt_const_31_q = 27'b000000000000000000000000000;

    // c_i5_0_3148_240(CONSTANT,135)
    assign c_i5_0_3148_240_q = 5'b00000;

    // i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_const_31(CONSTANT,148)
    assign i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_const_31_q = 26'b00000000000000000000000000;

    // i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68(ADD,165)@1
    assign i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_a = {1'b0, i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_b = {5'b00000, VCC_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_o = $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_a) + $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_b);
    assign i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_q = i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_o[5:0];

    // i_inc44_i_zext_dijkstraoptimisedid_3148_69_sel_x(BITSELECT,235)@1
    assign i_inc44_i_zext_dijkstraoptimisedid_3148_69_sel_x_b = {26'b00000000000000000000000000, i_llvm_fpga_int_add_i6_i5_i1_inc44_i_i_dijkstraoptimisedid_3148_68_q[5:0]};

    // i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_select_5(BITSELECT,150)@1
    assign i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_select_5_b = i_inc44_i_zext_dijkstraoptimisedid_3148_69_sel_x_b[5:0];

    // i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_join(BITJOIN,149)@1
    assign i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_join_q = {i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_const_31_q, i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_select_5_b};

    // i_unnamed_dijkstraoptimisedid_3148_70_sel_x(BITSELECT,389)@1
    assign i_unnamed_dijkstraoptimisedid_3148_70_sel_x_b = i_inc44_i_zext_dijkstraoptimisedid_3148_69_vt_join_q[4:0];

    // i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_element_extension_3551_2_x(BITJOIN,343)@1
    assign i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_element_extension_3551_2_x_q = {i_sel_shr306_dijkstraoptimisedid_3148_60_vt_const_31_q, i_unnamed_dijkstraoptimisedid_3148_70_sel_x_b};

    // valid_fanout_reg75(REG,479)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg75_q <= in_i_valid;
        end
    end

    // valid_fanout_reg74(REG,478)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg74_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x(FIFODELAY,344)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_stall = ~ (valid_fanout_reg75_q & VCC_q);
    assign i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_valid = valid_fanout_reg74_q & VCC_q;
    assign i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_data = i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_element_extension_3551_2_x_q;
    assign i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_element_extension_3551_2_x_q),
        .o_data(i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_adapt_scalar_trunc_3551_4_sel_x(BITSELECT,346)@1
    assign i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_adapt_scalar_trunc_3551_4_sel_x_b = i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x(MUX,263)@1
    assign i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_q = i_llvm_fpga_push_i5_i30_0_i5_narrowing_push60_dijkstraoptimisedid_3551_0gr_adapt_scalar_trunc_3551_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_q = c_i5_0_3148_240_q;
            default : i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_q = 5'b0;
        endcase
    end

    // i_unnamed_dijkstraoptimisedid_3148_38_sel_x(BITSELECT,388)@1
    assign i_unnamed_dijkstraoptimisedid_3148_38_sel_x_b = {27'b000000000000000000000000000, i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3284_0gr_i_llvm_fpga_pop_i5_i30_0_i5_narrowing_pop60_dijkstraoptimisedid_3148_37_mux_x_q[4:0]};

    // i_unnamed_dijkstraoptimisedid_3148_38_vt_select_4(BITSELECT,188)@1
    assign i_unnamed_dijkstraoptimisedid_3148_38_vt_select_4_b = i_unnamed_dijkstraoptimisedid_3148_38_sel_x_b[4:0];

    // i_unnamed_dijkstraoptimisedid_3148_38_vt_join(BITJOIN,187)@1
    assign i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q = {i_unnamed_dijkstraoptimisedid_3148_38_vt_const_31_q, i_unnamed_dijkstraoptimisedid_3148_38_vt_select_4_b};

    // redist51_i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q_1(DELAY,591)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q_1_q <= i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q;
        end
    end

    // c_i32_1_3148_250(CONSTANT,128)
    assign c_i32_1_3148_250_q = 32'b11111111111111111111111111111111;

    // valid_fanout_reg73(REG,477)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg73_q <= redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg72(REG,476)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg72_q <= redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x(FIFODELAY,332)@2 + 1
    // out o_data@2
    assign i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_stall = ~ (valid_fanout_reg73_q & VCC_q);
    assign i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_valid = valid_fanout_reg72_q & VCC_q;
    assign i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_data = i_acl_23_dijkstraoptimisedid_3148_67_q;
    assign i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_acl_23_dijkstraoptimisedid_3148_67_q),
        .o_data(i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist54_i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q_1(DELAY,594)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q_1_q <= i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
        end
    end

    // i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x(MUX,261)@2
    assign i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_s = redist54_i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q = i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_0gr_i_llvm_fpga_push_i32_u_0_i4_push61_dijkstraoptimisedid_3545_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q = c_i32_1_3148_250_q;
            default : i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q = 32'b0;
        endcase
    end

    // c_i32_2_3148_243(CONSTANT,129)
    assign c_i32_2_3148_243_q = 32'b00000000000000000000000000000010;

    // i_sel_bits252_dijkstraoptimisedid_3148_39_vt_const_31(CONSTANT,171)
    assign i_sel_bits252_dijkstraoptimisedid_3148_39_vt_const_31_q = 29'b00000000000000000000000000000;

    // i_sel_bits252_dijkstraoptimisedid_3148_39_BitSelect_for_a(BITSELECT,534)@1
    assign i_sel_bits252_dijkstraoptimisedid_3148_39_BitSelect_for_a_b = $signed(i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q[2:0]);

    // i_sel_bits252_dijkstraoptimisedid_3148_39_join(BITJOIN,535)@1
    assign i_sel_bits252_dijkstraoptimisedid_3148_39_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_sel_bits252_dijkstraoptimisedid_3148_39_BitSelect_for_a_b};

    // i_sel_bits252_dijkstraoptimisedid_3148_39_vt_select_2(BITSELECT,173)@1
    assign i_sel_bits252_dijkstraoptimisedid_3148_39_vt_select_2_b = i_sel_bits252_dijkstraoptimisedid_3148_39_join_q[2:0];

    // i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join(BITJOIN,172)@1
    assign i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q = {i_sel_bits252_dijkstraoptimisedid_3148_39_vt_const_31_q, i_sel_bits252_dijkstraoptimisedid_3148_39_vt_select_2_b};

    // dupName_0_comparator_x(LOGICAL,197)@1 + 1
    assign dupName_0_comparator_x_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_2_3148_243_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_1_3148_242(CONSTANT,127)
    assign c_i32_1_3148_242_q = 32'b00000000000000000000000000000001;

    // comparator(LOGICAL,138)@1 + 1
    assign comparator_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_1_3148_242_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_0_3148_235(CONSTANT,126)
    assign c_i32_0_3148_235_q = 32'b00000000000000000000000000000000;

    // dupName_6_comparator_x(LOGICAL,206)@1 + 1
    assign dupName_6_comparator_x_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_0_3148_235_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_6_comparator_x_delay ( .xin(dupName_6_comparator_x_qi), .xout(dupName_6_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i8_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_34s_case_stmt265_dijkstraoptimisedid_3148_42_opt(SELECTOR,400)@2
    always_comb 
    begin
        i_llvm_fpga_case_i8_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_34s_case_stmt265_dijkstraoptimisedid_3148_42_opt_q = i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q;
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_34s_case_stmt265_dijkstraoptimisedid_3148_42_opt_q = redist27_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q_1_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_34s_case_stmt265_dijkstraoptimisedid_3148_42_opt_q = redist28_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q_1_q;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_34s_case_stmt265_dijkstraoptimisedid_3148_42_opt_q = redist29_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q_1_q;
        end
    end

    // i_sel_shr266_dijkstraoptimisedid_3148_43_vt_const_31(CONSTANT,178)
    assign i_sel_shr266_dijkstraoptimisedid_3148_43_vt_const_31_q = 30'b000000000000000000000000000000;

    // i_sel_shr266_dijkstraoptimisedid_3308_0gr_shift_x_fs(BITSHIFT,538)@2
    assign i_sel_shr266_dijkstraoptimisedid_3308_0gr_shift_x_fs_qint = redist51_i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q_1_q;
    assign i_sel_shr266_dijkstraoptimisedid_3308_0gr_shift_x_fs_q = i_sel_shr266_dijkstraoptimisedid_3308_0gr_shift_x_fs_qint[31:3];

    // i_sel_shr266_dijkstraoptimisedid_3148_43_vt_select_1(BITSELECT,180)@2
    assign i_sel_shr266_dijkstraoptimisedid_3148_43_vt_select_1_in = {3'b000, i_sel_shr266_dijkstraoptimisedid_3308_0gr_shift_x_fs_q};
    assign i_sel_shr266_dijkstraoptimisedid_3148_43_vt_select_1_b = i_sel_shr266_dijkstraoptimisedid_3148_43_vt_select_1_in[1:0];

    // i_sel_shr266_dijkstraoptimisedid_3148_43_vt_join(BITJOIN,179)@2
    assign i_sel_shr266_dijkstraoptimisedid_3148_43_vt_join_q = {i_sel_shr266_dijkstraoptimisedid_3148_43_vt_const_31_q, i_sel_shr266_dijkstraoptimisedid_3148_43_vt_select_1_b};

    // dupName_10_comparator_x(LOGICAL,210)@2
    assign dupName_10_comparator_x_q = $unsigned(i_sel_shr266_dijkstraoptimisedid_3148_43_vt_join_q == c_i32_1_3148_242_q ? 1'b1 : 1'b0);

    // c_i32_7_3148_241(CONSTANT,134)
    assign c_i32_7_3148_241_q = 32'b00000000000000000000000000000111;

    // dupName_5_comparator_x(LOGICAL,205)@1 + 1
    assign dupName_5_comparator_x_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_7_3148_241_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_5_comparator_x_delay ( .xin(dupName_5_comparator_x_qi), .xout(dupName_5_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_6_3148_247(CONSTANT,133)
    assign c_i32_6_3148_247_q = 32'b00000000000000000000000000000110;

    // dupName_4_comparator_x(LOGICAL,204)@1 + 1
    assign dupName_4_comparator_x_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_6_3148_247_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_4_comparator_x_delay ( .xin(dupName_4_comparator_x_qi), .xout(dupName_4_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_5_3148_246(CONSTANT,132)
    assign c_i32_5_3148_246_q = 32'b00000000000000000000000000000101;

    // dupName_3_comparator_x(LOGICAL,203)@1 + 1
    assign dupName_3_comparator_x_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_5_3148_246_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_3_comparator_x_delay ( .xin(dupName_3_comparator_x_qi), .xout(dupName_3_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_4_3148_245(CONSTANT,131)
    assign c_i32_4_3148_245_q = 32'b00000000000000000000000000000100;

    // dupName_2_comparator_x(LOGICAL,201)@1 + 1
    assign dupName_2_comparator_x_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_4_3148_245_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1(SELECTOR,402)@2
    always_comb 
    begin
        i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_q = 8'b0;
        i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_v = 1'b0;
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_q = $signed(redist31_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q_1_q);
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_q = $signed(redist32_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q_1_q);
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_q = $signed(redist33_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q_1_q);
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_v = 1'b1;
        end
    end

    // c_i32_3_3148_244(CONSTANT,130)
    assign c_i32_3_3148_244_q = 32'b00000000000000000000000000000011;

    // dupName_1_comparator_x(LOGICAL,199)@1 + 1
    assign dupName_1_comparator_x_qi = $unsigned(i_sel_bits252_dijkstraoptimisedid_3148_39_vt_join_q == c_i32_3_3148_244_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0(SELECTOR,401)@2
    always_comb 
    begin
        i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_q = 8'b0;
        i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_v = 1'b0;
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_q = $signed(redist34_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q_1_q);
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_v = 1'b1;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_q = $signed(redist35_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q_1_q);
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_v = 1'b1;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_q = $signed(redist26_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q_1_q);
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev1_id0(SELECTOR,403)@2
    always_comb 
    begin
        i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev1_id0_q = i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev1_id0_q = redist30_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q_1_q;
        end
        if (i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev1_id0_q = i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id1_q;
        end
        if (i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev1_id0_q = i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev0_id0_q;
        end
    end

    // dupName_9_comparator_x(LOGICAL,209)@2
    assign dupName_9_comparator_x_q = $unsigned(i_sel_shr266_dijkstraoptimisedid_3148_43_vt_join_q == c_i32_0_3148_235_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i8_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_35s_case_stmt270_dijkstraoptimisedid_3148_45(SELECTOR,157)@2
    always_comb 
    begin
        i_llvm_fpga_case_i8_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_35s_case_stmt270_dijkstraoptimisedid_3148_45_q = i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q;
        if (dupName_10_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_35s_case_stmt270_dijkstraoptimisedid_3148_45_q = i_llvm_fpga_case_i8_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_34s_case_stmt265_dijkstraoptimisedid_3148_42_opt_q;
        end
        if (dupName_9_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i8_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_35s_case_stmt270_dijkstraoptimisedid_3148_45_q = i_llvm_fpga_case_i8_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_33s_case_stmt260_dijkstraoptimisedid_3148_41_opt_lev1_id0_q;
        end
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x(CHOOSEBITS,236)@2
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x_a = i_llvm_fpga_case_i8_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_35s_case_stmt270_dijkstraoptimisedid_3148_45_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x_a[0:0];

    // i_case_stmt270_struct_0_shuffle_bit0_not_dijkstraoptimisedid_3148_48(LOGICAL,140)@2
    assign i_case_stmt270_struct_0_shuffle_bit0_not_dijkstraoptimisedid_3148_48_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x_q ^ VCC_q;

    // i_sel_bits292_dijkstraoptimisedid_3148_57_BitSelect_for_a(BITSELECT,536)@2
    assign i_sel_bits292_dijkstraoptimisedid_3148_57_BitSelect_for_a_b = $signed(i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q[2:0]);

    // i_sel_bits292_dijkstraoptimisedid_3148_57_join(BITJOIN,537)@2
    assign i_sel_bits292_dijkstraoptimisedid_3148_57_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_sel_bits292_dijkstraoptimisedid_3148_57_BitSelect_for_a_b};

    // i_sel_bits292_dijkstraoptimisedid_3148_57_vt_select_2(BITSELECT,177)@2
    assign i_sel_bits292_dijkstraoptimisedid_3148_57_vt_select_2_b = i_sel_bits292_dijkstraoptimisedid_3148_57_join_q[2:0];

    // i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join(BITJOIN,176)@2
    assign i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q = {i_sel_bits252_dijkstraoptimisedid_3148_39_vt_const_31_q, i_sel_bits292_dijkstraoptimisedid_3148_57_vt_select_2_b};

    // dupName_24_comparator_x(LOGICAL,224)@2
    assign dupName_24_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_2_3148_243_q ? 1'b1 : 1'b0);

    // dupName_23_comparator_x(LOGICAL,223)@2
    assign dupName_23_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_1_3148_242_q ? 1'b1 : 1'b0);

    // dupName_30_comparator_x(LOGICAL,230)@2
    assign dupName_30_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_0_3148_235_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt305_dijkstraoptimisedid_3148_59_opt(SELECTOR,393)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt305_dijkstraoptimisedid_3148_59_opt_q = redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
        if (dupName_24_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt305_dijkstraoptimisedid_3148_59_opt_q = redist41_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q_1_q;
        end
        if (dupName_23_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt305_dijkstraoptimisedid_3148_59_opt_q = redist42_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q_1_q;
        end
        if (dupName_30_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt305_dijkstraoptimisedid_3148_59_opt_q = redist43_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q_1_q;
        end
    end

    // i_sel_shr306_dijkstraoptimisedid_3375_0gr_shift_x_fs(BITSHIFT,539)@2
    assign i_sel_shr306_dijkstraoptimisedid_3375_0gr_shift_x_fs_qint = i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q;
    assign i_sel_shr306_dijkstraoptimisedid_3375_0gr_shift_x_fs_q = i_sel_shr306_dijkstraoptimisedid_3375_0gr_shift_x_fs_qint[31:3];

    // i_sel_shr306_dijkstraoptimisedid_3148_60_vt_select_28(BITSELECT,183)@2
    assign i_sel_shr306_dijkstraoptimisedid_3148_60_vt_select_28_in = {3'b000, i_sel_shr306_dijkstraoptimisedid_3375_0gr_shift_x_fs_q};
    assign i_sel_shr306_dijkstraoptimisedid_3148_60_vt_select_28_b = i_sel_shr306_dijkstraoptimisedid_3148_60_vt_select_28_in[28:0];

    // i_sel_shr306_dijkstraoptimisedid_3148_60_vt_join(BITJOIN,182)@2
    assign i_sel_shr306_dijkstraoptimisedid_3148_60_vt_join_q = {i_sel_shr306_dijkstraoptimisedid_3148_60_vt_const_31_q, i_sel_shr306_dijkstraoptimisedid_3148_60_vt_select_28_b};

    // dupName_34_comparator_x(LOGICAL,234)@2
    assign dupName_34_comparator_x_q = $unsigned(i_sel_shr306_dijkstraoptimisedid_3148_60_vt_join_q == c_i32_1_3148_242_q ? 1'b1 : 1'b0);

    // dupName_29_comparator_x(LOGICAL,229)@2
    assign dupName_29_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_7_3148_241_q ? 1'b1 : 1'b0);

    // dupName_28_comparator_x(LOGICAL,228)@2
    assign dupName_28_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_6_3148_247_q ? 1'b1 : 1'b0);

    // dupName_27_comparator_x(LOGICAL,227)@2
    assign dupName_27_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_5_3148_246_q ? 1'b1 : 1'b0);

    // dupName_26_comparator_x(LOGICAL,226)@2
    assign dupName_26_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_4_3148_245_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1(SELECTOR,398)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_v = 1'b0;
        if (dupName_28_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_q = $signed(redist45_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_27_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_q = $signed(redist36_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_26_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_q = $signed(redist37_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_v = 1'b1;
        end
    end

    // dupName_25_comparator_x(LOGICAL,225)@2
    assign dupName_25_comparator_x_q = $unsigned(i_sel_bits292_dijkstraoptimisedid_3148_57_vt_join_q == c_i32_3_3148_244_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0(SELECTOR,397)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_v = 1'b0;
        if (dupName_25_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_q = $signed(redist38_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_v = 1'b1;
        end
        if (dupName_24_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_q = $signed(redist39_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_v = 1'b1;
        end
        if (dupName_23_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_q = $signed(redist40_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev1_id0(SELECTOR,399)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev1_id0_q = redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
        if (dupName_29_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev1_id0_q = redist44_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q_1_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id1_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev0_id0_q;
        end
    end

    // dupName_33_comparator_x(LOGICAL,233)@2
    assign dupName_33_comparator_x_q = $unsigned(i_sel_shr306_dijkstraoptimisedid_3148_60_vt_join_q == c_i32_0_3148_235_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt310_dijkstraoptimisedid_3148_62(SELECTOR,152)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt310_dijkstraoptimisedid_3148_62_q = redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
        if (dupName_34_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt310_dijkstraoptimisedid_3148_62_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt305_dijkstraoptimisedid_3148_59_opt_q;
        end
        if (dupName_33_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt310_dijkstraoptimisedid_3148_62_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt300_dijkstraoptimisedid_3148_58_opt_lev1_id0_q;
        end
    end

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt285_dijkstraoptimisedid_3148_54_opt(SELECTOR,392)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt285_dijkstraoptimisedid_3148_54_opt_q = redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt285_dijkstraoptimisedid_3148_54_opt_q = redist41_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q_1_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt285_dijkstraoptimisedid_3148_54_opt_q = redist42_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q_1_q;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt285_dijkstraoptimisedid_3148_54_opt_q = redist43_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q_1_q;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1(SELECTOR,395)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_v = 1'b0;
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_q = $signed(redist45_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_q = $signed(redist36_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_q = $signed(redist37_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0(SELECTOR,394)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_v = 1'b0;
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_q = $signed(redist38_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_v = 1'b1;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_q = $signed(redist39_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_v = 1'b1;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_q = $signed(redist40_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q_1_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev1_id0(SELECTOR,396)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev1_id0_q = redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev1_id0_q = redist44_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q_1_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id1_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev0_id0_q;
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt290_dijkstraoptimisedid_3148_56(SELECTOR,151)@2
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt290_dijkstraoptimisedid_3148_56_q = redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
        if (dupName_10_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt290_dijkstraoptimisedid_3148_56_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt285_dijkstraoptimisedid_3148_54_opt_q;
        end
        if (dupName_9_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt290_dijkstraoptimisedid_3148_56_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt280_dijkstraoptimisedid_3148_53_opt_lev1_id0_q;
        end
    end

    // i_cmp42_i_dijkstraoptimisedid_3148_63(COMPARE,142)@2
    assign i_cmp42_i_dijkstraoptimisedid_3148_63_a = $unsigned({{2{i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt290_dijkstraoptimisedid_3148_56_q[31]}}, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt290_dijkstraoptimisedid_3148_56_q});
    assign i_cmp42_i_dijkstraoptimisedid_3148_63_b = $unsigned({{2{i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt310_dijkstraoptimisedid_3148_62_q[31]}}, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt310_dijkstraoptimisedid_3148_62_q});
    assign i_cmp42_i_dijkstraoptimisedid_3148_63_o = $unsigned($signed(i_cmp42_i_dijkstraoptimisedid_3148_63_a) - $signed(i_cmp42_i_dijkstraoptimisedid_3148_63_b));
    assign i_cmp42_i_dijkstraoptimisedid_3148_63_c[0] = i_cmp42_i_dijkstraoptimisedid_3148_63_o[33];

    // c_i32_1_3148_250_recast_x(CONSTANT,196)
    assign c_i32_1_3148_250_recast_x_q = 32'b11111111111111111111111111111111;

    // i_cmp37_i_dijkstraoptimisedid_3148_50(LOGICAL,141)@2
    assign i_cmp37_i_dijkstraoptimisedid_3148_50_q = $unsigned(i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q == c_i32_1_3148_250_recast_x_q ? 1'b1 : 1'b0);

    // i_selcond_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_65(LOGICAL,184)@2
    assign i_selcond_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_65_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body34_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_case_stmt270_struct_0_shuffle_bit0_dijkstraoptimisedid_3321_0gr_NO_NAME_x_q | i_cmp37_i_dijkstraoptimisedid_3148_50_q;

    // i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66(MUX,169)@2
    assign i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_s = i_selcond_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_65_q;
    always_comb 
    begin
        unique case (i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_s)
            1'b0 : i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_q = i_cmp42_i_dijkstraoptimisedid_3148_63_c;
            1'b1 : i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_q = i_case_stmt270_struct_0_shuffle_bit0_not_dijkstraoptimisedid_3148_48_q;
            default : i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_q = 1'b0;
        endcase
    end

    // i_acl_23_dijkstraoptimisedid_3148_67(MUX,139)@2
    assign i_acl_23_dijkstraoptimisedid_3148_67_s = i_reduction_dijkstraoptimisedid_1_dijkstraoptimisedid_3148_66_q;
    always_comb 
    begin
        unique case (i_acl_23_dijkstraoptimisedid_3148_67_s)
            1'b0 : i_acl_23_dijkstraoptimisedid_3148_67_q = i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3329_0gr_i_llvm_fpga_pop_i32_u_0_i4_pop61_dijkstraoptimisedid_3148_49_mux_x_q;
            1'b1 : i_acl_23_dijkstraoptimisedid_3148_67_q = redist51_i_unnamed_dijkstraoptimisedid_3148_38_vt_join_q_1_q;
            default : i_acl_23_dijkstraoptimisedid_3148_67_q = 32'b0;
        endcase
    end

    // redist21_sync_together_3148_259_aunroll_x_in_c0_eni26_23_tpl_1(DELAY,561)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together_3148_259_aunroll_x_in_c0_eni26_23_tpl_1_q <= in_c0_eni26_23_tpl;
        end
    end

    // valid_fanout_reg29(REG,433)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= in_i_valid;
        end
    end

    // valid_fanout_reg28(REG,432)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x(FIFODELAY,299)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_stall = ~ (valid_fanout_reg29_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_valid = valid_fanout_reg28_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x(MUX,250)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_0gr_i_llvm_fpga_push_i32_dist_i_sroa_0_0_pop2397_push86_dijkstraoptimisedid_3413_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q = redist21_sync_together_3148_259_aunroll_x_in_c0_eni26_23_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q = 32'b0;
        endcase
    end

    // redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1(DELAY,586)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q;
        end
    end

    // redist20_sync_together_3148_259_aunroll_x_in_c0_eni26_22_tpl_2(DELAY,560)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together_3148_259_aunroll_x_in_c0_eni26_22_tpl_2_delay_0 <= $unsigned(in_c0_eni26_22_tpl);
            redist20_sync_together_3148_259_aunroll_x_in_c0_eni26_22_tpl_2_q <= $signed(redist20_sync_together_3148_259_aunroll_x_in_c0_eni26_22_tpl_2_delay_0);
        end
    end

    // valid_fanout_reg71(REG,475)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg71_q <= redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg70(REG,474)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg70_q <= redist25_sync_together_3148_259_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x(FIFODELAY,347)@2 + 1
    // out o_data@2
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_stall = ~ (valid_fanout_reg71_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_valid = valid_fanout_reg70_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x(MUX,264)@2
    assign i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_s = redist54_i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_0gr_i_llvm_fpga_push_i8_visited_i_sroa_0_2_replace_phi74_push63_dijkstraoptimisedid_3539_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q = redist20_sync_together_3148_259_aunroll_x_in_c0_eni26_22_tpl_2_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q = 8'b0;
        endcase
    end

    // redist19_sync_together_3148_259_aunroll_x_in_c0_eni26_21_tpl_1(DELAY,559)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_sync_together_3148_259_aunroll_x_in_c0_eni26_21_tpl_1_q <= in_c0_eni26_21_tpl;
        end
    end

    // valid_fanout_reg57(REG,461)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg57_q <= in_i_valid;
        end
    end

    // valid_fanout_reg56(REG,460)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg56_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x(FIFODELAY,365)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_stall = ~ (valid_fanout_reg57_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_valid = valid_fanout_reg56_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x(MUX,270)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_0gr_i_llvm_fpga_push_i8_visited_i_sroa_30_2_replace_phi81_push70_dijkstraoptimisedid_3497_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q = redist19_sync_together_3148_259_aunroll_x_in_c0_eni26_21_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q = 8'b0;
        endcase
    end

    // redist30_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q_1(DELAY,570)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q;
        end
    end

    // redist18_sync_together_3148_259_aunroll_x_in_c0_eni26_20_tpl_1(DELAY,558)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together_3148_259_aunroll_x_in_c0_eni26_20_tpl_1_q <= in_c0_eni26_20_tpl;
        end
    end

    // valid_fanout_reg59(REG,463)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg59_q <= in_i_valid;
        end
    end

    // valid_fanout_reg58(REG,462)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg58_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x(FIFODELAY,362)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_stall = ~ (valid_fanout_reg59_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_valid = valid_fanout_reg58_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x(MUX,269)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_0gr_i_llvm_fpga_push_i8_visited_i_sroa_26_2_replace_phi80_push69_dijkstraoptimisedid_3503_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q = redist18_sync_together_3148_259_aunroll_x_in_c0_eni26_20_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q = 8'b0;
        endcase
    end

    // redist31_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q_1(DELAY,571)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q;
        end
    end

    // redist17_sync_together_3148_259_aunroll_x_in_c0_eni26_19_tpl_1(DELAY,557)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together_3148_259_aunroll_x_in_c0_eni26_19_tpl_1_q <= in_c0_eni26_19_tpl;
        end
    end

    // valid_fanout_reg61(REG,465)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg61_q <= in_i_valid;
        end
    end

    // valid_fanout_reg60(REG,464)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg60_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x(FIFODELAY,359)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_stall = ~ (valid_fanout_reg61_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_valid = valid_fanout_reg60_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x(MUX,268)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_0gr_i_llvm_fpga_push_i8_visited_i_sroa_22_2_replace_phi79_push68_dijkstraoptimisedid_3509_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q = redist17_sync_together_3148_259_aunroll_x_in_c0_eni26_19_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q = 8'b0;
        endcase
    end

    // redist32_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q_1(DELAY,572)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q;
        end
    end

    // redist16_sync_together_3148_259_aunroll_x_in_c0_eni26_18_tpl_1(DELAY,556)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together_3148_259_aunroll_x_in_c0_eni26_18_tpl_1_q <= in_c0_eni26_18_tpl;
        end
    end

    // valid_fanout_reg63(REG,467)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg63_q <= in_i_valid;
        end
    end

    // valid_fanout_reg62(REG,466)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg62_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x(FIFODELAY,356)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_stall = ~ (valid_fanout_reg63_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_valid = valid_fanout_reg62_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x(MUX,267)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_0gr_i_llvm_fpga_push_i8_visited_i_sroa_18_2_replace_phi78_push67_dijkstraoptimisedid_3515_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q = redist16_sync_together_3148_259_aunroll_x_in_c0_eni26_18_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q = 8'b0;
        endcase
    end

    // redist33_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q_1(DELAY,573)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q;
        end
    end

    // redist15_sync_together_3148_259_aunroll_x_in_c0_eni26_17_tpl_1(DELAY,555)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together_3148_259_aunroll_x_in_c0_eni26_17_tpl_1_q <= in_c0_eni26_17_tpl;
        end
    end

    // valid_fanout_reg65(REG,469)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg65_q <= in_i_valid;
        end
    end

    // valid_fanout_reg64(REG,468)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg64_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x(FIFODELAY,353)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_stall = ~ (valid_fanout_reg65_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_valid = valid_fanout_reg64_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x(MUX,266)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_0gr_i_llvm_fpga_push_i8_visited_i_sroa_14_2_replace_phi77_push66_dijkstraoptimisedid_3521_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q = redist15_sync_together_3148_259_aunroll_x_in_c0_eni26_17_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q = 8'b0;
        endcase
    end

    // redist34_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q_1(DELAY,574)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q;
        end
    end

    // redist14_sync_together_3148_259_aunroll_x_in_c0_eni26_16_tpl_1(DELAY,554)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together_3148_259_aunroll_x_in_c0_eni26_16_tpl_1_q <= in_c0_eni26_16_tpl;
        end
    end

    // valid_fanout_reg67(REG,471)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg67_q <= in_i_valid;
        end
    end

    // valid_fanout_reg66(REG,470)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg66_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x(FIFODELAY,350)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_stall = ~ (valid_fanout_reg67_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_valid = valid_fanout_reg66_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x(MUX,265)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_0gr_i_llvm_fpga_push_i8_visited_i_sroa_10_2_replace_phi76_push65_dijkstraoptimisedid_3527_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q = redist14_sync_together_3148_259_aunroll_x_in_c0_eni26_16_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q = 8'b0;
        endcase
    end

    // redist35_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q_1(DELAY,575)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q;
        end
    end

    // redist13_sync_together_3148_259_aunroll_x_in_c0_eni26_15_tpl_1(DELAY,553)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together_3148_259_aunroll_x_in_c0_eni26_15_tpl_1_q <= in_c0_eni26_15_tpl;
        end
    end

    // valid_fanout_reg69(REG,473)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg69_q <= in_i_valid;
        end
    end

    // valid_fanout_reg68(REG,472)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg68_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x(FIFODELAY,377)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_stall = ~ (valid_fanout_reg69_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_valid = valid_fanout_reg68_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x(MUX,274)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_0gr_i_llvm_fpga_push_i8_visited_i_sroa_6_2_replace_phi75_push64_dijkstraoptimisedid_3533_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q = redist13_sync_together_3148_259_aunroll_x_in_c0_eni26_15_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q = 8'b0;
        endcase
    end

    // redist26_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q_1(DELAY,566)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q;
        end
    end

    // redist12_sync_together_3148_259_aunroll_x_in_c0_eni26_14_tpl_1(DELAY,552)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together_3148_259_aunroll_x_in_c0_eni26_14_tpl_1_q <= in_c0_eni26_14_tpl;
        end
    end

    // valid_fanout_reg51(REG,455)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg51_q <= in_i_valid;
        end
    end

    // valid_fanout_reg50(REG,454)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg50_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x(FIFODELAY,374)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_stall = ~ (valid_fanout_reg51_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_valid = valid_fanout_reg50_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x(MUX,273)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_0gr_i_llvm_fpga_push_i8_visited_i_sroa_42_2_replace_phi84_push73_dijkstraoptimisedid_3479_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q = redist12_sync_together_3148_259_aunroll_x_in_c0_eni26_14_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q = 8'b0;
        endcase
    end

    // redist27_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q_1(DELAY,567)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q;
        end
    end

    // redist11_sync_together_3148_259_aunroll_x_in_c0_eni26_13_tpl_1(DELAY,551)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together_3148_259_aunroll_x_in_c0_eni26_13_tpl_1_q <= in_c0_eni26_13_tpl;
        end
    end

    // valid_fanout_reg53(REG,457)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg53_q <= in_i_valid;
        end
    end

    // valid_fanout_reg52(REG,456)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg52_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x(FIFODELAY,371)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_stall = ~ (valid_fanout_reg53_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_valid = valid_fanout_reg52_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x(MUX,272)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_0gr_i_llvm_fpga_push_i8_visited_i_sroa_38_2_replace_phi83_push72_dijkstraoptimisedid_3485_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q = redist11_sync_together_3148_259_aunroll_x_in_c0_eni26_13_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q = 8'b0;
        endcase
    end

    // redist28_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q_1(DELAY,568)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q;
        end
    end

    // redist10_sync_together_3148_259_aunroll_x_in_c0_eni26_12_tpl_1(DELAY,550)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together_3148_259_aunroll_x_in_c0_eni26_12_tpl_1_q <= in_c0_eni26_12_tpl;
        end
    end

    // valid_fanout_reg55(REG,459)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg55_q <= in_i_valid;
        end
    end

    // valid_fanout_reg54(REG,458)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg54_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x(FIFODELAY,368)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_stall = ~ (valid_fanout_reg55_q & VCC_q);
    assign i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_valid = valid_fanout_reg54_q & VCC_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_data = i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q;
    assign i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x (
        .i_valid(i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q),
        .o_data(i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x(MUX,271)@1
    assign i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q = i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_0gr_i_llvm_fpga_push_i8_visited_i_sroa_34_2_replace_phi82_push71_dijkstraoptimisedid_3491_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q = redist10_sync_together_3148_259_aunroll_x_in_c0_eni26_12_tpl_1_q;
            default : i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q = 8'b0;
        endcase
    end

    // redist29_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q_1(DELAY,569)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q_1_q <= i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q;
        end
    end

    // redist9_sync_together_3148_259_aunroll_x_in_c0_eni26_11_tpl_1(DELAY,549)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together_3148_259_aunroll_x_in_c0_eni26_11_tpl_1_q <= in_c0_eni26_11_tpl;
        end
    end

    // valid_fanout_reg37(REG,441)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= in_i_valid;
        end
    end

    // valid_fanout_reg36(REG,440)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x(FIFODELAY,305)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_stall = ~ (valid_fanout_reg37_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_valid = valid_fanout_reg36_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x(MUX,252)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_0gr_i_llvm_fpga_push_i32_dist_i_sroa_121_2_replace_phi91_push80_dijkstraoptimisedid_3437_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q = redist9_sync_together_3148_259_aunroll_x_in_c0_eni26_11_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q = 32'b0;
        endcase
    end

    // redist44_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q_1(DELAY,584)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q;
        end
    end

    // redist8_sync_together_3148_259_aunroll_x_in_c0_eni26_10_tpl_1(DELAY,548)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together_3148_259_aunroll_x_in_c0_eni26_10_tpl_1_q <= in_c0_eni26_10_tpl;
        end
    end

    // valid_fanout_reg39(REG,443)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= in_i_valid;
        end
    end

    // valid_fanout_reg38(REG,442)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x(FIFODELAY,302)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_stall = ~ (valid_fanout_reg39_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_valid = valid_fanout_reg38_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x(MUX,251)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_0gr_i_llvm_fpga_push_i32_dist_i_sroa_104_2_replace_phi90_push79_dijkstraoptimisedid_3443_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q = redist8_sync_together_3148_259_aunroll_x_in_c0_eni26_10_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q = 32'b0;
        endcase
    end

    // redist45_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q_1(DELAY,585)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q;
        end
    end

    // redist7_sync_together_3148_259_aunroll_x_in_c0_eni26_9_tpl_1(DELAY,547)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together_3148_259_aunroll_x_in_c0_eni26_9_tpl_1_q <= in_c0_eni26_9_tpl;
        end
    end

    // valid_fanout_reg41(REG,445)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg41_q <= in_i_valid;
        end
    end

    // valid_fanout_reg40(REG,444)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg40_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x(FIFODELAY,329)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_stall = ~ (valid_fanout_reg41_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_valid = valid_fanout_reg40_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x(MUX,260)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_0gr_i_llvm_fpga_push_i32_dist_i_sroa_87_2_replace_phi89_push78_dijkstraoptimisedid_3449_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q = redist7_sync_together_3148_259_aunroll_x_in_c0_eni26_9_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q = 32'b0;
        endcase
    end

    // redist36_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q_1(DELAY,576)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q;
        end
    end

    // redist6_sync_together_3148_259_aunroll_x_in_c0_eni26_8_tpl_1(DELAY,546)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together_3148_259_aunroll_x_in_c0_eni26_8_tpl_1_q <= in_c0_eni26_8_tpl;
        end
    end

    // valid_fanout_reg43(REG,447)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg43_q <= in_i_valid;
        end
    end

    // valid_fanout_reg42(REG,446)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg42_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x(FIFODELAY,326)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_stall = ~ (valid_fanout_reg43_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_valid = valid_fanout_reg42_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x(MUX,259)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_0gr_i_llvm_fpga_push_i32_dist_i_sroa_70_2_replace_phi88_push77_dijkstraoptimisedid_3455_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q = redist6_sync_together_3148_259_aunroll_x_in_c0_eni26_8_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q = 32'b0;
        endcase
    end

    // redist37_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q_1(DELAY,577)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q;
        end
    end

    // redist5_sync_together_3148_259_aunroll_x_in_c0_eni26_7_tpl_1(DELAY,545)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together_3148_259_aunroll_x_in_c0_eni26_7_tpl_1_q <= in_c0_eni26_7_tpl;
        end
    end

    // valid_fanout_reg45(REG,449)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg45_q <= in_i_valid;
        end
    end

    // valid_fanout_reg44(REG,448)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg44_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x(FIFODELAY,323)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_stall = ~ (valid_fanout_reg45_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_valid = valid_fanout_reg44_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x(MUX,258)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_0gr_i_llvm_fpga_push_i32_dist_i_sroa_53_2_replace_phi87_push76_dijkstraoptimisedid_3461_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q = redist5_sync_together_3148_259_aunroll_x_in_c0_eni26_7_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q = 32'b0;
        endcase
    end

    // redist38_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q_1(DELAY,578)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q;
        end
    end

    // redist4_sync_together_3148_259_aunroll_x_in_c0_eni26_6_tpl_1(DELAY,544)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together_3148_259_aunroll_x_in_c0_eni26_6_tpl_1_q <= in_c0_eni26_6_tpl;
        end
    end

    // valid_fanout_reg47(REG,451)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg47_q <= in_i_valid;
        end
    end

    // valid_fanout_reg46(REG,450)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg46_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x(FIFODELAY,320)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_stall = ~ (valid_fanout_reg47_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_valid = valid_fanout_reg46_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x(MUX,257)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_0gr_i_llvm_fpga_push_i32_dist_i_sroa_36_2_replace_phi86_push75_dijkstraoptimisedid_3467_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q = redist4_sync_together_3148_259_aunroll_x_in_c0_eni26_6_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q = 32'b0;
        endcase
    end

    // redist39_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q_1(DELAY,579)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q;
        end
    end

    // redist3_sync_together_3148_259_aunroll_x_in_c0_eni26_5_tpl_1(DELAY,543)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together_3148_259_aunroll_x_in_c0_eni26_5_tpl_1_q <= in_c0_eni26_5_tpl;
        end
    end

    // valid_fanout_reg49(REG,453)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg49_q <= in_i_valid;
        end
    end

    // valid_fanout_reg48(REG,452)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg48_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x(FIFODELAY,317)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_stall = ~ (valid_fanout_reg49_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_valid = valid_fanout_reg48_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x(MUX,256)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_0gr_i_llvm_fpga_push_i32_dist_i_sroa_19_2_replace_phi85_push74_dijkstraoptimisedid_3473_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q = redist3_sync_together_3148_259_aunroll_x_in_c0_eni26_5_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q = 32'b0;
        endcase
    end

    // redist40_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q_1(DELAY,580)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q;
        end
    end

    // redist2_sync_together_3148_259_aunroll_x_in_c0_eni26_4_tpl_1(DELAY,542)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_3148_259_aunroll_x_in_c0_eni26_4_tpl_1_q <= in_c0_eni26_4_tpl;
        end
    end

    // valid_fanout_reg31(REG,435)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= in_i_valid;
        end
    end

    // valid_fanout_reg30(REG,434)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x(FIFODELAY,314)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_stall = ~ (valid_fanout_reg31_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_valid = valid_fanout_reg30_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x(MUX,255)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_0gr_i_llvm_fpga_push_i32_dist_i_sroa_172_2_replace_phi94_push83_dijkstraoptimisedid_3419_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q = redist2_sync_together_3148_259_aunroll_x_in_c0_eni26_4_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q = 32'b0;
        endcase
    end

    // redist41_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q_1(DELAY,581)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q;
        end
    end

    // redist1_sync_together_3148_259_aunroll_x_in_c0_eni26_3_tpl_1(DELAY,541)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_3148_259_aunroll_x_in_c0_eni26_3_tpl_1_q <= in_c0_eni26_3_tpl;
        end
    end

    // valid_fanout_reg33(REG,437)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= in_i_valid;
        end
    end

    // valid_fanout_reg32(REG,436)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x(FIFODELAY,311)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_stall = ~ (valid_fanout_reg33_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_valid = valid_fanout_reg32_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x(MUX,254)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor336_dijkstraoptimisedid_3148_2gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_0gr_i_llvm_fpga_push_i32_dist_i_sroa_155_2_replace_phi93_push82_dijkstraoptimisedid_3425_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q = redist1_sync_together_3148_259_aunroll_x_in_c0_eni26_3_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q = 32'b0;
        endcase
    end

    // redist42_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q_1(DELAY,582)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q;
        end
    end

    // redist0_sync_together_3148_259_aunroll_x_in_c0_eni26_1_tpl_1(DELAY,540)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_3148_259_aunroll_x_in_c0_eni26_1_tpl_1_q <= in_c0_eni26_1_tpl;
        end
    end

    // valid_fanout_reg35(REG,439)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= in_i_valid;
        end
    end

    // valid_fanout_reg34(REG,438)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x(FIFODELAY,308)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_stall = ~ (valid_fanout_reg35_q & VCC_q);
    assign i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_valid = valid_fanout_reg34_q & VCC_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_data = i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q;
    assign i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x(MUX,253)@1
    assign i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene2251_fanout_adaptor_dijkstraoptimisedid_3148_3gr_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q = i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_0gr_i_llvm_fpga_push_i32_dist_i_sroa_138_2_replace_phi92_push81_dijkstraoptimisedid_3431_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q = redist0_sync_together_3148_259_aunroll_x_in_c0_eni26_1_tpl_1_q;
            default : i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q = 32'b0;
        endcase
    end

    // redist43_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q_1(DELAY,583)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q_1_q <= i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q;
        end
    end

    // redist52_i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_data_out_1(DELAY,592)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_data_out_1_q <= i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_data_out;
        end
    end

    // i_dijkstraoptimisedid_b8_next_iter_isreal_dijkstraoptimisedid_3148_9gr(LOGICAL,144)@1
    assign i_dijkstraoptimisedid_b8_next_iter_isreal_dijkstraoptimisedid_3148_9gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q & redist52_i_llvm_fpga_pipeline_keep_going53_dijkstraoptimisedid_3148_8gr_out_data_out_1_q;

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_element_extension_3184_2_x(BITJOIN,277)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_element_extension_3184_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_c_i7_0_3184_3gr_x_q, i_dijkstraoptimisedid_b8_next_iter_isreal_dijkstraoptimisedid_3148_9gr_q};

    // valid_fanout_reg3(REG,407)@0 + 1
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

    // valid_fanout_reg2(REG,406)@0 + 1
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

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x(FIFODELAY,278)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_data = i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_element_extension_3184_2_x_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_element_extension_3184_2_x_q),
        .o_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_adapt_scalar_trunc_3184_4_sel_x(BITSELECT,280)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_adapt_scalar_trunc_3184_4_sel_x_b = i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_1gr_x_o_data[0:0];

    // redist53_i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out_1(DELAY,593)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out_1_q <= i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x(MUX,246)@1
    assign i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_s = redist53_i_llvm_fpga_forked_dijkstraoptimisedid_b8_forked_dijkstraoptimisedid_3148_5gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q = i_llvm_fpga_push_i1_dijkstraoptimisedid_b8_next_iter_isreal_push_dijkstraoptimisedid_3184_0gr_adapt_scalar_trunc_3184_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q = 1'b0;
        endcase
    end

    // redist50_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q_1(DELAY,590)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q_1_q <= i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q;
        end
    end

    // i_dijkstraoptimisedid_b8_current_iter_isspec_dijkstraoptimisedid_3148_7gr(LOGICAL,143)@2
    assign i_dijkstraoptimisedid_b8_current_iter_isspec_dijkstraoptimisedid_3148_7gr_q = redist50_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3171_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b8_current_iter_isreal_dijkstraoptimisedid_3148_6gr_mux_x_q_1_q ^ VCC_q;

    // sync_out_8_aunroll_x(GPOUT,390)@2
    assign out_DijkstraOptimisedID_B8_current_iter_isspec = i_dijkstraoptimisedid_b8_current_iter_isspec_dijkstraoptimisedid_3148_7gr_q;
    assign out_c0_exi28_0_tpl = GND_q;
    assign out_c0_exi28_1_tpl = redist43_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3192_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_138_2_replace_phi92_pop81_dijkstraoptimisedid_3148_11_mux_x_q_1_q;
    assign out_c0_exi28_2_tpl = redist42_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3198_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_155_2_replace_phi93_pop82_dijkstraoptimisedid_3148_13_mux_x_q_1_q;
    assign out_c0_exi28_3_tpl = redist41_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3202_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_172_2_replace_phi94_pop83_dijkstraoptimisedid_3148_14_mux_x_q_1_q;
    assign out_c0_exi28_4_tpl = redist40_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3206_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_19_2_replace_phi85_pop74_dijkstraoptimisedid_3148_15_mux_x_q_1_q;
    assign out_c0_exi28_5_tpl = redist39_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3212_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_36_2_replace_phi86_pop75_dijkstraoptimisedid_3148_17_mux_x_q_1_q;
    assign out_c0_exi28_6_tpl = redist38_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3216_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_53_2_replace_phi87_pop76_dijkstraoptimisedid_3148_18_mux_x_q_1_q;
    assign out_c0_exi28_7_tpl = redist37_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3220_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_70_2_replace_phi88_pop77_dijkstraoptimisedid_3148_19_mux_x_q_1_q;
    assign out_c0_exi28_8_tpl = redist36_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3224_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_87_2_replace_phi89_pop78_dijkstraoptimisedid_3148_20_mux_x_q_1_q;
    assign out_c0_exi28_9_tpl = redist45_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3228_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_104_2_replace_phi90_pop79_dijkstraoptimisedid_3148_21_mux_x_q_1_q;
    assign out_c0_exi28_10_tpl = redist44_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3232_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_121_2_replace_phi91_pop80_dijkstraoptimisedid_3148_22_mux_x_q_1_q;
    assign out_c0_exi28_11_tpl = redist29_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3240_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_34_2_replace_phi82_pop71_dijkstraoptimisedid_3148_25_mux_x_q_1_q;
    assign out_c0_exi28_12_tpl = redist28_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3246_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_38_2_replace_phi83_pop72_dijkstraoptimisedid_3148_27_mux_x_q_1_q;
    assign out_c0_exi28_13_tpl = redist27_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3250_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_42_2_replace_phi84_pop73_dijkstraoptimisedid_3148_28_mux_x_q_1_q;
    assign out_c0_exi28_14_tpl = redist26_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3254_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_6_2_replace_phi75_pop64_dijkstraoptimisedid_3148_29_mux_x_q_1_q;
    assign out_c0_exi28_15_tpl = redist35_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3260_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_10_2_replace_phi76_pop65_dijkstraoptimisedid_3148_31_mux_x_q_1_q;
    assign out_c0_exi28_16_tpl = redist34_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3264_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_14_2_replace_phi77_pop66_dijkstraoptimisedid_3148_32_mux_x_q_1_q;
    assign out_c0_exi28_17_tpl = redist33_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3268_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_18_2_replace_phi78_pop67_dijkstraoptimisedid_3148_33_mux_x_q_1_q;
    assign out_c0_exi28_18_tpl = redist32_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3272_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_22_2_replace_phi79_pop68_dijkstraoptimisedid_3148_34_mux_x_q_1_q;
    assign out_c0_exi28_19_tpl = redist31_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3276_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_26_2_replace_phi80_pop69_dijkstraoptimisedid_3148_35_mux_x_q_1_q;
    assign out_c0_exi28_20_tpl = redist30_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3280_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_30_2_replace_phi81_pop70_dijkstraoptimisedid_3148_36_mux_x_q_1_q;
    assign out_c0_exi28_21_tpl = i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3290_0gr_i_llvm_fpga_pop_i8_visited_i_sroa_0_2_replace_phi74_pop63_dijkstraoptimisedid_3148_40_mux_x_q;
    assign out_c0_exi28_22_tpl = redist46_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3336_0gr_i_llvm_fpga_pop_i32_dist_i_sroa_0_0_pop2397_pop86_dijkstraoptimisedid_3148_52_mux_x_q_1_q;
    assign out_c0_exi28_23_tpl = i_acl_23_dijkstraoptimisedid_3148_67_q;
    assign out_c0_exi28_24_tpl = GND_q;
    assign out_c0_exi28_25_tpl = i_notcmp51_dijkstraoptimisedid_3148_101_q;
    assign out_c0_exi28_26_tpl = redist48_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3578_0gr_i_llvm_fpga_pop_i1_forked73_pop62_dijkstraoptimisedid_3148_105_mux_x_q_1_q;
    assign out_c0_exi28_27_tpl = redist49_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3590_0gr_i_llvm_fpga_pop_i1_exitcond2695_pop84_dijkstraoptimisedid_3148_107_mux_x_q_1_q;
    assign out_c0_exi28_28_tpl = redist47_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3602_0gr_i_llvm_fpga_pop_i1_notcmp5696_pop85_dijkstraoptimisedid_3148_109_mux_x_q_1_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
