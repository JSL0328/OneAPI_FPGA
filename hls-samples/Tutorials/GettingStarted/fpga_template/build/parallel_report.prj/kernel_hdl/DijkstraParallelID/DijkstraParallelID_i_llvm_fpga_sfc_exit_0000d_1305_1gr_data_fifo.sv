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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_1305_1gr_data_fifo
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_llvm_fpga_sfc_exit_0000d_1305_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_5725_15_in;
    wire [0:0] adapt_scalar_trunc_5725_15_q;
    wire [0:0] adapt_scalar_trunc_5725_17_in;
    wire [0:0] adapt_scalar_trunc_5725_17_q;
    wire [0:0] adapt_scalar_trunc_5725_19_in;
    wire [0:0] adapt_scalar_trunc_5725_19_q;
    wire [0:0] adapt_scalar_trunc_5725_21_in;
    wire [0:0] adapt_scalar_trunc_5725_21_q;
    wire [0:0] adapt_scalar_trunc_5725_23_in;
    wire [0:0] adapt_scalar_trunc_5725_23_q;
    wire [6:0] c_i7_0_5725_10_q;
    wire [39:0] dsdk_ip_adapt_bitjoin_5725_1_q;
    wire [7:0] element_extension_5725_11_q;
    wire [7:0] element_extension_5725_3_q;
    wire [7:0] element_extension_5725_5_q;
    wire [7:0] element_extension_5725_7_q;
    wire [7:0] element_extension_5725_9_q;
    wire [39:0] i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_almost_full_bitsignaltemp;
    wire [39:0] i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_5725_14_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5725_16_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5725_18_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5725_20_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5725_22_b;


    // c_i7_0_5725_10(CONSTANT,7)
    assign c_i7_0_5725_10_q = 7'b0000000;

    // element_extension_5725_11(BITJOIN,13)
    assign element_extension_5725_11_q = {c_i7_0_5725_10_q, in_i_data_4_tpl};

    // element_extension_5725_9(BITJOIN,17)
    assign element_extension_5725_9_q = {c_i7_0_5725_10_q, in_i_data_3_tpl};

    // element_extension_5725_7(BITJOIN,16)
    assign element_extension_5725_7_q = {c_i7_0_5725_10_q, in_i_data_2_tpl};

    // element_extension_5725_5(BITJOIN,15)
    assign element_extension_5725_5_q = {c_i7_0_5725_10_q, in_i_data_1_tpl};

    // element_extension_5725_3(BITJOIN,14)
    assign element_extension_5725_3_q = {c_i7_0_5725_10_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_5725_1(BITJOIN,12)
    assign dsdk_ip_adapt_bitjoin_5725_1_q = {element_extension_5725_11_q, element_extension_5725_9_q, element_extension_5725_7_q, element_extension_5725_5_q, element_extension_5725_3_q};

    // i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr(EXTIFACE,18)
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_data = dsdk_ip_adapt_bitjoin_5725_1_q;
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(40)
    ) thei_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_5725_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_362(GPOUT,25)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_5725_22(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect_5725_22_b = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_data[32:32];

    // adapt_scalar_trunc_5725_23(ROUND,6)
    assign adapt_scalar_trunc_5725_23_in = ip_dsdk_adapt_bitselect_5725_22_b;
    assign adapt_scalar_trunc_5725_23_q = adapt_scalar_trunc_5725_23_in[0:0];

    // ip_dsdk_adapt_bitselect_5725_20(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect_5725_20_b = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_data[24:24];

    // adapt_scalar_trunc_5725_21(ROUND,5)
    assign adapt_scalar_trunc_5725_21_in = ip_dsdk_adapt_bitselect_5725_20_b;
    assign adapt_scalar_trunc_5725_21_q = adapt_scalar_trunc_5725_21_in[0:0];

    // ip_dsdk_adapt_bitselect_5725_18(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect_5725_18_b = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_data[16:16];

    // adapt_scalar_trunc_5725_19(ROUND,4)
    assign adapt_scalar_trunc_5725_19_in = ip_dsdk_adapt_bitselect_5725_18_b;
    assign adapt_scalar_trunc_5725_19_q = adapt_scalar_trunc_5725_19_in[0:0];

    // ip_dsdk_adapt_bitselect_5725_16(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect_5725_16_b = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_data[8:8];

    // adapt_scalar_trunc_5725_17(ROUND,3)
    assign adapt_scalar_trunc_5725_17_in = ip_dsdk_adapt_bitselect_5725_16_b;
    assign adapt_scalar_trunc_5725_17_q = adapt_scalar_trunc_5725_17_in[0:0];

    // ip_dsdk_adapt_bitselect_5725_14(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect_5725_14_b = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_data[0:0];

    // adapt_scalar_trunc_5725_15(ROUND,2)
    assign adapt_scalar_trunc_5725_15_in = ip_dsdk_adapt_bitselect_5725_14_b;
    assign adapt_scalar_trunc_5725_15_q = adapt_scalar_trunc_5725_15_in[0:0];

    // sync_out_363_aunroll_x(GPOUT,26)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc_5725_15_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc_5725_17_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc_5725_19_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc_5725_21_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc_5725_23_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c25_out_for_cond_cleanup4_i_dijkstraparallelids_c25_exit_dijkstraparallelid_5725_0gr_o_valid;

endmodule
