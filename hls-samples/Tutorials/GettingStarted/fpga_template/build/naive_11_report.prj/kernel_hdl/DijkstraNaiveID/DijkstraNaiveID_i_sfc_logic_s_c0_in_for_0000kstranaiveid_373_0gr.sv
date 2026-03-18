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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c0_in_for_0000kstranaiveid_373_0gr (
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_visited,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [31:0] out_c0_exi10_1_tpl,
    output wire [63:0] out_c0_exi10_2_tpl,
    output wire [0:0] out_c0_exi10_3_tpl,
    output wire [0:0] out_c0_exi10_4_tpl,
    output wire [63:0] out_c0_exi10_5_tpl,
    output wire [0:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [0:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_unnamed_DijkstraNaiveID0,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] c_i5_0_376_64_q;
    wire [4:0] c_i5_1_376_67_q;
    wire [4:0] c_i5_9_376_65_q;
    wire [1:0] i_arrayidx8_i_dijkstranaiveid_376_23_vt_const_1_q;
    wire [63:0] i_arrayidx8_i_dijkstranaiveid_376_23_vt_join_q;
    wire [61:0] i_arrayidx8_i_dijkstranaiveid_376_23_vt_select_63_b;
    wire [0:0] i_dijkstranaiveid_b3_current_iter_isspec_dijkstranaiveid_376_5gr_q;
    wire [0:0] i_dijkstranaiveid_b3_current_thread_isreal_dijkstranaiveid_376_6gr_q;
    wire [0:0] i_dijkstranaiveid_b3_fullexited_dijkstranaiveid_376_7gr_q;
    wire [0:0] i_dijkstranaiveid_b3_lastiter_dijkstranaiveid_376_13_q;
    wire [0:0] i_dijkstranaiveid_b3_latchcond_dijkstranaiveid_376_14_q;
    wire [0:0] i_dijkstranaiveid_b3_next_iter_isreal_dijkstranaiveid_376_9gr_q;
    wire [0:0] i_dijkstranaiveid_b3_next_iter_isrealreal_dijkstranaiveid_376_10_q;
    wire [0:0] i_dijkstranaiveid_b3_next_iter_isspec_dijkstranaiveid_376_12_q;
    wire [0:0] i_dijkstranaiveid_b3_realexit_dijkstranaiveid_376_30_q;
    wire [5:0] i_fpga_indvars_iv_next_dijkstranaiveid_376_36_a;
    wire [5:0] i_fpga_indvars_iv_next_dijkstranaiveid_376_36_b;
    logic [5:0] i_fpga_indvars_iv_next_dijkstranaiveid_376_36_o;
    wire [5:0] i_fpga_indvars_iv_next_dijkstranaiveid_376_36_q;
    wire [0:0] i_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_not_dijkstranaiveid_376_31_q;
    wire [58:0] i_idxprom_i_dijkstranaiveid_376_17_vt_const_63_q;
    wire [63:0] i_idxprom_i_dijkstranaiveid_376_17_vt_join_q;
    wire [4:0] i_idxprom_i_dijkstranaiveid_376_17_vt_select_4_b;
    wire [25:0] i_inc_i_zext_dijkstranaiveid_376_25_vt_const_31_q;
    wire [31:0] i_inc_i_zext_dijkstranaiveid_376_25_vt_join_q;
    wire [5:0] i_inc_i_zext_dijkstranaiveid_376_25_vt_select_5_b;
    wire [0:0] i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_a;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_b;
    logic [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_o;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35_out_feedback_valid_out_3;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer38_dijkstranaiveid_376_18_out_buffer_out;
    wire [26:0] i_unnamed_dijkstranaiveid_376_16_vt_const_31_q;
    wire [31:0] i_unnamed_dijkstranaiveid_376_16_vt_join_q;
    wire [4:0] i_unnamed_dijkstranaiveid_376_16_vt_select_4_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_dijkstranaiveid_376_36_sel_x_b;
    wire [61:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_narrow_x_b;
    wire [63:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_a;
    wire [64:0] i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_b;
    logic [64:0] i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_o;
    wire [64:0] i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_q;
    wire [63:0] i_arrayidx_i_dijkstranaiveid_435_0gr_trunc_sel_x_b;
    wire [63:0] i_idxprom_i_dijkstranaiveid_376_17_sel_x_b;
    wire [31:0] i_inc_i_zext_dijkstranaiveid_376_25_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x_q;
    wire [2:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_c_i3_0_471_4gr_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_element_extension_471_3_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_c_i7_0_413_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_element_extension_413_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_adapt_scalar_trunc_413_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_element_extension_528_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_adapt_scalar_trunc_528_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_element_extension_490_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_adapt_scalar_trunc_490_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_element_extension_540_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_adapt_scalar_trunc_540_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_element_extension_516_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_adapt_scalar_trunc_516_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_element_extension_498_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_adapt_scalar_trunc_498_4_sel_x_b;
    wire [31:0] i_unnamed_dijkstranaiveid_376_16_sel_x_b;
    wire [4:0] i_unnamed_dijkstranaiveid_376_26_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    wire [61:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [0:0] redist0_sync_together_376_75_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [0:0] redist1_sync_together_376_75_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist2_sync_together_376_75_aunroll_x_in_c0_eni5_5_tpl_1_q;
    reg [0:0] redist3_sync_together_376_75_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist3_sync_together_376_75_aunroll_x_in_i_valid_1(DELAY,183)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together_376_75_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_c_i3_0_471_4gr_x(CONSTANT,84)
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_c_i3_0_471_4gr_x_q = 3'b000;

    // c_i5_9_376_65(CONSTANT,25)
    assign c_i5_9_376_65_q = 5'b01001;

    // c_i5_1_376_67(CONSTANT,24)
    assign c_i5_1_376_67_q = 5'b11111;

    // i_fpga_indvars_iv_next_dijkstranaiveid_376_36(ADD,38)@1
    assign i_fpga_indvars_iv_next_dijkstranaiveid_376_36_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_q};
    assign i_fpga_indvars_iv_next_dijkstranaiveid_376_36_b = {1'b0, c_i5_1_376_67_q};
    assign i_fpga_indvars_iv_next_dijkstranaiveid_376_36_o = $unsigned(i_fpga_indvars_iv_next_dijkstranaiveid_376_36_a) + $unsigned(i_fpga_indvars_iv_next_dijkstranaiveid_376_36_b);
    assign i_fpga_indvars_iv_next_dijkstranaiveid_376_36_q = i_fpga_indvars_iv_next_dijkstranaiveid_376_36_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_dijkstranaiveid_376_36_sel_x(BITSELECT,67)@1
    assign bgTrunc_i_fpga_indvars_iv_next_dijkstranaiveid_376_36_sel_x_b = i_fpga_indvars_iv_next_dijkstranaiveid_376_36_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_element_extension_516_2_x(BITJOIN,120)@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_element_extension_516_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_c_i3_0_471_4gr_x_q, bgTrunc_i_fpga_indvars_iv_next_dijkstranaiveid_376_36_sel_x_b};

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x(FIFODELAY,121)@1 + 84
    // out o_data@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_stall = ~ (redist3_sync_together_376_75_aunroll_x_in_i_valid_1_q & VCC_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_valid = redist3_sync_together_376_75_aunroll_x_in_i_valid_1_q & VCC_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_element_extension_516_2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(84),
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
        .INITIAL_OCCUPANCY(84),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_element_extension_516_2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_adapt_scalar_trunc_516_4_sel_x(BITSELECT,123)@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_adapt_scalar_trunc_516_4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x(MUX,92)@1
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_s = redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv_push9_dijkstranaiveid_516_0gr_adapt_scalar_trunc_516_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_q = c_i5_9_376_65_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_q = 5'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_element_extension_471_3_x(BITJOIN,86)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_element_extension_471_3_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_c_i3_0_471_4gr_x_q, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_465_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_dijkstranaiveid_376_27_mux_x_q};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x(CHOOSEBITS,82)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_element_extension_471_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x_a[4:4];

    // i_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_not_dijkstranaiveid_376_31(LOGICAL,39)@1
    assign i_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_not_dijkstranaiveid_376_31_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35(BLACKBOX,52)@1
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    DijkstraNaiveID_i_llvm_fpga_push_i1_note0000kstranaiveid_506_0gr thei_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35 (
        .in_data_in(i_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_not_dijkstranaiveid_376_31_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together_376_75_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr(BLACKBOX,48)@0
    // in in_stall_in@20000000
    DijkstraNaiveID_i_llvm_fpga_dummy_thread0000kstranaiveid_381_0gr thei_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out_1(DELAY,185)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out_1_q <= i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out;
        end
    end

    // i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr(BLACKBOX,49)@0
    // in in_stall_in@20000000
    DijkstraNaiveID_i_llvm_fpga_forked_dijks0000kstranaiveid_389_0gr thei_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1(DELAY,184)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr(BLACKBOX,51)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    DijkstraNaiveID_i_llvm_fpga_pipeline_kee0000kstranaiveid_404_0gr thei_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr (
        .in_data_in(redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q),
        .in_dummy_in(redist5_i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out_1_q),
        .in_forked_in(redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond43_dijkstranaiveid_376_35_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together_376_75_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,65)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,68)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,69)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,70)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,134)@0 + 1
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

    // redist2_sync_together_376_75_aunroll_x_in_c0_eni5_5_tpl_1(DELAY,182)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_376_75_aunroll_x_in_c0_eni5_5_tpl_1_q <= in_c0_eni5_5_tpl;
        end
    end

    // i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_c_i7_0_413_3gr_x(CONSTANT,95)
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_c_i7_0_413_3gr_x_q = 7'b0000000;

    // i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_element_extension_540_2_x(BITJOIN,114)@1
    assign i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_element_extension_540_2_x_q = {i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_c_i7_0_413_3gr_x_q, i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_q};

    // valid_fanout_reg20(REG,154)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= in_i_valid;
        end
    end

    // valid_fanout_reg19(REG,153)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x(FIFODELAY,115)@1 + 84
    // out o_data@1
    assign i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_stall = ~ (valid_fanout_reg20_q & VCC_q);
    assign i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_valid = valid_fanout_reg19_q & VCC_q;
    assign i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_data = i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_element_extension_540_2_x_q;
    assign i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(84),
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
        .INITIAL_OCCUPANCY(84),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_element_extension_540_2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_adapt_scalar_trunc_540_4_sel_x(BITSELECT,117)@1
    assign i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_adapt_scalar_trunc_540_4_sel_x_b = i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x(MUX,91)@1
    assign i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_s = redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_q = i_llvm_fpga_push_i1_notcmp4553_push13_dijkstranaiveid_540_0gr_adapt_scalar_trunc_540_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_q = redist2_sync_together_376_75_aunroll_x_in_c0_eni5_5_tpl_1_q;
            default : i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_q = 1'b0;
        endcase
    end

    // redist1_sync_together_376_75_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,181)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_376_75_aunroll_x_in_c0_eni5_4_tpl_1_q <= in_c0_eni5_4_tpl;
        end
    end

    // i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_element_extension_528_2_x(BITJOIN,102)@1
    assign i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_element_extension_528_2_x_q = {i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_c_i7_0_413_3gr_x_q, i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_q};

    // valid_fanout_reg17(REG,151)@0 + 1
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

    // valid_fanout_reg16(REG,150)@0 + 1
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

    // i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x(FIFODELAY,103)@1 + 84
    // out o_data@1
    assign i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_stall = ~ (valid_fanout_reg17_q & VCC_q);
    assign i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_valid = valid_fanout_reg16_q & VCC_q;
    assign i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_data = i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_element_extension_528_2_x_q;
    assign i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(84),
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
        .INITIAL_OCCUPANCY(84),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_element_extension_528_2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_adapt_scalar_trunc_528_4_sel_x(BITSELECT,105)@1
    assign i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_adapt_scalar_trunc_528_4_sel_x_b = i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x(MUX,89)@1
    assign i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_s = redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_q = i_llvm_fpga_push_i1_exitcond3051_push12_dijkstranaiveid_528_0gr_adapt_scalar_trunc_528_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_q = redist1_sync_together_376_75_aunroll_x_in_c0_eni5_4_tpl_1_q;
            default : i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_q = 1'b0;
        endcase
    end

    // i_dijkstranaiveid_b3_current_thread_isreal_dijkstranaiveid_376_6gr(LOGICAL,30)@1
    assign i_dijkstranaiveid_b3_current_thread_isreal_dijkstranaiveid_376_6gr_q = redist5_i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out_1_q ^ VCC_q;

    // i_dijkstranaiveid_b3_next_iter_isreal_dijkstranaiveid_376_9gr(LOGICAL,34)@1
    assign i_dijkstranaiveid_b3_next_iter_isreal_dijkstranaiveid_376_9gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_q & i_llvm_fpga_pipeline_keep_going42_dijkstranaiveid_376_8gr_out_data_out;

    // i_dijkstranaiveid_b3_next_iter_isspec_dijkstranaiveid_376_12(LOGICAL,36)@1
    assign i_dijkstranaiveid_b3_next_iter_isspec_dijkstranaiveid_376_12_q = i_dijkstranaiveid_b3_next_iter_isreal_dijkstranaiveid_376_9gr_q ^ VCC_q;

    // i_dijkstranaiveid_b3_next_iter_isrealreal_dijkstranaiveid_376_10(LOGICAL,35)@1
    assign i_dijkstranaiveid_b3_next_iter_isrealreal_dijkstranaiveid_376_10_q = i_dijkstranaiveid_b3_next_iter_isreal_dijkstranaiveid_376_9gr_q & i_dijkstranaiveid_b3_current_thread_isreal_dijkstranaiveid_376_6gr_q;

    // i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_element_extension_413_2_x(BITJOIN,96)@1
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_element_extension_413_2_x_q = {i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_c_i7_0_413_3gr_x_q, i_dijkstranaiveid_b3_next_iter_isrealreal_dijkstranaiveid_376_10_q};

    // valid_fanout_reg3(REG,137)@0 + 1
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

    // valid_fanout_reg2(REG,136)@0 + 1
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

    // i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x(FIFODELAY,97)@1 + 84
    // out o_data@1
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_data = i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_element_extension_413_2_x_q;
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(84),
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
        .INITIAL_OCCUPANCY(84),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_element_extension_413_2_x_q),
        .o_data(i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_adapt_scalar_trunc_413_4_sel_x(BITSELECT,99)@1
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_adapt_scalar_trunc_413_4_sel_x_b = i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x(MUX,88)@1
    assign i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_s = redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_q = i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_adapt_scalar_trunc_413_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_q = 1'b0;
        endcase
    end

    // i_dijkstranaiveid_b3_lastiter_dijkstranaiveid_376_13(LOGICAL,32)@1
    assign i_dijkstranaiveid_b3_lastiter_dijkstranaiveid_376_13_q = i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_q & i_dijkstranaiveid_b3_next_iter_isspec_dijkstranaiveid_376_12_q;

    // i_dijkstranaiveid_b3_latchcond_dijkstranaiveid_376_14(LOGICAL,33)@1
    assign i_dijkstranaiveid_b3_latchcond_dijkstranaiveid_376_14_q = i_dijkstranaiveid_b3_lastiter_dijkstranaiveid_376_13_q & i_dijkstranaiveid_b3_current_thread_isreal_dijkstranaiveid_376_6gr_q;

    // i_dijkstranaiveid_b3_realexit_dijkstranaiveid_376_30(LOGICAL,37)@1
    assign i_dijkstranaiveid_b3_realexit_dijkstranaiveid_376_30_q = i_dijkstranaiveid_b3_latchcond_dijkstranaiveid_376_14_q & i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_NO_NAME_x_q;

    // i_idxprom_i_dijkstranaiveid_376_17_vt_const_63(CONSTANT,41)
    assign i_idxprom_i_dijkstranaiveid_376_17_vt_const_63_q = 59'b00000000000000000000000000000000000000000000000000000000000;

    // i_idxprom_i_dijkstranaiveid_376_17_sel_x(BITSELECT,80)@1
    assign i_idxprom_i_dijkstranaiveid_376_17_sel_x_b = {32'b00000000000000000000000000000000, i_unnamed_dijkstranaiveid_376_16_vt_join_q[31:0]};

    // i_idxprom_i_dijkstranaiveid_376_17_vt_select_4(BITSELECT,43)@1
    assign i_idxprom_i_dijkstranaiveid_376_17_vt_select_4_b = i_idxprom_i_dijkstranaiveid_376_17_sel_x_b[4:0];

    // i_idxprom_i_dijkstranaiveid_376_17_vt_join(BITJOIN,42)@1
    assign i_idxprom_i_dijkstranaiveid_376_17_vt_join_q = {i_idxprom_i_dijkstranaiveid_376_17_vt_const_63_q, i_idxprom_i_dijkstranaiveid_376_17_vt_select_4_b};

    // i_arrayidx8_i_dijkstranaiveid_453_0gr_narrow_x(BITSELECT,73)@1
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_narrow_x_b = i_idxprom_i_dijkstranaiveid_376_17_vt_join_q[61:0];

    // i_arrayidx8_i_dijkstranaiveid_453_0gr_shift_join_x(BITJOIN,74)@1
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_shift_join_x_q = {i_arrayidx8_i_dijkstranaiveid_453_0gr_narrow_x_b, i_arrayidx8_i_dijkstranaiveid_376_23_vt_const_1_q};

    // i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,178)@1
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx8_i_dijkstranaiveid_453_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg8(REG,142)@0 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22(BLACKBOX,53)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraNaiveID_i_llvm_fpga_sync_buffer_0000kstranaiveid_448_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22 (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_select_63(BITSELECT,56)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_join(BITJOIN,55)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_select_63_b, i_arrayidx8_i_dijkstranaiveid_376_23_vt_const_1_q};

    // i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_lhsMSBs_select(BITSELECT,175)@1
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer35_dijkstranaiveid_376_22_vt_join_q[63:2]);

    // i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums(ADD,176)@1
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_split_join(BITJOIN,177)@1
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_split_join_q = {i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_MSBs_sums_q, i_arrayidx8_i_dijkstranaiveid_376_23_vt_const_1_q};

    // i_arrayidx8_i_dijkstranaiveid_453_0gr_dupName_0_trunc_sel_x(BITSELECT,76)@1
    assign i_arrayidx8_i_dijkstranaiveid_453_0gr_dupName_0_trunc_sel_x_b = i_arrayidx8_i_dijkstranaiveid_453_0gr_add_x_split_join_q[63:0];

    // i_arrayidx8_i_dijkstranaiveid_376_23_vt_select_63(BITSELECT,28)@1
    assign i_arrayidx8_i_dijkstranaiveid_376_23_vt_select_63_b = i_arrayidx8_i_dijkstranaiveid_453_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx8_i_dijkstranaiveid_376_23_vt_const_1(CONSTANT,26)
    assign i_arrayidx8_i_dijkstranaiveid_376_23_vt_const_1_q = 2'b00;

    // i_arrayidx8_i_dijkstranaiveid_376_23_vt_join(BITJOIN,27)@1
    assign i_arrayidx8_i_dijkstranaiveid_376_23_vt_join_q = {i_arrayidx8_i_dijkstranaiveid_376_23_vt_select_63_b, i_arrayidx8_i_dijkstranaiveid_376_23_vt_const_1_q};

    // redist0_sync_together_376_75_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,180)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_376_75_aunroll_x_in_c0_eni5_2_tpl_1_q <= in_c0_eni5_2_tpl;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_element_extension_490_2_x(BITJOIN,108)@1
    assign i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_element_extension_490_2_x_q = {i_llvm_fpga_push_i1_dijkstranaiveid_b3_next_iter_isreal_push_dijkstranaiveid_413_0gr_c_i7_0_413_3gr_x_q, i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_q};

    // valid_fanout_reg12(REG,146)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= in_i_valid;
        end
    end

    // valid_fanout_reg11(REG,145)@0 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x(FIFODELAY,109)@1 + 84
    // out o_data@1
    assign i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_stall = ~ (valid_fanout_reg12_q & VCC_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_valid = valid_fanout_reg11_q & VCC_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_element_extension_490_2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(84),
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
        .INITIAL_OCCUPANCY(84),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_element_extension_490_2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_adapt_scalar_trunc_490_4_sel_x(BITSELECT,111)@1
    assign i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_adapt_scalar_trunc_490_4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x(MUX,90)@1
    assign i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_s = redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_pop755_push14_dijkstranaiveid_490_0gr_adapt_scalar_trunc_490_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_q = redist0_sync_together_376_75_aunroll_x_in_c0_eni5_2_tpl_1_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_q = 1'b0;
        endcase
    end

    // valid_fanout_reg5(REG,139)@0 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer38_dijkstranaiveid_376_18(BLACKBOX,57)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraNaiveID_i_llvm_fpga_sync_buffer_0000kstranaiveid_430_0gr thei_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer38_dijkstranaiveid_376_18 (
        .in_buffer_in(in_arg_visited),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer38_dijkstranaiveid_376_18_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_i_dijkstranaiveid_435_0gr_add_x(ADD,77)@1
    assign i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer38_dijkstranaiveid_376_18_out_buffer_out};
    assign i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_b = {1'b0, i_idxprom_i_dijkstranaiveid_376_17_vt_join_q};
    assign i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_o = $unsigned(i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_a) + $unsigned(i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_b);
    assign i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_q = i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_o[64:0];

    // i_arrayidx_i_dijkstranaiveid_435_0gr_trunc_sel_x(BITSELECT,79)@1
    assign i_arrayidx_i_dijkstranaiveid_435_0gr_trunc_sel_x_b = i_arrayidx_i_dijkstranaiveid_435_0gr_add_x_q[63:0];

    // i_unnamed_dijkstranaiveid_376_16_vt_const_31(CONSTANT,59)
    assign i_unnamed_dijkstranaiveid_376_16_vt_const_31_q = 27'b000000000000000000000000000;

    // c_i5_0_376_64(CONSTANT,23)
    assign c_i5_0_376_64_q = 5'b00000;

    // i_inc_i_zext_dijkstranaiveid_376_25_vt_const_31(CONSTANT,45)
    assign i_inc_i_zext_dijkstranaiveid_376_25_vt_const_31_q = 26'b00000000000000000000000000;

    // i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24(ADD,50)@1
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_a = {1'b0, i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_b = {5'b00000, VCC_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_o = $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_a) + $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_b);
    assign i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_q = i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_o[5:0];

    // i_inc_i_zext_dijkstranaiveid_376_25_sel_x(BITSELECT,81)@1
    assign i_inc_i_zext_dijkstranaiveid_376_25_sel_x_b = {26'b00000000000000000000000000, i_llvm_fpga_int_add_i6_i5_i1_inc_i_i_dijkstranaiveid_376_24_q[5:0]};

    // i_inc_i_zext_dijkstranaiveid_376_25_vt_select_5(BITSELECT,47)@1
    assign i_inc_i_zext_dijkstranaiveid_376_25_vt_select_5_b = i_inc_i_zext_dijkstranaiveid_376_25_sel_x_b[5:0];

    // i_inc_i_zext_dijkstranaiveid_376_25_vt_join(BITJOIN,46)@1
    assign i_inc_i_zext_dijkstranaiveid_376_25_vt_join_q = {i_inc_i_zext_dijkstranaiveid_376_25_vt_const_31_q, i_inc_i_zext_dijkstranaiveid_376_25_vt_select_5_b};

    // i_unnamed_dijkstranaiveid_376_26_sel_x(BITSELECT,131)@1
    assign i_unnamed_dijkstranaiveid_376_26_sel_x_b = i_inc_i_zext_dijkstranaiveid_376_25_vt_join_q[4:0];

    // i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_element_extension_498_2_x(BITJOIN,126)@1
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_element_extension_498_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_dijkstranaiveid_471_0gr_c_i3_0_471_4gr_x_q, i_unnamed_dijkstranaiveid_376_26_sel_x_b};

    // valid_fanout_reg14(REG,148)@0 + 1
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

    // valid_fanout_reg13(REG,147)@0 + 1
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

    // i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x(FIFODELAY,127)@1 + 84
    // out o_data@1
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_stall = ~ (valid_fanout_reg14_q & VCC_q);
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_valid = valid_fanout_reg13_q & VCC_q;
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_data = i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_element_extension_498_2_x_q;
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(84),
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
        .INITIAL_OCCUPANCY(84),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_element_extension_498_2_x_q),
        .o_data(i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_adapt_scalar_trunc_498_4_sel_x(BITSELECT,129)@1
    assign i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_adapt_scalar_trunc_498_4_sel_x_b = i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x(MUX,93)@1
    assign i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_s = redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_q = i_llvm_fpga_push_i5_i_0_i12_narrowing_push10_dijkstranaiveid_498_0gr_adapt_scalar_trunc_498_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_q = c_i5_0_376_64_q;
            default : i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_q = 5'b0;
        endcase
    end

    // i_unnamed_dijkstranaiveid_376_16_sel_x(BITSELECT,130)@1
    assign i_unnamed_dijkstranaiveid_376_16_sel_x_b = {27'b000000000000000000000000000, i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_424_0gr_i_llvm_fpga_pop_i5_i_0_i12_narrowing_pop10_dijkstranaiveid_376_15_mux_x_q[4:0]};

    // i_unnamed_dijkstranaiveid_376_16_vt_select_4(BITSELECT,61)@1
    assign i_unnamed_dijkstranaiveid_376_16_vt_select_4_b = i_unnamed_dijkstranaiveid_376_16_sel_x_b[4:0];

    // i_unnamed_dijkstranaiveid_376_16_vt_join(BITJOIN,60)@1
    assign i_unnamed_dijkstranaiveid_376_16_vt_join_q = {i_unnamed_dijkstranaiveid_376_16_vt_const_31_q, i_unnamed_dijkstranaiveid_376_16_vt_select_4_b};

    // i_dijkstranaiveid_b3_current_iter_isspec_dijkstranaiveid_376_5gr(LOGICAL,29)@1
    assign i_dijkstranaiveid_b3_current_iter_isspec_dijkstranaiveid_376_5gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_397_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b3_current_iter_isreal_dijkstranaiveid_376_4gr_mux_x_q ^ VCC_q;

    // i_dijkstranaiveid_b3_fullexited_dijkstranaiveid_376_7gr(LOGICAL,31)@1
    assign i_dijkstranaiveid_b3_fullexited_dijkstranaiveid_376_7gr_q = i_dijkstranaiveid_b3_current_iter_isspec_dijkstranaiveid_376_5gr_q | redist5_i_llvm_fpga_dummy_thread_dijkstranaiveid_b3_dummy_dijkstranaiveid_376_2gr_out_dummy_out_1_q;

    // sync_out_4_aunroll_x(GPOUT,132)@1
    assign out_c0_exi10_0_tpl = i_dijkstranaiveid_b3_fullexited_dijkstranaiveid_376_7gr_q;
    assign out_c0_exi10_1_tpl = i_unnamed_dijkstranaiveid_376_16_vt_join_q;
    assign out_c0_exi10_2_tpl = i_arrayidx_i_dijkstranaiveid_435_0gr_trunc_sel_x_b;
    assign out_c0_exi10_3_tpl = i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_440_0gr_i_llvm_fpga_pop_i1_memdep_phi_pop755_pop14_dijkstranaiveid_376_20_mux_x_q;
    assign out_c0_exi10_4_tpl = GND_q;
    assign out_c0_exi10_5_tpl = i_arrayidx8_i_dijkstranaiveid_376_23_vt_join_q;
    assign out_c0_exi10_6_tpl = i_fpga_indvars_iv_pop9_struct_0_shuffle_bit4_not_dijkstranaiveid_376_31_q;
    assign out_c0_exi10_7_tpl = i_dijkstranaiveid_b3_realexit_dijkstranaiveid_376_30_q;
    assign out_c0_exi10_8_tpl = i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_524_0gr_i_llvm_fpga_pop_i1_exitcond3051_pop12_dijkstranaiveid_376_38_mux_x_q;
    assign out_c0_exi10_9_tpl = i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_536_0gr_i_llvm_fpga_pop_i1_notcmp4553_pop13_dijkstranaiveid_376_40_mux_x_q;
    assign out_c0_exi10_10_tpl = redist4_i_llvm_fpga_forked_dijkstranaiveid_b3_forked_dijkstranaiveid_376_3gr_out_buffer_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist3_sync_together_376_75_aunroll_x_in_i_valid_1_q;
    assign out_unnamed_DijkstraNaiveID0 = GND_q;

endmodule
