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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_2026_1gr_data_fifo
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_llvm_fpga_sfc_exit_0000d_2026_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_6050_13_in;
    wire [0:0] adapt_scalar_trunc_6050_13_q;
    wire [0:0] adapt_scalar_trunc_6050_15_in;
    wire [0:0] adapt_scalar_trunc_6050_15_q;
    wire [0:0] adapt_scalar_trunc_6050_17_in;
    wire [0:0] adapt_scalar_trunc_6050_17_q;
    wire [0:0] adapt_scalar_trunc_6050_19_in;
    wire [0:0] adapt_scalar_trunc_6050_19_q;
    wire [6:0] c_i7_0_6050_10_q;
    wire [31:0] dsdk_ip_adapt_bitjoin_6050_1_q;
    wire [7:0] element_extension_6050_3_q;
    wire [7:0] element_extension_6050_5_q;
    wire [7:0] element_extension_6050_7_q;
    wire [7:0] element_extension_6050_9_q;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_almost_full_bitsignaltemp;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_6050_12_b;
    wire [0:0] ip_dsdk_adapt_bitselect_6050_14_b;
    wire [0:0] ip_dsdk_adapt_bitselect_6050_16_b;
    wire [0:0] ip_dsdk_adapt_bitselect_6050_18_b;


    // c_i7_0_6050_10(CONSTANT,6)
    assign c_i7_0_6050_10_q = 7'b0000000;

    // element_extension_6050_9(BITJOIN,14)
    assign element_extension_6050_9_q = {c_i7_0_6050_10_q, in_i_data_3_tpl};

    // element_extension_6050_7(BITJOIN,13)
    assign element_extension_6050_7_q = {c_i7_0_6050_10_q, in_i_data_2_tpl};

    // element_extension_6050_5(BITJOIN,12)
    assign element_extension_6050_5_q = {c_i7_0_6050_10_q, in_i_data_1_tpl};

    // element_extension_6050_3(BITJOIN,11)
    assign element_extension_6050_3_q = {c_i7_0_6050_10_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_6050_1(BITJOIN,10)
    assign dsdk_ip_adapt_bitjoin_6050_1_q = {element_extension_6050_9_q, element_extension_6050_7_q, element_extension_6050_5_q, element_extension_6050_3_q};

    // i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr(EXTIFACE,15)
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_data = dsdk_ip_adapt_bitjoin_6050_1_q;
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(32)
    ) thei_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_6050_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_497(GPOUT,21)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_6050_18(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect_6050_18_b = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_data[24:24];

    // adapt_scalar_trunc_6050_19(ROUND,5)
    assign adapt_scalar_trunc_6050_19_in = ip_dsdk_adapt_bitselect_6050_18_b;
    assign adapt_scalar_trunc_6050_19_q = adapt_scalar_trunc_6050_19_in[0:0];

    // ip_dsdk_adapt_bitselect_6050_16(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect_6050_16_b = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_data[16:16];

    // adapt_scalar_trunc_6050_17(ROUND,4)
    assign adapt_scalar_trunc_6050_17_in = ip_dsdk_adapt_bitselect_6050_16_b;
    assign adapt_scalar_trunc_6050_17_q = adapt_scalar_trunc_6050_17_in[0:0];

    // ip_dsdk_adapt_bitselect_6050_14(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect_6050_14_b = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_data[8:8];

    // adapt_scalar_trunc_6050_15(ROUND,3)
    assign adapt_scalar_trunc_6050_15_in = ip_dsdk_adapt_bitselect_6050_14_b;
    assign adapt_scalar_trunc_6050_15_q = adapt_scalar_trunc_6050_15_in[0:0];

    // ip_dsdk_adapt_bitselect_6050_12(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect_6050_12_b = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_data[0:0];

    // adapt_scalar_trunc_6050_13(ROUND,2)
    assign adapt_scalar_trunc_6050_13_in = ip_dsdk_adapt_bitselect_6050_12_b;
    assign adapt_scalar_trunc_6050_13_q = adapt_scalar_trunc_6050_13_in[0:0];

    // sync_out_498_aunroll_x(GPOUT,22)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc_6050_13_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc_6050_15_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc_6050_17_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc_6050_19_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c35_out_for_cond_cleanup4_i_dijkstraparallelids_c35_exit_dijkstraparallelid_6050_0gr_o_valid;

endmodule
