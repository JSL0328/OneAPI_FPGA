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

// SystemVerilog created from bb_DijkstraNaiveID_B5_stall_region
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B5_stall_region (
    input wire [63:0] in_load6_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load6_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_load6_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load6_DijkstraNaiveID_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_exitcond3052_pop19,
    output wire [0:0] out_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp4554_pop20,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_arrayidx31_i65,
    input wire [0:0] in_exitcond3051_pop1269,
    input wire [0:0] in_forked57,
    input wire [0:0] in_memdep_phi_pop755_pop1466,
    input wire [31:0] in_mul_i_add3464,
    input wire [0:0] in_notcmp4553_pop1371,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_load7_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load7_lm_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_load7_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load7_lm_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_load6_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load6_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_load6_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_burstcount,
    input wire [63:0] in_load8_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load8_lm_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_load8_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load8_lm_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_load7_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load7_lm_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_load7_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_burstcount,
    input wire [63:0] in_load9_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load9_lm_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_load9_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load9_lm_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_load8_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load8_lm_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_load8_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_burstcount,
    input wire [63:0] in_memdep_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_load9_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load9_lm_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_load9_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_burstcount,
    output wire [40:0] out_memdep_DijkstraNaiveID_avm_address,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_read,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_write,
    output wire [63:0] out_memdep_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_memdep_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] c_i5_1_849_42_q;
    wire [4:0] c_i5_9_849_38_q;
    wire [0:0] i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q;
    wire [5:0] i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_a;
    wire [5:0] i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_b;
    logic [5:0] i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_o;
    wire [5:0] i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_q;
    wire [40:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_lsu_memdep_o_active;
    wire [40:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_valid_out;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_valid_out;
    wire [0:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q;
    wire [2:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_c_i3_0_956_4gr_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_element_extension_956_3_x_q;
    wire [0:0] i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_2_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_c1_exit117_1_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_c1_exit117_2_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_1_tpl;
    wire [63:0] i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl;
    wire [0:0] i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl;
    wire [0:0] i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_2_tpl;
    wire [0:0] i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_c4_exit_1_tpl;
    wire [0:0] i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_c4_exit_2_tpl;
    wire [0:0] i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_valid;
    wire redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_stall;
    wire redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_data;
    wire [0:0] redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_valid;
    wire redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_stall;
    wire redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_data;
    wire [0:0] redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_valid;
    wire redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_stall;
    wire redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_data;
    wire [0:0] redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_valid;
    wire redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_stall;
    wire redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_data;
    wire [0:0] redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_valid;
    wire redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_stall;
    wire redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_stall_bitsignaltemp;
    wire [63:0] redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_data;
    wire [0:0] redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_valid;
    wire redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_stall;
    wire redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_stall_bitsignaltemp;
    wire [63:0] redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_data;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_valid;
    wire redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_stall;
    wire redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_stall_bitsignaltemp;
    wire [31:0] redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_data;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_valid;
    wire redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_stall;
    wire redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_stall_bitsignaltemp;
    wire [31:0] redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_data;
    wire [0:0] redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_valid;
    wire redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_stall;
    wire redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_data;
    wire [0:0] redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_valid;
    wire redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_stall;
    wire redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_data;
    reg [0:0] redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_q;
    reg [0:0] redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_q;
    reg [0:0] redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_q;
    reg [0:0] redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_q;
    reg [0:0] redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_q;
    wire [0:0] redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_valid;
    wire redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_stall;
    wire redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_data;
    wire [0:0] redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_valid;
    wire redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_stall;
    wire redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_data;
    wire [0:0] redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_valid;
    wire redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_stall;
    wire redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_data;
    wire [0:0] redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_valid;
    wire redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_stall;
    wire redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_data;
    wire [0:0] redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_valid;
    wire redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_stall;
    wire redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_stall_bitsignaltemp;
    wire [63:0] redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_data;
    wire [0:0] redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_valid;
    wire redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_stall;
    wire redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_stall_bitsignaltemp;
    wire [63:0] redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_data;
    reg [0:0] redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_q;
    reg [0:0] redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_1_q;
    reg [0:0] redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_2_q;
    reg [0:0] redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_3_q;
    reg [0:0] redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_4_q;
    reg [0:0] redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_5_q;
    wire [0:0] redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_valid;
    wire redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_stall;
    wire redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_stall_bitsignaltemp;
    wire [31:0] redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_data;
    wire [0:0] redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_valid;
    wire redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_stall;
    wire redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_stall_bitsignaltemp;
    wire [31:0] redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_data;
    wire [0:0] redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_valid;
    wire redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_stall;
    wire redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_data;
    wire [0:0] redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_valid;
    wire redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_stall;
    wire redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_data;
    wire [0:0] redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_valid;
    wire redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_stall;
    wire redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_data;
    wire [0:0] redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_valid;
    wire redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_stall;
    wire redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_data;
    reg [0:0] redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_q;
    reg [0:0] redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_q;
    reg [0:0] redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_q;
    reg [0:0] redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_q;
    reg [0:0] redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_q;
    reg [0:0] redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_q;
    reg [0:0] redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_q;
    reg [32:0] coalesced_delay_0_0_q;
    wire [0:0] coalesced_delay_1_fifo_i_valid;
    wire coalesced_delay_1_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_stall;
    wire coalesced_delay_1_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_i_data;
    wire [0:0] coalesced_delay_1_fifo_o_valid;
    wire coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_stall;
    wire coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_o_data;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_b;
    wire [4:0] bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_q;
    wire [4:0] bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_b;
    wire [99:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [99:0] bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_g;
    wire [95:0] bubble_join_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_c;
    wire [127:0] bubble_join_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_c;
    wire [127:0] bubble_join_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_c;
    wire [1:0] bubble_join_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_c;
    wire [32:0] bubble_join_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_c;
    wire [0:0] bubble_join_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_b;
    wire [0:0] bubble_join_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_q;
    wire [0:0] bubble_select_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_b;
    wire [0:0] bubble_join_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_q;
    wire [0:0] bubble_select_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_b;
    wire [63:0] bubble_join_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_q;
    wire [63:0] bubble_select_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_b;
    wire [31:0] bubble_join_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_q;
    wire [31:0] bubble_select_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_b;
    wire [0:0] bubble_join_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_q;
    wire [0:0] bubble_select_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_b;
    wire [0:0] bubble_join_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_q;
    wire [0:0] bubble_select_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_b;
    wire [0:0] bubble_join_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_q;
    wire [0:0] bubble_select_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_b;
    wire [63:0] bubble_join_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_q;
    wire [63:0] bubble_select_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_b;
    wire [31:0] bubble_join_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_q;
    wire [31:0] bubble_select_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_b;
    wire [0:0] bubble_join_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_q;
    wire [0:0] bubble_select_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_b;
    wire [0:0] bubble_join_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_q;
    wire [0:0] bubble_select_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V4;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_V1;
    wire [0:0] SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_wireValid;
    wire [0:0] SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_and0;
    wire [0:0] SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_backStall;
    wire [0:0] SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_V0;
    wire [0:0] SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_and0;
    wire [0:0] SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_backStall;
    wire [0:0] SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_V0;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_backStall;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_V0;
    wire [0:0] SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and0;
    wire [0:0] SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and1;
    wire [0:0] SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and2;
    wire [0:0] SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and3;
    wire [0:0] SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_backStall;
    wire [0:0] SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_V0;
    reg [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_R_v_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_v_s_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_s_tv_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backEN;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backStall;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_V0;
    reg [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_R_v_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_v_s_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_s_tv_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backEN;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backStall;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_V0;
    reg [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_R_v_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_v_s_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_s_tv_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backEN;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backStall;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_V0;
    reg [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_R_v_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_v_s_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_s_tv_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backEN;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backStall;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_V0;
    reg [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_0;
    reg [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_1;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_v_s_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_1;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_or0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backStall;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V0;
    wire [0:0] SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V1;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireValid;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireStall;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_StallValid;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_toReg0;
    reg [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg0;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed0;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_toReg1;
    reg [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg1;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed1;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_or0;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_backStall;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_V0;
    wire [0:0] SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_V1;
    wire [0:0] SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_wireValid;
    wire [0:0] SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and0;
    wire [0:0] SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and1;
    wire [0:0] SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and2;
    wire [0:0] SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_backStall;
    wire [0:0] SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_V0;
    reg [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_0;
    reg [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_1;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_v_s_0;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_0;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_1;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backEN;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_or0;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backStall;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_V0;
    wire [0:0] SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_V1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and2;
    wire [0:0] SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_backStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_V0;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireValid;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireStall;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_StallValid;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_toReg0;
    reg [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg0;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed0;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_toReg1;
    reg [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg1;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed1;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_or0;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_backStall;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_V0;
    wire [0:0] SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_V1;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireValid;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireStall;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_StallValid;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_toReg0;
    reg [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg0;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed0;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_toReg1;
    reg [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg1;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed1;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_or0;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_backStall;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_V0;
    wire [0:0] SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_V1;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_R_v_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_v_s_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_s_tv_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backEN;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backStall;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_V0;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_R_v_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_v_s_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_s_tv_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backEN;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backStall;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_V0;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_R_v_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_v_s_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_s_tv_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backEN;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backStall;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_V0;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_R_v_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_v_s_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_s_tv_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backEN;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backStall;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_V0;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_R_v_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_v_s_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_s_tv_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backEN;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backStall;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_V0;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_R_v_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_v_s_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_s_tv_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backEN;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backStall;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_V0;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_0;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_1;
    reg [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_2;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_v_s_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_1;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_2;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_or0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_or1;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backStall;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V0;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V1;
    wire [0:0] SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_valid;
    wire bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_stall;
    wire bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_valid;
    wire bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_stall;
    wire bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_stall_bitsignaltemp;
    wire [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_i_valid;
    reg [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid;
    reg [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data0;
    reg [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data1;
    wire [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backStall;
    wire [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V;
    wire [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_D0;
    wire [0:0] SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_D1;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_i_valid;
    reg [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid;
    reg [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_data0;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backStall;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_V;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_D0;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_i_valid;
    reg [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid;
    reg [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_data0;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backStall;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V;
    wire [0:0] SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x(BITJOIN,203)
    assign bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q = {DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_5_tpl, DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_4_tpl, DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl, DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl, DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_1_tpl, DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x(BITSELECT,204)
    assign bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_b = bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q[0:0];
    assign bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_c = bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q[32:1];
    assign bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_d = bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q[96:33];
    assign bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_e = bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q[97:97];
    assign bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_f = bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q[98:98];
    assign bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_g = bubble_join_DijkstraNaiveID_B5_merge_reg_aunroll_x_q[99:99];

    // join_for_coalesced_delay_1(BITJOIN,134)
    assign join_for_coalesced_delay_1_q = {bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_g, bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_f};

    // SE_out_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36(STALLENABLE,285)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_wireValid = i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_valid_out;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_c_i3_0_956_4gr_x(CONSTANT,100)
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_c_i3_0_956_4gr_x_q = 3'b000;

    // bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr(BITJOIN,196)
    assign bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_q = i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr(BITSELECT,197)
    assign bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_b = bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_q[4:0];

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_element_extension_956_3_x(BITJOIN,102)@2
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_element_extension_956_3_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_c_i3_0_956_4gr_x_q, bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_b};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x(CHOOSEBITS,98)@2
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_element_extension_956_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_a[4:4];

    // i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr(LOGICAL,13)@2
    assign i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q ^ VCC_q;

    // SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10(STALLENABLE,291)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_wireValid = i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_valid_out;

    // c_i5_1_849_42(CONSTANT,7)
    assign c_i5_1_849_42_q = 5'b11111;

    // i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr(ADD,14)@2
    assign i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_a = {1'b0, bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_b};
    assign i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_b = {1'b0, c_i5_1_849_42_q};
    assign i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_o = $unsigned(i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_a) + $unsigned(i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_b);
    assign i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_q = i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_sel_x(BITSELECT,87)@2
    assign bgTrunc_i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_sel_x_b = i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10(BLACKBOX,29)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    DijkstraNaiveID_i_llvm_fpga_push_i5_fpga0000kstranaiveid_984_0gr thei_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next26_dijkstranaiveid_849_6gr_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_feedback_stall_out_16),
        .in_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not(i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V3),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x(BITJOIN,207)
    assign bubble_join_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_q = {i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_2_tpl, i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x(BITSELECT,208)
    assign bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_q[31:0];
    assign bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_q[95:32];

    // bubble_join_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo(BITJOIN,234)
    assign bubble_join_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_q = redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_data;

    // bubble_select_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo(BITSELECT,235)
    assign bubble_select_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_b = bubble_join_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_q[31:0];

    // bubble_join_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x(BITJOIN,210)
    assign bubble_join_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_q = {i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_c1_exit117_2_tpl, i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_c1_exit117_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x(BITSELECT,211)
    assign bubble_select_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_b = bubble_join_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_c = bubble_join_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_q[127:64];

    // bubble_join_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo(BITJOIN,246)
    assign bubble_join_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_q = redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_data;

    // bubble_select_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo(BITSELECT,247)
    assign bubble_select_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_b = bubble_join_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_q[63:0];

    // bubble_join_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x(BITJOIN,213)
    assign bubble_join_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_q = {i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl, i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_1_tpl};

    // bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x(BITSELECT,214)
    assign bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_b = bubble_join_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_c = bubble_join_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_q[127:64];

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr(BITJOIN,189)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_q = i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr(BITSELECT,190)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_b = bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_q[0:0];

    // i_llvm_fpga_mem_load6_dijkstranaiveid_849_19(BLACKBOX,15)@8
    // in in_i_stall@20000000
    // out out_load6_DijkstraNaiveID_avm_address@20000000
    // out out_load6_DijkstraNaiveID_avm_burstcount@20000000
    // out out_load6_DijkstraNaiveID_avm_byteenable@20000000
    // out out_load6_DijkstraNaiveID_avm_enable@20000000
    // out out_load6_DijkstraNaiveID_avm_read@20000000
    // out out_load6_DijkstraNaiveID_avm_write@20000000
    // out out_load6_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_readdata@82
    // out out_o_stall@20000000
    // out out_o_valid@82
    DijkstraNaiveID_i_llvm_fpga_mem_load6_dijkstranaiveid_1148_0gr thei_llvm_fpga_mem_load6_dijkstranaiveid_849_19 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_c),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_V0),
        .in_load6_DijkstraNaiveID_avm_readdata(in_load6_DijkstraNaiveID_avm_readdata),
        .in_load6_DijkstraNaiveID_avm_readdatavalid(in_load6_DijkstraNaiveID_avm_readdatavalid),
        .in_load6_DijkstraNaiveID_avm_waitrequest(in_load6_DijkstraNaiveID_avm_waitrequest),
        .in_load6_DijkstraNaiveID_avm_writeack(in_load6_DijkstraNaiveID_avm_writeack),
        .out_load6_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_address),
        .out_load6_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_burstcount),
        .out_load6_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_byteenable),
        .out_load6_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_enable),
        .out_load6_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_read),
        .out_load6_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_write),
        .out_load6_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19(BITJOIN,168)
    assign bubble_join_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_q = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19(BITSELECT,169)
    assign bubble_select_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_b = bubble_join_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_q[31:0];

    // redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo(STALLFIFO,155)
    assign redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_valid = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_V1;
    assign redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_stall = SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_backStall;
    assign redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_data = bubble_select_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_b;
    assign redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_valid_bitsignaltemp = redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_valid[0];
    assign redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_stall_bitsignaltemp = redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_stall[0];
    assign redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_valid[0] = redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_valid_bitsignaltemp;
    assign redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_stall[0] = redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(154),
        .WIDTH(32),
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
    ) theredist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo (
        .i_valid(redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_valid_bitsignaltemp),
        .i_stall(redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_b),
        .o_valid(redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_valid_bitsignaltemp),
        .o_stall(redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_stall_bitsignaltemp),
        .o_data(redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19(STALLENABLE,263)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg0 <= SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg1 <= SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed0 = (~ (i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_o_stall) & SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireValid) | SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg0;
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed1 = (~ (redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_stall) & SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireValid) | SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_StallValid = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_backStall & SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireValid;
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_toReg0 = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_StallValid & SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed0;
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_toReg1 = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_StallValid & SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_or0 = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed0;
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireStall = ~ (SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_consumed1 & SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_or0);
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_backStall = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_V0 = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireValid & ~ (SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg0);
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_V1 = SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireValid & ~ (SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_wireValid = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_valid;

    // i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x(BLACKBOX,107)@82
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@86
    // out out_c3_exit_0_tpl@86
    // out out_c3_exit_1_tpl@86
    // out out_c3_exit_2_tpl@86
    DijkstraNaiveID_i_sfc_s_c3_in_for_body190000jkstranaiveid_849_24 thei_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_V0),
        .in_c3_eni1_0_tpl(GND_q),
        .in_c3_eni1_1_tpl(bubble_select_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_b),
        .out_o_stall(i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_o_valid),
        .out_c3_exit_0_tpl(),
        .out_c3_exit_1_tpl(i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl),
        .out_c3_exit_2_tpl(i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x(BITJOIN,216)
    assign bubble_join_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_q = {i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_2_tpl, i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl};

    // bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x(BITSELECT,217)
    assign bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_b = bubble_join_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_c = bubble_join_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_q[1:1];

    // SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x(STALLENABLE,306)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_backStall) & SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireValid) | SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed1 = (~ (redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_stall) & SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireValid) | SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_StallValid = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_backStall & SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_toReg0 = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_StallValid & SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_toReg1 = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_StallValid & SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_or0 = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_consumed1 & SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_or0);
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_backStall = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_V0 = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_V1 = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_wireValid = i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_o_valid;

    // redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo(STALLFIFO,137)
    assign redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_valid = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_V1;
    assign redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_stall = SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_backStall;
    assign redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_data = bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_b;
    assign redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_valid_bitsignaltemp = redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_valid[0];
    assign redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_stall_bitsignaltemp = redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_stall[0];
    assign redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_valid[0] = redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_valid_bitsignaltemp;
    assign redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_stall[0] = redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(72),
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
    ) theredist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo (
        .i_valid(redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_valid_bitsignaltemp),
        .i_stall(redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_b),
        .o_valid(redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_valid_bitsignaltemp),
        .o_stall(redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_stall_bitsignaltemp),
        .o_data(redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo(BITJOIN,228)
    assign bubble_join_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_q = redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_data;

    // bubble_select_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo(BITSELECT,229)
    assign bubble_select_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_b = bubble_join_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_q[0:0];

    // i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26(BLACKBOX,16)@86
    // in in_i_stall@20000000
    // out out_load7_lm_DijkstraNaiveID_avm_address@20000000
    // out out_load7_lm_DijkstraNaiveID_avm_burstcount@20000000
    // out out_load7_lm_DijkstraNaiveID_avm_byteenable@20000000
    // out out_load7_lm_DijkstraNaiveID_avm_enable@20000000
    // out out_load7_lm_DijkstraNaiveID_avm_read@20000000
    // out out_load7_lm_DijkstraNaiveID_avm_write@20000000
    // out out_load7_lm_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_readdata@157
    // out out_o_stall@20000000
    // out out_o_valid@157
    DijkstraNaiveID_i_llvm_fpga_mem_load7_lm0000stranaiveid_1247_0gr thei_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_c),
        .in_i_stall(SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_V0),
        .in_load7_lm_DijkstraNaiveID_avm_readdata(in_load7_lm_DijkstraNaiveID_avm_readdata),
        .in_load7_lm_DijkstraNaiveID_avm_readdatavalid(in_load7_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load7_lm_DijkstraNaiveID_avm_waitrequest(in_load7_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load7_lm_DijkstraNaiveID_avm_writeack(in_load7_lm_DijkstraNaiveID_avm_writeack),
        .out_load7_lm_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_address),
        .out_load7_lm_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_burstcount),
        .out_load7_lm_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_byteenable),
        .out_load7_lm_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_enable),
        .out_load7_lm_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_read),
        .out_load7_lm_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_write),
        .out_load7_lm_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26(BITJOIN,171)
    assign bubble_join_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_q = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26(BITSELECT,172)
    assign bubble_select_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_b = bubble_join_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_q[7:0];

    // SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo(STALLENABLE,318)
    // Valid signal propagation
    assign SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_V0 = SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_backStall = i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_o_stall | ~ (SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_and0 = redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_o_valid;
    assign SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_wireValid = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_valid & SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_and0;

    // i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x(BLACKBOX,109)@157
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@161
    // out out_c5_exit_0_tpl@161
    // out out_c5_exit_1_tpl@161
    DijkstraNaiveID_i_sfc_s_c5_in_for_body190000jkstranaiveid_849_28 thei_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_backStall),
        .in_i_valid(SE_out_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_V0),
        .in_c5_eni2_0_tpl(GND_q),
        .in_c5_eni2_1_tpl(bubble_select_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_b),
        .in_c5_eni2_2_tpl(bubble_select_redist1_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_out_c3_exit_1_tpl_71_fifo_b),
        .out_o_stall(i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_o_valid),
        .out_c5_exit_0_tpl(),
        .out_c5_exit_1_tpl(i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x(BITJOIN,222)
    assign bubble_join_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_q = i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl;

    // bubble_select_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x(BITSELECT,223)
    assign bubble_select_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_b = bubble_join_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_q[0:0];

    // SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x(STALLENABLE,310)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_backStall) & SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireValid) | SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed1 = (~ (redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_stall) & SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireValid) | SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_StallValid = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_backStall & SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_toReg0 = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_StallValid & SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_toReg1 = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_StallValid & SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_or0 = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_consumed1 & SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_or0);
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_backStall = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_V0 = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_V1 = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_wireValid = i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_o_valid;

    // redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo(STALLFIFO,136)
    assign redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_valid = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_V1;
    assign redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_stall = SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_backStall;
    assign redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_data = bubble_select_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_b;
    assign redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_valid_bitsignaltemp = redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_valid[0];
    assign redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_stall_bitsignaltemp = redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_stall[0];
    assign redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_valid[0] = redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_valid_bitsignaltemp;
    assign redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_stall[0] = redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(75),
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
    ) theredist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo (
        .i_valid(redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_valid_bitsignaltemp),
        .i_stall(redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_b),
        .o_valid(redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_valid_bitsignaltemp),
        .o_stall(redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_stall_bitsignaltemp),
        .o_data(redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo(BITJOIN,225)
    assign bubble_join_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_q = redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_data;

    // bubble_select_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo(BITSELECT,226)
    assign bubble_select_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_b = bubble_join_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_q[0:0];

    // i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31(BLACKBOX,18)@161
    // in in_i_stall@20000000
    // out out_load9_lm_DijkstraNaiveID_avm_address@20000000
    // out out_load9_lm_DijkstraNaiveID_avm_burstcount@20000000
    // out out_load9_lm_DijkstraNaiveID_avm_byteenable@20000000
    // out out_load9_lm_DijkstraNaiveID_avm_enable@20000000
    // out out_load9_lm_DijkstraNaiveID_avm_read@20000000
    // out out_load9_lm_DijkstraNaiveID_avm_write@20000000
    // out out_load9_lm_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_readdata@235
    // out out_o_stall@20000000
    // out out_o_valid@235
    DijkstraNaiveID_i_llvm_fpga_mem_load9_lm0000stranaiveid_1325_0gr thei_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_b),
        .in_i_stall(SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_V1),
        .in_load9_lm_DijkstraNaiveID_avm_readdata(in_load9_lm_DijkstraNaiveID_avm_readdata),
        .in_load9_lm_DijkstraNaiveID_avm_readdatavalid(in_load9_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load9_lm_DijkstraNaiveID_avm_waitrequest(in_load9_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load9_lm_DijkstraNaiveID_avm_writeack(in_load9_lm_DijkstraNaiveID_avm_writeack),
        .out_load9_lm_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_address),
        .out_load9_lm_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_burstcount),
        .out_load9_lm_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_byteenable),
        .out_load9_lm_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_enable),
        .out_load9_lm_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_read),
        .out_load9_lm_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_write),
        .out_load9_lm_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31(BITJOIN,177)
    assign bubble_join_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_q = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31(BITSELECT,178)
    assign bubble_select_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_b = bubble_join_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_q[31:0];

    // bubble_join_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo(BITJOIN,249)
    assign bubble_join_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_q = redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_data;

    // bubble_select_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo(BITSELECT,250)
    assign bubble_select_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_b = bubble_join_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_q[31:0];

    // i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30(BLACKBOX,17)@161
    // in in_i_stall@20000000
    // out out_load8_lm_DijkstraNaiveID_avm_address@20000000
    // out out_load8_lm_DijkstraNaiveID_avm_burstcount@20000000
    // out out_load8_lm_DijkstraNaiveID_avm_byteenable@20000000
    // out out_load8_lm_DijkstraNaiveID_avm_enable@20000000
    // out out_load8_lm_DijkstraNaiveID_avm_read@20000000
    // out out_load8_lm_DijkstraNaiveID_avm_write@20000000
    // out out_load8_lm_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_readdata@235
    // out out_o_stall@20000000
    // out out_o_valid@235
    DijkstraNaiveID_i_llvm_fpga_mem_load8_lm0000stranaiveid_1302_0gr thei_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_b),
        .in_i_predicate(bubble_select_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_b),
        .in_i_stall(SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_V0),
        .in_load8_lm_DijkstraNaiveID_avm_readdata(in_load8_lm_DijkstraNaiveID_avm_readdata),
        .in_load8_lm_DijkstraNaiveID_avm_readdatavalid(in_load8_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load8_lm_DijkstraNaiveID_avm_waitrequest(in_load8_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load8_lm_DijkstraNaiveID_avm_writeack(in_load8_lm_DijkstraNaiveID_avm_writeack),
        .out_load8_lm_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_address),
        .out_load8_lm_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_burstcount),
        .out_load8_lm_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_byteenable),
        .out_load8_lm_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_enable),
        .out_load8_lm_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_read),
        .out_load8_lm_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_write),
        .out_load8_lm_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30(BITJOIN,174)
    assign bubble_join_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_q = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30(BITSELECT,175)
    assign bubble_select_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_b = bubble_join_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_q[31:0];

    // SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo(STALLENABLE,343)
    // Valid signal propagation
    assign SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_V0 = SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_backStall = i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_o_stall | ~ (SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and0 = redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_o_valid;
    assign SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and1 = redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_o_valid & SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and0;
    assign SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and2 = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_valid & SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and1;
    assign SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_wireValid = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_valid & SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_and2;

    // i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x(BLACKBOX,108)@235
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@240
    // out out_c4_exit_0_tpl@240
    // out out_c4_exit_1_tpl@240
    // out out_c4_exit_2_tpl@240
    DijkstraNaiveID_i_sfc_s_c4_in_for_body190000jkstranaiveid_849_33 thei_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x (
        .in_i_stall(SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_backStall),
        .in_i_valid(SE_out_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_V0),
        .in_c4_eni4_0_tpl(GND_q),
        .in_c4_eni4_1_tpl(bubble_select_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_b),
        .in_c4_eni4_2_tpl(bubble_select_redist14_i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_readdata_153_fifo_b),
        .in_c4_eni4_3_tpl(bubble_select_i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_b),
        .in_c4_eni4_4_tpl(bubble_select_redist0_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_out_c5_exit_1_tpl_74_fifo_b),
        .out_o_stall(i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_o_valid),
        .out_c4_exit_0_tpl(),
        .out_c4_exit_1_tpl(i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_c4_exit_1_tpl),
        .out_c4_exit_2_tpl(i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_c4_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo(STALLENABLE,320)
    // Valid signal propagation
    assign SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_V0 = SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_backStall = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_stall | ~ (SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_and0 = redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_valid;
    assign SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_wireValid = i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_o_valid & SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_and0;

    // redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo(STALLFIFO,138)
    assign redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_valid = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_V1;
    assign redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_stall = SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_backStall;
    assign redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_data = bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_c;
    assign redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_valid_bitsignaltemp = redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_valid[0];
    assign redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_stall_bitsignaltemp = redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_stall[0];
    assign redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_valid[0] = redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_valid_bitsignaltemp;
    assign redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_stall[0] = redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(80),
        .WIDTH(64),
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
    ) theredist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo (
        .i_valid(redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_valid_bitsignaltemp),
        .i_stall(redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_c),
        .o_valid(redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_valid_bitsignaltemp),
        .o_stall(redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_stall_bitsignaltemp),
        .o_data(redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30(STALLENABLE,266)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg0 <= SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg1 <= SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed0 = (~ (i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_o_stall) & SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireValid) | SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg0;
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed1 = (~ (i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_o_stall) & SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireValid) | SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_StallValid = SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_backStall & SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireValid;
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_toReg0 = SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_StallValid & SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed0;
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_toReg1 = SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_StallValid & SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_or0 = SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed0;
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireStall = ~ (SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_consumed1 & SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_or0);
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_backStall = SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_V0 = SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireValid & ~ (SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg0);
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_V1 = SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireValid & ~ (SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_and0 = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_V0;
    assign SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_wireValid = SE_out_i_sfc_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_849_28_aunroll_x_V0 & SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_and0;

    // SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x(STALLENABLE,304)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_backStall) & SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed1 = (~ (redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_stall) & SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_StallValid = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_backStall & SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_toReg0 = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_toReg1 = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_or0 = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_consumed1 & SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_or0);
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_backStall = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_V0 = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_V1 = SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_wireValid = i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_o_valid;

    // SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0(STALLENABLE,325)
    // Valid signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_V0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_s_tv_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backStall & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backEN = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_v_s_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backEN & SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_V1;
    // Backward Stall generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backStall = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_R_v_0 & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_s_tv_0;
            end
            else
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_v_s_0;
            end

        end
    end

    // SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1(STALLENABLE,326)
    // Valid signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_V0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_s_tv_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backStall & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backEN = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_v_s_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backEN & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_V0;
    // Backward Stall generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backStall = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backEN == 1'b0)
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_R_v_0 & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_s_tv_0;
            end
            else
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_v_s_0;
            end

        end
    end

    // SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2(STALLENABLE,327)
    // Valid signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_V0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_s_tv_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backStall & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backEN = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_v_s_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backEN & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_V0;
    // Backward Stall generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backStall = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backEN == 1'b0)
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_R_v_0 & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_s_tv_0;
            end
            else
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_v_s_0;
            end

        end
    end

    // redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0(REG,149)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_q <= 1'b0;
        end
        else if (SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backEN == 1'b1)
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_q <= bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_e;
        end
    end

    // redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_1(REG,150)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_1_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backEN == 1'b1)
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_1_q <= redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_q;
        end
    end

    // redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_2(REG,151)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_2_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backEN == 1'b1)
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_2_q <= redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_1_q;
        end
    end

    // redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_3(REG,152)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_3_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backEN == 1'b1)
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_3_q <= redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_2_q;
        end
    end

    // redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_4(REG,153)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_4_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backEN == 1'b1)
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_4_q <= redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_3_q;
        end
    end

    // redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0(REG,141)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backEN == 1'b1)
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_q <= sel_for_coalesced_delay_0_c;
        end
    end

    // redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1(REG,142)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_backEN == 1'b1)
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_q <= redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_q;
        end
    end

    // redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2(REG,143)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_backEN == 1'b1)
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_q <= redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_1_q;
        end
    end

    // redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3(REG,144)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backEN == 1'b1)
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_q <= redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_q;
        end
    end

    // SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3(STALLENABLE,328)
    // Valid signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_V0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_R_v_0;
    // Stall signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_s_tv_0 = SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backStall & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_R_v_0;
    // Backward Enable generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backEN = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_v_s_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backEN & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_2_V0;
    // Backward Stall generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backStall = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_backEN == 1'b0)
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_R_v_0 & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_s_tv_0;
            end
            else
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_v_s_0;
            end

        end
    end

    // SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4(STALLREG,488)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid <= 1'b0;
            SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data0 <= 1'bx;
            SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backStall & (SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid | SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_i_valid);

            if (SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data0 <= $unsigned(redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_q);
                SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data1 <= $unsigned(redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_i_valid = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backStall = SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid | ~ (SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_i_valid);

    // Valid
    assign SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V = SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid : SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_i_valid;

    // Data0
    assign SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_D0 = $signed(SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data0 : redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_3_q);
    // Data1
    assign SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_D1 = $signed(SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_r_data1 : redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_4_q);

    // redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4(REG,145)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN == 1'b1)
        begin
            redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_q <= SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_D0;
        end
    end

    // SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4(STALLENABLE,329)
    // Valid signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_0;
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V1 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_1;
    // Stall signal propagation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_0 = redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_stall & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_0;
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_stall_out & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_1;
    // Backward Enable generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_or0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_0;
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_1 | SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_v_s_0 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN & SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V;
    // Backward Stall generation
    assign SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backStall = ~ (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_0 <= 1'b0;
            SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN == 1'b0)
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_0 & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_0;
            end
            else
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_0 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_v_s_0;
            end

            if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN == 1'b0)
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_1 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_1 & SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_s_tv_1;
            end
            else
            begin
                SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_R_v_1 <= SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_v_s_0;
            end

        end
    end

    // redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo(STALLFIFO,146)
    assign redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_valid = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V0;
    assign redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_stall = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_backStall;
    assign redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_data = redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_q;
    assign redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_valid_bitsignaltemp = redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_valid[0];
    assign redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_stall_bitsignaltemp = redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_stall[0];
    assign redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_valid[0] = redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_valid_bitsignaltemp;
    assign redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_stall[0] = redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(80),
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
    ) theredist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo (
        .i_valid(redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_valid_bitsignaltemp),
        .i_stall(redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_i_stall_bitsignaltemp),
        .i_data(redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_q),
        .o_valid(redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_valid_bitsignaltemp),
        .o_stall(redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_stall_bitsignaltemp),
        .o_data(redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo(BITJOIN,240)
    assign bubble_join_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_q = redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_data;

    // bubble_select_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo(BITSELECT,241)
    assign bubble_select_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_b = bubble_join_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_q[0:0];

    // i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x(BLACKBOX,106)@86
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@161
    // out out_c2_exit130_0_tpl@161
    // out out_c2_exit130_1_tpl@161
    // out out_c2_exit130_2_tpl@161
    DijkstraNaiveID_i_sfc_s_c2_in_for_body190000jkstranaiveid_849_21 thei_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_forked57(bubble_select_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_b),
        .in_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not(bubble_select_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_b),
        .in_i_stall(SE_out_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_backStall),
        .in_i_valid(SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_V0),
        .in_c2_eni4123_0_tpl(GND_q),
        .in_c2_eni4123_1_tpl(bubble_select_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_b),
        .in_c2_eni4123_2_tpl(bubble_select_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_b),
        .in_c2_eni4123_3_tpl(bubble_select_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_b),
        .in_c2_eni4123_4_tpl(bubble_select_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_b),
        .out_o_stall(i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_o_valid),
        .out_c2_exit130_0_tpl(),
        .out_c2_exit130_1_tpl(i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_1_tpl),
        .out_c2_exit130_2_tpl(i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo(STALLENABLE,331)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg0 <= '0;
            SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg0 <= SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_toReg0;
            // Successor 1
            SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg1 <= SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed0 = (~ (SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_backStall) & SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireValid) | SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg0;
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed1 = (~ (redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_stall) & SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireValid) | SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_StallValid = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_backStall & SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireValid;
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_toReg0 = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_StallValid & SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed0;
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_toReg1 = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_StallValid & SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_or0 = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed0;
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireStall = ~ (SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_consumed1 & SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_or0);
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_backStall = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_V0 = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireValid & ~ (SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg0);
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_V1 = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireValid & ~ (SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_wireValid = redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_o_valid;

    // SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo(STALLENABLE,335)
    // Valid signal propagation
    assign SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_V0 = SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_backStall = i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_o_stall | ~ (SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and0 = redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_valid;
    assign SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and1 = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_V1 & SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and0;
    assign SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and2 = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_V0 & SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and1;
    assign SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_wireValid = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_V0 & SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_and2;

    // SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26(STALLENABLE,264)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_V0 = SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_backStall = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_and0 = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_V0;
    assign SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_wireValid = SE_out_i_sfc_s_c3_in_for_body19_i_dijkstranaiveids_c3_enter_dijkstranaiveid_849_24_aunroll_x_V0 & SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_and0;

    // SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x(STALLENABLE,302)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_backStall) & SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed1 = (~ (SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_backStall) & SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_wireValid = i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_o_valid;

    // i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x(BLACKBOX,105)@81
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@86
    // out out_c1_exit117_0_tpl@86
    // out out_c1_exit117_1_tpl@86
    // out out_c1_exit117_2_tpl@86
    DijkstraNaiveID_i_sfc_s_c1_in_for_body190000jkstranaiveid_849_17 thei_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x (
        .in_arg_visited(in_arg_visited),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_backStall),
        .in_i_valid(SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_V0),
        .in_c1_eni1112_0_tpl(GND_q),
        .in_c1_eni1112_1_tpl(bubble_select_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_b),
        .out_o_stall(i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_o_valid),
        .out_c1_exit117_0_tpl(),
        .out_c1_exit117_1_tpl(i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_c1_exit117_1_tpl),
        .out_c1_exit117_2_tpl(i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_c1_exit117_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo(STALLENABLE,322)
    // Valid signal propagation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_V0 = SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_backStall = i_sfc_s_c1_in_for_body19_i_dijkstranaiveids_c1_enter113_dijkstranaiveid_849_17_aunroll_x_out_o_stall | ~ (SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_wireValid = redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_valid;

    // redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo(STALLFIFO,139)
    assign redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V1;
    assign redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_stall = SE_out_redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_backStall;
    assign redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_b;
    assign redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_valid_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_valid[0];
    assign redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_stall_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_stall[0];
    assign redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_valid[0] = redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_valid_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_stall[0] = redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(74),
        .WIDTH(32),
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
    ) theredist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo (
        .i_valid(redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_valid_bitsignaltemp),
        .i_stall(redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_b),
        .o_valid(redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_valid_bitsignaltemp),
        .o_stall(redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_stall_bitsignaltemp),
        .o_data(redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr(STALLENABLE,277)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_backStall = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_and0 = i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_wireValid = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_and0;

    // SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x(STALLENABLE,300)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_backStall) & SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed1 = (~ (redist3_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl_73_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid = i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_o_valid;

    // join_for_coalesced_delay_0(BITJOIN,131)
    assign join_for_coalesced_delay_0_q = {bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_b, bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_c};

    // coalesced_delay_0_0(REG,165)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= 33'b000000000000000000000000000000000;
        end
        else if (SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= join_for_coalesced_delay_0_q;
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,132)
    assign sel_for_coalesced_delay_0_b = coalesced_delay_0_0_q[31:0];
    assign sel_for_coalesced_delay_0_c = coalesced_delay_0_0_q[32:32];

    // i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x(BLACKBOX,104)@2
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit109_0_tpl@8
    // out out_c0_exit109_1_tpl@8
    // out out_c0_exit109_2_tpl@8
    DijkstraNaiveID_i_sfc_s_c0_in_for_body190000jkstranaiveid_849_14 thei_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x (
        .in_arg_g(in_arg_g),
        .in_forked57(sel_for_coalesced_delay_0_c),
        .in_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not(i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V0),
        .in_c0_eni3102_0_tpl(GND_q),
        .in_c0_eni3102_1_tpl(sel_for_coalesced_delay_0_c),
        .in_c0_eni3102_2_tpl(sel_for_coalesced_delay_0_b),
        .in_c0_eni3102_3_tpl(i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q),
        .out_o_stall(i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_o_valid),
        .out_c0_exit109_0_tpl(),
        .out_c0_exit109_1_tpl(i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_1_tpl),
        .out_c0_exit109_2_tpl(i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_c0_exit109_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x(STALLENABLE,299)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_V0 = SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall = i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V0;
    assign SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_wireValid = SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_V0 & SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_and0;

    // SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr(STALLENABLE,281)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg2 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg3 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed0 = (~ (SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed1 = (~ (redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_stall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed2 = (~ (redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_stall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed3 = (~ (i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_stall_out) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_StallValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_backStall & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_toReg3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed1 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed2 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_consumed3 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_or2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_backStall = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_wireValid = i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_valid_out;

    // redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo(STALLFIFO,156)
    assign redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_valid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V2;
    assign redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_stall = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_backStall;
    assign redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_data = i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q;
    assign redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_valid_bitsignaltemp = redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_valid[0];
    assign redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_stall_bitsignaltemp = redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_stall[0];
    assign redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_valid[0] = redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_valid_bitsignaltemp;
    assign redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_stall[0] = redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(85),
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
    ) theredist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo (
        .i_valid(redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_valid_bitsignaltemp),
        .i_stall(redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_i_stall_bitsignaltemp),
        .i_data(i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q),
        .o_valid(redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_valid_bitsignaltemp),
        .o_stall(redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_stall_bitsignaltemp),
        .o_data(redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo(BITJOIN,252)
    assign bubble_join_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_q = redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_data;

    // bubble_select_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo(BITSELECT,253)
    assign bubble_select_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_b = bubble_join_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_q[0:0];

    // SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo(STALLENABLE,345)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg0 <= '0;
            SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg0 <= SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_toReg0;
            // Successor 1
            SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg1 <= SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed0 = (~ (SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_backStall) & SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireValid) | SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg0;
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed1 = (~ (redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_stall) & SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireValid) | SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg1;
    // Consuming
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_StallValid = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_backStall & SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireValid;
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_toReg0 = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_StallValid & SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed0;
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_toReg1 = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_StallValid & SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_or0 = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed0;
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireStall = ~ (SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_consumed1 & SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_or0);
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_backStall = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_V0 = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireValid & ~ (SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg0);
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_V1 = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireValid & ~ (SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_wireValid = redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_o_valid;

    // redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo(STALLFIFO,157)
    assign redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_valid = SE_out_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_V1;
    assign redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_stall = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_backStall;
    assign redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_data = bubble_select_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_b;
    assign redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_valid_bitsignaltemp = redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_valid[0];
    assign redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_stall_bitsignaltemp = redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_stall[0];
    assign redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_valid[0] = redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_valid_bitsignaltemp;
    assign redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_stall[0] = redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(163),
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
    ) theredist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo (
        .i_valid(redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_valid_bitsignaltemp),
        .i_stall(redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_redist15_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_84_fifo_b),
        .o_valid(redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_valid_bitsignaltemp),
        .o_stall(redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_stall_bitsignaltemp),
        .o_data(redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo(STALLENABLE,347)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg0 <= '0;
            SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg0 <= SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_toReg0;
            // Successor 1
            SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg1 <= SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed0 = (~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backStall) & SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireValid) | SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg0;
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed1 = (~ (i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_stall_out) & SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireValid) | SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg1;
    // Consuming
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_StallValid = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_backStall & SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireValid;
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_toReg0 = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_StallValid & SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed0;
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_toReg1 = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_StallValid & SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_or0 = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed0;
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireStall = ~ (SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_consumed1 & SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_or0);
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_backStall = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_V0 = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireValid & ~ (SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg0);
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_V1 = SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireValid & ~ (SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_wireValid = redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_valid;

    // SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0(STALLENABLE,348)
    // Valid signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_V0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_s_tv_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backEN = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_v_s_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backEN & SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_V0;
    // Backward Stall generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backStall = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_R_v_0 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_v_s_0;
            end

        end
    end

    // SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1(STALLENABLE,349)
    // Valid signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_V0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_s_tv_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backEN = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_v_s_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backEN & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_V0;
    // Backward Stall generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backStall = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_R_v_0 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_s_tv_0;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_v_s_0;
            end

        end
    end

    // bubble_join_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo(BITJOIN,255)
    assign bubble_join_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_q = redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_o_data;

    // bubble_select_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo(BITSELECT,256)
    assign bubble_select_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_b = bubble_join_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_q[0:0];

    // redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0(REG,158)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_q <= 1'b0;
        end
        else if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_backEN == 1'b1)
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_q <= bubble_select_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_b;
        end
    end

    // redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1(REG,159)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_q <= 1'b0;
        end
        else if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_backEN == 1'b1)
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_q <= redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_0_q;
        end
    end

    // redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2(REG,160)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_q <= 1'b0;
        end
        else if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backEN == 1'b1)
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_q <= redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_q;
        end
    end

    // SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2(STALLENABLE,350)
    // Valid signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_V0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_s_tv_0 = SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backEN = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_v_s_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backEN & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_1_V0;
    // Backward Stall generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backStall = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_R_v_0 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_s_tv_0;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_v_s_0;
            end

        end
    end

    // SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3(STALLREG,489)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid <= 1'b0;
            SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backStall & (SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid | SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_i_valid);

            if (SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_data0 <= $unsigned(redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_i_valid = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_V0;
    // Stall signal propagation
    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backStall = SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid | ~ (SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_i_valid);

    // Valid
    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_V = SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid == 1'b1 ? SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid : SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_i_valid;

    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_D0 = $signed(SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_valid == 1'b1 ? SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_r_data0 : redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_2_q);

    // SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3(STALLENABLE,351)
    // Valid signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_V0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_s_tv_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backEN = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_v_s_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backEN & SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_V;
    // Backward Stall generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backStall = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backEN);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_R_v_0 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_s_tv_0;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_v_s_0;
            end

        end
    end

    // SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4(STALLENABLE,352)
    // Valid signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_V0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_s_tv_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backEN = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_v_s_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backEN & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_V0;
    // Backward Stall generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backStall = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_R_v_0 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_s_tv_0;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_v_s_0;
            end

        end
    end

    // redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3(REG,161)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_q <= 1'b0;
        end
        else if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_backEN == 1'b1)
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_q <= SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_D0;
        end
    end

    // redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4(REG,162)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_q <= 1'b0;
        end
        else if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_backEN == 1'b1)
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_q <= redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_3_q;
        end
    end

    // redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5(REG,163)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_q <= 1'b0;
        end
        else if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backEN == 1'b1)
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_q <= redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_q;
        end
    end

    // SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5(STALLENABLE,353)
    // Valid signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_V0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_s_tv_0 = SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backEN = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_v_s_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backEN & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_4_V0;
    // Backward Stall generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backStall = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_R_v_0 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_s_tv_0;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_v_s_0;
            end

        end
    end

    // SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6(STALLREG,490)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid <= 1'b0;
            SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backStall & (SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid | SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_i_valid);

            if (SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_data0 <= $unsigned(redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_i_valid = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_V0;
    // Stall signal propagation
    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backStall = SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid | ~ (SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_i_valid);

    // Valid
    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V = SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid == 1'b1 ? SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid : SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_i_valid;

    assign SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_D0 = $signed(SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_valid == 1'b1 ? SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_r_data0 : redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_5_q);

    // redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6(REG,164)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_q <= 1'b0;
        end
        else if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN == 1'b1)
        begin
            redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_q <= SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_D0;
        end
    end

    // redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_5(REG,154)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_5_q <= 1'b0;
        end
        else if (SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_backEN == 1'b1)
        begin
            redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_5_q <= SR_SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_D1;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr(BLACKBOX,22)@7
    // in in_stall_in@20000000
    // out out_data_out@8
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@8
    DijkstraNaiveID_i_llvm_fpga_pop_i1_memde0000kstranaiveid_899_0gr thei_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr (
        .in_data_in(redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_5_q),
        .in_dir(redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_backStall),
        .in_valid_in(SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_4_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35(BITJOIN,180)
    assign bubble_join_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_q = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35(BITSELECT,181)
    assign bubble_select_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_b = bubble_join_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_q[0:0];

    // i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36(BLACKBOX,26)@255
    // in in_stall_in@20000000
    // out out_data_out@256
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@256
    DijkstraNaiveID_i_llvm_fpga_push_i1_memd0000stranaiveid_1385_0gr thei_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_memdep_phi16_pop18_dijkstranaiveid_849_2gr_out_feedback_stall_out_18),
        .in_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not(redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11(STALLENABLE,283)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_wireValid = i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr(BITJOIN,185)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_q = i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr(BITSELECT,186)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_b = bubble_join_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_q[0:0];

    // i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11(BLACKBOX,25)@255
    // in in_stall_in@20000000
    // out out_data_out@256
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@256
    DijkstraNaiveID_i_llvm_fpga_push_i1_exit0000stranaiveid_1002_0gr thei_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_feedback_stall_out_19),
        .in_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not(redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11(STALLENABLE,282)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_V0 = SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_backStall = i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_and0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V0;
    assign SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_wireValid = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_V0 & SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_and0;

    // SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6(STALLENABLE,354)
    // Valid signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_0;
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V1 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_1;
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V2 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_2;
    // Stall signal propagation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_0 = SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_0;
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_1 = SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_1;
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_2 = SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_backStall & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_2;
    // Backward Enable generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_or0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_0;
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_or1 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_1 | SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_or0;
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_2 | SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_v_s_0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN & SR_SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V;
    // Backward Stall generation
    assign SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backStall = ~ (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_0 <= 1'b0;
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_1 <= 1'b0;
            SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_0 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_0;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_0 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_v_s_0;
            end

            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_1 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_1 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_1;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_1 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_v_s_0;
            end

            if (SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_backEN == 1'b0)
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_2 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_2 & SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_s_tv_2;
            end
            else
            begin
                SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_R_v_2 <= SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36(STALLENABLE,284)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_backStall = i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_and0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_wireValid = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_V1 & SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_and0;

    // bubble_join_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x(BITJOIN,219)
    assign bubble_join_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_q = {i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_c4_exit_2_tpl, i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_out_c4_exit_1_tpl};

    // bubble_select_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x(BITSELECT,220)
    assign bubble_select_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_b = bubble_join_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_q[31:0];
    assign bubble_select_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_c = bubble_join_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_q[32:32];

    // bubble_join_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo(BITJOIN,231)
    assign bubble_join_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_q = redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_o_data;

    // bubble_select_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo(BITSELECT,232)
    assign bubble_select_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_b = bubble_join_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_q[63:0];

    // i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35(BLACKBOX,19)@240
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_DijkstraNaiveID_avm_address@20000000
    // out out_memdep_DijkstraNaiveID_avm_burstcount@20000000
    // out out_memdep_DijkstraNaiveID_avm_byteenable@20000000
    // out out_memdep_DijkstraNaiveID_avm_enable@20000000
    // out out_memdep_DijkstraNaiveID_avm_read@20000000
    // out out_memdep_DijkstraNaiveID_avm_write@20000000
    // out out_memdep_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@255
    // out out_o_writeack@255
    DijkstraNaiveID_i_llvm_fpga_mem_memdep_dijkstranaiveid_1373_0gr thei_llvm_fpga_mem_memdep_dijkstranaiveid_849_35 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_b),
        .in_i_predicate(bubble_select_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_backStall),
        .in_i_valid(SE_out_redist2_i_sfc_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_849_21_aunroll_x_out_c2_exit130_2_tpl_79_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_849_33_aunroll_x_b),
        .in_memdep_DijkstraNaiveID_avm_readdata(in_memdep_DijkstraNaiveID_avm_readdata),
        .in_memdep_DijkstraNaiveID_avm_readdatavalid(in_memdep_DijkstraNaiveID_avm_readdatavalid),
        .in_memdep_DijkstraNaiveID_avm_waitrequest(in_memdep_DijkstraNaiveID_avm_waitrequest),
        .in_memdep_DijkstraNaiveID_avm_writeack(in_memdep_DijkstraNaiveID_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_lsu_memdep_o_active),
        .out_memdep_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_address),
        .out_memdep_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_burstcount),
        .out_memdep_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_byteenable),
        .out_memdep_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_enable),
        .out_memdep_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_read),
        .out_memdep_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_write),
        .out_memdep_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35(STALLENABLE,271)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed0 = (~ (SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireValid) | SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi16_push18_dijkstranaiveid_849_36_backStall) & SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireValid) | SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_StallValid = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_backStall & SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_toReg0 = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_StallValid & SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_toReg1 = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_StallValid & SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_or0 = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_consumed1 & SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_backStall = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_V0 = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_V1 = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_wireValid = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr(STALLENABLE,275)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed1 = (~ (SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_wireValid = i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_valid_out;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg(STALLFIFO,486)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_stall = SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_stall_bitsignaltemp;
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
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo(STALLFIFO,140)
    assign redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_valid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_V1;
    assign redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_stall = SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_backStall;
    assign redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_data = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q;
    assign redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_valid_bitsignaltemp = redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_valid[0];
    assign redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_stall_bitsignaltemp = redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_stall[0];
    assign redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_valid[0] = redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_valid_bitsignaltemp;
    assign redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_stall[0] = redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(254),
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
    ) theredist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo (
        .i_valid(redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_valid_bitsignaltemp),
        .i_stall(redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q),
        .o_valid(redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_valid_bitsignaltemp),
        .o_stall(redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_stall_bitsignaltemp),
        .o_data(redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo(STALLENABLE,324)
    // Valid signal propagation
    assign SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_V0 = SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_backStall = in_stall_in | ~ (SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and0 = redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_valid;
    assign SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_valid & SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and0;
    assign SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and2 = SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_V1 & SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and1;
    assign SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and3 = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_V1 & SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and2;
    assign SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_V0 & SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_and3;

    // SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12(STALLENABLE,286)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_V0 = SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_backStall = i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_and0 = SE_redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_V2;
    assign SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_wireValid = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_V0 & SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_and0;

    // SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr(STALLENABLE,279)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed1 = (~ (SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_wireValid = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12(STALLENABLE,287)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_wireValid = i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr(BITJOIN,192)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_q = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr(BITSELECT,193)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_b = bubble_join_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_q[0:0];

    // i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12(BLACKBOX,27)@255
    // in in_stall_in@20000000
    // out out_data_out@256
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@256
    DijkstraNaiveID_i_llvm_fpga_push_i1_notc0000stranaiveid_1020_0gr thei_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_feedback_stall_out_20),
        .in_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not(redist17_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_253_6_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo(BITJOIN,243)
    assign bubble_join_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_q = redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_data;

    // bubble_select_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo(BITSELECT,244)
    assign bubble_select_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_b = bubble_join_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_q[0:0];

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,258)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,259)
    assign bubble_select_coalesced_delay_1_fifo_b = bubble_join_coalesced_delay_1_fifo_q[1:0];

    // sel_for_coalesced_delay_1(BITSELECT,135)
    assign sel_for_coalesced_delay_1_b = bubble_select_coalesced_delay_1_fifo_b[0:0];
    assign sel_for_coalesced_delay_1_c = bubble_select_coalesced_delay_1_fifo_b[1:1];

    // i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr(BLACKBOX,23)@254
    // in in_stall_in@20000000
    // out out_data_out@255
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@255
    DijkstraNaiveID_i_llvm_fpga_pop_i1_notcm0000kstranaiveid_935_0gr thei_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr (
        .in_data_in(sel_for_coalesced_delay_1_c),
        .in_dir(bubble_select_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_b),
        .in_feedback_in_20(i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_notcmp4554_push20_dijkstranaiveid_849_12_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr(BLACKBOX,21)@254
    // in in_stall_in@20000000
    // out out_data_out@255
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@255
    DijkstraNaiveID_i_llvm_fpga_pop_i1_exitc0000kstranaiveid_917_0gr thei_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr (
        .in_data_in(sel_for_coalesced_delay_1_b),
        .in_dir(bubble_select_redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_b),
        .in_feedback_in_19(i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_exitcond3052_push19_dijkstranaiveid_849_11_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo(STALLFIFO,147)
    assign redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_valid = SE_out_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_V1;
    assign redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_data = bubble_select_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_b;
    assign redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_valid_bitsignaltemp = redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_valid[0];
    assign redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_stall_bitsignaltemp = redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_stall[0];
    assign redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_valid[0] = redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_valid_bitsignaltemp;
    assign redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_stall[0] = redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(169),
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
    ) theredist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo (
        .i_valid(redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_valid_bitsignaltemp),
        .i_stall(redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_redist7_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_85_fifo_b),
        .o_valid(redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_valid_bitsignaltemp),
        .o_stall(redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_stall_bitsignaltemp),
        .o_data(redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,357)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_o_valid;
    assign SE_out_coalesced_delay_1_fifo_wireValid = redist8_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_253_fifo_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,166)
    assign coalesced_delay_1_fifo_i_valid = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V4;
    assign coalesced_delay_1_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(254),
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

    // redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo(STALLFIFO,148)
    assign redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_valid = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V3;
    assign redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_stall = SE_out_redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_backStall;
    assign redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_data = bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_d;
    assign redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_valid_bitsignaltemp = redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_valid[0];
    assign redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_stall_bitsignaltemp = redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_stall[0];
    assign redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_valid[0] = redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_valid_bitsignaltemp;
    assign redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_stall[0] = redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(86),
        .WIDTH(64),
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
    ) theredist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo (
        .i_valid(redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_valid_bitsignaltemp),
        .i_stall(redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_d),
        .o_valid(redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_valid_bitsignaltemp),
        .o_stall(redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_stall_bitsignaltemp),
        .o_data(redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_9_849_38(CONSTANT,8)
    assign c_i5_9_849_38_q = 5'b01001;

    // i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr(BLACKBOX,24)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    DijkstraNaiveID_i_llvm_fpga_pop_i5_fpga_0000kstranaiveid_881_0gr thei_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr (
        .in_data_in(c_i5_9_849_38_q),
        .in_dir(bubble_select_DijkstraNaiveID_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_16(i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i5_fpga_indvars_iv25_push16_dijkstranaiveid_849_10_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_backStall),
        .in_valid_in(SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0(STALLENABLE,336)
    // Valid signal propagation
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_V0 = SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_0;
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_V1 = SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_1;
    // Stall signal propagation
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_0 = SE_in_i_sfc_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_849_14_aunroll_x_backStall & SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_0;
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_1 = SE_redist6_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl_6_0_backStall & SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_1;
    // Backward Enable generation
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_or0 = SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_0;
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backEN = ~ (SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_1 | SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_v_s_0 = SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backEN & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backStall = ~ (SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_0 <= 1'b0;
            SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_0 <= SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_0 & SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_0;
            end
            else
            begin
                SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_0 <= SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_v_s_0;
            end

            if (SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_1 <= SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_1 & SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_s_tv_1;
            end
            else
            begin
                SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_R_v_1 <= SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,199)
    assign bubble_join_stall_entry_q = {in_notcmp4553_pop1371, in_mul_i_add3464, in_memdep_phi_pop755_pop1466, in_forked57, in_exitcond3051_pop1269, in_arrayidx31_i65};

    // bubble_select_stall_entry(BITSELECT,200)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[64:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[65:65];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[66:66];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[98:67];
    assign bubble_select_stall_entry_g = bubble_join_stall_entry_q[99:99];

    // SE_stall_entry(STALLENABLE,292)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = DijkstraNaiveID_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // DijkstraNaiveID_B5_merge_reg_aunroll_x(BLACKBOX,86)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    DijkstraNaiveID_B5_merge_reg theDijkstraNaiveID_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_f),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_c),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .out_stall_out(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x(STALLENABLE,295)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg3 <= SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg4 <= SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_stall) & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid) | SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed1 = (~ (SE_redist11_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_3_tpl_6_0_backStall) & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid) | SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i5_fpga_indvars_iv25_pop16_dijkstranaiveid_849_1gr_out_stall_out) & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid) | SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg2;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed3 = (~ (redist10_DijkstraNaiveID_B5_merge_reg_aunroll_x_out_data_out_2_tpl_85_fifo_o_stall) & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid) | SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg3;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed4 = (~ (coalesced_delay_1_fifo_o_stall) & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid) | SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_StallValid = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_backStall & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg0 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_StallValid & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg1 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_StallValid & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg2 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_StallValid & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed2;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg3 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_StallValid & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed3;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_toReg4 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_StallValid & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or0 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or1 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed1 & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or0;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or2 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed2 & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or1;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or3 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed3 & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or2;
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_consumed4 & SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_or3);
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_backStall = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V0 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V1 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V2 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg2);
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V3 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg3);
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V4 = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_wireValid = DijkstraNaiveID_B5_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg(STALLFIFO,487)
    assign bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_valid = SE_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_V0;
    assign bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_stall = SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_valid_bitsignaltemp = bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_valid[0];
    assign bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_stall_bitsignaltemp = bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_stall[0];
    assign bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_valid[0] = bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_stall[0] = bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(248),
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
    ) thebubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg (
        .i_valid(bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1(STALLENABLE,413)
    // Valid signal propagation
    assign SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_stall_out | ~ (SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_wireValid = bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_reg_o_valid;

    // SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr(STALLENABLE,273)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_backStall = bubble_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_1_reg_o_stall | ~ (SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_wireValid = i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr(STALLENABLE,289)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_wireValid = i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr(BLACKBOX,28)@248
    // in in_stall_in@20000000
    // out out_data_out@249
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@249
    DijkstraNaiveID_i_llvm_fpga_push_i1_note0000kstranaiveid_966_0gr thei_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr (
        .in_data_in(bubble_select_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_not_exitcond_stall_out),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_backStall),
        .in_valid_in(SE_out_redist16_i_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_not_dijkstranaiveid_849_8gr_q_246_fifo_V1),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr(BLACKBOX,20)@248
    // in in_stall_in@20000000
    // out out_data_out@249
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@249
    DijkstraNaiveID_i_llvm_fpga_pipeline_kee0000kstranaiveid_865_0gr thei_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_feedback_out_1),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_dijkstranaiveid_849_9gr_out_feedback_valid_out_1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_backStall),
        .in_valid_in(SE_out_bubble_out_DijkstraNaiveID_B5_merge_reg_aunroll_x_1_V0),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // ext_sig_sync_out(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,75)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_out_pipeline_valid_out;

    // sync_out_247(GPOUT,83)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo(BITJOIN,237)
    assign bubble_join_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_q = redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_o_data;

    // bubble_select_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo(BITSELECT,238)
    assign bubble_select_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_b = bubble_join_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_q[0:0];

    // sync_out_248(GPOUT,84)@255
    assign out_exitcond3052_pop19 = bubble_select_i_llvm_fpga_pop_i1_exitcond3052_pop19_dijkstranaiveid_849_3gr_b;
    assign out_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4 = bubble_select_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_b;
    assign out_notcmp4554_pop20 = bubble_select_i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_b;
    assign out_valid_out = SE_out_redist4_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_1s_v1i32_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4_dijkstranaiveid_956_0gr_NO_NAME_x_q_253_fifo_V0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,89)
    assign out_load6_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_address;
    assign out_load6_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_enable;
    assign out_load6_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_read;
    assign out_load6_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_write;
    assign out_load6_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_writedata;
    assign out_load6_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_byteenable;
    assign out_load6_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_load6_dijkstranaiveid_849_19_out_load6_DijkstraNaiveID_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,91)
    assign out_load7_lm_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_address;
    assign out_load7_lm_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_enable;
    assign out_load7_lm_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_read;
    assign out_load7_lm_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_write;
    assign out_load7_lm_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_writedata;
    assign out_load7_lm_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_byteenable;
    assign out_load7_lm_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_load7_lm_dijkstranaiveid_849_26_out_load7_lm_DijkstraNaiveID_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,93)
    assign out_load8_lm_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_address;
    assign out_load8_lm_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_enable;
    assign out_load8_lm_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_read;
    assign out_load8_lm_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_write;
    assign out_load8_lm_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_writedata;
    assign out_load8_lm_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_byteenable;
    assign out_load8_lm_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_load8_lm_dijkstranaiveid_849_30_out_load8_lm_DijkstraNaiveID_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,95)
    assign out_load9_lm_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_address;
    assign out_load9_lm_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_enable;
    assign out_load9_lm_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_read;
    assign out_load9_lm_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_write;
    assign out_load9_lm_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_writedata;
    assign out_load9_lm_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_byteenable;
    assign out_load9_lm_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_load9_lm_dijkstranaiveid_849_31_out_load9_lm_DijkstraNaiveID_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,96)
    assign out_memdep_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_address;
    assign out_memdep_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_enable;
    assign out_memdep_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_read;
    assign out_memdep_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_write;
    assign out_memdep_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_writedata;
    assign out_memdep_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_byteenable;
    assign out_memdep_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_memdep_DijkstraNaiveID_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,97)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_dijkstranaiveid_849_35_out_lsu_memdep_o_active;

    // rst_sync(RESETSYNC,491)
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
