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

// SystemVerilog created from i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_s_c0_in_for_bo0000aoptimisedid_3089_26 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exit297_0_tpl,
    output wire [31:0] out_c0_exit297_1_tpl,
    output wire [31:0] out_c0_exit297_2_tpl,
    output wire [31:0] out_c0_exit297_3_tpl,
    output wire [31:0] out_c0_exit297_4_tpl,
    output wire [31:0] out_c0_exit297_5_tpl,
    output wire [31:0] out_c0_exit297_6_tpl,
    output wire [31:0] out_c0_exit297_7_tpl,
    output wire [31:0] out_c0_exit297_8_tpl,
    output wire [31:0] out_c0_exit297_9_tpl,
    output wire [31:0] out_c0_exit297_10_tpl,
    output wire [7:0] out_c0_exit297_11_tpl,
    output wire [7:0] out_c0_exit297_12_tpl,
    output wire [7:0] out_c0_exit297_13_tpl,
    output wire [7:0] out_c0_exit297_14_tpl,
    output wire [7:0] out_c0_exit297_15_tpl,
    output wire [7:0] out_c0_exit297_16_tpl,
    output wire [7:0] out_c0_exit297_17_tpl,
    output wire [7:0] out_c0_exit297_18_tpl,
    output wire [7:0] out_c0_exit297_19_tpl,
    output wire [7:0] out_c0_exit297_20_tpl,
    output wire [7:0] out_c0_exit297_21_tpl,
    output wire [31:0] out_c0_exit297_22_tpl,
    output wire [31:0] out_c0_exit297_23_tpl,
    output wire [0:0] out_c0_exit297_24_tpl,
    output wire [0:0] out_c0_exit297_25_tpl,
    output wire [0:0] out_c0_exit297_26_tpl,
    output wire [0:0] out_c0_exit297_27_tpl,
    output wire [0:0] out_c0_exit297_28_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_almost_empty_in,
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
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exiting_q;
    wire [0:0] loop_admit_i_almost_empty;
    wire loop_admit_i_almost_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_empty;
    wire loop_admit_i_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_exit;
    wire loop_admit_i_exit_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_dummy;
    wire loop_admit_i_exit_dummy_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_forked;
    wire loop_admit_i_exit_forked_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_valid;
    wire loop_admit_i_exit_valid_bitsignaltemp;
    wire [0:0] loop_admit_i_stall;
    wire loop_admit_i_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_dummy;
    wire loop_admit_o_dummy_bitsignaltemp;
    wire [0:0] loop_admit_o_forked;
    wire loop_admit_o_forked_bitsignaltemp;
    wire [0:0] loop_admit_o_stall;
    wire loop_admit_o_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_valid;
    wire loop_admit_o_valid_bitsignaltemp;
    reg [0:0] stall_out_reg_0_q;
    reg [0:0] stall_out_reg_1_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_10_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_11_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_12_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_13_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_14_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_15_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_16_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_17_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_18_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_19_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_20_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_23_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_24_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_25_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_26_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_27_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_28_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_DijkstraOptimisedID_B8_current_iter_isspec;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_dummy_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_forked_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_3_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_4_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_6_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_8_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_9_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_10_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_11_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_12_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_13_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_14_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_15_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_16_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_17_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_18_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_19_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_20_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_21_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_22_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_23_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_24_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_25_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_26_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_27_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_28_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x(BLACKBOX,8)@2
    // in in_stall_in@20000000
    // out out_almost_empty_out@33
    // out out_empty_out@33
    // out out_stall_entry@20000000
    // out out_valid_out@33
    // out out_data_out_0_tpl@33
    // out out_data_out_1_tpl@33
    // out out_data_out_2_tpl@33
    // out out_data_out_3_tpl@33
    // out out_data_out_4_tpl@33
    // out out_data_out_5_tpl@33
    // out out_data_out_6_tpl@33
    // out out_data_out_7_tpl@33
    // out out_data_out_8_tpl@33
    // out out_data_out_9_tpl@33
    // out out_data_out_10_tpl@33
    // out out_data_out_11_tpl@33
    // out out_data_out_12_tpl@33
    // out out_data_out_13_tpl@33
    // out out_data_out_14_tpl@33
    // out out_data_out_15_tpl@33
    // out out_data_out_16_tpl@33
    // out out_data_out_17_tpl@33
    // out out_data_out_18_tpl@33
    // out out_data_out_19_tpl@33
    // out out_data_out_20_tpl@33
    // out out_data_out_21_tpl@33
    // out out_data_out_22_tpl@33
    // out out_data_out_23_tpl@33
    // out out_data_out_24_tpl@33
    // out out_data_out_25_tpl@33
    // out out_data_out_26_tpl@33
    // out out_data_out_27_tpl@33
    // out out_data_out_28_tpl@33
    DijkstraOptimisedID_i_llvm_fpga_sfc_exit0000optimisedid_3616_0gr thei_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x (
        .in_input_accepted(loop_admit_o_valid),
        .in_mask_valid(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_DijkstraOptimisedID_B8_current_iter_isspec),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_27_tpl),
        .in_data_in_28_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_28_tpl),
        .out_almost_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_empty_out),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_28_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_out_reg_0(REG,5)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_0_q <= i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_stall_entry;
        end
    end

    // stall_out_reg_1(REG,6)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_1_q <= stall_out_reg_0_q;
        end
    end

    // i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x(BLACKBOX,9)@0
    // out out_DijkstraOptimisedID_B8_current_iter_isspec@2
    // out out_exiting_valid_out@20000000
    // out out_o_valid@2
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_c0_exi28_0_tpl@2
    // out out_c0_exi28_1_tpl@2
    // out out_c0_exi28_2_tpl@2
    // out out_c0_exi28_3_tpl@2
    // out out_c0_exi28_4_tpl@2
    // out out_c0_exi28_5_tpl@2
    // out out_c0_exi28_6_tpl@2
    // out out_c0_exi28_7_tpl@2
    // out out_c0_exi28_8_tpl@2
    // out out_c0_exi28_9_tpl@2
    // out out_c0_exi28_10_tpl@2
    // out out_c0_exi28_11_tpl@2
    // out out_c0_exi28_12_tpl@2
    // out out_c0_exi28_13_tpl@2
    // out out_c0_exi28_14_tpl@2
    // out out_c0_exi28_15_tpl@2
    // out out_c0_exi28_16_tpl@2
    // out out_c0_exi28_17_tpl@2
    // out out_c0_exi28_18_tpl@2
    // out out_c0_exi28_19_tpl@2
    // out out_c0_exi28_20_tpl@2
    // out out_c0_exi28_21_tpl@2
    // out out_c0_exi28_22_tpl@2
    // out out_c0_exi28_23_tpl@2
    // out out_c0_exi28_24_tpl@2
    // out out_c0_exi28_25_tpl@2
    // out out_c0_exi28_26_tpl@2
    // out out_c0_exi28_27_tpl@2
    // out out_c0_exi28_28_tpl@2
    DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000optimisedid_3145_0gr thei_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x (
        .in_buffer_in(loop_admit_o_forked),
        .in_dummy_in(loop_admit_o_dummy),
        .in_i_valid(loop_admit_o_valid),
        .in_c0_eni26_0_tpl(in_c0_eni26_0_tpl),
        .in_c0_eni26_1_tpl(in_c0_eni26_1_tpl),
        .in_c0_eni26_2_tpl(in_c0_eni26_2_tpl),
        .in_c0_eni26_3_tpl(in_c0_eni26_3_tpl),
        .in_c0_eni26_4_tpl(in_c0_eni26_4_tpl),
        .in_c0_eni26_5_tpl(in_c0_eni26_5_tpl),
        .in_c0_eni26_6_tpl(in_c0_eni26_6_tpl),
        .in_c0_eni26_7_tpl(in_c0_eni26_7_tpl),
        .in_c0_eni26_8_tpl(in_c0_eni26_8_tpl),
        .in_c0_eni26_9_tpl(in_c0_eni26_9_tpl),
        .in_c0_eni26_10_tpl(in_c0_eni26_10_tpl),
        .in_c0_eni26_11_tpl(in_c0_eni26_11_tpl),
        .in_c0_eni26_12_tpl(in_c0_eni26_12_tpl),
        .in_c0_eni26_13_tpl(in_c0_eni26_13_tpl),
        .in_c0_eni26_14_tpl(in_c0_eni26_14_tpl),
        .in_c0_eni26_15_tpl(in_c0_eni26_15_tpl),
        .in_c0_eni26_16_tpl(in_c0_eni26_16_tpl),
        .in_c0_eni26_17_tpl(in_c0_eni26_17_tpl),
        .in_c0_eni26_18_tpl(in_c0_eni26_18_tpl),
        .in_c0_eni26_19_tpl(in_c0_eni26_19_tpl),
        .in_c0_eni26_20_tpl(in_c0_eni26_20_tpl),
        .in_c0_eni26_21_tpl(in_c0_eni26_21_tpl),
        .in_c0_eni26_22_tpl(in_c0_eni26_22_tpl),
        .in_c0_eni26_23_tpl(in_c0_eni26_23_tpl),
        .in_c0_eni26_24_tpl(in_c0_eni26_24_tpl),
        .in_c0_eni26_25_tpl(in_c0_eni26_25_tpl),
        .in_c0_eni26_26_tpl(in_c0_eni26_26_tpl),
        .out_DijkstraOptimisedID_B8_current_iter_isspec(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_DijkstraOptimisedID_B8_current_iter_isspec),
        .out_exiting_valid_out(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_o_valid),
        .out_pipeline_dummy_out(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_valid_out),
        .out_c0_exi28_0_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_0_tpl),
        .out_c0_exi28_1_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_1_tpl),
        .out_c0_exi28_2_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_2_tpl),
        .out_c0_exi28_3_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_3_tpl),
        .out_c0_exi28_4_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_4_tpl),
        .out_c0_exi28_5_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_5_tpl),
        .out_c0_exi28_6_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_6_tpl),
        .out_c0_exi28_7_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_7_tpl),
        .out_c0_exi28_8_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_8_tpl),
        .out_c0_exi28_9_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_9_tpl),
        .out_c0_exi28_10_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_10_tpl),
        .out_c0_exi28_11_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_11_tpl),
        .out_c0_exi28_12_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_12_tpl),
        .out_c0_exi28_13_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_13_tpl),
        .out_c0_exi28_14_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_14_tpl),
        .out_c0_exi28_15_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_15_tpl),
        .out_c0_exi28_16_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_16_tpl),
        .out_c0_exi28_17_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_17_tpl),
        .out_c0_exi28_18_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_18_tpl),
        .out_c0_exi28_19_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_19_tpl),
        .out_c0_exi28_20_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_20_tpl),
        .out_c0_exi28_21_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_21_tpl),
        .out_c0_exi28_22_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_22_tpl),
        .out_c0_exi28_23_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_23_tpl),
        .out_c0_exi28_24_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_24_tpl),
        .out_c0_exi28_25_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_25_tpl),
        .out_c0_exi28_26_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_26_tpl),
        .out_c0_exi28_27_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_27_tpl),
        .out_c0_exi28_28_tpl(i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_c0_exi28_28_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // exiting(LOGICAL,2)
    assign exiting_q = ~ (i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_exiting_valid_out);

    // loop_admit(EXTIFACE,3)
    assign loop_admit_i_almost_empty = in_almost_empty_in;
    assign loop_admit_i_empty = in_empty_in;
    assign loop_admit_i_exit = exiting_q;
    assign loop_admit_i_exit_dummy = i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_dummy_out;
    assign loop_admit_i_exit_forked = i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_forked_out;
    assign loop_admit_i_exit_valid = i_sfc_logic_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3145_0gr_aunroll_x_out_pipeline_valid_out;
    assign loop_admit_i_stall = stall_out_reg_1_q;
    assign loop_admit_i_almost_empty_bitsignaltemp = loop_admit_i_almost_empty[0];
    assign loop_admit_i_empty_bitsignaltemp = loop_admit_i_empty[0];
    assign loop_admit_i_exit_bitsignaltemp = loop_admit_i_exit[0];
    assign loop_admit_i_exit_dummy_bitsignaltemp = loop_admit_i_exit_dummy[0];
    assign loop_admit_i_exit_forked_bitsignaltemp = loop_admit_i_exit_forked[0];
    assign loop_admit_i_exit_valid_bitsignaltemp = loop_admit_i_exit_valid[0];
    assign loop_admit_i_stall_bitsignaltemp = loop_admit_i_stall[0];
    assign loop_admit_o_dummy[0] = loop_admit_o_dummy_bitsignaltemp;
    assign loop_admit_o_forked[0] = loop_admit_o_forked_bitsignaltemp;
    assign loop_admit_o_stall[0] = loop_admit_o_stall_bitsignaltemp;
    assign loop_admit_o_valid[0] = loop_admit_o_valid_bitsignaltemp;
    acl_loop_admit #(
        .COMPILER_INFERRED_REINVOCATION_DELAY(7),
        .COMPILER_INFERRED_SPECULATED_ITERATIONS(5),
        .ENABLE_INTERLEAVING(0),
        .II(1),
        .LATENCY_O_VALID_TO_I_VALID(0),
        .LATENCY_UPSTREAM_EMPTY(5),
        .LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP(4),
        .ASYNC_RESET(0),
        .FAST_ADMIT(0),
        .FAST_EXIT(0),
        .SYNCHRONIZE_RESET(0)
    ) theloop_admit (
        .i_almost_empty(loop_admit_i_almost_empty_bitsignaltemp),
        .i_empty(loop_admit_i_empty_bitsignaltemp),
        .i_exit(loop_admit_i_exit_bitsignaltemp),
        .i_exit_dummy(loop_admit_i_exit_dummy_bitsignaltemp),
        .i_exit_forked(loop_admit_i_exit_forked_bitsignaltemp),
        .i_exit_valid(loop_admit_i_exit_valid_bitsignaltemp),
        .i_stall(loop_admit_i_stall_bitsignaltemp),
        .o_dummy(loop_admit_o_dummy_bitsignaltemp),
        .o_forked(loop_admit_o_forked_bitsignaltemp),
        .o_stall(loop_admit_o_stall_bitsignaltemp),
        .o_valid(loop_admit_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out_350(GPOUT,7)@20000000
    assign out_o_stall = loop_admit_o_stall;

    // sync_out_351_aunroll_x(GPOUT,10)@33
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_almost_empty_out;
    assign out_c0_exit297_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit297_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit297_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit297_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit297_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit297_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit297_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit297_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit297_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit297_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit297_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit297_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit297_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit297_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit297_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit297_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit297_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit297_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit297_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit297_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit297_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit297_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit297_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit297_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit297_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_24_tpl;
    assign out_c0_exit297_25_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_25_tpl;
    assign out_c0_exit297_26_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_26_tpl;
    assign out_c0_exit297_27_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_27_tpl;
    assign out_c0_exit297_28_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_data_out_28_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_empty_out;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3145_1gr_aunroll_x_out_valid_out;
    assign out_profile_loop_o_valid = loop_admit_o_valid;

    // rst_sync(RESETSYNC,13)
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
