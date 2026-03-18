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

// SystemVerilog created from bb_DijkstraNaiveID_B3_stall_region
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B3_stall_region (
    input wire [63:0] in_load_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_load_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_load_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_load_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load_DijkstraNaiveID_avm_burstcount,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_c0_exe393,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_c2_exe1,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_exitcond3060,
    input wire [0:0] in_memdep_phi22_pop863,
    input wire [0:0] in_memdep_phi_pop762,
    input wire [0:0] in_notcmp4561,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_load4_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_load4_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load4_lm_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_load4_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_burstcount,
    input wire [63:0] in_load5_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_load5_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load5_lm_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_load5_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_1_358_23_q;
    wire [0:0] i_c_fastorch_exe_signals14_or15_dijkstranaiveid_358_14_q;
    wire [40:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_valid;
    wire [40:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_valid;
    wire [31:0] i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_0_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_2_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_3_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_4_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_c2_exit_1_tpl;
    wire [5:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [2:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_valid;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_stall;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_data;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_valid;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_stall;
    wire redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_data;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_valid;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_stall;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_stall_bitsignaltemp;
    wire [31:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_data;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_valid;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_stall;
    wire redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_stall_bitsignaltemp;
    wire [31:0] redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_data;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_valid;
    wire redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_stall;
    wire redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_stall_bitsignaltemp;
    wire [63:0] redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_data;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_valid;
    wire redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_stall;
    wire redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_stall_bitsignaltemp;
    wire [63:0] redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_data;
    wire [0:0] redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_valid;
    wire redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_stall;
    wire redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_data;
    wire [0:0] redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_valid;
    wire redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_stall;
    wire redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_data;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_valid;
    wire redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_stall;
    wire redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_stall_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_data;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_valid;
    wire redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_stall;
    wire redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_stall_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [5:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [5:0] coalesced_delay_0_fifo_o_data;
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
    wire [31:0] bubble_join_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_b;
    wire [3:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [167:0] bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_l;
    wire [67:0] bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_f;
    wire [31:0] bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_b;
    wire [0:0] bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_q;
    wire [0:0] bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_b;
    wire [31:0] bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_q;
    wire [31:0] bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_b;
    wire [63:0] bubble_join_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_q;
    wire [63:0] bubble_select_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_b;
    wire [0:0] bubble_join_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_q;
    wire [0:0] bubble_select_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_b;
    wire [31:0] bubble_join_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_q;
    wire [31:0] bubble_select_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_b;
    wire [5:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [5:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [2:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_V1;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_V1;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_and0;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_and1;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_backStall;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_V0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_and0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_backStall;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_V0;
    wire [0:0] SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_wireValid;
    wire [0:0] SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_backStall;
    wire [0:0] SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_V0;
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
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_stall_bitsignaltemp;
    reg [0:0] rst_sync_rst_sclrn;


    // join_for_coalesced_delay_0(BITJOIN,63)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_b};

    // SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo(STALLENABLE,153)
    // Valid signal propagation
    assign SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_V0 = SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_backStall = i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_stall_out | ~ (SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_wireValid = redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19(STALLENABLE,133)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_wireValid = i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_valid_out;

    // bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x(BITJOIN,100)
    assign bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_q = i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_c2_exit_1_tpl;

    // bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x(BITSELECT,101)
    assign bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_b = bubble_join_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_q[31:0];

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,118)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,119)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[5:0];

    // sel_for_coalesced_delay_0(BITSELECT,64)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[0:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[1:1];
    assign sel_for_coalesced_delay_0_d = bubble_select_coalesced_delay_0_fifo_b[2:2];
    assign sel_for_coalesced_delay_0_e = bubble_select_coalesced_delay_0_fifo_b[3:3];
    assign sel_for_coalesced_delay_0_f = bubble_select_coalesced_delay_0_fifo_b[4:4];
    assign sel_for_coalesced_delay_0_g = bubble_select_coalesced_delay_0_fifo_b[5:5];

    // i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19(BLACKBOX,15)@159
    // in in_stall_in@20000000
    // out out_data_out@160
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@160
    DijkstraNaiveID_i_llvm_fpga_push_i32_u_00000kstranaiveid_746_0gr thei_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19 (
        .in_c0_exe6(sel_for_coalesced_delay_0_d),
        .in_data_in(bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_feedback_stall_out_11),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_V0),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_feedback_valid_out_11),
        .out_stall_out(i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo(BITJOIN,112)
    assign bubble_join_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_q = redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_data;

    // bubble_select_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo(BITSELECT,113)
    assign bubble_select_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_b = bubble_join_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_q[0:0];

    // c_i32_1_358_23(CONSTANT,4)
    assign c_i32_1_358_23_q = 32'b11111111111111111111111111111111;

    // i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr(BLACKBOX,14)@75
    // in in_stall_in@20000000
    // out out_data_out@76
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@76
    DijkstraNaiveID_i_llvm_fpga_pop_i32_u_0_0000kstranaiveid_582_0gr thei_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr (
        .in_data_in(c_i32_1_358_23_q),
        .in_dir(bubble_select_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_b),
        .in_feedback_in_11(i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_backStall),
        .in_valid_in(SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr(BITJOIN,87)
    assign bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_q = i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr(BITSELECT,88)
    assign bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_b = bubble_join_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_q[31:0];

    // SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr(STALLENABLE,131)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed0 = (~ (SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_backStall) & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireValid) | SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed1 = (~ (redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_stall) & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireValid) | SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_StallValid = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_backStall & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_toReg0 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_StallValid & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_toReg1 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_StallValid & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_or0 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_consumed1 & SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_or0);
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_backStall = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_V0 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_V1 = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_wireValid = i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_valid_out;

    // redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo(STALLFIFO,72)
    assign redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_valid = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_V1;
    assign redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_data = bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_b;
    assign redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_valid_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_valid[0];
    assign redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_stall_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_stall[0];
    assign redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_valid[0] = redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_valid_bitsignaltemp;
    assign redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_stall[0] = redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(80),
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
    ) theredist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo (
        .i_valid(redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_valid_bitsignaltemp),
        .i_stall(redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_b),
        .o_valid(redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_valid_bitsignaltemp),
        .o_stall(redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_stall_bitsignaltemp),
        .o_data(redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo(BITJOIN,115)
    assign bubble_join_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_q = redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_data;

    // bubble_select_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo(BITSELECT,116)
    assign bubble_select_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_b = bubble_join_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_q[31:0];

    // bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo(BITJOIN,106)
    assign bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_q = redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_data;

    // bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo(BITSELECT,107)
    assign bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_b = bubble_join_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_q[31:0];

    // join_for_coalesced_delay_1(BITJOIN,66)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_f, bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_c, bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_b};

    // coalesced_delay_1_fifo(STALLFIFO,74)
    assign coalesced_delay_1_fifo_i_valid = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V1;
    assign coalesced_delay_1_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(75),
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

    // SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13(STALLENABLE,125)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg0 <= SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg1 <= SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_stall) & SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireValid) | SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg0;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed1 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireValid) | SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_StallValid = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_backStall & SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireValid;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_toReg0 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_StallValid & SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed0;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_toReg1 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_StallValid & SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_or0 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed0;
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireStall = ~ (SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_consumed1 & SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_or0);
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_backStall = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_V0 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireValid & ~ (SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg0);
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_V1 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireValid & ~ (SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_wireValid = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_valid;

    // bubble_join_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo(BITJOIN,109)
    assign bubble_join_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_q = redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_data;

    // bubble_select_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo(BITSELECT,110)
    assign bubble_select_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_b = bubble_join_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_q[63:0];

    // i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13(BLACKBOX,11)@81
    // in in_i_stall@20000000
    // out out_load4_lm_DijkstraNaiveID_avm_address@20000000
    // out out_load4_lm_DijkstraNaiveID_avm_burstcount@20000000
    // out out_load4_lm_DijkstraNaiveID_avm_byteenable@20000000
    // out out_load4_lm_DijkstraNaiveID_avm_enable@20000000
    // out out_load4_lm_DijkstraNaiveID_avm_read@20000000
    // out out_load4_lm_DijkstraNaiveID_avm_write@20000000
    // out out_load4_lm_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_readdata@155
    // out out_o_stall@20000000
    // out out_o_valid@155
    DijkstraNaiveID_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_674_0gr thei_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_b),
        .in_i_predicate(i_c_fastorch_exe_signals14_or15_dijkstranaiveid_358_14_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_backStall),
        .in_i_valid(SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_V0),
        .in_load4_lm_DijkstraNaiveID_avm_readdata(in_load4_lm_DijkstraNaiveID_avm_readdata),
        .in_load4_lm_DijkstraNaiveID_avm_readdatavalid(in_load4_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load4_lm_DijkstraNaiveID_avm_waitrequest(in_load4_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load4_lm_DijkstraNaiveID_avm_writeack(in_load4_lm_DijkstraNaiveID_avm_writeack),
        .out_load4_lm_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_address),
        .out_load4_lm_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_burstcount),
        .out_load4_lm_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_byteenable),
        .out_load4_lm_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_enable),
        .out_load4_lm_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_read),
        .out_load4_lm_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_write),
        .out_load4_lm_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo(STALLENABLE,151)
    // Valid signal propagation
    assign SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_V0 = SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_backStall = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_stall | ~ (SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_and0 = redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_valid;
    assign SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_wireValid = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V0 & SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr(BITJOIN,84)
    assign bubble_join_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_q = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr(BITSELECT,85)
    assign bubble_select_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_b = bubble_join_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_q[7:0];

    // bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo(BITJOIN,103)
    assign bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_q = redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_data;

    // bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo(BITSELECT,104)
    assign bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_b = bubble_join_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_q[0:0];

    // i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x(BLACKBOX,46)@76
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@81
    // out out_c1_exit98_0_tpl@81
    // out out_c1_exit98_1_tpl@81
    // out out_c1_exit98_2_tpl@81
    // out out_c1_exit98_3_tpl@81
    // out out_c1_exit98_4_tpl@81
    DijkstraNaiveID_i_sfc_s_c1_in_for_body5_0000jkstranaiveid_358_10 thei_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_backStall),
        .in_i_valid(SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_V0),
        .in_c1_eni2_0_tpl(bubble_select_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_b),
        .in_c1_eni2_1_tpl(bubble_select_i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_b),
        .in_c1_eni2_2_tpl(bubble_select_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_b),
        .out_o_stall(i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_o_valid),
        .out_c1_exit98_0_tpl(i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_0_tpl),
        .out_c1_exit98_1_tpl(i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_1_tpl),
        .out_c1_exit98_2_tpl(i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_2_tpl),
        .out_c1_exit98_3_tpl(i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_3_tpl),
        .out_c1_exit98_4_tpl(i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x(STALLENABLE,139)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed0 = (~ (SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_backStall) & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed1 = (~ (coalesced_delay_1_fifo_o_stall) & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_stall) & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_wireValid = i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15(STALLENABLE,127)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg0 <= SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg1 <= SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_stall) & SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireValid) | SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg0;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed1 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireValid) | SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_StallValid = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_backStall & SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireValid;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_toReg0 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_StallValid & SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed0;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_toReg1 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_StallValid & SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_or0 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed0;
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireStall = ~ (SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_consumed1 & SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_or0);
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_backStall = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_V0 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireValid & ~ (SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg0);
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_V1 = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireValid & ~ (SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_wireValid = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_valid;

    // i_c_fastorch_exe_signals14_or15_dijkstranaiveid_358_14(LOGICAL,9)@81
    assign i_c_fastorch_exe_signals14_or15_dijkstranaiveid_358_14_q = bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_d | bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_b;

    // bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x(BITJOIN,97)
    assign bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_q = {i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_4_tpl, i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_3_tpl, i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_2_tpl, i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_1_tpl, i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_c1_exit98_0_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x(BITSELECT,98)
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_b = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_c = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_q[1:1];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_d = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_q[2:2];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_e = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_q[66:3];
    assign bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_f = bubble_join_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_q[67:67];

    // i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15(BLACKBOX,12)@81
    // in in_i_stall@20000000
    // out out_load5_lm_DijkstraNaiveID_avm_address@20000000
    // out out_load5_lm_DijkstraNaiveID_avm_burstcount@20000000
    // out out_load5_lm_DijkstraNaiveID_avm_byteenable@20000000
    // out out_load5_lm_DijkstraNaiveID_avm_enable@20000000
    // out out_load5_lm_DijkstraNaiveID_avm_read@20000000
    // out out_load5_lm_DijkstraNaiveID_avm_write@20000000
    // out out_load5_lm_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_readdata@155
    // out out_o_stall@20000000
    // out out_o_valid@155
    DijkstraNaiveID_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_698_0gr thei_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_e),
        .in_i_predicate(i_c_fastorch_exe_signals14_or15_dijkstranaiveid_358_14_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_V2),
        .in_load5_lm_DijkstraNaiveID_avm_readdata(in_load5_lm_DijkstraNaiveID_avm_readdata),
        .in_load5_lm_DijkstraNaiveID_avm_readdatavalid(in_load5_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load5_lm_DijkstraNaiveID_avm_waitrequest(in_load5_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load5_lm_DijkstraNaiveID_avm_writeack(in_load5_lm_DijkstraNaiveID_avm_writeack),
        .out_load5_lm_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_address),
        .out_load5_lm_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_burstcount),
        .out_load5_lm_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_byteenable),
        .out_load5_lm_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_enable),
        .out_load5_lm_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_read),
        .out_load5_lm_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_write),
        .out_load5_lm_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_q = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_b = bubble_join_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_q[31:0];

    // bubble_join_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13(BITJOIN,76)
    assign bubble_join_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_q = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13(BITSELECT,77)
    assign bubble_select_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_b = bubble_join_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_q[31:0];

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,121)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,122)
    assign bubble_select_coalesced_delay_1_fifo_b = bubble_join_coalesced_delay_1_fifo_q[2:0];

    // sel_for_coalesced_delay_1(BITSELECT,67)
    assign sel_for_coalesced_delay_1_b = bubble_select_coalesced_delay_1_fifo_b[0:0];
    assign sel_for_coalesced_delay_1_c = bubble_select_coalesced_delay_1_fifo_b[1:1];
    assign sel_for_coalesced_delay_1_d = bubble_select_coalesced_delay_1_fifo_b[2:2];

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,159)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_o_valid;
    assign SE_out_coalesced_delay_1_fifo_and1 = redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_valid & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_and3 = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_V1 & SE_out_coalesced_delay_1_fifo_and2;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_V1 & SE_out_coalesced_delay_1_fifo_and3;

    // i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x(BLACKBOX,47)@155
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@159
    // out out_c2_exit_0_tpl@159
    // out out_c2_exit_1_tpl@159
    DijkstraNaiveID_i_sfc_s_c2_in_for_body5_0000jkstranaiveid_358_17 thei_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_backStall),
        .in_i_valid(SE_out_coalesced_delay_1_fifo_V0),
        .in_c2_eni6_0_tpl(sel_for_coalesced_delay_1_b),
        .in_c2_eni6_1_tpl(bubble_select_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_b),
        .in_c2_eni6_2_tpl(bubble_select_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_b),
        .in_c2_eni6_3_tpl(sel_for_coalesced_delay_1_d),
        .in_c2_eni6_4_tpl(sel_for_coalesced_delay_1_c),
        .in_c2_eni6_5_tpl(bubble_select_redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_b),
        .in_c2_eni6_6_tpl(bubble_select_redist13_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_out_data_out_79_fifo_b),
        .out_o_stall(i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_o_valid),
        .out_c2_exit_0_tpl(),
        .out_c2_exit_1_tpl(i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_c2_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x(STALLENABLE,141)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_backStall) & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_backStall) & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_StallValid = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_backStall & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_toReg0 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_toReg1 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_or0 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_consumed1 & SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_or0);
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_backStall = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_V0 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_V1 = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_wireValid = i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg(STALLFIFO,226)
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_valid = SE_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_V0;
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_stall_bitsignaltemp;
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
    ) thebubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg(STALLFIFO,227)
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_valid = SE_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_V0;
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_stall_bitsignaltemp;
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
    ) thebubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1(STALLENABLE,171)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_V0 = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and0 = bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_reg_o_valid;
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and1 = bubble_out_i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_1_reg_o_valid & SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and2 = SE_out_coalesced_delay_0_fifo_V1 & SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_wireValid = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_V1 & SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_and2;

    // SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19(STALLENABLE,132)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_V0 = SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_backStall = i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_and0 = SE_out_coalesced_delay_0_fifo_V0;
    assign SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_wireValid = SE_out_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_V0 & SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,157)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_u_0_i11_push11_dijkstranaiveid_358_19_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
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

    // coalesced_delay_0_fifo(STALLFIFO,73)
    assign coalesced_delay_0_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V5;
    assign coalesced_delay_0_fifo_i_stall = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(155),
        .WIDTH(6),
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

    // redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo(STALLFIFO,71)
    assign redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V4;
    assign redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_stall = SE_out_redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_backStall;
    assign redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_l;
    assign redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_valid_bitsignaltemp = redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_valid[0];
    assign redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_stall_bitsignaltemp = redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_stall[0];
    assign redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_valid[0] = redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_valid_bitsignaltemp;
    assign redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_stall[0] = redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(71),
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
    ) theredist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo (
        .i_valid(redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_valid_bitsignaltemp),
        .i_stall(redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_l),
        .o_valid(redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_valid_bitsignaltemp),
        .o_stall(redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_stall_bitsignaltemp),
        .o_data(redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo(STALLFIFO,70)
    assign redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V3;
    assign redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_stall = SE_out_redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_backStall;
    assign redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_g;
    assign redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_valid_bitsignaltemp = redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_valid[0];
    assign redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_stall_bitsignaltemp = redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_stall[0];
    assign redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_valid[0] = redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_valid_bitsignaltemp;
    assign redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_stall[0] = redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(77),
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
    ) theredist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo (
        .i_valid(redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_valid_bitsignaltemp),
        .i_stall(redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_g),
        .o_valid(redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_valid_bitsignaltemp),
        .o_stall(redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_stall_bitsignaltemp),
        .o_data(redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo(STALLFIFO,69)
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V2;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_d;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_valid_bitsignaltemp = redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_valid[0];
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_stall_bitsignaltemp = redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_stall[0];
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_valid[0] = redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_valid_bitsignaltemp;
    assign redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_stall[0] = redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(151),
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
    ) theredist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo (
        .i_valid(redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_valid_bitsignaltemp),
        .i_stall(redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_d),
        .o_valid(redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_valid_bitsignaltemp),
        .o_stall(redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_stall_bitsignaltemp),
        .o_data(redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo(STALLFIFO,68)
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V1;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_stall = SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_backStall;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_c;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_valid_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_valid[0];
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_stall_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_stall[0];
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_valid[0] = redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_valid_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_stall[0] = redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_stall_bitsignaltemp;
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
    ) theredist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo (
        .i_valid(redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_valid_bitsignaltemp),
        .i_stall(redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_c),
        .o_valid(redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_valid_bitsignaltemp),
        .o_stall(redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_stall_bitsignaltemp),
        .o_data(redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,90)
    assign bubble_join_stall_entry_q = {in_notcmp4561, in_memdep_phi_pop762, in_memdep_phi22_pop863, in_exitcond3060};

    // bubble_select_stall_entry(BITSELECT,91)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[1:1];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[2:2];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[3:3];

    // SE_stall_entry(STALLENABLE,134)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x(BLACKBOX,45)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_profile_loop_o_valid@5
    // out out_c0_exit90_0_tpl@5
    // out out_c0_exit90_1_tpl@5
    // out out_c0_exit90_2_tpl@5
    // out out_c0_exit90_3_tpl@5
    // out out_c0_exit90_4_tpl@5
    // out out_c0_exit90_5_tpl@5
    // out out_c0_exit90_6_tpl@5
    // out out_c0_exit90_7_tpl@5
    // out out_c0_exit90_8_tpl@5
    // out out_c0_exit90_9_tpl@5
    // out out_c0_exit90_10_tpl@5
    DijkstraNaiveID_i_sfc_s_c0_in_for_body5_0000kstranaiveid_358_5gr thei_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_arg_visited(in_arg_visited),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(GND_q),
        .in_c0_eni5_2_tpl(bubble_select_stall_entry_d),
        .in_c0_eni5_3_tpl(bubble_select_stall_entry_c),
        .in_c0_eni5_4_tpl(bubble_select_stall_entry_b),
        .in_c0_eni5_5_tpl(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit90_0_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl),
        .out_c0_exit90_1_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl),
        .out_c0_exit90_2_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_2_tpl),
        .out_c0_exit90_3_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_3_tpl),
        .out_c0_exit90_4_tpl(),
        .out_c0_exit90_5_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl),
        .out_c0_exit90_6_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_6_tpl),
        .out_c0_exit90_7_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_7_tpl),
        .out_c0_exit90_8_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_8_tpl),
        .out_c0_exit90_9_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_9_tpl),
        .out_c0_exit90_10_tpl(i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x(STALLENABLE,137)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed1 = (~ (redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed2 = (~ (redist5_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl_150_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed3 = (~ (redist7_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl_76_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed4 = (~ (redist12_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl_70_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed5 = (~ (coalesced_delay_0_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_or4);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_wireValid = i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_o_valid;

    // SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo(STALLENABLE,147)
    // Valid signal propagation
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_V0 = SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_backStall = i_sfc_s_c1_in_for_body5_i_dijkstranaiveids_c1_enter95_dijkstranaiveid_358_10_aunroll_x_out_o_stall | ~ (SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_and0 = redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_o_valid;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_and1 = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_valid & SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_and0;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_wireValid = SE_out_i_llvm_fpga_pop_i32_u_0_i11_pop11_dijkstranaiveid_358_7gr_V0 & SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_and1;

    // bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x(BITJOIN,94)
    assign bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q = {i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_10_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_9_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_8_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_7_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_6_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_5_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_3_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_2_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_1_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl, i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x(BITSELECT,95)
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[1:1];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[33:2];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[97:34];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[98:98];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[162:99];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[163:163];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[164:164];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_j = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[165:165];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_k = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[166:166];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_l = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_q[167:167];

    // i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr(BLACKBOX,13)@5
    // in in_i_stall@20000000
    // out out_load_DijkstraNaiveID_avm_address@20000000
    // out out_load_DijkstraNaiveID_avm_burstcount@20000000
    // out out_load_DijkstraNaiveID_avm_byteenable@20000000
    // out out_load_DijkstraNaiveID_avm_enable@20000000
    // out out_load_DijkstraNaiveID_avm_read@20000000
    // out out_load_DijkstraNaiveID_avm_write@20000000
    // out out_load_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_readdata@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    DijkstraNaiveID_i_llvm_fpga_mem_load_dijkstranaiveid_598_0gr thei_llvm_fpga_mem_load_dijkstranaiveid_358_8gr (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_c),
        .in_i_stall(SE_out_redist4_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_out_c0_exit90_0_tpl_71_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr_aunroll_x_V0),
        .in_load_DijkstraNaiveID_avm_readdata(in_load_DijkstraNaiveID_avm_readdata),
        .in_load_DijkstraNaiveID_avm_readdatavalid(in_load_DijkstraNaiveID_avm_readdatavalid),
        .in_load_DijkstraNaiveID_avm_waitrequest(in_load_DijkstraNaiveID_avm_waitrequest),
        .in_load_DijkstraNaiveID_avm_writeack(in_load_DijkstraNaiveID_avm_writeack),
        .out_load_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_address),
        .out_load_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_burstcount),
        .out_load_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_byteenable),
        .out_load_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_enable),
        .out_load_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_read),
        .out_load_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_write),
        .out_load_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_load_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_address;
    assign out_load_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_enable;
    assign out_load_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_read;
    assign out_load_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_write;
    assign out_load_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_writedata;
    assign out_load_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_byteenable;
    assign out_load_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_load_dijkstranaiveid_358_8gr_out_load_DijkstraNaiveID_avm_burstcount;

    // sync_out_119(GPOUT,38)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // sync_out_120(GPOUT,39)@159
    assign out_c0_exe393 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_g;
    assign out_c2_exe1 = bubble_select_i_sfc_s_c2_in_for_body5_i_dijkstranaiveids_c2_enter_dijkstranaiveid_358_17_aunroll_x_b;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_1_V0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,42)
    assign out_load4_lm_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_address;
    assign out_load4_lm_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_enable;
    assign out_load4_lm_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_read;
    assign out_load4_lm_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_write;
    assign out_load4_lm_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_writedata;
    assign out_load4_lm_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_byteenable;
    assign out_load4_lm_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_load4_lm_dijkstranaiveid_358_13_out_load4_lm_DijkstraNaiveID_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,44)
    assign out_load5_lm_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_address;
    assign out_load5_lm_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_enable;
    assign out_load5_lm_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_read;
    assign out_load5_lm_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_write;
    assign out_load5_lm_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_writedata;
    assign out_load5_lm_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_byteenable;
    assign out_load5_lm_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_load5_lm_dijkstranaiveid_358_15_out_load5_lm_DijkstraNaiveID_avm_burstcount;

    // rst_sync(RESETSYNC,228)
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
