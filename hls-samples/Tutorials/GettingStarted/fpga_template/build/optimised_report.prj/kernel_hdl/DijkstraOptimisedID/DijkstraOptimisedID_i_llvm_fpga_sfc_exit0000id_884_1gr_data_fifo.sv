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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_884_1gr_data_fifo
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_llvm_fpga_sfc_exit0000id_884_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_5164_15_in;
    wire [0:0] adapt_scalar_trunc_5164_15_q;
    wire [0:0] adapt_scalar_trunc_5164_21_in;
    wire [0:0] adapt_scalar_trunc_5164_21_q;
    wire [0:0] adapt_scalar_trunc_5164_23_in;
    wire [0:0] adapt_scalar_trunc_5164_23_q;
    wire [0:0] adapt_scalar_trunc_5164_25_in;
    wire [0:0] adapt_scalar_trunc_5164_25_q;
    wire [0:0] adapt_scalar_trunc_5164_27_in;
    wire [0:0] adapt_scalar_trunc_5164_27_q;
    wire [6:0] c_i7_0_5164_10_q;
    wire [167:0] dsdk_ip_adapt_bitjoin_5164_1_q;
    wire [7:0] element_extension_5164_11_q;
    wire [7:0] element_extension_5164_3_q;
    wire [7:0] element_extension_5164_5_q;
    wire [7:0] element_extension_5164_7_q;
    wire [7:0] element_extension_5164_9_q;
    wire [167:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_almost_empty_bitsignaltemp;
    wire [167:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_5164_14_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5164_16_b;
    wire [63:0] ip_dsdk_adapt_bitselect_5164_18_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5164_20_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5164_22_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5164_24_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5164_26_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5164_28_b;


    // c_i7_0_5164_10(CONSTANT,7)
    assign c_i7_0_5164_10_q = 7'b0000000;

    // element_extension_5164_11(BITJOIN,13)
    assign element_extension_5164_11_q = {c_i7_0_5164_10_q, in_i_data_6_tpl};

    // element_extension_5164_9(BITJOIN,17)
    assign element_extension_5164_9_q = {c_i7_0_5164_10_q, in_i_data_5_tpl};

    // element_extension_5164_7(BITJOIN,16)
    assign element_extension_5164_7_q = {c_i7_0_5164_10_q, in_i_data_4_tpl};

    // element_extension_5164_5(BITJOIN,15)
    assign element_extension_5164_5_q = {c_i7_0_5164_10_q, in_i_data_3_tpl};

    // element_extension_5164_3(BITJOIN,14)
    assign element_extension_5164_3_q = {c_i7_0_5164_10_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_5164_1(BITJOIN,12)
    assign dsdk_ip_adapt_bitjoin_5164_1_q = {in_i_data_7_tpl, element_extension_5164_11_q, element_extension_5164_9_q, element_extension_5164_7_q, element_extension_5164_5_q, in_i_data_2_tpl, in_i_data_1_tpl, element_extension_5164_3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr(EXTIFACE,18)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_data = dsdk_ip_adapt_bitjoin_5164_1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_valid_bitsignaltemp;
    hld_fifo #(
        .ALMOST_EMPTY_CUTOFF(7),
        .DEPTH(512),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .STALL_IN_EARLINESS(3),
        .SYNCHRONIZE_RESET(0),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .WIDTH(168)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_5164_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_80(GPOUT,31)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_5164_28(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect_5164_28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[167:136];

    // ip_dsdk_adapt_bitselect_5164_26(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect_5164_26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[128:128];

    // adapt_scalar_trunc_5164_27(ROUND,6)
    assign adapt_scalar_trunc_5164_27_in = ip_dsdk_adapt_bitselect_5164_26_b;
    assign adapt_scalar_trunc_5164_27_q = adapt_scalar_trunc_5164_27_in[0:0];

    // ip_dsdk_adapt_bitselect_5164_24(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect_5164_24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[120:120];

    // adapt_scalar_trunc_5164_25(ROUND,5)
    assign adapt_scalar_trunc_5164_25_in = ip_dsdk_adapt_bitselect_5164_24_b;
    assign adapt_scalar_trunc_5164_25_q = adapt_scalar_trunc_5164_25_in[0:0];

    // ip_dsdk_adapt_bitselect_5164_22(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect_5164_22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[112:112];

    // adapt_scalar_trunc_5164_23(ROUND,4)
    assign adapt_scalar_trunc_5164_23_in = ip_dsdk_adapt_bitselect_5164_22_b;
    assign adapt_scalar_trunc_5164_23_q = adapt_scalar_trunc_5164_23_in[0:0];

    // ip_dsdk_adapt_bitselect_5164_20(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect_5164_20_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[104:104];

    // adapt_scalar_trunc_5164_21(ROUND,3)
    assign adapt_scalar_trunc_5164_21_in = ip_dsdk_adapt_bitselect_5164_20_b;
    assign adapt_scalar_trunc_5164_21_q = adapt_scalar_trunc_5164_21_in[0:0];

    // ip_dsdk_adapt_bitselect_5164_18(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect_5164_18_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[103:40];

    // ip_dsdk_adapt_bitselect_5164_16(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect_5164_16_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[39:8];

    // ip_dsdk_adapt_bitselect_5164_14(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect_5164_14_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_data[0:0];

    // adapt_scalar_trunc_5164_15(ROUND,2)
    assign adapt_scalar_trunc_5164_15_in = ip_dsdk_adapt_bitselect_5164_14_b;
    assign adapt_scalar_trunc_5164_15_q = adapt_scalar_trunc_5164_15_in[0:0];

    // sync_out_81_aunroll_x(GPOUT,32)@20000000
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc_5164_15_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect_5164_16_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect_5164_18_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc_5164_21_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc_5164_23_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc_5164_25_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc_5164_27_q;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect_5164_28_b;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstraoptimisedids_c0_exit171_dijkstraoptimisedid_5164_0gr_o_valid;

endmodule
