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

// SystemVerilog created from bb_DijkstraParallelID_B3_stall_region
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_bb_B3_stall_region (
    input wire [63:0] in_load_DijkstraParallelID_avm_readdata,
    input wire [0:0] in_load_DijkstraParallelID_avm_writeack,
    input wire [0:0] in_load_DijkstraParallelID_avm_waitrequest,
    input wire [0:0] in_load_DijkstraParallelID_avm_readdatavalid,
    output wire [40:0] out_load_DijkstraParallelID_avm_address,
    output wire [0:0] out_load_DijkstraParallelID_avm_enable,
    output wire [0:0] out_load_DijkstraParallelID_avm_read,
    output wire [0:0] out_load_DijkstraParallelID_avm_write,
    output wire [63:0] out_load_DijkstraParallelID_avm_writedata,
    output wire [7:0] out_load_DijkstraParallelID_avm_byteenable,
    output wire [0:0] out_load_DijkstraParallelID_avm_burstcount,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c2_exe1244,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_exitcond160215,
    input wire [0:0] in_memdep_phi_pop5217,
    input wire [0:0] in_notcmp206216,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_load4_lm_DijkstraParallelID_avm_readdata,
    input wire [0:0] in_load4_lm_DijkstraParallelID_avm_writeack,
    input wire [0:0] in_load4_lm_DijkstraParallelID_avm_waitrequest,
    input wire [0:0] in_load4_lm_DijkstraParallelID_avm_readdatavalid,
    output wire [40:0] out_load4_lm_DijkstraParallelID_avm_address,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_enable,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_read,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_write,
    output wire [63:0] out_load4_lm_DijkstraParallelID_avm_writedata,
    output wire [7:0] out_load4_lm_DijkstraParallelID_avm_byteenable,
    output wire [0:0] out_load4_lm_DijkstraParallelID_avm_burstcount,
    input wire [63:0] in_load5_lm_DijkstraParallelID_avm_readdata,
    input wire [0:0] in_load5_lm_DijkstraParallelID_avm_writeack,
    input wire [0:0] in_load5_lm_DijkstraParallelID_avm_waitrequest,
    input wire [0:0] in_load5_lm_DijkstraParallelID_avm_readdatavalid,
    output wire [40:0] out_load5_lm_DijkstraParallelID_avm_address,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_enable,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_read,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_write,
    output wire [63:0] out_load5_lm_DijkstraParallelID_avm_writedata,
    output wire [7:0] out_load5_lm_DijkstraParallelID_avm_byteenable,
    output wire [0:0] out_load5_lm_DijkstraParallelID_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_1_3051_22_q;
    wire [0:0] i_c_fastorch_exe_signals9_or10_dijkstraparallelid_3051_13_q;
    wire [40:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_valid;
    wire [31:0] i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_0_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_2_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_3_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_4_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_c2_exit243_1_tpl;
    wire [4:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [2:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_valid;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_stall;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_data;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_valid;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_stall;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_data;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_valid;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_stall;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_stall_bitsignaltemp;
    wire [31:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_data;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_valid;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_stall;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_stall_bitsignaltemp;
    wire [31:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_data;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_valid;
    wire redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_stall;
    wire redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_stall_bitsignaltemp;
    wire [63:0] redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_data;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_valid;
    wire redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_stall;
    wire redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_stall_bitsignaltemp;
    wire [63:0] redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_data;
    wire [0:0] redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_valid;
    wire redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_stall;
    wire redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_data;
    wire [0:0] redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_valid;
    wire redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_stall;
    wire redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_data;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_valid;
    wire redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_stall;
    wire redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_stall_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_data;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_valid;
    wire redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_stall;
    wire redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_stall_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [4:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [4:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_1_fifo_i_valid;
    wire coalesced_delay_1_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_stall;
    wire coalesced_delay_1_fifo_i_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_1_fifo_i_data;
    wire [0:0] coalesced_delay_1_fifo_o_valid;
    wire coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_stall;
    wire coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_1_fifo_o_data;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_b;
    wire [2:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [166:0] bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_k;
    wire [67:0] bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_f;
    wire [31:0] bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_b;
    wire [0:0] bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_q;
    wire [0:0] bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_b;
    wire [31:0] bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_q;
    wire [31:0] bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_b;
    wire [63:0] bubble_join_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_q;
    wire [63:0] bubble_select_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_b;
    wire [0:0] bubble_join_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_q;
    wire [0:0] bubble_select_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_b;
    wire [31:0] bubble_join_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_q;
    wire [31:0] bubble_select_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_b;
    wire [4:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [4:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [2:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_V1;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_V1;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_and0;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_and1;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_backStall;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_V0;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_and0;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_backStall;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_V0;
    wire [0:0] SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_wireValid;
    wire [0:0] SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_backStall;
    wire [0:0] SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_stall_bitsignaltemp;
    reg [0:0] rst_sync_rst_sclrn;


    // join_for_coalesced_delay_0(BITJOIN,62)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_b};

    // SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo(STALLENABLE,152)
    // Valid signal propagation
    assign SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_V0 = SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_backStall = i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_stall_out | ~ (SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_wireValid = redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18(STALLENABLE,132)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_wireValid = i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_valid_out;

    // bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x(BITJOIN,99)
    assign bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_q = i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_c2_exit243_1_tpl;

    // bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x(BITSELECT,100)
    assign bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_b = bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_q[31:0];

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,117)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,118)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[4:0];

    // sel_for_coalesced_delay_0(BITSELECT,63)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[0:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[1:1];
    assign sel_for_coalesced_delay_0_d = bubble_select_coalesced_delay_0_fifo_b[2:2];
    assign sel_for_coalesced_delay_0_e = bubble_select_coalesced_delay_0_fifo_b[3:3];
    assign sel_for_coalesced_delay_0_f = bubble_select_coalesced_delay_0_fifo_b[4:4];

    // i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18(BLACKBOX,15)@189
    // in in_stall_in@20000000
    // out out_data_out@190
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@190
    DijkstraParallelID_i_llvm_fpga_push_i32_0000aparallelid_3423_0gr thei_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18 (
        .in_c0_exe5(sel_for_coalesced_delay_0_c),
        .in_data_in(bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_feedback_stall_out_8),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo(BITJOIN,111)
    assign bubble_join_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_q = redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_data;

    // bubble_select_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo(BITSELECT,112)
    assign bubble_select_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_b = bubble_join_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_q[0:0];

    // c_i32_1_3051_22(CONSTANT,4)
    assign c_i32_1_3051_22_q = 32'b11111111111111111111111111111111;

    // i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr(BLACKBOX,14)@82
    // in in_stall_in@20000000
    // out out_data_out@83
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@83
    DijkstraParallelID_i_llvm_fpga_pop_i32_u0000aparallelid_3259_0gr thei_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr (
        .in_data_in(c_i32_1_3051_22_q),
        .in_dir(bubble_select_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_b),
        .in_feedback_in_8(i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_backStall),
        .in_valid_in(SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr(BITJOIN,86)
    assign bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_q = i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr(BITSELECT,87)
    assign bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_b = bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_q[31:0];

    // SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr(STALLENABLE,130)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed0 = (~ (SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_backStall) & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireValid) | SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed1 = (~ (redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_stall) & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireValid) | SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_StallValid = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_backStall & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_toReg0 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_StallValid & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_toReg1 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_StallValid & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_or0 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_consumed1 & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_or0);
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_backStall = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_V0 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_V1 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_wireValid = i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_valid_out;

    // redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo(STALLFIFO,71)
    assign redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_valid = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_V1;
    assign redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_data = bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_b;
    assign redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_valid_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_valid[0];
    assign redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_stall_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_stall[0];
    assign redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_valid[0] = redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_valid_bitsignaltemp;
    assign redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_stall[0] = redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(103),
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
    ) theredist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo (
        .i_valid(redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_valid_bitsignaltemp),
        .i_stall(redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_b),
        .o_valid(redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_valid_bitsignaltemp),
        .o_stall(redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_stall_bitsignaltemp),
        .o_data(redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo(BITJOIN,114)
    assign bubble_join_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_q = redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_data;

    // bubble_select_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo(BITSELECT,115)
    assign bubble_select_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_b = bubble_join_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_q[31:0];

    // bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo(BITJOIN,105)
    assign bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_q = redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_data;

    // bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo(BITSELECT,106)
    assign bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_b = bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_q[31:0];

    // join_for_coalesced_delay_1(BITJOIN,65)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_f, bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_c, bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_b};

    // coalesced_delay_1_fifo(STALLFIFO,73)
    assign coalesced_delay_1_fifo_i_valid = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V1;
    assign coalesced_delay_1_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(98),
        .WIDTH(3),
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

    // SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12(STALLENABLE,124)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg0 <= SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg1 <= SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_stall) & SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireValid) | SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg0;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed1 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireValid) | SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_StallValid = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_backStall & SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireValid;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_toReg0 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_StallValid & SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed0;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_toReg1 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_StallValid & SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_or0 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed0;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireStall = ~ (SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_consumed1 & SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_or0);
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_backStall = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_V0 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireValid & ~ (SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg0);
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_V1 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireValid & ~ (SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_wireValid = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_valid;

    // bubble_join_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo(BITJOIN,108)
    assign bubble_join_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_q = redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_data;

    // bubble_select_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo(BITSELECT,109)
    assign bubble_select_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_b = bubble_join_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_q[63:0];

    // i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12(BLACKBOX,11)@88
    // in in_i_stall@20000000
    // out out_load4_lm_DijkstraParallelID_avm_address@20000000
    // out out_load4_lm_DijkstraParallelID_avm_burstcount@20000000
    // out out_load4_lm_DijkstraParallelID_avm_byteenable@20000000
    // out out_load4_lm_DijkstraParallelID_avm_enable@20000000
    // out out_load4_lm_DijkstraParallelID_avm_read@20000000
    // out out_load4_lm_DijkstraParallelID_avm_write@20000000
    // out out_load4_lm_DijkstraParallelID_avm_writedata@20000000
    // out out_o_readdata@185
    // out out_o_stall@20000000
    // out out_o_valid@185
    DijkstraParallelID_i_llvm_fpga_mem_load40000aparallelid_3351_0gr thei_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_b),
        .in_i_predicate(i_c_fastorch_exe_signals9_or10_dijkstraparallelid_3051_13_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_backStall),
        .in_i_valid(SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_V0),
        .in_load4_lm_DijkstraParallelID_avm_readdata(in_load4_lm_DijkstraParallelID_avm_readdata),
        .in_load4_lm_DijkstraParallelID_avm_readdatavalid(in_load4_lm_DijkstraParallelID_avm_readdatavalid),
        .in_load4_lm_DijkstraParallelID_avm_waitrequest(in_load4_lm_DijkstraParallelID_avm_waitrequest),
        .in_load4_lm_DijkstraParallelID_avm_writeack(in_load4_lm_DijkstraParallelID_avm_writeack),
        .out_load4_lm_DijkstraParallelID_avm_address(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_address),
        .out_load4_lm_DijkstraParallelID_avm_burstcount(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_burstcount),
        .out_load4_lm_DijkstraParallelID_avm_byteenable(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_byteenable),
        .out_load4_lm_DijkstraParallelID_avm_enable(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_enable),
        .out_load4_lm_DijkstraParallelID_avm_read(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_read),
        .out_load4_lm_DijkstraParallelID_avm_write(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_write),
        .out_load4_lm_DijkstraParallelID_avm_writedata(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo(STALLENABLE,150)
    // Valid signal propagation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_V0 = SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_backStall = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_stall | ~ (SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_and0 = redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_valid;
    assign SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_wireValid = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V0 & SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr(BITJOIN,83)
    assign bubble_join_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_q = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr(BITSELECT,84)
    assign bubble_select_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_b = bubble_join_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_q[7:0];

    // bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo(BITJOIN,102)
    assign bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_q = redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_data;

    // bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo(BITSELECT,103)
    assign bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_b = bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_q[0:0];

    // i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x(BLACKBOX,46)@83
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@88
    // out out_c1_exit239_0_tpl@88
    // out out_c1_exit239_1_tpl@88
    // out out_c1_exit239_2_tpl@88
    // out out_c1_exit239_3_tpl@88
    // out out_c1_exit239_4_tpl@88
    DijkstraParallelID_i_sfc_s_c1_in_for_bod0000aparallelid_3051_9gr thei_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_backStall),
        .in_i_valid(SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_V0),
        .in_c1_eni2_0_tpl(bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_b),
        .in_c1_eni2_1_tpl(bubble_select_i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_b),
        .in_c1_eni2_2_tpl(bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_b),
        .out_o_stall(i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_o_valid),
        .out_c1_exit239_0_tpl(i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_0_tpl),
        .out_c1_exit239_1_tpl(i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_1_tpl),
        .out_c1_exit239_2_tpl(i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_2_tpl),
        .out_c1_exit239_3_tpl(i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_3_tpl),
        .out_c1_exit239_4_tpl(i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x(STALLENABLE,138)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed0 = (~ (SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_backStall) & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed1 = (~ (coalesced_delay_1_fifo_o_stall) & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_stall) & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_wireValid = i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14(STALLENABLE,126)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg0 <= SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg1 <= SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_stall) & SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireValid) | SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg0;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed1 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireValid) | SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_StallValid = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_backStall & SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireValid;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_toReg0 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_StallValid & SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed0;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_toReg1 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_StallValid & SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_or0 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed0;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireStall = ~ (SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_consumed1 & SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_or0);
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_backStall = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_V0 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireValid & ~ (SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg0);
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_V1 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireValid & ~ (SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_wireValid = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_valid;

    // i_c_fastorch_exe_signals9_or10_dijkstraparallelid_3051_13(LOGICAL,9)@88
    assign i_c_fastorch_exe_signals9_or10_dijkstraparallelid_3051_13_q = bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_d | bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_b;

    // bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x(BITJOIN,96)
    assign bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_q = {i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_4_tpl, i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_3_tpl, i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_2_tpl, i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_1_tpl, i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_c1_exit239_0_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x(BITSELECT,97)
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_b = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_c = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_q[1:1];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_d = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_q[2:2];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_e = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_q[66:3];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_f = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_q[67:67];

    // i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14(BLACKBOX,12)@88
    // in in_i_stall@20000000
    // out out_load5_lm_DijkstraParallelID_avm_address@20000000
    // out out_load5_lm_DijkstraParallelID_avm_burstcount@20000000
    // out out_load5_lm_DijkstraParallelID_avm_byteenable@20000000
    // out out_load5_lm_DijkstraParallelID_avm_enable@20000000
    // out out_load5_lm_DijkstraParallelID_avm_read@20000000
    // out out_load5_lm_DijkstraParallelID_avm_write@20000000
    // out out_load5_lm_DijkstraParallelID_avm_writedata@20000000
    // out out_o_readdata@185
    // out out_o_stall@20000000
    // out out_o_valid@185
    DijkstraParallelID_i_llvm_fpga_mem_load50000aparallelid_3375_0gr thei_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_e),
        .in_i_predicate(i_c_fastorch_exe_signals9_or10_dijkstraparallelid_3051_13_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_V2),
        .in_load5_lm_DijkstraParallelID_avm_readdata(in_load5_lm_DijkstraParallelID_avm_readdata),
        .in_load5_lm_DijkstraParallelID_avm_readdatavalid(in_load5_lm_DijkstraParallelID_avm_readdatavalid),
        .in_load5_lm_DijkstraParallelID_avm_waitrequest(in_load5_lm_DijkstraParallelID_avm_waitrequest),
        .in_load5_lm_DijkstraParallelID_avm_writeack(in_load5_lm_DijkstraParallelID_avm_writeack),
        .out_load5_lm_DijkstraParallelID_avm_address(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_address),
        .out_load5_lm_DijkstraParallelID_avm_burstcount(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_burstcount),
        .out_load5_lm_DijkstraParallelID_avm_byteenable(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_byteenable),
        .out_load5_lm_DijkstraParallelID_avm_enable(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_enable),
        .out_load5_lm_DijkstraParallelID_avm_read(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_read),
        .out_load5_lm_DijkstraParallelID_avm_write(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_write),
        .out_load5_lm_DijkstraParallelID_avm_writedata(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14(BITJOIN,79)
    assign bubble_join_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_q = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14(BITSELECT,80)
    assign bubble_select_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_b = bubble_join_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_q[31:0];

    // bubble_join_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12(BITJOIN,75)
    assign bubble_join_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_q = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12(BITSELECT,76)
    assign bubble_select_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_b = bubble_join_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_q[31:0];

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,120)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,121)
    assign bubble_select_coalesced_delay_1_fifo_b = bubble_join_coalesced_delay_1_fifo_q[2:0];

    // sel_for_coalesced_delay_1(BITSELECT,66)
    assign sel_for_coalesced_delay_1_b = bubble_select_coalesced_delay_1_fifo_b[0:0];
    assign sel_for_coalesced_delay_1_c = bubble_select_coalesced_delay_1_fifo_b[1:1];
    assign sel_for_coalesced_delay_1_d = bubble_select_coalesced_delay_1_fifo_b[2:2];

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,158)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_o_valid;
    assign SE_out_coalesced_delay_1_fifo_and1 = redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_valid & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_and3 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_V1 & SE_out_coalesced_delay_1_fifo_and2;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_V1 & SE_out_coalesced_delay_1_fifo_and3;

    // i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x(BLACKBOX,47)@185
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@189
    // out out_c2_exit243_0_tpl@189
    // out out_c2_exit243_1_tpl@189
    DijkstraParallelID_i_sfc_s_c2_in_for_bod0000raparallelid_3051_16 thei_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_backStall),
        .in_i_valid(SE_out_coalesced_delay_1_fifo_V0),
        .in_c2_eni6_0_tpl(sel_for_coalesced_delay_1_b),
        .in_c2_eni6_1_tpl(bubble_select_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_b),
        .in_c2_eni6_2_tpl(bubble_select_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_b),
        .in_c2_eni6_3_tpl(sel_for_coalesced_delay_1_d),
        .in_c2_eni6_4_tpl(sel_for_coalesced_delay_1_c),
        .in_c2_eni6_5_tpl(bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_b),
        .in_c2_eni6_6_tpl(bubble_select_redist12_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_out_data_out_102_fifo_b),
        .out_o_stall(i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_o_valid),
        .out_c2_exit243_0_tpl(),
        .out_c2_exit243_1_tpl(i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_c2_exit243_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x(STALLENABLE,140)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_backStall) & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_backStall) & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_StallValid = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_backStall & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_toReg0 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_toReg1 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_or0 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_consumed1 & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_or0);
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_backStall = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_V0 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_V1 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_wireValid = i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg(STALLFIFO,225)
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_valid = SE_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_V0;
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(5),
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
    ) thebubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg(STALLFIFO,226)
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_valid = SE_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_V0;
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(5),
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
    ) thebubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1(STALLENABLE,170)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_V0 = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and0 = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_reg_o_valid;
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and1 = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_1_reg_o_valid & SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and2 = SE_out_coalesced_delay_0_fifo_V1 & SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_wireValid = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_V1 & SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_and2;

    // SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18(STALLENABLE,131)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_V0 = SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_backStall = i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_and0 = SE_out_coalesced_delay_0_fifo_V0;
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_wireValid = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_V0 & SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,156)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_u_0_i11_push8_dijkstraparallelid_3051_18_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_o_valid;

    // coalesced_delay_0_fifo(STALLFIFO,72)
    assign coalesced_delay_0_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V5;
    assign coalesced_delay_0_fifo_i_stall = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(185),
        .WIDTH(5),
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
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo(STALLFIFO,70)
    assign redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V4;
    assign redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_stall = SE_out_redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_backStall;
    assign redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_k;
    assign redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_valid_bitsignaltemp = redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_valid[0];
    assign redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_stall_bitsignaltemp = redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_stall[0];
    assign redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_valid[0] = redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_valid_bitsignaltemp;
    assign redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_stall[0] = redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_stall_bitsignaltemp;
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
    ) theredist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo (
        .i_valid(redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_valid_bitsignaltemp),
        .i_stall(redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_k),
        .o_valid(redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_valid_bitsignaltemp),
        .o_stall(redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_stall_bitsignaltemp),
        .o_data(redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo(STALLFIFO,69)
    assign redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V3;
    assign redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_stall = SE_out_redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_backStall;
    assign redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_f;
    assign redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_valid_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_valid[0];
    assign redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_stall_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_stall[0];
    assign redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_valid[0] = redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_valid_bitsignaltemp;
    assign redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_stall[0] = redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(84),
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
    ) theredist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo (
        .i_valid(redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_valid_bitsignaltemp),
        .i_stall(redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_f),
        .o_valid(redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_valid_bitsignaltemp),
        .o_stall(redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_stall_bitsignaltemp),
        .o_data(redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo(STALLFIFO,68)
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V2;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_d;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_valid_bitsignaltemp = redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_valid[0];
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_stall_bitsignaltemp = redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_stall[0];
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_valid[0] = redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_valid_bitsignaltemp;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_stall[0] = redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(181),
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
    ) theredist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo (
        .i_valid(redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_valid_bitsignaltemp),
        .i_stall(redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_d),
        .o_valid(redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_valid_bitsignaltemp),
        .o_stall(redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_stall_bitsignaltemp),
        .o_data(redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo(STALLFIFO,67)
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V1;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_stall = SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_backStall;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_c;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_valid_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_valid[0];
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_stall_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_stall[0];
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_valid[0] = redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_valid_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_stall[0] = redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(79),
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
    ) theredist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo (
        .i_valid(redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_valid_bitsignaltemp),
        .i_stall(redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_c),
        .o_valid(redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_valid_bitsignaltemp),
        .o_stall(redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_stall_bitsignaltemp),
        .o_data(redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,89)
    assign bubble_join_stall_entry_q = {in_notcmp206216, in_memdep_phi_pop5217, in_exitcond160215};

    // bubble_select_stall_entry(BITSELECT,90)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[1:1];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[2:2];

    // SE_stall_entry(STALLENABLE,133)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x(BLACKBOX,45)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_profile_loop_o_valid@5
    // out out_c0_exit233_0_tpl@5
    // out out_c0_exit233_1_tpl@5
    // out out_c0_exit233_2_tpl@5
    // out out_c0_exit233_3_tpl@5
    // out out_c0_exit233_4_tpl@5
    // out out_c0_exit233_5_tpl@5
    // out out_c0_exit233_6_tpl@5
    // out out_c0_exit233_7_tpl@5
    // out out_c0_exit233_8_tpl@5
    // out out_c0_exit233_9_tpl@5
    DijkstraParallelID_i_sfc_s_c0_in_for_bod0000aparallelid_3051_4gr thei_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_arg_visited(in_arg_visited),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(GND_q),
        .in_c0_eni4_2_tpl(bubble_select_stall_entry_c),
        .in_c0_eni4_3_tpl(bubble_select_stall_entry_b),
        .in_c0_eni4_4_tpl(bubble_select_stall_entry_d),
        .out_o_stall(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit233_0_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl),
        .out_c0_exit233_1_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl),
        .out_c0_exit233_2_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_2_tpl),
        .out_c0_exit233_3_tpl(),
        .out_c0_exit233_4_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl),
        .out_c0_exit233_5_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_5_tpl),
        .out_c0_exit233_6_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_6_tpl),
        .out_c0_exit233_7_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_7_tpl),
        .out_c0_exit233_8_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_8_tpl),
        .out_c0_exit233_9_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x(STALLENABLE,136)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed1 = (~ (redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed2 = (~ (redist5_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl_180_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed3 = (~ (redist6_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl_83_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed4 = (~ (redist11_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl_77_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed5 = (~ (coalesced_delay_0_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_or4);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_wireValid = i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_o_valid;

    // SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo(STALLENABLE,146)
    // Valid signal propagation
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_V0 = SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_backStall = i_sfc_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3051_9gr_aunroll_x_out_o_stall | ~ (SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_and0 = redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_o_valid;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_and1 = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_valid & SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_and0;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_wireValid = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop8_dijkstraparallelid_3051_6gr_V0 & SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_and1;

    // bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x(BITJOIN,93)
    assign bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q = {i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_9_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_8_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_7_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_6_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_5_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_4_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_2_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_1_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl, i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x(BITSELECT,94)
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[1:1];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[33:2];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[97:34];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[161:98];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[162:162];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[163:163];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[164:164];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_j = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[165:165];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_k = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_q[166:166];

    // i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr(BLACKBOX,13)@5
    // in in_i_stall@20000000
    // out out_load_DijkstraParallelID_avm_address@20000000
    // out out_load_DijkstraParallelID_avm_burstcount@20000000
    // out out_load_DijkstraParallelID_avm_byteenable@20000000
    // out out_load_DijkstraParallelID_avm_enable@20000000
    // out out_load_DijkstraParallelID_avm_read@20000000
    // out out_load_DijkstraParallelID_avm_write@20000000
    // out out_load_DijkstraParallelID_avm_writedata@20000000
    // out out_o_readdata@83
    // out out_o_stall@20000000
    // out out_o_valid@83
    DijkstraParallelID_i_llvm_fpga_mem_load_0000aparallelid_3275_0gr thei_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_c),
        .in_i_stall(SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_out_c0_exit233_0_tpl_78_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body5_i_dijkstraparallelids_c0_enter2285_dijkstraparallelid_3051_4gr_aunroll_x_V0),
        .in_load_DijkstraParallelID_avm_readdata(in_load_DijkstraParallelID_avm_readdata),
        .in_load_DijkstraParallelID_avm_readdatavalid(in_load_DijkstraParallelID_avm_readdatavalid),
        .in_load_DijkstraParallelID_avm_waitrequest(in_load_DijkstraParallelID_avm_waitrequest),
        .in_load_DijkstraParallelID_avm_writeack(in_load_DijkstraParallelID_avm_writeack),
        .out_load_DijkstraParallelID_avm_address(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_address),
        .out_load_DijkstraParallelID_avm_burstcount(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_burstcount),
        .out_load_DijkstraParallelID_avm_byteenable(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_byteenable),
        .out_load_DijkstraParallelID_avm_enable(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_enable),
        .out_load_DijkstraParallelID_avm_read(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_read),
        .out_load_DijkstraParallelID_avm_write(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_write),
        .out_load_DijkstraParallelID_avm_writedata(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_load_DijkstraParallelID_avm_address = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_address;
    assign out_load_DijkstraParallelID_avm_enable = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_enable;
    assign out_load_DijkstraParallelID_avm_read = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_read;
    assign out_load_DijkstraParallelID_avm_write = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_write;
    assign out_load_DijkstraParallelID_avm_writedata = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_writedata;
    assign out_load_DijkstraParallelID_avm_byteenable = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_byteenable;
    assign out_load_DijkstraParallelID_avm_burstcount = i_llvm_fpga_mem_load_dijkstraparallelid_3051_7gr_out_load_DijkstraParallelID_avm_burstcount;

    // sync_out_751(GPOUT,38)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // sync_out_752(GPOUT,39)@189
    assign out_c0_exe6 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_f;
    assign out_c2_exe1244 = bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3051_16_aunroll_x_b;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_1_V0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,42)
    assign out_load4_lm_DijkstraParallelID_avm_address = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_address;
    assign out_load4_lm_DijkstraParallelID_avm_enable = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_enable;
    assign out_load4_lm_DijkstraParallelID_avm_read = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_read;
    assign out_load4_lm_DijkstraParallelID_avm_write = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_write;
    assign out_load4_lm_DijkstraParallelID_avm_writedata = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_writedata;
    assign out_load4_lm_DijkstraParallelID_avm_byteenable = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_byteenable;
    assign out_load4_lm_DijkstraParallelID_avm_burstcount = i_llvm_fpga_mem_load4_lm_dijkstraparallelid_3051_12_out_load4_lm_DijkstraParallelID_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,44)
    assign out_load5_lm_DijkstraParallelID_avm_address = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_address;
    assign out_load5_lm_DijkstraParallelID_avm_enable = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_enable;
    assign out_load5_lm_DijkstraParallelID_avm_read = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_read;
    assign out_load5_lm_DijkstraParallelID_avm_write = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_write;
    assign out_load5_lm_DijkstraParallelID_avm_writedata = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_writedata;
    assign out_load5_lm_DijkstraParallelID_avm_byteenable = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_byteenable;
    assign out_load5_lm_DijkstraParallelID_avm_burstcount = i_llvm_fpga_mem_load5_lm_dijkstraparallelid_3051_14_out_load5_lm_DijkstraParallelID_avm_burstcount;

    // rst_sync(RESETSYNC,227)
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
