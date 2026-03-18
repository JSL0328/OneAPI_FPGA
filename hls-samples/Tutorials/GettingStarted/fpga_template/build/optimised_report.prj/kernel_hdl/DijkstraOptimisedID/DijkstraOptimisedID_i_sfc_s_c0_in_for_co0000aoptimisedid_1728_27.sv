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

// SystemVerilog created from i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_s_c0_in_for_co0000aoptimisedid_1728_27 (
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exit216_0_tpl,
    output wire [7:0] out_c0_exit216_1_tpl,
    output wire [7:0] out_c0_exit216_2_tpl,
    output wire [7:0] out_c0_exit216_3_tpl,
    output wire [7:0] out_c0_exit216_4_tpl,
    output wire [7:0] out_c0_exit216_5_tpl,
    output wire [7:0] out_c0_exit216_6_tpl,
    output wire [7:0] out_c0_exit216_7_tpl,
    output wire [7:0] out_c0_exit216_8_tpl,
    output wire [7:0] out_c0_exit216_9_tpl,
    output wire [7:0] out_c0_exit216_10_tpl,
    output wire [7:0] out_c0_exit216_11_tpl,
    output wire [31:0] out_c0_exit216_12_tpl,
    output wire [31:0] out_c0_exit216_13_tpl,
    output wire [31:0] out_c0_exit216_14_tpl,
    output wire [31:0] out_c0_exit216_15_tpl,
    output wire [31:0] out_c0_exit216_16_tpl,
    output wire [31:0] out_c0_exit216_17_tpl,
    output wire [31:0] out_c0_exit216_18_tpl,
    output wire [31:0] out_c0_exit216_19_tpl,
    output wire [31:0] out_c0_exit216_20_tpl,
    output wire [31:0] out_c0_exit216_21_tpl,
    output wire [31:0] out_c0_exit216_22_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_eni25_0_tpl,
    input wire [31:0] in_c0_eni25_1_tpl,
    input wire [7:0] in_c0_eni25_2_tpl,
    input wire [7:0] in_c0_eni25_3_tpl,
    input wire [7:0] in_c0_eni25_4_tpl,
    input wire [7:0] in_c0_eni25_5_tpl,
    input wire [7:0] in_c0_eni25_6_tpl,
    input wire [7:0] in_c0_eni25_7_tpl,
    input wire [7:0] in_c0_eni25_8_tpl,
    input wire [7:0] in_c0_eni25_9_tpl,
    input wire [7:0] in_c0_eni25_10_tpl,
    input wire [7:0] in_c0_eni25_11_tpl,
    input wire [7:0] in_c0_eni25_12_tpl,
    input wire [31:0] in_c0_eni25_13_tpl,
    input wire [31:0] in_c0_eni25_14_tpl,
    input wire [31:0] in_c0_eni25_15_tpl,
    input wire [31:0] in_c0_eni25_16_tpl,
    input wire [31:0] in_c0_eni25_17_tpl,
    input wire [31:0] in_c0_eni25_18_tpl,
    input wire [31:0] in_c0_eni25_19_tpl,
    input wire [31:0] in_c0_eni25_20_tpl,
    input wire [31:0] in_c0_eni25_21_tpl,
    input wire [31:0] in_c0_eni25_22_tpl,
    input wire [31:0] in_c0_eni25_23_tpl,
    input wire [0:0] in_c0_eni25_24_tpl,
    input wire [0:0] in_c0_eni25_25_tpl,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_0_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_1_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_2_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_3_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_4_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_5_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_6_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_7_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_8_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_9_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_10_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_17_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_19_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_20_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_0_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_1_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_2_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_3_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_4_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_5_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_6_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_7_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_8_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_9_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_10_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_11_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_16_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_17_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_18_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_19_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_20_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_21_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_22_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // input_accepted_and(LOGICAL,5)
    assign input_accepted_and_q = in_i_valid & VCC_q;

    // i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x(BLACKBOX,142)@0
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_o_valid@27
    // out out_unnamed_DijkstraOptimisedID24@27
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata@20000000
    // out out_c0_exi22_0_tpl@27
    // out out_c0_exi22_1_tpl@27
    // out out_c0_exi22_2_tpl@27
    // out out_c0_exi22_3_tpl@27
    // out out_c0_exi22_4_tpl@27
    // out out_c0_exi22_5_tpl@27
    // out out_c0_exi22_6_tpl@27
    // out out_c0_exi22_7_tpl@27
    // out out_c0_exi22_8_tpl@27
    // out out_c0_exi22_9_tpl@27
    // out out_c0_exi22_10_tpl@27
    // out out_c0_exi22_11_tpl@27
    // out out_c0_exi22_12_tpl@27
    // out out_c0_exi22_13_tpl@27
    // out out_c0_exi22_14_tpl@27
    // out out_c0_exi22_15_tpl@27
    // out out_c0_exi22_16_tpl@27
    // out out_c0_exi22_17_tpl@27
    // out out_c0_exi22_18_tpl@27
    // out out_c0_exi22_19_tpl@27
    // out out_c0_exi22_20_tpl@27
    // out out_c0_exi22_21_tpl@27
    // out out_c0_exi22_22_tpl@27
    DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000optimisedid_1785_0gr thei_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack),
        .in_c0_eni25_0_tpl(in_c0_eni25_0_tpl),
        .in_c0_eni25_1_tpl(in_c0_eni25_1_tpl),
        .in_c0_eni25_2_tpl(in_c0_eni25_2_tpl),
        .in_c0_eni25_3_tpl(in_c0_eni25_3_tpl),
        .in_c0_eni25_4_tpl(in_c0_eni25_4_tpl),
        .in_c0_eni25_5_tpl(in_c0_eni25_5_tpl),
        .in_c0_eni25_6_tpl(in_c0_eni25_6_tpl),
        .in_c0_eni25_7_tpl(in_c0_eni25_7_tpl),
        .in_c0_eni25_8_tpl(in_c0_eni25_8_tpl),
        .in_c0_eni25_9_tpl(in_c0_eni25_9_tpl),
        .in_c0_eni25_10_tpl(in_c0_eni25_10_tpl),
        .in_c0_eni25_11_tpl(in_c0_eni25_11_tpl),
        .in_c0_eni25_12_tpl(in_c0_eni25_12_tpl),
        .in_c0_eni25_13_tpl(in_c0_eni25_13_tpl),
        .in_c0_eni25_14_tpl(in_c0_eni25_14_tpl),
        .in_c0_eni25_15_tpl(in_c0_eni25_15_tpl),
        .in_c0_eni25_16_tpl(in_c0_eni25_16_tpl),
        .in_c0_eni25_17_tpl(in_c0_eni25_17_tpl),
        .in_c0_eni25_18_tpl(in_c0_eni25_18_tpl),
        .in_c0_eni25_19_tpl(in_c0_eni25_19_tpl),
        .in_c0_eni25_20_tpl(in_c0_eni25_20_tpl),
        .in_c0_eni25_21_tpl(in_c0_eni25_21_tpl),
        .in_c0_eni25_22_tpl(in_c0_eni25_22_tpl),
        .in_c0_eni25_23_tpl(in_c0_eni25_23_tpl),
        .in_c0_eni25_24_tpl(in_c0_eni25_24_tpl),
        .in_c0_eni25_25_tpl(in_c0_eni25_25_tpl),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_o_valid),
        .out_unnamed_DijkstraOptimisedID24(),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata),
        .out_c0_exi22_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_0_tpl),
        .out_c0_exi22_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_1_tpl),
        .out_c0_exi22_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_2_tpl),
        .out_c0_exi22_3_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_3_tpl),
        .out_c0_exi22_4_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_4_tpl),
        .out_c0_exi22_5_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_5_tpl),
        .out_c0_exi22_6_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_6_tpl),
        .out_c0_exi22_7_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_7_tpl),
        .out_c0_exi22_8_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_8_tpl),
        .out_c0_exi22_9_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_9_tpl),
        .out_c0_exi22_10_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_10_tpl),
        .out_c0_exi22_11_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_11_tpl),
        .out_c0_exi22_12_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_12_tpl),
        .out_c0_exi22_13_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_13_tpl),
        .out_c0_exi22_14_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_14_tpl),
        .out_c0_exi22_15_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_15_tpl),
        .out_c0_exi22_16_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_16_tpl),
        .out_c0_exi22_17_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_17_tpl),
        .out_c0_exi22_18_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_18_tpl),
        .out_c0_exi22_19_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_19_tpl),
        .out_c0_exi22_20_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_20_tpl),
        .out_c0_exi22_21_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_21_tpl),
        .out_c0_exi22_22_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_22_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,51)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_23_0;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x(BLACKBOX,141)@27
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_almost_empty_out@58
    // out out_empty_out@58
    // out out_stall_entry@20000000
    // out out_valid_out@58
    // out out_data_out_0_tpl@58
    // out out_data_out_1_tpl@58
    // out out_data_out_2_tpl@58
    // out out_data_out_3_tpl@58
    // out out_data_out_4_tpl@58
    // out out_data_out_5_tpl@58
    // out out_data_out_6_tpl@58
    // out out_data_out_7_tpl@58
    // out out_data_out_8_tpl@58
    // out out_data_out_9_tpl@58
    // out out_data_out_10_tpl@58
    // out out_data_out_11_tpl@58
    // out out_data_out_12_tpl@58
    // out out_data_out_13_tpl@58
    // out out_data_out_14_tpl@58
    // out out_data_out_15_tpl@58
    // out out_data_out_16_tpl@58
    // out out_data_out_17_tpl@58
    // out out_data_out_18_tpl@58
    // out out_data_out_19_tpl@58
    // out out_data_out_20_tpl@58
    // out out_data_out_21_tpl@58
    // out out_data_out_22_tpl@58
    DijkstraOptimisedID_i_llvm_fpga_sfc_exit0000optimisedid_2758_0gr thei_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x (
        .in_dec_pipelined_thread(VCC_q),
        .in_inc_pipelined_thread(GND_q),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_c0_exi22_22_tpl),
        .out_almost_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_empty_out),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_22_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out_291(GPOUT,53)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_1_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_2_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_3_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_4_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_5_regfree_osync_x(GPOUT,59)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_6_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_7_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_8_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_9_regfree_osync_x(GPOUT,63)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_10_regfree_osync_x(GPOUT,64)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;

    // dupName_11_regfree_osync_x(GPOUT,65)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;

    // dupName_12_regfree_osync_x(GPOUT,66)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;

    // dupName_13_regfree_osync_x(GPOUT,67)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;

    // dupName_14_regfree_osync_x(GPOUT,68)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;

    // dupName_15_regfree_osync_x(GPOUT,69)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;

    // dupName_16_regfree_osync_x(GPOUT,70)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;

    // dupName_17_regfree_osync_x(GPOUT,71)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;

    // dupName_18_regfree_osync_x(GPOUT,72)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;

    // dupName_19_regfree_osync_x(GPOUT,73)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;

    // dupName_20_regfree_osync_x(GPOUT,74)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;

    // dupName_21_regfree_osync_x(GPOUT,75)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;

    // dupName_22_regfree_osync_x(GPOUT,76)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;

    // dupName_23_regfree_osync_x(GPOUT,77)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;

    // dupName_24_regfree_osync_x(GPOUT,78)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;

    // dupName_25_regfree_osync_x(GPOUT,79)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;

    // dupName_26_regfree_osync_x(GPOUT,80)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;

    // dupName_27_regfree_osync_x(GPOUT,81)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;

    // dupName_28_regfree_osync_x(GPOUT,82)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;

    // dupName_29_regfree_osync_x(GPOUT,83)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;

    // dupName_30_regfree_osync_x(GPOUT,84)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;

    // dupName_31_regfree_osync_x(GPOUT,85)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;

    // dupName_32_regfree_osync_x(GPOUT,86)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;

    // dupName_33_regfree_osync_x(GPOUT,87)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;

    // dupName_34_regfree_osync_x(GPOUT,88)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;

    // dupName_35_regfree_osync_x(GPOUT,89)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;

    // dupName_36_regfree_osync_x(GPOUT,90)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;

    // dupName_37_regfree_osync_x(GPOUT,91)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;

    // dupName_38_regfree_osync_x(GPOUT,92)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;

    // dupName_39_regfree_osync_x(GPOUT,93)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;

    // dupName_40_regfree_osync_x(GPOUT,94)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;

    // dupName_41_regfree_osync_x(GPOUT,95)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;

    // dupName_42_regfree_osync_x(GPOUT,96)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;

    // dupName_43_regfree_osync_x(GPOUT,97)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;

    // dupName_44_regfree_osync_x(GPOUT,98)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;

    // dupName_45_regfree_osync_x(GPOUT,99)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;

    // dupName_46_regfree_osync_x(GPOUT,100)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;

    // dupName_47_regfree_osync_x(GPOUT,101)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;

    // dupName_48_regfree_osync_x(GPOUT,102)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;

    // dupName_49_regfree_osync_x(GPOUT,103)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;

    // dupName_50_regfree_osync_x(GPOUT,104)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;

    // dupName_51_regfree_osync_x(GPOUT,105)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;

    // dupName_52_regfree_osync_x(GPOUT,106)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;

    // dupName_53_regfree_osync_x(GPOUT,107)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;

    // dupName_54_regfree_osync_x(GPOUT,108)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;

    // dupName_55_regfree_osync_x(GPOUT,109)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;

    // dupName_56_regfree_osync_x(GPOUT,110)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;

    // dupName_57_regfree_osync_x(GPOUT,111)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;

    // dupName_58_regfree_osync_x(GPOUT,112)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;

    // dupName_59_regfree_osync_x(GPOUT,113)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;

    // dupName_60_regfree_osync_x(GPOUT,114)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;

    // dupName_61_regfree_osync_x(GPOUT,115)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;

    // dupName_62_regfree_osync_x(GPOUT,116)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;

    // dupName_63_regfree_osync_x(GPOUT,117)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;

    // dupName_64_regfree_osync_x(GPOUT,118)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;

    // dupName_65_regfree_osync_x(GPOUT,119)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;

    // dupName_66_regfree_osync_x(GPOUT,120)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;

    // dupName_67_regfree_osync_x(GPOUT,121)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;

    // dupName_68_regfree_osync_x(GPOUT,122)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;

    // dupName_69_regfree_osync_x(GPOUT,123)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;

    // dupName_70_regfree_osync_x(GPOUT,124)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;

    // dupName_71_regfree_osync_x(GPOUT,125)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;

    // dupName_72_regfree_osync_x(GPOUT,126)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;

    // dupName_73_regfree_osync_x(GPOUT,127)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;

    // dupName_74_regfree_osync_x(GPOUT,128)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;

    // dupName_75_regfree_osync_x(GPOUT,129)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;

    // dupName_76_regfree_osync_x(GPOUT,130)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;

    // dupName_77_regfree_osync_x(GPOUT,131)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;

    // dupName_78_regfree_osync_x(GPOUT,132)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;

    // dupName_79_regfree_osync_x(GPOUT,133)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;

    // dupName_80_regfree_osync_x(GPOUT,134)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;

    // dupName_81_regfree_osync_x(GPOUT,135)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;

    // dupName_82_regfree_osync_x(GPOUT,136)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;

    // dupName_83_regfree_osync_x(GPOUT,137)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;

    // dupName_84_regfree_osync_x(GPOUT,138)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;

    // dupName_85_regfree_osync_x(GPOUT,139)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;

    // dupName_86_regfree_osync_x(GPOUT,140)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata = i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;

    // sync_out_292_aunroll_x(GPOUT,143)@58
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_almost_empty_out;
    assign out_c0_exit216_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit216_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit216_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit216_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit216_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit216_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit216_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit216_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit216_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit216_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit216_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit216_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit216_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit216_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit216_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit216_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit216_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit216_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit216_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit216_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit216_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit216_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit216_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_data_out_22_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_empty_out;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup33_i_dijkstraoptimisedids_c0_exit216_dijkstraoptimisedid_1785_1gr_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,145)
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
