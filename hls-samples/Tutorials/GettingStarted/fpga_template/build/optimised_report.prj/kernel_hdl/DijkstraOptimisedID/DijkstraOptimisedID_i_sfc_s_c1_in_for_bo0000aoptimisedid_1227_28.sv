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

// SystemVerilog created from i_sfc_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1227_28
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_s_c1_in_for_bo0000aoptimisedid_1227_28 (
    input wire [7:0] in_intel_reserved_ffwd_14_0,
    input wire [7:0] in_intel_reserved_ffwd_15_0,
    input wire [7:0] in_intel_reserved_ffwd_16_0,
    input wire [7:0] in_intel_reserved_ffwd_17_0,
    input wire [7:0] in_intel_reserved_ffwd_18_0,
    input wire [7:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [7:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [7:0] in_intel_reserved_ffwd_10_0,
    input wire [7:0] in_intel_reserved_ffwd_11_0,
    input wire [7:0] in_intel_reserved_ffwd_12_0,
    input wire [7:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c1_exit199_0_tpl,
    output wire [7:0] out_c1_exit199_1_tpl,
    output wire [7:0] out_c1_exit199_2_tpl,
    output wire [7:0] out_c1_exit199_3_tpl,
    output wire [7:0] out_c1_exit199_4_tpl,
    output wire [7:0] out_c1_exit199_5_tpl,
    output wire [7:0] out_c1_exit199_6_tpl,
    output wire [7:0] out_c1_exit199_7_tpl,
    output wire [7:0] out_c1_exit199_8_tpl,
    output wire [7:0] out_c1_exit199_9_tpl,
    output wire [7:0] out_c1_exit199_10_tpl,
    output wire [7:0] out_c1_exit199_11_tpl,
    output wire [31:0] out_c1_exit199_12_tpl,
    output wire [31:0] out_c1_exit199_13_tpl,
    output wire [31:0] out_c1_exit199_14_tpl,
    output wire [31:0] out_c1_exit199_15_tpl,
    output wire [31:0] out_c1_exit199_16_tpl,
    output wire [31:0] out_c1_exit199_17_tpl,
    output wire [31:0] out_c1_exit199_18_tpl,
    output wire [31:0] out_c1_exit199_19_tpl,
    output wire [31:0] out_c1_exit199_20_tpl,
    output wire [31:0] out_c1_exit199_21_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c1_eni22_0_tpl,
    input wire [0:0] in_c1_eni22_1_tpl,
    input wire [7:0] in_c1_eni22_2_tpl,
    input wire [7:0] in_c1_eni22_3_tpl,
    input wire [7:0] in_c1_eni22_4_tpl,
    input wire [7:0] in_c1_eni22_5_tpl,
    input wire [7:0] in_c1_eni22_6_tpl,
    input wire [7:0] in_c1_eni22_7_tpl,
    input wire [7:0] in_c1_eni22_8_tpl,
    input wire [7:0] in_c1_eni22_9_tpl,
    input wire [7:0] in_c1_eni22_10_tpl,
    input wire [7:0] in_c1_eni22_11_tpl,
    input wire [7:0] in_c1_eni22_12_tpl,
    input wire [31:0] in_c1_eni22_13_tpl,
    input wire [31:0] in_c1_eni22_14_tpl,
    input wire [31:0] in_c1_eni22_15_tpl,
    input wire [31:0] in_c1_eni22_16_tpl,
    input wire [31:0] in_c1_eni22_17_tpl,
    input wire [31:0] in_c1_eni22_18_tpl,
    input wire [31:0] in_c1_eni22_19_tpl,
    input wire [31:0] in_c1_eni22_20_tpl,
    input wire [31:0] in_c1_eni22_21_tpl,
    input wire [31:0] in_c1_eni22_22_tpl,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_0_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_1_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_2_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_3_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_4_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_5_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_6_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_7_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_8_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_9_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_10_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_17_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_19_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_20_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_21_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_0_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_1_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_2_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_3_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_4_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_5_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_6_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_7_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_8_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_9_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_10_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_11_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_12_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_13_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_14_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_15_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_16_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_17_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_18_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_19_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_20_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_21_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x(BLACKBOX,29)@49
    // out out_o_valid@50
    // out out_unnamed_DijkstraOptimisedID24@50
    // out out_c1_exi21_0_tpl@50
    // out out_c1_exi21_1_tpl@50
    // out out_c1_exi21_2_tpl@50
    // out out_c1_exi21_3_tpl@50
    // out out_c1_exi21_4_tpl@50
    // out out_c1_exi21_5_tpl@50
    // out out_c1_exi21_6_tpl@50
    // out out_c1_exi21_7_tpl@50
    // out out_c1_exi21_8_tpl@50
    // out out_c1_exi21_9_tpl@50
    // out out_c1_exi21_10_tpl@50
    // out out_c1_exi21_11_tpl@50
    // out out_c1_exi21_12_tpl@50
    // out out_c1_exi21_13_tpl@50
    // out out_c1_exi21_14_tpl@50
    // out out_c1_exi21_15_tpl@50
    // out out_c1_exi21_16_tpl@50
    // out out_c1_exi21_17_tpl@50
    // out out_c1_exi21_18_tpl@50
    // out out_c1_exi21_19_tpl@50
    // out out_c1_exi21_20_tpl@50
    // out out_c1_exi21_21_tpl@50
    DijkstraOptimisedID_i_sfc_logic_s_c1_in_0000optimisedid_1487_0gr thei_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_c1_eni22_0_tpl(in_c1_eni22_0_tpl),
        .in_c1_eni22_1_tpl(in_c1_eni22_1_tpl),
        .in_c1_eni22_2_tpl(in_c1_eni22_2_tpl),
        .in_c1_eni22_3_tpl(in_c1_eni22_3_tpl),
        .in_c1_eni22_4_tpl(in_c1_eni22_4_tpl),
        .in_c1_eni22_5_tpl(in_c1_eni22_5_tpl),
        .in_c1_eni22_6_tpl(in_c1_eni22_6_tpl),
        .in_c1_eni22_7_tpl(in_c1_eni22_7_tpl),
        .in_c1_eni22_8_tpl(in_c1_eni22_8_tpl),
        .in_c1_eni22_9_tpl(in_c1_eni22_9_tpl),
        .in_c1_eni22_10_tpl(in_c1_eni22_10_tpl),
        .in_c1_eni22_11_tpl(in_c1_eni22_11_tpl),
        .in_c1_eni22_12_tpl(in_c1_eni22_12_tpl),
        .in_c1_eni22_13_tpl(in_c1_eni22_13_tpl),
        .in_c1_eni22_14_tpl(in_c1_eni22_14_tpl),
        .in_c1_eni22_15_tpl(in_c1_eni22_15_tpl),
        .in_c1_eni22_16_tpl(in_c1_eni22_16_tpl),
        .in_c1_eni22_17_tpl(in_c1_eni22_17_tpl),
        .in_c1_eni22_18_tpl(in_c1_eni22_18_tpl),
        .in_c1_eni22_19_tpl(in_c1_eni22_19_tpl),
        .in_c1_eni22_20_tpl(in_c1_eni22_20_tpl),
        .in_c1_eni22_21_tpl(in_c1_eni22_21_tpl),
        .in_c1_eni22_22_tpl(in_c1_eni22_22_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_o_valid),
        .out_unnamed_DijkstraOptimisedID24(),
        .out_c1_exi21_0_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_0_tpl),
        .out_c1_exi21_1_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_1_tpl),
        .out_c1_exi21_2_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_2_tpl),
        .out_c1_exi21_3_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_3_tpl),
        .out_c1_exi21_4_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_4_tpl),
        .out_c1_exi21_5_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_5_tpl),
        .out_c1_exi21_6_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_6_tpl),
        .out_c1_exi21_7_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_7_tpl),
        .out_c1_exi21_8_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_8_tpl),
        .out_c1_exi21_9_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_9_tpl),
        .out_c1_exi21_10_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_10_tpl),
        .out_c1_exi21_11_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_11_tpl),
        .out_c1_exi21_12_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_12_tpl),
        .out_c1_exi21_13_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_13_tpl),
        .out_c1_exi21_14_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_14_tpl),
        .out_c1_exi21_15_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_15_tpl),
        .out_c1_exi21_16_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_16_tpl),
        .out_c1_exi21_17_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_17_tpl),
        .out_c1_exi21_18_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_18_tpl),
        .out_c1_exi21_19_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_19_tpl),
        .out_c1_exi21_20_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_20_tpl),
        .out_c1_exi21_21_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_21_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // input_accepted_and(LOGICAL,4)
    assign input_accepted_and_q = in_i_valid & VCC_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x(BLACKBOX,28)@50
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_almost_empty_out@81
    // out out_empty_out@81
    // out out_stall_entry@20000000
    // out out_valid_out@81
    // out out_data_out_0_tpl@81
    // out out_data_out_1_tpl@81
    // out out_data_out_2_tpl@81
    // out out_data_out_3_tpl@81
    // out out_data_out_4_tpl@81
    // out out_data_out_5_tpl@81
    // out out_data_out_6_tpl@81
    // out out_data_out_7_tpl@81
    // out out_data_out_8_tpl@81
    // out out_data_out_9_tpl@81
    // out out_data_out_10_tpl@81
    // out out_data_out_11_tpl@81
    // out out_data_out_12_tpl@81
    // out out_data_out_13_tpl@81
    // out out_data_out_14_tpl@81
    // out out_data_out_15_tpl@81
    // out out_data_out_16_tpl@81
    // out out_data_out_17_tpl@81
    // out out_data_out_18_tpl@81
    // out out_data_out_19_tpl@81
    // out out_data_out_20_tpl@81
    // out out_data_out_21_tpl@81
    DijkstraOptimisedID_i_llvm_fpga_sfc_exit0000optimisedid_1624_0gr thei_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr_aunroll_x_out_c1_exi21_21_tpl),
        .out_almost_empty_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_empty_out),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_21_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out_238(GPOUT,27)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_stall_entry;

    // sync_out_239_aunroll_x(GPOUT,30)@81
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_almost_empty_out;
    assign out_c1_exit199_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit199_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit199_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit199_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_3_tpl;
    assign out_c1_exit199_4_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_4_tpl;
    assign out_c1_exit199_5_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_5_tpl;
    assign out_c1_exit199_6_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_6_tpl;
    assign out_c1_exit199_7_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_7_tpl;
    assign out_c1_exit199_8_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_8_tpl;
    assign out_c1_exit199_9_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_9_tpl;
    assign out_c1_exit199_10_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_10_tpl;
    assign out_c1_exit199_11_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_11_tpl;
    assign out_c1_exit199_12_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_12_tpl;
    assign out_c1_exit199_13_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_13_tpl;
    assign out_c1_exit199_14_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_14_tpl;
    assign out_c1_exit199_15_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_15_tpl;
    assign out_c1_exit199_16_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_16_tpl;
    assign out_c1_exit199_17_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_17_tpl;
    assign out_c1_exit199_18_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_18_tpl;
    assign out_c1_exit199_19_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_19_tpl;
    assign out_c1_exit199_20_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_20_tpl;
    assign out_c1_exit199_21_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_data_out_21_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_empty_out;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1487_1gr_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,32)
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
