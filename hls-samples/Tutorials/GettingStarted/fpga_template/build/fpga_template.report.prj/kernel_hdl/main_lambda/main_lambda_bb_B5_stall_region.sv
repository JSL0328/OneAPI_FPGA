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

// SystemVerilog created from bb_main_lambda_B5_stall_region
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_bb_B5_stall_region (
    input wire [63:0] in_load_main_lambda_avm_readdata,
    input wire [0:0] in_load_main_lambda_avm_writeack,
    input wire [0:0] in_load_main_lambda_avm_waitrequest,
    input wire [0:0] in_load_main_lambda_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_b,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_fpga_indvars_iv_pop13_struct_0_shuffle_bit5,
    output wire [0:0] out_notcmp1534_pop24,
    output wire [0:0] out_notcmp2030_pop19,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_arrayidx18_i44,
    input wire [0:0] in_forked,
    input wire [0:0] in_forked2541,
    input wire [0:0] in_forked2627_pop1047,
    input wire [31:0] in_load2_pre45,
    input wire [31:0] in_mul_i43,
    input wire [0:0] in_notcmp1546,
    input wire [0:0] in_notcmp2029_pop1248,
    input wire [31:0] in_pop1142,
    input wire [31:0] in_unnamed_main_lambda1,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_load1_main_lambda_avm_readdata,
    input wire [0:0] in_load1_main_lambda_avm_writeack,
    input wire [0:0] in_load1_main_lambda_avm_waitrequest,
    input wire [0:0] in_load1_main_lambda_avm_readdatavalid,
    output wire [40:0] out_load_main_lambda_avm_address,
    output wire [0:0] out_load_main_lambda_avm_enable,
    output wire [0:0] out_load_main_lambda_avm_read,
    output wire [0:0] out_load_main_lambda_avm_write,
    output wire [63:0] out_load_main_lambda_avm_writedata,
    output wire [7:0] out_load_main_lambda_avm_byteenable,
    output wire [0:0] out_load_main_lambda_avm_burstcount,
    input wire [63:0] in_memdep_main_lambda_avm_readdata,
    input wire [0:0] in_memdep_main_lambda_avm_writeack,
    input wire [0:0] in_memdep_main_lambda_avm_waitrequest,
    input wire [0:0] in_memdep_main_lambda_avm_readdatavalid,
    output wire [40:0] out_load1_main_lambda_avm_address,
    output wire [0:0] out_load1_main_lambda_avm_enable,
    output wire [0:0] out_load1_main_lambda_avm_read,
    output wire [0:0] out_load1_main_lambda_avm_write,
    output wire [63:0] out_load1_main_lambda_avm_writedata,
    output wire [7:0] out_load1_main_lambda_avm_byteenable,
    output wire [0:0] out_load1_main_lambda_avm_burstcount,
    output wire [40:0] out_memdep_main_lambda_avm_address,
    output wire [0:0] out_memdep_main_lambda_avm_enable,
    output wire [0:0] out_memdep_main_lambda_avm_read,
    output wire [0:0] out_memdep_main_lambda_avm_write,
    output wire [63:0] out_memdep_main_lambda_avm_writedata,
    output wire [7:0] out_memdep_main_lambda_avm_byteenable,
    output wire [0:0] out_memdep_main_lambda_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] c_i6_1_523_36_q;
    wire [5:0] c_i6_30_523_32_q;
    wire [0:0] i_forked_and_and_main_lambda_523_11_qi;
    reg [0:0] i_forked_and_and_main_lambda_523_11_q;
    wire [0:0] i_forked_and_main_lambda_523_9gr_q;
    wire [6:0] i_fpga_indvars_iv_next_main_lambda_523_8gr_a;
    wire [6:0] i_fpga_indvars_iv_next_main_lambda_523_8gr_b;
    logic [6:0] i_fpga_indvars_iv_next_main_lambda_523_8gr_o;
    wire [6:0] i_fpga_indvars_iv_next_main_lambda_523_8gr_q;
    wire [0:0] i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q;
    wire [40:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_address;
    wire [0:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_read;
    wire [0:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_write;
    wire [63:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_address;
    wire [0:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_read;
    wire [0:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_write;
    wire [63:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load_main_lambda_523_24_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_lsu_memdep_o_active;
    wire [40:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_valid_out;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_main_lambda_523_8gr_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q;
    wire [1:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_c_i2_0_665_4gr_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_element_extension_665_3_x_q;
    wire [0:0] i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_c0_exit75_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_c0_exit75_2_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_c1_exit_1_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] main_lambda_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] main_lambda_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [63:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] main_lambda_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [95:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [1:0] join_for_coalesced_delay_2_q;
    wire [0:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    wire [1:0] join_for_coalesced_delay_3_q;
    wire [0:0] sel_for_coalesced_delay_3_b;
    wire [0:0] sel_for_coalesced_delay_3_c;
    wire [0:0] redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_valid;
    wire redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_stall;
    wire redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_data;
    wire [0:0] redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_valid;
    wire redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_stall;
    wire redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_data;
    wire [0:0] redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_valid;
    wire redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_stall;
    wire redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_data;
    wire [0:0] redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_valid;
    wire redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_stall;
    wire redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_data;
    wire [0:0] redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_valid;
    wire redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_stall;
    wire redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_data;
    wire [0:0] redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_valid;
    wire redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_stall;
    wire redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_data;
    wire [0:0] redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_valid;
    wire redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_stall;
    wire redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_data;
    wire [0:0] redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_valid;
    wire redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_stall;
    wire redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_data;
    wire [0:0] redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_valid;
    wire redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_stall;
    wire redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_data;
    wire [0:0] redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_valid;
    wire redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_stall;
    wire redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_data;
    reg [0:0] redist14_i_forked_and_and_main_lambda_523_11_q_5_0_q;
    reg [0:0] redist14_i_forked_and_and_main_lambda_523_11_q_5_1_q;
    reg [0:0] redist14_i_forked_and_and_main_lambda_523_11_q_5_2_q;
    reg [0:0] redist14_i_forked_and_and_main_lambda_523_11_q_5_3_q;
    reg [64:0] coalesced_delay_0_0_q;
    wire [0:0] coalesced_delay_1_fifo_i_valid;
    wire coalesced_delay_1_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_stall;
    wire coalesced_delay_1_fifo_i_stall_bitsignaltemp;
    wire [95:0] coalesced_delay_1_fifo_i_data;
    wire [0:0] coalesced_delay_1_fifo_o_valid;
    wire coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_stall;
    wire coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    wire [95:0] coalesced_delay_1_fifo_o_data;
    wire [0:0] coalesced_delay_2_fifo_i_valid;
    wire coalesced_delay_2_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_i_stall;
    wire coalesced_delay_2_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_2_fifo_i_data;
    wire [0:0] coalesced_delay_2_fifo_o_valid;
    wire coalesced_delay_2_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_o_stall;
    wire coalesced_delay_2_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_2_fifo_o_data;
    reg [1:0] coalesced_delay_3_0_q;
    reg [1:0] coalesced_delay_3_1_q;
    reg [1:0] coalesced_delay_3_2_q;
    reg [1:0] coalesced_delay_3_3_q;
    reg [1:0] coalesced_delay_3_4_q;
    reg [1:0] coalesced_delay_3_5_q;
    reg [1:0] coalesced_delay_3_6_q;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load1_main_lambda_523_25_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load1_main_lambda_523_25_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load_main_lambda_523_24_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load_main_lambda_523_24_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_main_lambda_523_29_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_main_lambda_523_29_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_b;
    wire [196:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [127:0] bubble_join_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_c;
    wire [95:0] bubble_join_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_c;
    wire [196:0] bubble_join_main_lambda_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_f;
    wire [63:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_main_lambda_B5_merge_reg_aunroll_x_k;
    wire [0:0] bubble_join_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_q;
    wire [0:0] bubble_select_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_b;
    wire [0:0] bubble_join_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_q;
    wire [0:0] bubble_select_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_b;
    wire [0:0] bubble_join_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_q;
    wire [0:0] bubble_select_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_b;
    wire [0:0] bubble_join_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_q;
    wire [0:0] bubble_select_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_b;
    wire [0:0] bubble_join_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_q;
    wire [0:0] bubble_select_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_b;
    wire [95:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [95:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_2_fifo_b;
    reg [0:0] SE_i_forked_and_and_main_lambda_523_11_R_v_0;
    wire [0:0] SE_i_forked_and_and_main_lambda_523_11_v_s_0;
    wire [0:0] SE_i_forked_and_and_main_lambda_523_11_s_tv_0;
    wire [0:0] SE_i_forked_and_and_main_lambda_523_11_backEN;
    wire [0:0] SE_i_forked_and_and_main_lambda_523_11_and0;
    wire [0:0] SE_i_forked_and_and_main_lambda_523_11_backStall;
    wire [0:0] SE_i_forked_and_and_main_lambda_523_11_V0;
    wire [0:0] SE_i_forked_and_main_lambda_523_9gr_wireValid;
    wire [0:0] SE_i_forked_and_main_lambda_523_9gr_and0;
    wire [0:0] SE_i_forked_and_main_lambda_523_9gr_backStall;
    wire [0:0] SE_i_forked_and_main_lambda_523_9gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V6;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_push18_main_lambda_523_18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_push18_main_lambda_523_18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_V0;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_main_lambda_B5_merge_reg_aunroll_x_V7;
    wire [0:0] SE_join_for_coalesced_delay_3_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_3_and0;
    wire [0:0] SE_join_for_coalesced_delay_3_backStall;
    wire [0:0] SE_join_for_coalesced_delay_3_V0;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireValid;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireStall;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_StallValid;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_toReg0;
    reg [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg0;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed0;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_toReg1;
    reg [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg1;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed1;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_or0;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_backStall;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_V0;
    wire [0:0] SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_V1;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireValid;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireStall;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_StallValid;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_toReg0;
    reg [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg0;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed0;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_toReg1;
    reg [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg1;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed1;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_or0;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_backStall;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_V0;
    wire [0:0] SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_V1;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireStall;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_StallValid;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg0;
    reg [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg0;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed0;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg1;
    reg [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg1;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed1;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg2;
    reg [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg2;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed2;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_or0;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_or1;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_backStall;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V0;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V1;
    wire [0:0] SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V2;
    reg [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_R_v_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_v_s_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_s_tv_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backEN;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backStall;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_V0;
    reg [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_R_v_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_v_s_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_s_tv_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backEN;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backStall;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_V0;
    reg [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_R_v_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_v_s_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_s_tv_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backEN;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backStall;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_V0;
    reg [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_R_v_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_v_s_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_s_tv_0;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backEN;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backStall;
    wire [0:0] SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_2;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_or1;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SE_coalesced_delay_0_0_V2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_2_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_2_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V1;
    reg [0:0] SE_coalesced_delay_3_0_R_v_0;
    wire [0:0] SE_coalesced_delay_3_0_v_s_0;
    wire [0:0] SE_coalesced_delay_3_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_0_backEN;
    wire [0:0] SE_coalesced_delay_3_0_backStall;
    wire [0:0] SE_coalesced_delay_3_0_V0;
    reg [0:0] SE_coalesced_delay_3_1_R_v_0;
    wire [0:0] SE_coalesced_delay_3_1_v_s_0;
    wire [0:0] SE_coalesced_delay_3_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_1_backEN;
    wire [0:0] SE_coalesced_delay_3_1_backStall;
    wire [0:0] SE_coalesced_delay_3_1_V0;
    reg [0:0] SE_coalesced_delay_3_2_R_v_0;
    wire [0:0] SE_coalesced_delay_3_2_v_s_0;
    wire [0:0] SE_coalesced_delay_3_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_2_backEN;
    wire [0:0] SE_coalesced_delay_3_2_backStall;
    wire [0:0] SE_coalesced_delay_3_2_V0;
    reg [0:0] SE_coalesced_delay_3_3_R_v_0;
    wire [0:0] SE_coalesced_delay_3_3_v_s_0;
    wire [0:0] SE_coalesced_delay_3_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_3_backEN;
    wire [0:0] SE_coalesced_delay_3_3_backStall;
    wire [0:0] SE_coalesced_delay_3_3_V0;
    reg [0:0] SE_coalesced_delay_3_4_R_v_0;
    wire [0:0] SE_coalesced_delay_3_4_v_s_0;
    wire [0:0] SE_coalesced_delay_3_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_4_backEN;
    wire [0:0] SE_coalesced_delay_3_4_backStall;
    wire [0:0] SE_coalesced_delay_3_4_V0;
    reg [0:0] SE_coalesced_delay_3_5_R_v_0;
    wire [0:0] SE_coalesced_delay_3_5_v_s_0;
    wire [0:0] SE_coalesced_delay_3_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_5_backEN;
    wire [0:0] SE_coalesced_delay_3_5_backStall;
    wire [0:0] SE_coalesced_delay_3_5_V0;
    reg [0:0] SE_coalesced_delay_3_6_R_v_0;
    wire [0:0] SE_coalesced_delay_3_6_v_s_0;
    wire [0:0] SE_coalesced_delay_3_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_6_backEN;
    wire [0:0] SE_coalesced_delay_3_6_backStall;
    wire [0:0] SE_coalesced_delay_3_6_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_V0;
    wire [0:0] SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_valid;
    wire bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_stall;
    wire bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_valid;
    wire bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_stall;
    wire bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_stall_bitsignaltemp;
    wire [0:0] SR_SE_coalesced_delay_3_6_i_valid;
    reg [0:0] SR_SE_coalesced_delay_3_6_r_valid;
    reg [1:0] SR_SE_coalesced_delay_3_6_r_data0;
    wire [0:0] SR_SE_coalesced_delay_3_6_backStall;
    wire [0:0] SR_SE_coalesced_delay_3_6_V;
    wire [1:0] SR_SE_coalesced_delay_3_6_D0;
    wire [0:0] SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_i_valid;
    reg [0:0] SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid;
    reg [0:0] SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_data0;
    wire [0:0] SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backStall;
    wire [0:0] SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_V;
    wire [0:0] SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_main_lambda_B5_merge_reg_aunroll_x(BITJOIN,201)
    assign bubble_join_main_lambda_B5_merge_reg_aunroll_x_q = {main_lambda_B5_merge_reg_aunroll_x_out_data_out_9_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_8_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_7_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_6_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_5_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_4_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_3_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_2_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_1_tpl, main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_main_lambda_B5_merge_reg_aunroll_x(BITSELECT,202)
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_b = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[0:0];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_c = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[1:1];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_d = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[33:2];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_e = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[65:34];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_f = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[97:66];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_g = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[161:98];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_h = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[193:162];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_i = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[194:194];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_j = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[195:195];
    assign bubble_select_main_lambda_B5_merge_reg_aunroll_x_k = bubble_join_main_lambda_B5_merge_reg_aunroll_x_q[196:196];

    // join_for_coalesced_delay_2(BITJOIN,131)
    assign join_for_coalesced_delay_2_q = {bubble_select_main_lambda_B5_merge_reg_aunroll_x_k, bubble_select_main_lambda_B5_merge_reg_aunroll_x_i};

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr(BITJOIN,176)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_q = i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr(BITSELECT,177)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_b = bubble_join_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_q[0:0];

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr(BITJOIN,180)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_q = i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr(BITSELECT,181)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_b = bubble_join_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_q[0:0];

    // join_for_coalesced_delay_3(BITJOIN,134)
    assign join_for_coalesced_delay_3_q = {bubble_select_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_b, bubble_select_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_b};

    // coalesced_delay_3_0(REG,148)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_3_0_q <= 2'b00;
        end
        else if (SE_coalesced_delay_3_0_backEN == 1'b1)
        begin
            coalesced_delay_3_0_q <= join_for_coalesced_delay_3_q;
        end
    end

    // coalesced_delay_3_1(REG,149)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_3_1_q <= 2'b00;
        end
        else if (SE_coalesced_delay_3_1_backEN == 1'b1)
        begin
            coalesced_delay_3_1_q <= coalesced_delay_3_0_q;
        end
    end

    // coalesced_delay_3_2(REG,150)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_3_2_q <= 2'b00;
        end
        else if (SE_coalesced_delay_3_2_backEN == 1'b1)
        begin
            coalesced_delay_3_2_q <= coalesced_delay_3_1_q;
        end
    end

    // coalesced_delay_3_3(REG,151)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_3_3_q <= 2'b00;
        end
        else if (SE_coalesced_delay_3_3_backEN == 1'b1)
        begin
            coalesced_delay_3_3_q <= coalesced_delay_3_2_q;
        end
    end

    // coalesced_delay_3_4(REG,152)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_3_4_q <= 2'b00;
        end
        else if (SE_coalesced_delay_3_4_backEN == 1'b1)
        begin
            coalesced_delay_3_4_q <= coalesced_delay_3_3_q;
        end
    end

    // coalesced_delay_3_5(REG,153)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_3_5_q <= 2'b00;
        end
        else if (SE_coalesced_delay_3_5_backEN == 1'b1)
        begin
            coalesced_delay_3_5_q <= coalesced_delay_3_4_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30(STALLENABLE,256)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_wireValid = i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15(STALLENABLE,254)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_wireValid = i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_valid_out;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_c_i2_0_665_4gr_x(CONSTANT,100)
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_c_i2_0_665_4gr_x_q = 2'b00;

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr(BITJOIN,188)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_q = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr(BITSELECT,189)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_b = bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_q[5:0];

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_element_extension_665_3_x(BITJOIN,102)@2
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_element_extension_665_3_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_c_i2_0_665_4gr_x_q, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_b};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x(CHOOSEBITS,98)@2
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_element_extension_665_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_a[5:5];

    // i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12(LOGICAL,16)@2
    assign i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q ^ VCC_q;

    // bubble_join_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr(BITJOIN,173)
    assign bubble_join_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_q = i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr(BITSELECT,174)
    assign bubble_select_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_b = bubble_join_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_q[0:0];

    // i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15(BLACKBOX,29)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    main_lambda_i_llvm_fpga_push_i1_forked2628_push17_712_0gr thei_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_feedback_stall_out_17),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17(STALLENABLE,266)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_valid_out;

    // c_i6_1_523_36(CONSTANT,7)
    assign c_i6_1_523_36_q = 6'b111111;

    // i_fpga_indvars_iv_next_main_lambda_523_8gr(ADD,15)@2
    assign i_fpga_indvars_iv_next_main_lambda_523_8gr_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_b};
    assign i_fpga_indvars_iv_next_main_lambda_523_8gr_b = {1'b0, c_i6_1_523_36_q};
    assign i_fpga_indvars_iv_next_main_lambda_523_8gr_o = $unsigned(i_fpga_indvars_iv_next_main_lambda_523_8gr_a) + $unsigned(i_fpga_indvars_iv_next_main_lambda_523_8gr_b);
    assign i_fpga_indvars_iv_next_main_lambda_523_8gr_q = i_fpga_indvars_iv_next_main_lambda_523_8gr_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_main_lambda_523_8gr_sel_x(BITSELECT,91)@2
    assign bgTrunc_i_fpga_indvars_iv_next_main_lambda_523_8gr_sel_x_b = i_fpga_indvars_iv_next_main_lambda_523_8gr_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17(BLACKBOX,35)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    main_lambda_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_748_0gr thei_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_main_lambda_523_8gr_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_feedback_stall_out_13),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V6),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo(BITJOIN,214)
    assign bubble_join_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_q = redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_data;

    // bubble_select_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo(BITSELECT,215)
    assign bubble_select_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_b = bubble_join_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_q[0:0];

    // SE_out_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20(STALLENABLE,258)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_wireValid = i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_valid_out;

    // bubble_join_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo(BITJOIN,217)
    assign bubble_join_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_q = redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_data;

    // bubble_select_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo(BITSELECT,218)
    assign bubble_select_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_b = bubble_join_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_q[0:0];

    // i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20(BLACKBOX,31)@94
    // in in_stall_in@20000000
    // out out_data_out@95
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@95
    main_lambda_i_llvm_fpga_push_i1_notcmp1534_push24_800_0gr thei_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_feedback_stall_out_24),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(bubble_select_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20(STALLENABLE,257)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_backStall = i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_and0 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V1;
    assign SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_wireValid = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_and0;

    // SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo(STALLENABLE,295)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg0 <= '0;
            SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg1 <= '0;
            SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg0 <= SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg0;
            // Successor 1
            SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg1 <= SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg1;
            // Successor 2
            SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg2 <= SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_backStall) & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid) | SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg0;
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_backStall) & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid) | SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg1;
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed2 = (~ (i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_stall_out) & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid) | SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg2;
    // Consuming
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_StallValid = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_backStall & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid;
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg0 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_StallValid & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed0;
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg1 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_StallValid & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed1;
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_toReg2 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_StallValid & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_or0 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed0;
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_or1 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed1 & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_or0;
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireStall = ~ (SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_consumed2 & SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_or1);
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_backStall = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V0 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid & ~ (SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg0);
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V1 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid & ~ (SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg1);
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V2 = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid & ~ (SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_wireValid = redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_valid;

    // redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo(STALLFIFO,140)
    assign redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_valid = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_V1;
    assign redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_stall = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_backStall;
    assign redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_data = bubble_select_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_b;
    assign redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_valid_bitsignaltemp = redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_valid[0];
    assign redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_stall_bitsignaltemp = redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_stall[0];
    assign redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_valid[0] = redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_valid_bitsignaltemp;
    assign redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_stall[0] = redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(16),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo (
        .i_valid(redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_valid_bitsignaltemp),
        .i_stall(redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_b),
        .o_valid(redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_valid_bitsignaltemp),
        .o_stall(redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_stall_bitsignaltemp),
        .o_data(redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,220)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,221)
    assign bubble_select_coalesced_delay_1_fifo_b = bubble_join_coalesced_delay_1_fifo_q[95:0];

    // sel_for_coalesced_delay_1(BITSELECT,129)
    assign sel_for_coalesced_delay_1_b = bubble_select_coalesced_delay_1_fifo_b[63:0];
    assign sel_for_coalesced_delay_1_c = bubble_select_coalesced_delay_1_fifo_b[95:64];

    // bubble_join_i_llvm_fpga_mem_load_main_lambda_523_24(BITJOIN,159)
    assign bubble_join_i_llvm_fpga_mem_load_main_lambda_523_24_q = i_llvm_fpga_mem_load_main_lambda_523_24_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load_main_lambda_523_24(BITSELECT,160)
    assign bubble_select_i_llvm_fpga_mem_load_main_lambda_523_24_b = bubble_join_i_llvm_fpga_mem_load_main_lambda_523_24_q[31:0];

    // bubble_join_i_llvm_fpga_mem_load1_main_lambda_523_25(BITJOIN,156)
    assign bubble_join_i_llvm_fpga_mem_load1_main_lambda_523_25_q = i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load1_main_lambda_523_25(BITSELECT,157)
    assign bubble_select_i_llvm_fpga_mem_load1_main_lambda_523_25_b = bubble_join_i_llvm_fpga_mem_load1_main_lambda_523_25_q[31:0];

    // SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x(STALLENABLE,275)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_backStall = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_stall | ~ (SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_wireValid = i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_o_valid;

    // join_for_coalesced_delay_0(BITJOIN,125)
    assign join_for_coalesced_delay_0_q = {bubble_select_main_lambda_B5_merge_reg_aunroll_x_b, bubble_select_main_lambda_B5_merge_reg_aunroll_x_f, bubble_select_main_lambda_B5_merge_reg_aunroll_x_e};

    // coalesced_delay_0_0(REG,145)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= 65'b00000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= join_for_coalesced_delay_0_q;
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,126)
    assign sel_for_coalesced_delay_0_b = coalesced_delay_0_0_q[31:0];
    assign sel_for_coalesced_delay_0_c = coalesced_delay_0_0_q[63:32];
    assign sel_for_coalesced_delay_0_d = coalesced_delay_0_0_q[64:64];

    // redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo(STALLFIFO,136)
    assign redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_valid = SE_coalesced_delay_0_0_V2;
    assign redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_stall = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_backStall;
    assign redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_data = sel_for_coalesced_delay_0_d;
    assign redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_valid_bitsignaltemp = redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_valid[0];
    assign redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_stall_bitsignaltemp = redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_stall[0];
    assign redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_valid[0] = redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_valid_bitsignaltemp;
    assign redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_stall[0] = redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(78),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo (
        .i_valid(redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_valid_bitsignaltemp),
        .i_stall(redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_i_stall_bitsignaltemp),
        .i_data(sel_for_coalesced_delay_0_d),
        .o_valid(redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_valid_bitsignaltemp),
        .o_stall(redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_stall_bitsignaltemp),
        .o_data(redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo(BITJOIN,205)
    assign bubble_join_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_q = redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_data;

    // bubble_select_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo(BITSELECT,206)
    assign bubble_select_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_b = bubble_join_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_q[0:0];

    // i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x(BLACKBOX,105)@79
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@90
    // out out_c1_exit_0_tpl@90
    // out out_c1_exit_1_tpl@90
    // out out_c1_exit_2_tpl@90
    main_lambda_i_sfc_s_c1_in_for_body9_i_s_0000r_main_lambda_523_27 thei_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x (
        .in_forked(bubble_select_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_b),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(bubble_select_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_b),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_backStall),
        .in_i_valid(SE_out_coalesced_delay_1_fifo_V0),
        .in_c1_eni6_0_tpl(GND_q),
        .in_c1_eni6_1_tpl(bubble_select_i_llvm_fpga_mem_load1_main_lambda_523_25_b),
        .in_c1_eni6_2_tpl(bubble_select_i_llvm_fpga_mem_load_main_lambda_523_24_b),
        .in_c1_eni6_3_tpl(sel_for_coalesced_delay_1_c),
        .in_c1_eni6_4_tpl(bubble_select_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_b),
        .in_c1_eni6_5_tpl(sel_for_coalesced_delay_1_b),
        .in_c1_eni6_6_tpl(bubble_select_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_b),
        .out_o_stall(i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_c1_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo(STALLENABLE,287)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg0 <= '0;
            SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg0 <= SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_toReg0;
            // Successor 1
            SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg1 <= SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed0 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireValid) | SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg0;
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed1 = (~ (redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_stall) & SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireValid) | SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg1;
    // Consuming
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_StallValid = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_backStall & SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireValid;
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_toReg0 = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_StallValid & SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed0;
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_toReg1 = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_StallValid & SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_or0 = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed0;
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireStall = ~ (SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_consumed1 & SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_or0);
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_backStall = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_V0 = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireValid & ~ (SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg0);
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_V1 = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireValid & ~ (SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_wireValid = redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_valid;

    // bubble_join_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13(BITJOIN,167)
    assign bubble_join_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_q = i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13(BITSELECT,168)
    assign bubble_select_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_b = bubble_join_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_q[0:0];

    // i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x(BLACKBOX,104)@2
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit75_0_tpl@8
    // out out_c0_exit75_1_tpl@8
    // out out_c0_exit75_2_tpl@8
    main_lambda_i_sfc_s_c0_in_for_body9_i_s_00006_main_lambda_523_22 thei_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x (
        .in_arg_a(in_arg_a),
        .in_arg_b(in_arg_b),
        .in_forked(sel_for_coalesced_delay_0_d),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V0),
        .in_c0_eni467_0_tpl(GND_q),
        .in_c0_eni467_1_tpl(sel_for_coalesced_delay_0_d),
        .in_c0_eni467_2_tpl(sel_for_coalesced_delay_0_b),
        .in_c0_eni467_3_tpl(sel_for_coalesced_delay_0_c),
        .in_c0_eni467_4_tpl(i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q),
        .out_o_stall(i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_o_valid),
        .out_c0_exit75_0_tpl(),
        .out_c0_exit75_1_tpl(i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_c0_exit75_1_tpl),
        .out_c0_exit75_2_tpl(i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_c0_exit75_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x(BITJOIN,195)
    assign bubble_join_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_q = {i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_c0_exit75_2_tpl, i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_c0_exit75_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x(BITSELECT,196)
    assign bubble_select_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_q[127:64];

    // i_llvm_fpga_mem_load1_main_lambda_523_25(BLACKBOX,17)@8
    // in in_i_stall@20000000
    // out out_load1_main_lambda_avm_address@20000000
    // out out_load1_main_lambda_avm_burstcount@20000000
    // out out_load1_main_lambda_avm_byteenable@20000000
    // out out_load1_main_lambda_avm_enable@20000000
    // out out_load1_main_lambda_avm_read@20000000
    // out out_load1_main_lambda_avm_write@20000000
    // out out_load1_main_lambda_avm_writedata@20000000
    // out out_o_readdata@79
    // out out_o_stall@20000000
    // out out_o_valid@79
    main_lambda_i_llvm_fpga_mem_load1_959_0gr thei_llvm_fpga_mem_load1_main_lambda_523_25 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_c),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V0),
        .in_load1_main_lambda_avm_readdata(in_load1_main_lambda_avm_readdata),
        .in_load1_main_lambda_avm_readdatavalid(in_load1_main_lambda_avm_readdatavalid),
        .in_load1_main_lambda_avm_waitrequest(in_load1_main_lambda_avm_waitrequest),
        .in_load1_main_lambda_avm_writeack(in_load1_main_lambda_avm_writeack),
        .out_load1_main_lambda_avm_address(i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_address),
        .out_load1_main_lambda_avm_burstcount(i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_burstcount),
        .out_load1_main_lambda_avm_byteenable(i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_byteenable),
        .out_load1_main_lambda_avm_enable(i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_enable),
        .out_load1_main_lambda_avm_read(i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_read),
        .out_load1_main_lambda_avm_write(i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_write),
        .out_load1_main_lambda_avm_writedata(i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_load_main_lambda_523_24(BLACKBOX,18)@8
    // in in_i_stall@20000000
    // out out_load_main_lambda_avm_address@20000000
    // out out_load_main_lambda_avm_burstcount@20000000
    // out out_load_main_lambda_avm_byteenable@20000000
    // out out_load_main_lambda_avm_enable@20000000
    // out out_load_main_lambda_avm_read@20000000
    // out out_load_main_lambda_avm_write@20000000
    // out out_load_main_lambda_avm_writedata@20000000
    // out out_o_readdata@79
    // out out_o_stall@20000000
    // out out_o_valid@79
    main_lambda_i_llvm_fpga_mem_load_935_0gr thei_llvm_fpga_mem_load_main_lambda_523_24 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V1),
        .in_load_main_lambda_avm_readdata(in_load_main_lambda_avm_readdata),
        .in_load_main_lambda_avm_readdatavalid(in_load_main_lambda_avm_readdatavalid),
        .in_load_main_lambda_avm_waitrequest(in_load_main_lambda_avm_waitrequest),
        .in_load_main_lambda_avm_writeack(in_load_main_lambda_avm_writeack),
        .out_load_main_lambda_avm_address(i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_address),
        .out_load_main_lambda_avm_burstcount(i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_burstcount),
        .out_load_main_lambda_avm_byteenable(i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_byteenable),
        .out_load_main_lambda_avm_enable(i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_enable),
        .out_load_main_lambda_avm_read(i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_read),
        .out_load_main_lambda_avm_write(i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_write),
        .out_load_main_lambda_avm_writedata(i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load_main_lambda_523_24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load_main_lambda_523_24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load_main_lambda_523_24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,302)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_o_valid;
    assign SE_out_coalesced_delay_1_fifo_and1 = i_llvm_fpga_mem_load_main_lambda_523_24_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_valid & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_and3 = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_V0 & SE_out_coalesced_delay_1_fifo_and2;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_V0 & SE_out_coalesced_delay_1_fifo_and3;

    // SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo(STALLENABLE,293)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg0 <= '0;
            SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg0 <= SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_toReg0;
            // Successor 1
            SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg1 <= SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed0 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireValid) | SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg0;
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed1 = (~ (redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_o_stall) & SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireValid) | SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg1;
    // Consuming
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_StallValid = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_backStall & SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireValid;
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_toReg0 = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_StallValid & SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed0;
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_toReg1 = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_StallValid & SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_or0 = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed0;
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireStall = ~ (SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_consumed1 & SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_or0);
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_backStall = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_V0 = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireValid & ~ (SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg0);
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_V1 = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireValid & ~ (SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_wireValid = redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_valid;

    // redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo(STALLFIFO,139)
    assign redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_valid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V5;
    assign redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_stall = SE_out_redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_backStall;
    assign redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_data = i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q;
    assign redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_valid_bitsignaltemp = redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_valid[0];
    assign redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_stall_bitsignaltemp = redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_stall[0];
    assign redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_valid[0] = redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_valid_bitsignaltemp;
    assign redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_stall[0] = redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(78),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo (
        .i_valid(redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_valid_bitsignaltemp),
        .i_stall(redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_i_stall_bitsignaltemp),
        .i_data(i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q),
        .o_valid(redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_valid_bitsignaltemp),
        .o_stall(redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_stall_bitsignaltemp),
        .o_data(redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x(STALLENABLE,272)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V0 = SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall = i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V3;
    assign SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid = SE_coalesced_delay_0_0_V1 & SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_and0;

    // SE_out_i_llvm_fpga_push_i32_push18_main_lambda_523_18(STALLENABLE,264)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_push18_main_lambda_523_18_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_push18_main_lambda_523_18_wireValid = i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr(BITJOIN,184)
    assign bubble_join_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_q = i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr(BITSELECT,185)
    assign bubble_select_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_b = bubble_join_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_q[31:0];

    // i_llvm_fpga_push_i32_push18_main_lambda_523_18(BLACKBOX,34)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    main_lambda_i_llvm_fpga_push_i32_push18_766_0gr thei_llvm_fpga_push_i32_push18_main_lambda_523_18 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_feedback_stall_out_18),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_push18_main_lambda_523_18_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr(STALLENABLE,248)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_stall) & SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireValid) | SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_backStall) & SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireValid) | SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_StallValid = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_backStall & SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_toReg0 = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_StallValid & SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_toReg1 = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_StallValid & SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_or0 = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_consumed1 & SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_or0);
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_backStall = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_V0 = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_V1 = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_wireValid = i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_valid_out;

    // SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18(STALLENABLE,263)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_V0 = SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_backStall = i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V2;
    assign SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_wireValid = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_V1 & SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_and0;

    // SE_out_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14(STALLENABLE,252)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_wireValid = i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr(BITJOIN,170)
    assign bubble_join_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_q = i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr(BITSELECT,171)
    assign bubble_select_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_b = bubble_join_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_q[0:0];

    // i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14(BLACKBOX,28)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    main_lambda_i_llvm_fpga_push_i1_forked2531_push20_694_0gr thei_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_feedback_stall_out_20),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr(STALLENABLE,240)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed0 = (~ (SE_i_forked_and_main_lambda_523_9gr_backStall) & SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_backStall) & SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_StallValid = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_backStall & SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_toReg0 = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_StallValid & SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_toReg1 = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_StallValid & SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_or0 = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_consumed1 & SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_or0);
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_backStall = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_V0 = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_V1 = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_wireValid = i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14(STALLENABLE,251)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_V0 = SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_backStall = i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V0;
    assign SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_wireValid = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_V1 & SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_and0;

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr(STALLENABLE,250)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg2 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg3 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg4 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg5 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg6 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed2 = (~ (SE_in_i_llvm_fpga_push_i32_push18_main_lambda_523_18_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed3 = (~ (SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed4 = (~ (redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_stall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg4;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed5 = (~ (redist12_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_77_fifo_o_stall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg5;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed6 = (~ (i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_stall_out) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_backStall & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed3;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg4 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed4;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg5 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed5;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_toReg6 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed1 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed2 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed3 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or4 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed4 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or3;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or5 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed5 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or4;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_consumed6 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_or5);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_backStall = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V4 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg4);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V5 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg5);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V6 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_wireValid = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15(STALLENABLE,253)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_V0 = SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_backStall = i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V1;
    assign SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_wireValid = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_V1 & SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_and0;

    // SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr(STALLENABLE,242)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed0 = (~ (SE_i_forked_and_and_main_lambda_523_11_backStall) & SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_backStall) & SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_StallValid = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_backStall & SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_toReg0 = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_StallValid & SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_toReg1 = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_StallValid & SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_or0 = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_consumed1 & SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_or0);
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_backStall = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_V0 = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_V1 = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_wireValid = i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_valid_out;

    // SE_i_forked_and_main_lambda_523_9gr(STALLENABLE,226)
    // Valid signal propagation
    assign SE_i_forked_and_main_lambda_523_9gr_V0 = SE_i_forked_and_main_lambda_523_9gr_wireValid;
    // Backward Stall generation
    assign SE_i_forked_and_main_lambda_523_9gr_backStall = SE_i_forked_and_and_main_lambda_523_11_backStall | ~ (SE_i_forked_and_main_lambda_523_9gr_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_forked_and_main_lambda_523_9gr_and0 = SE_coalesced_delay_0_0_V0;
    assign SE_i_forked_and_main_lambda_523_9gr_wireValid = SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_V0 & SE_i_forked_and_main_lambda_523_9gr_and0;

    // SE_i_forked_and_and_main_lambda_523_11(STALLENABLE,225)
    // Valid signal propagation
    assign SE_i_forked_and_and_main_lambda_523_11_V0 = SE_i_forked_and_and_main_lambda_523_11_R_v_0;
    // Stall signal propagation
    assign SE_i_forked_and_and_main_lambda_523_11_s_tv_0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backStall & SE_i_forked_and_and_main_lambda_523_11_R_v_0;
    // Backward Enable generation
    assign SE_i_forked_and_and_main_lambda_523_11_backEN = ~ (SE_i_forked_and_and_main_lambda_523_11_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_forked_and_and_main_lambda_523_11_and0 = SE_i_forked_and_main_lambda_523_9gr_V0 & SE_i_forked_and_and_main_lambda_523_11_backEN;
    assign SE_i_forked_and_and_main_lambda_523_11_v_s_0 = SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_V0 & SE_i_forked_and_and_main_lambda_523_11_and0;
    // Backward Stall generation
    assign SE_i_forked_and_and_main_lambda_523_11_backStall = ~ (SE_i_forked_and_and_main_lambda_523_11_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_i_forked_and_and_main_lambda_523_11_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_forked_and_and_main_lambda_523_11_backEN == 1'b0)
            begin
                SE_i_forked_and_and_main_lambda_523_11_R_v_0 <= SE_i_forked_and_and_main_lambda_523_11_R_v_0 & SE_i_forked_and_and_main_lambda_523_11_s_tv_0;
            end
            else
            begin
                SE_i_forked_and_and_main_lambda_523_11_R_v_0 <= SE_i_forked_and_and_main_lambda_523_11_v_s_0;
            end

        end
    end

    // SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0(STALLENABLE,296)
    // Valid signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_V0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_s_tv_0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backStall & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backEN = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_v_s_0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backEN & SE_i_forked_and_and_main_lambda_523_11_V0;
    // Backward Stall generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backStall = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backEN == 1'b0)
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_R_v_0 & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_v_s_0;
            end

        end
    end

    // i_forked_and_main_lambda_523_9gr(LOGICAL,14)@2
    assign i_forked_and_main_lambda_523_9gr_q = sel_for_coalesced_delay_0_d & bubble_select_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_b;

    // i_forked_and_and_main_lambda_523_11(LOGICAL,13)@2 + 1
    assign i_forked_and_and_main_lambda_523_11_qi = i_forked_and_main_lambda_523_9gr_q & bubble_select_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("SYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked_and_and_main_lambda_523_11_delay ( .xin(i_forked_and_and_main_lambda_523_11_qi), .xout(i_forked_and_and_main_lambda_523_11_q), .ena(SE_i_forked_and_and_main_lambda_523_11_backEN[0]), .clk(clock), .aclr(rst_sync_rst_sclrn[0]) );

    // redist14_i_forked_and_and_main_lambda_523_11_q_5_0(REG,141)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_0_q <= 1'b0;
        end
        else if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_backEN == 1'b1)
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_0_q <= i_forked_and_and_main_lambda_523_11_q;
        end
    end

    // redist14_i_forked_and_and_main_lambda_523_11_q_5_1(REG,142)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_1_q <= 1'b0;
        end
        else if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backEN == 1'b1)
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_1_q <= redist14_i_forked_and_and_main_lambda_523_11_q_5_0_q;
        end
    end

    // SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1(STALLENABLE,297)
    // Valid signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_V0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_s_tv_0 = SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backStall & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backEN = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_v_s_0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backEN & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_0_V0;
    // Backward Stall generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backStall = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_backEN == 1'b0)
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_R_v_0 & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_v_s_0;
            end

        end
    end

    // SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2(STALLREG,416)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid <= 1'b0;
            SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backStall & (SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid | SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_i_valid);

            if (SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_data0 <= $unsigned(redist14_i_forked_and_and_main_lambda_523_11_q_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_i_valid = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backStall = SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid | ~ (SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_i_valid);

    // Valid
    assign SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_V = SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid == 1'b1 ? SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid : SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_i_valid;

    assign SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_D0 = $signed(SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_valid == 1'b1 ? SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_r_data0 : redist14_i_forked_and_and_main_lambda_523_11_q_5_1_q);

    // SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2(STALLENABLE,298)
    // Valid signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_V0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_s_tv_0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backStall & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backEN = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_v_s_0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backEN & SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_V;
    // Backward Stall generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backStall = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backEN);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backEN == 1'b0)
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_R_v_0 & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_s_tv_0;
            end
            else
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_v_s_0;
            end

        end
    end

    // SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3(STALLENABLE,299)
    // Valid signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_V0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_s_tv_0 = i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_stall_out & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backEN = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_v_s_0 = SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backEN & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_V0;
    // Backward Stall generation
    assign SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backStall = ~ (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backEN == 1'b0)
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_R_v_0 & SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_s_tv_0;
            end
            else
            begin
                SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_R_v_0 <= SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x(STALLENABLE,273)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_load1_main_lambda_523_25_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_load_main_lambda_523_24_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_and0 = i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_wireValid = i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_valid_out & SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_and0;

    // redist14_i_forked_and_and_main_lambda_523_11_q_5_2(REG,143)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_2_q <= 1'b0;
        end
        else if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_backEN == 1'b1)
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_2_q <= SR_SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_2_D0;
        end
    end

    // redist14_i_forked_and_and_main_lambda_523_11_q_5_3(REG,144)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_3_q <= 1'b0;
        end
        else if (SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_backEN == 1'b1)
        begin
            redist14_i_forked_and_and_main_lambda_523_11_q_5_3_q <= redist14_i_forked_and_and_main_lambda_523_11_q_5_2_q;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13(BLACKBOX,21)@7
    // in in_stall_in@20000000
    // out out_data_out@8
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@8
    main_lambda_i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_676_0gr thei_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13 (
        .in_data_in(GND_q),
        .in_dir(redist14_i_forked_and_and_main_lambda_523_11_q_5_3_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall),
        .in_valid_in(SE_redist14_i_forked_and_and_main_lambda_523_11_q_5_3_V0),
        .out_data_out(i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_i_llvm_fpga_mem_memdep_main_lambda_523_29(BITJOIN,162)
    assign bubble_join_i_llvm_fpga_mem_memdep_main_lambda_523_29_q = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_main_lambda_523_29(BITSELECT,163)
    assign bubble_select_i_llvm_fpga_mem_memdep_main_lambda_523_29_b = bubble_join_i_llvm_fpga_mem_memdep_main_lambda_523_29_q[0:0];

    // i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30(BLACKBOX,30)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    main_lambda_i_llvm_fpga_push_i1_memdep_phi_push16_1050_0gr thei_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_main_lambda_523_29_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_coalesce_i1_memdep_phi_pop16_main_lambda_523_13_out_feedback_stall_out_16),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_V1),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x(BITJOIN,198)
    assign bubble_join_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_q = {i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x(BITSELECT,199)
    assign bubble_select_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_b = bubble_join_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_q[31:0];
    assign bubble_select_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_c = bubble_join_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_q[95:32];

    // i_llvm_fpga_mem_memdep_main_lambda_523_29(BLACKBOX,19)@90
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_main_lambda_avm_address@20000000
    // out out_memdep_main_lambda_avm_burstcount@20000000
    // out out_memdep_main_lambda_avm_byteenable@20000000
    // out out_memdep_main_lambda_avm_enable@20000000
    // out out_memdep_main_lambda_avm_read@20000000
    // out out_memdep_main_lambda_avm_write@20000000
    // out out_memdep_main_lambda_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@101
    // out out_o_writeack@101
    main_lambda_i_llvm_fpga_mem_memdep_1037_0gr thei_llvm_fpga_mem_memdep_main_lambda_523_29 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_c),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27_aunroll_x_b),
        .in_memdep_main_lambda_avm_readdata(in_memdep_main_lambda_avm_readdata),
        .in_memdep_main_lambda_avm_readdatavalid(in_memdep_main_lambda_avm_readdatavalid),
        .in_memdep_main_lambda_avm_waitrequest(in_memdep_main_lambda_avm_waitrequest),
        .in_memdep_main_lambda_avm_writeack(in_memdep_main_lambda_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_lsu_memdep_o_active),
        .out_memdep_main_lambda_avm_address(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_address),
        .out_memdep_main_lambda_avm_burstcount(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_burstcount),
        .out_memdep_main_lambda_avm_byteenable(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_byteenable),
        .out_memdep_main_lambda_avm_enable(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_enable),
        .out_memdep_main_lambda_avm_read(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_read),
        .out_memdep_main_lambda_avm_write(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_write),
        .out_memdep_main_lambda_avm_writedata(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29(STALLENABLE,234)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireValid) | SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi_push16_main_lambda_523_30_out_stall_out) & SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireValid) | SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_StallValid = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_backStall & SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_toReg0 = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_StallValid & SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_toReg1 = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_StallValid & SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_or0 = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_consumed1 & SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_backStall = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_V0 = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_V1 = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_wireValid = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_o_valid;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg(STALLFIFO,410)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(7),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo(STALLFIFO,138)
    assign redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_valid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_V4;
    assign redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall;
    assign redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_data = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q;
    assign redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_valid_bitsignaltemp = redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_valid[0];
    assign redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_stall_bitsignaltemp = redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_stall[0];
    assign redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_valid[0] = redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_valid_bitsignaltemp;
    assign redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_stall[0] = redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(100),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo (
        .i_valid(redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_valid_bitsignaltemp),
        .i_stall(redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q),
        .o_valid(redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_valid_bitsignaltemp),
        .o_stall(redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_stall_bitsignaltemp),
        .o_data(redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg(STALLFIFO,411)
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg(STALLFIFO,413)
    assign bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_valid = SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_V0;
    assign bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(100),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1(STALLENABLE,357)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and0 = bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_reg_o_valid;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and1 = bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and2 = bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and3 = redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and4 = bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and5 = SE_coalesced_delay_3_6_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_main_lambda_523_29_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_and5;

    // SE_coalesced_delay_3_6(STALLENABLE,311)
    // Valid signal propagation
    assign SE_coalesced_delay_3_6_V0 = SE_coalesced_delay_3_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_6_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall & SE_coalesced_delay_3_6_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_6_backEN = ~ (SE_coalesced_delay_3_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_6_v_s_0 = SE_coalesced_delay_3_6_backEN & SR_SE_coalesced_delay_3_6_V;
    // Backward Stall generation
    assign SE_coalesced_delay_3_6_backStall = ~ (SE_coalesced_delay_3_6_backEN);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_3_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_6_R_v_0 <= SE_coalesced_delay_3_6_R_v_0 & SE_coalesced_delay_3_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_6_R_v_0 <= SE_coalesced_delay_3_6_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_3_6(STALLREG,415)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_3_6_r_valid <= 1'b0;
            SR_SE_coalesced_delay_3_6_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_3_6_r_valid <= SE_coalesced_delay_3_6_backStall & (SR_SE_coalesced_delay_3_6_r_valid | SR_SE_coalesced_delay_3_6_i_valid);

            if (SR_SE_coalesced_delay_3_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_3_6_r_data0 <= $unsigned(coalesced_delay_3_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_3_6_i_valid = SE_coalesced_delay_3_5_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_3_6_backStall = SR_SE_coalesced_delay_3_6_r_valid | ~ (SR_SE_coalesced_delay_3_6_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_3_6_V = SR_SE_coalesced_delay_3_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_3_6_r_valid : SR_SE_coalesced_delay_3_6_i_valid;

    assign SR_SE_coalesced_delay_3_6_D0 = $signed(SR_SE_coalesced_delay_3_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_3_6_r_data0 : coalesced_delay_3_5_q);

    // SE_coalesced_delay_3_5(STALLENABLE,310)
    // Valid signal propagation
    assign SE_coalesced_delay_3_5_V0 = SE_coalesced_delay_3_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_5_s_tv_0 = SR_SE_coalesced_delay_3_6_backStall & SE_coalesced_delay_3_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_5_backEN = ~ (SE_coalesced_delay_3_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_5_v_s_0 = SE_coalesced_delay_3_5_backEN & SE_coalesced_delay_3_4_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_5_backStall = ~ (SE_coalesced_delay_3_5_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_3_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_5_R_v_0 <= SE_coalesced_delay_3_5_R_v_0 & SE_coalesced_delay_3_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_5_R_v_0 <= SE_coalesced_delay_3_5_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_3_4(STALLENABLE,309)
    // Valid signal propagation
    assign SE_coalesced_delay_3_4_V0 = SE_coalesced_delay_3_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_4_s_tv_0 = SE_coalesced_delay_3_5_backStall & SE_coalesced_delay_3_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_4_backEN = ~ (SE_coalesced_delay_3_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_4_v_s_0 = SE_coalesced_delay_3_4_backEN & SE_coalesced_delay_3_3_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_4_backStall = ~ (SE_coalesced_delay_3_4_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_3_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_4_R_v_0 <= SE_coalesced_delay_3_4_R_v_0 & SE_coalesced_delay_3_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_4_R_v_0 <= SE_coalesced_delay_3_4_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_3_3(STALLENABLE,308)
    // Valid signal propagation
    assign SE_coalesced_delay_3_3_V0 = SE_coalesced_delay_3_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_3_s_tv_0 = SE_coalesced_delay_3_4_backStall & SE_coalesced_delay_3_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_3_backEN = ~ (SE_coalesced_delay_3_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_3_v_s_0 = SE_coalesced_delay_3_3_backEN & SE_coalesced_delay_3_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_3_backStall = ~ (SE_coalesced_delay_3_3_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_3_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_3_R_v_0 <= SE_coalesced_delay_3_3_R_v_0 & SE_coalesced_delay_3_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_3_R_v_0 <= SE_coalesced_delay_3_3_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_3_2(STALLENABLE,307)
    // Valid signal propagation
    assign SE_coalesced_delay_3_2_V0 = SE_coalesced_delay_3_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_2_s_tv_0 = SE_coalesced_delay_3_3_backStall & SE_coalesced_delay_3_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_2_backEN = ~ (SE_coalesced_delay_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_2_v_s_0 = SE_coalesced_delay_3_2_backEN & SE_coalesced_delay_3_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_2_backStall = ~ (SE_coalesced_delay_3_2_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_2_R_v_0 <= SE_coalesced_delay_3_2_R_v_0 & SE_coalesced_delay_3_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_2_R_v_0 <= SE_coalesced_delay_3_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_3_1(STALLENABLE,306)
    // Valid signal propagation
    assign SE_coalesced_delay_3_1_V0 = SE_coalesced_delay_3_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_1_s_tv_0 = SE_coalesced_delay_3_2_backStall & SE_coalesced_delay_3_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_1_backEN = ~ (SE_coalesced_delay_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_1_v_s_0 = SE_coalesced_delay_3_1_backEN & SE_coalesced_delay_3_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_1_backStall = ~ (SE_coalesced_delay_3_1_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_1_R_v_0 <= SE_coalesced_delay_3_1_R_v_0 & SE_coalesced_delay_3_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_1_R_v_0 <= SE_coalesced_delay_3_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_3_0(STALLENABLE,305)
    // Valid signal propagation
    assign SE_coalesced_delay_3_0_V0 = SE_coalesced_delay_3_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_0_s_tv_0 = SE_coalesced_delay_3_1_backStall & SE_coalesced_delay_3_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_0_backEN = ~ (SE_coalesced_delay_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_0_v_s_0 = SE_coalesced_delay_3_0_backEN & SE_join_for_coalesced_delay_3_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_0_backStall = ~ (SE_coalesced_delay_3_0_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_0_R_v_0 <= SE_coalesced_delay_3_0_R_v_0 & SE_coalesced_delay_3_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_0_R_v_0 <= SE_coalesced_delay_3_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr(STALLENABLE,244)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_1_reg_o_stall) & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed2 = (~ (SE_join_for_coalesced_delay_3_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_toReg2 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_or1 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_or0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_consumed2 & SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_or1);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V2 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_wireValid = i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_valid_out;

    // SE_join_for_coalesced_delay_3(STALLENABLE,284)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_3_V0 = SE_join_for_coalesced_delay_3_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_3_backStall = SE_coalesced_delay_3_0_backStall | ~ (SE_join_for_coalesced_delay_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_3_and0 = SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_V2;
    assign SE_join_for_coalesced_delay_3_wireValid = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V2 & SE_join_for_coalesced_delay_3_and0;

    // SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19(STALLENABLE,259)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_backStall = i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_and0 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V1;
    assign SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_wireValid = SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V1 & SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_and0;

    // bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg(STALLFIFO,412)
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr(STALLENABLE,246)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_1_reg_o_stall) & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed2 = (~ (SE_join_for_coalesced_delay_3_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_toReg2 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_or1 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_or0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_consumed2 & SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_or1);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_V2 = SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_wireValid = i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19(STALLENABLE,260)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_wireValid = i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19(BLACKBOX,32)@94
    // in in_stall_in@20000000
    // out out_data_out@95
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@95
    main_lambda_i_llvm_fpga_push_i1_notcmp2030_push19_782_0gr thei_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_feedback_stall_out_19),
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not(bubble_select_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo(BITJOIN,208)
    assign bubble_join_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_q = redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_data;

    // bubble_select_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo(BITSELECT,209)
    assign bubble_select_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_b = bubble_join_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_q[0:0];

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,223)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_o_data;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,224)
    assign bubble_select_coalesced_delay_2_fifo_b = bubble_join_coalesced_delay_2_fifo_q[1:0];

    // sel_for_coalesced_delay_2(BITSELECT,132)
    assign sel_for_coalesced_delay_2_b = bubble_select_coalesced_delay_2_fifo_b[0:0];
    assign sel_for_coalesced_delay_2_c = bubble_select_coalesced_delay_2_fifo_b[1:1];

    // i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr(BLACKBOX,25)@93
    // in in_stall_in@20000000
    // out out_data_out@94
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@94
    main_lambda_i_llvm_fpga_pop_i1_notcmp2030_pop19_643_0gr thei_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr (
        .in_data_in(sel_for_coalesced_delay_2_c),
        .in_dir(bubble_select_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_b),
        .in_feedback_in_19(i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_notcmp2030_push19_main_lambda_523_19_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_backStall),
        .in_valid_in(SE_out_coalesced_delay_2_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr(BLACKBOX,24)@93
    // in in_stall_in@20000000
    // out out_data_out@94
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@94
    main_lambda_i_llvm_fpga_pop_i1_notcmp1534_pop24_607_0gr thei_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr (
        .in_data_in(sel_for_coalesced_delay_2_b),
        .in_dir(bubble_select_redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_b),
        .in_feedback_in_24(i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_notcmp1534_push24_main_lambda_523_20_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_backStall),
        .in_valid_in(SE_out_coalesced_delay_2_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo(STALLFIFO,137)
    assign redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_valid = SE_out_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_V1;
    assign redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_stall = SE_out_coalesced_delay_2_fifo_backStall;
    assign redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_data = bubble_select_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_b;
    assign redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_valid_bitsignaltemp = redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_valid[0];
    assign redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_stall_bitsignaltemp = redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_stall[0];
    assign redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_valid[0] = redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_valid_bitsignaltemp;
    assign redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_stall[0] = redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(15),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo (
        .i_valid(redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_valid_bitsignaltemp),
        .i_stall(redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_b),
        .o_valid(redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_valid_bitsignaltemp),
        .o_stall(redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_stall_bitsignaltemp),
        .o_data(redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,304)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_coalesced_delay_2_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_2_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_2_fifo_fromReg0 <= SE_out_coalesced_delay_2_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_2_fifo_fromReg1 <= SE_out_coalesced_delay_2_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_2_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_notcmp1534_pop24_main_lambda_523_4gr_out_stall_out) & SE_out_coalesced_delay_2_fifo_wireValid) | SE_out_coalesced_delay_2_fifo_fromReg0;
    assign SE_out_coalesced_delay_2_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp2030_pop19_main_lambda_523_6gr_out_stall_out) & SE_out_coalesced_delay_2_fifo_wireValid) | SE_out_coalesced_delay_2_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_2_fifo_StallValid = SE_out_coalesced_delay_2_fifo_backStall & SE_out_coalesced_delay_2_fifo_wireValid;
    assign SE_out_coalesced_delay_2_fifo_toReg0 = SE_out_coalesced_delay_2_fifo_StallValid & SE_out_coalesced_delay_2_fifo_consumed0;
    assign SE_out_coalesced_delay_2_fifo_toReg1 = SE_out_coalesced_delay_2_fifo_StallValid & SE_out_coalesced_delay_2_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_or0 = SE_out_coalesced_delay_2_fifo_consumed0;
    assign SE_out_coalesced_delay_2_fifo_wireStall = ~ (SE_out_coalesced_delay_2_fifo_consumed1 & SE_out_coalesced_delay_2_fifo_or0);
    assign SE_out_coalesced_delay_2_fifo_backStall = SE_out_coalesced_delay_2_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid & ~ (SE_out_coalesced_delay_2_fifo_fromReg0);
    assign SE_out_coalesced_delay_2_fifo_V1 = SE_out_coalesced_delay_2_fifo_wireValid & ~ (SE_out_coalesced_delay_2_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_o_valid;
    assign SE_out_coalesced_delay_2_fifo_wireValid = redist2_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_92_fifo_o_valid & SE_out_coalesced_delay_2_fifo_and0;

    // coalesced_delay_2_fifo(STALLFIFO,147)
    assign coalesced_delay_2_fifo_i_valid = SE_out_main_lambda_B5_merge_reg_aunroll_x_V7;
    assign coalesced_delay_2_fifo_i_stall = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_i_data = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_i_valid_bitsignaltemp = coalesced_delay_2_fifo_i_valid[0];
    assign coalesced_delay_2_fifo_i_stall_bitsignaltemp = coalesced_delay_2_fifo_i_stall[0];
    assign coalesced_delay_2_fifo_o_valid[0] = coalesced_delay_2_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_2_fifo_o_stall[0] = coalesced_delay_2_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(93),
        .WIDTH(2),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_2_fifo (
        .i_valid(coalesced_delay_2_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_2_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_2_q),
        .o_valid(coalesced_delay_2_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_2_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_2_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,128)
    assign join_for_coalesced_delay_1_q = {bubble_select_main_lambda_B5_merge_reg_aunroll_x_h, bubble_select_main_lambda_B5_merge_reg_aunroll_x_g};

    // coalesced_delay_1_fifo(STALLFIFO,146)
    assign coalesced_delay_1_fifo_i_valid = SE_out_main_lambda_B5_merge_reg_aunroll_x_V6;
    assign coalesced_delay_1_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(79),
        .WIDTH(96),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_1_fifo (
        .i_valid(coalesced_delay_1_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_1_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_1_q),
        .o_valid(coalesced_delay_1_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_1_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_1_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,300)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_V2 = SE_coalesced_delay_0_0_R_v_2;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_i_forked_and_main_lambda_523_9gr_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = SE_in_i_sfc_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_523_22_aunroll_x_backStall & SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_s_tv_2 = redist1_main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl_78_fifo_o_stall & SE_coalesced_delay_0_0_R_v_2;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_or1 = SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_2 | SE_coalesced_delay_0_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_main_lambda_B5_merge_reg_aunroll_x_V5;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_R_v_2 & SE_coalesced_delay_0_0_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // c_i6_30_523_32(CONSTANT,8)
    assign c_i6_30_523_32_q = 6'b011110;

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr(BLACKBOX,27)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    main_lambda_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_555_0gr thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr (
        .in_data_in(c_i6_30_523_32_q),
        .in_dir(bubble_select_main_lambda_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_main_lambda_523_17_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_backStall),
        .in_valid_in(SE_out_main_lambda_B5_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr(BLACKBOX,26)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    main_lambda_i_llvm_fpga_pop_i32_pop18_591_0gr thei_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr (
        .in_data_in(bubble_select_main_lambda_B5_merge_reg_aunroll_x_d),
        .in_dir(bubble_select_main_lambda_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_18(i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_push18_main_lambda_523_18_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_backStall),
        .in_valid_in(SE_out_main_lambda_B5_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    main_lambda_i_llvm_fpga_pop_i1_forked2628_pop17_625_0gr thei_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr (
        .in_data_in(bubble_select_main_lambda_B5_merge_reg_aunroll_x_j),
        .in_dir(bubble_select_main_lambda_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_17(i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_forked2628_push17_main_lambda_523_15_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_backStall),
        .in_valid_in(SE_out_main_lambda_B5_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr(BLACKBOX,22)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    main_lambda_i_llvm_fpga_pop_i1_forked2531_pop20_573_0gr thei_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr (
        .in_data_in(bubble_select_main_lambda_B5_merge_reg_aunroll_x_c),
        .in_dir(bubble_select_main_lambda_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_20(i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_forked2531_push20_main_lambda_523_14_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_backStall),
        .in_valid_in(SE_out_main_lambda_B5_merge_reg_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_stall_entry(BITJOIN,191)
    assign bubble_join_stall_entry_q = {in_unnamed_main_lambda1, in_pop1142, in_notcmp2029_pop1248, in_notcmp1546, in_mul_i43, in_load2_pre45, in_forked2627_pop1047, in_forked2541, in_forked, in_arrayidx18_i44};

    // bubble_select_stall_entry(BITSELECT,192)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[64:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[65:65];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[66:66];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[98:67];
    assign bubble_select_stall_entry_g = bubble_join_stall_entry_q[130:99];
    assign bubble_select_stall_entry_h = bubble_join_stall_entry_q[131:131];
    assign bubble_select_stall_entry_i = bubble_join_stall_entry_q[132:132];
    assign bubble_select_stall_entry_j = bubble_join_stall_entry_q[164:133];
    assign bubble_select_stall_entry_k = bubble_join_stall_entry_q[196:165];

    // SE_stall_entry(STALLENABLE,267)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = main_lambda_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // main_lambda_B5_merge_reg_aunroll_x(BLACKBOX,106)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    main_lambda_B5_merge_reg themain_lambda_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_main_lambda_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_j),
        .in_data_in_3_tpl(bubble_select_stall_entry_g),
        .in_data_in_4_tpl(bubble_select_stall_entry_k),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_data_in_7_tpl(bubble_select_stall_entry_h),
        .in_data_in_8_tpl(bubble_select_stall_entry_e),
        .in_data_in_9_tpl(bubble_select_stall_entry_i),
        .out_stall_out(main_lambda_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(main_lambda_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(main_lambda_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_main_lambda_B5_merge_reg_aunroll_x(STALLENABLE,277)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg3 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg4 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg5 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg6 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg7 <= SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_stall) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_forked2531_pop20_main_lambda_523_2gr_out_stall_out) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_forked2628_pop17_main_lambda_523_5gr_out_stall_out) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg2;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_out_stall_out) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg3;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_main_lambda_523_1gr_out_stall_out) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg4;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed5 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg5;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed6 = (~ (coalesced_delay_1_fifo_o_stall) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg6;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed7 = (~ (coalesced_delay_2_fifo_o_stall) & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid) | SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid = SE_out_main_lambda_B5_merge_reg_aunroll_x_backStall & SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg0 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg1 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg2 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed2;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg3 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed3;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg4 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed4;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg5 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed5;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg6 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed6;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_toReg7 = SE_out_main_lambda_B5_merge_reg_aunroll_x_StallValid & SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_or0 = SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_or1 = SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed1 & SE_out_main_lambda_B5_merge_reg_aunroll_x_or0;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_or2 = SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed2 & SE_out_main_lambda_B5_merge_reg_aunroll_x_or1;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_or3 = SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed3 & SE_out_main_lambda_B5_merge_reg_aunroll_x_or2;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_or4 = SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed4 & SE_out_main_lambda_B5_merge_reg_aunroll_x_or3;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_or5 = SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed5 & SE_out_main_lambda_B5_merge_reg_aunroll_x_or4;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_or6 = SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed6 & SE_out_main_lambda_B5_merge_reg_aunroll_x_or5;
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_consumed7 & SE_out_main_lambda_B5_merge_reg_aunroll_x_or6);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_backStall = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V0 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V1 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V2 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg2);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V3 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg3);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V4 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg4);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V5 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg5);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V6 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg6);
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_V7 = SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_lambda_B5_merge_reg_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_main_lambda_B5_merge_reg_aunroll_x_wireValid = main_lambda_B5_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg(STALLFIFO,414)
    assign bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_valid = SE_out_main_lambda_B5_merge_reg_aunroll_x_V0;
    assign bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_stall = SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_valid_bitsignaltemp = bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_valid[0];
    assign bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_stall_bitsignaltemp = bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_stall[0];
    assign bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_valid[0] = bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_stall[0] = bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(94),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg (
        .i_valid(bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1(STALLENABLE,381)
    // Valid signal propagation
    assign SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_stall_out | ~ (SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_wireValid = bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_reg_o_valid;

    // SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr(STALLENABLE,236)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_backStall = bubble_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_1_reg_o_stall | ~ (SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_wireValid = i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16(STALLENABLE,262)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_wireValid = i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16(BLACKBOX,33)@94
    // in in_stall_in@20000000
    // out out_data_out@95
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@95
    main_lambda_i_llvm_fpga_push_i1_notexitcond_730_0gr thei_llvm_fpga_push_i1_notexitcond_main_lambda_523_16 (
        .in_data_in(bubble_select_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_not_exitcond_stall_out),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_backStall),
        .in_valid_in(SE_out_redist13_i_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not_main_lambda_523_12_q_92_fifo_V2),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr(BLACKBOX,20)@94
    // in in_stall_in@20000000
    // out out_data_out@95
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@95
    main_lambda_i_llvm_fpga_pipeline_keep_going_539_0gr thei_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_feedback_out_1),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_main_lambda_523_16_out_feedback_valid_out_1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_backStall),
        .in_valid_in(SE_out_bubble_out_main_lambda_B5_merge_reg_aunroll_x_1_V0),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // ext_sig_sync_out(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,81)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_out_pipeline_valid_out;

    // sync_out_163(GPOUT,88)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // coalesced_delay_3_6(REG,154)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_3_6_q <= 2'b00;
        end
        else if (SE_coalesced_delay_3_6_backEN == 1'b1)
        begin
            coalesced_delay_3_6_q <= SR_SE_coalesced_delay_3_6_D0;
        end
    end

    // sel_for_coalesced_delay_3(BITSELECT,135)
    assign sel_for_coalesced_delay_3_b = coalesced_delay_3_6_q[0:0];
    assign sel_for_coalesced_delay_3_c = coalesced_delay_3_6_q[1:1];

    // bubble_join_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo(BITJOIN,211)
    assign bubble_join_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_q = redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_o_data;

    // bubble_select_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo(BITSELECT,212)
    assign bubble_select_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_b = bubble_join_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_q[0:0];

    // sync_out_164(GPOUT,89)@101
    assign out_fpga_indvars_iv_pop13_struct_0_shuffle_bit5 = bubble_select_redist9_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body9_i_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_main_lambda_665_0gr_NO_NAME_x_q_99_fifo_b;
    assign out_notcmp1534_pop24 = sel_for_coalesced_delay_3_c;
    assign out_notcmp2030_pop19 = sel_for_coalesced_delay_3_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i32_pop18_main_lambda_523_3gr_1_V0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,93)
    assign out_load_main_lambda_avm_address = i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_address;
    assign out_load_main_lambda_avm_enable = i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_enable;
    assign out_load_main_lambda_avm_read = i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_read;
    assign out_load_main_lambda_avm_write = i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_write;
    assign out_load_main_lambda_avm_writedata = i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_writedata;
    assign out_load_main_lambda_avm_byteenable = i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_byteenable;
    assign out_load_main_lambda_avm_burstcount = i_llvm_fpga_mem_load_main_lambda_523_24_out_load_main_lambda_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,95)
    assign out_load1_main_lambda_avm_address = i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_address;
    assign out_load1_main_lambda_avm_enable = i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_enable;
    assign out_load1_main_lambda_avm_read = i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_read;
    assign out_load1_main_lambda_avm_write = i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_write;
    assign out_load1_main_lambda_avm_writedata = i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_writedata;
    assign out_load1_main_lambda_avm_byteenable = i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_byteenable;
    assign out_load1_main_lambda_avm_burstcount = i_llvm_fpga_mem_load1_main_lambda_523_25_out_load1_main_lambda_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,96)
    assign out_memdep_main_lambda_avm_address = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_address;
    assign out_memdep_main_lambda_avm_enable = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_enable;
    assign out_memdep_main_lambda_avm_read = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_read;
    assign out_memdep_main_lambda_avm_write = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_write;
    assign out_memdep_main_lambda_avm_writedata = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_writedata;
    assign out_memdep_main_lambda_avm_byteenable = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_byteenable;
    assign out_memdep_main_lambda_avm_burstcount = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_memdep_main_lambda_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,97)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_main_lambda_523_29_out_lsu_memdep_o_active;

    // rst_sync(RESETSYNC,417)
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
