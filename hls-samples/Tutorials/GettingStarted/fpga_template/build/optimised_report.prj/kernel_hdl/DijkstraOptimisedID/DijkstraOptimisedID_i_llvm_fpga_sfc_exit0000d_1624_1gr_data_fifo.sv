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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_1624_1gr_data_fifo
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_llvm_fpga_sfc_exit0000d_1624_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [7:0] out_o_data_1_tpl,
    output wire [7:0] out_o_data_2_tpl,
    output wire [7:0] out_o_data_3_tpl,
    output wire [7:0] out_o_data_4_tpl,
    output wire [7:0] out_o_data_5_tpl,
    output wire [7:0] out_o_data_6_tpl,
    output wire [7:0] out_o_data_7_tpl,
    output wire [7:0] out_o_data_8_tpl,
    output wire [7:0] out_o_data_9_tpl,
    output wire [7:0] out_o_data_10_tpl,
    output wire [7:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [7:0] in_i_data_1_tpl,
    input wire [7:0] in_i_data_2_tpl,
    input wire [7:0] in_i_data_3_tpl,
    input wire [7:0] in_i_data_4_tpl,
    input wire [7:0] in_i_data_5_tpl,
    input wire [7:0] in_i_data_6_tpl,
    input wire [7:0] in_i_data_7_tpl,
    input wire [7:0] in_i_data_8_tpl,
    input wire [7:0] in_i_data_9_tpl,
    input wire [7:0] in_i_data_10_tpl,
    input wire [7:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_5341_7_in;
    wire [0:0] adapt_scalar_trunc_5341_7_q;
    wire [6:0] c_i7_0_5341_4gr_q;
    wire [415:0] dsdk_ip_adapt_bitjoin_5341_1_q;
    wire [7:0] element_extension_5341_3_q;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_almost_empty_bitsignaltemp;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_valid_bitsignaltemp;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_10_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_12_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_14_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_16_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_18_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_20_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_22_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_24_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_26_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_28_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_30_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_32_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_34_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_36_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_38_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_40_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_42_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_44_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_46_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5341_48_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5341_6_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5341_8_b;


    // c_i7_0_5341_4gr(CONSTANT,3)
    assign c_i7_0_5341_4gr_q = 7'b0000000;

    // element_extension_5341_3(BITJOIN,5)
    assign element_extension_5341_3_q = {c_i7_0_5341_4gr_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_5341_1(BITJOIN,4)
    assign dsdk_ip_adapt_bitjoin_5341_1_q = {in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, element_extension_5341_3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr(EXTIFACE,6)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_data = dsdk_ip_adapt_bitjoin_5341_1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_empty[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_valid_bitsignaltemp;
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
        .WIDTH(416)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_5341_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_234(GPOUT,51)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_5341_48(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect_5341_48_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[415:384];

    // ip_dsdk_adapt_bitselect_5341_46(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect_5341_46_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[383:352];

    // ip_dsdk_adapt_bitselect_5341_44(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect_5341_44_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[351:320];

    // ip_dsdk_adapt_bitselect_5341_42(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect_5341_42_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[319:288];

    // ip_dsdk_adapt_bitselect_5341_40(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect_5341_40_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[287:256];

    // ip_dsdk_adapt_bitselect_5341_38(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect_5341_38_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[255:224];

    // ip_dsdk_adapt_bitselect_5341_36(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect_5341_36_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[223:192];

    // ip_dsdk_adapt_bitselect_5341_34(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect_5341_34_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[191:160];

    // ip_dsdk_adapt_bitselect_5341_32(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect_5341_32_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[159:128];

    // ip_dsdk_adapt_bitselect_5341_30(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect_5341_30_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[127:96];

    // ip_dsdk_adapt_bitselect_5341_28(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect_5341_28_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[95:88];

    // ip_dsdk_adapt_bitselect_5341_26(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect_5341_26_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[87:80];

    // ip_dsdk_adapt_bitselect_5341_24(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect_5341_24_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[79:72];

    // ip_dsdk_adapt_bitselect_5341_22(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect_5341_22_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[71:64];

    // ip_dsdk_adapt_bitselect_5341_20(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect_5341_20_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[63:56];

    // ip_dsdk_adapt_bitselect_5341_18(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect_5341_18_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[55:48];

    // ip_dsdk_adapt_bitselect_5341_16(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect_5341_16_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[47:40];

    // ip_dsdk_adapt_bitselect_5341_14(BITSELECT,9)
    assign ip_dsdk_adapt_bitselect_5341_14_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[39:32];

    // ip_dsdk_adapt_bitselect_5341_12(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect_5341_12_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[31:24];

    // ip_dsdk_adapt_bitselect_5341_10(BITSELECT,7)
    assign ip_dsdk_adapt_bitselect_5341_10_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[23:16];

    // ip_dsdk_adapt_bitselect_5341_8(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect_5341_8_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[15:8];

    // ip_dsdk_adapt_bitselect_5341_6(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect_5341_6_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_data[0:0];

    // adapt_scalar_trunc_5341_7(ROUND,2)
    assign adapt_scalar_trunc_5341_7_in = ip_dsdk_adapt_bitselect_5341_6_b;
    assign adapt_scalar_trunc_5341_7_q = adapt_scalar_trunc_5341_7_in[0:0];

    // sync_out_235_aunroll_x(GPOUT,52)@20000000
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc_5341_7_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect_5341_8_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect_5341_10_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect_5341_12_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect_5341_14_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect_5341_16_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect_5341_18_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect_5341_20_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect_5341_22_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect_5341_24_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect_5341_26_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect_5341_28_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect_5341_30_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect_5341_32_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect_5341_34_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect_5341_36_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect_5341_38_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect_5341_40_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect_5341_42_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect_5341_44_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect_5341_46_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect_5341_48_b;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body29_i_dijkstraoptimisedids_c1_exit199_dijkstraoptimisedid_5341_0gr_o_valid;

endmodule
