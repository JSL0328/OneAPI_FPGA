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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_3616_1gr_data_fifo
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_llvm_fpga_sfc_exit0000d_3616_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [7:0] out_o_data_11_tpl,
    output wire [7:0] out_o_data_12_tpl,
    output wire [7:0] out_o_data_13_tpl,
    output wire [7:0] out_o_data_14_tpl,
    output wire [7:0] out_o_data_15_tpl,
    output wire [7:0] out_o_data_16_tpl,
    output wire [7:0] out_o_data_17_tpl,
    output wire [7:0] out_o_data_18_tpl,
    output wire [7:0] out_o_data_19_tpl,
    output wire [7:0] out_o_data_20_tpl,
    output wire [7:0] out_o_data_21_tpl,
    output wire [31:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [0:0] out_o_data_28_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [7:0] in_i_data_11_tpl,
    input wire [7:0] in_i_data_12_tpl,
    input wire [7:0] in_i_data_13_tpl,
    input wire [7:0] in_i_data_14_tpl,
    input wire [7:0] in_i_data_15_tpl,
    input wire [7:0] in_i_data_16_tpl,
    input wire [7:0] in_i_data_17_tpl,
    input wire [7:0] in_i_data_18_tpl,
    input wire [7:0] in_i_data_19_tpl,
    input wire [7:0] in_i_data_20_tpl,
    input wire [7:0] in_i_data_21_tpl,
    input wire [31:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [0:0] in_i_data_28_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_5492_17_in;
    wire [0:0] adapt_scalar_trunc_5492_17_q;
    wire [0:0] adapt_scalar_trunc_5492_65_in;
    wire [0:0] adapt_scalar_trunc_5492_65_q;
    wire [0:0] adapt_scalar_trunc_5492_67_in;
    wire [0:0] adapt_scalar_trunc_5492_67_q;
    wire [0:0] adapt_scalar_trunc_5492_69_in;
    wire [0:0] adapt_scalar_trunc_5492_69_q;
    wire [0:0] adapt_scalar_trunc_5492_71_in;
    wire [0:0] adapt_scalar_trunc_5492_71_q;
    wire [0:0] adapt_scalar_trunc_5492_73_in;
    wire [0:0] adapt_scalar_trunc_5492_73_q;
    wire [6:0] c_i7_0_5492_10_q;
    wire [519:0] dsdk_ip_adapt_bitjoin_5492_1_q;
    wire [7:0] element_extension_5492_11_q;
    wire [7:0] element_extension_5492_13_q;
    wire [7:0] element_extension_5492_3_q;
    wire [7:0] element_extension_5492_5_q;
    wire [7:0] element_extension_5492_7_q;
    wire [7:0] element_extension_5492_9_q;
    wire [519:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_almost_empty_bitsignaltemp;
    wire [519:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_5492_16_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_18_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_20_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_22_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_24_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_26_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_28_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_30_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_32_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_34_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_36_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_38_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_40_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_42_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_44_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_46_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_48_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_50_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_52_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_54_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_56_b;
    wire [7:0] ip_dsdk_adapt_bitselect_5492_58_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_60_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5492_62_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5492_64_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5492_66_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5492_68_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5492_70_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5492_72_b;


    // c_i7_0_5492_10(CONSTANT,8)
    assign c_i7_0_5492_10_q = 7'b0000000;

    // element_extension_5492_13(BITJOIN,16)
    assign element_extension_5492_13_q = {c_i7_0_5492_10_q, in_i_data_28_tpl};

    // element_extension_5492_11(BITJOIN,15)
    assign element_extension_5492_11_q = {c_i7_0_5492_10_q, in_i_data_27_tpl};

    // element_extension_5492_9(BITJOIN,20)
    assign element_extension_5492_9_q = {c_i7_0_5492_10_q, in_i_data_26_tpl};

    // element_extension_5492_7(BITJOIN,19)
    assign element_extension_5492_7_q = {c_i7_0_5492_10_q, in_i_data_25_tpl};

    // element_extension_5492_5(BITJOIN,18)
    assign element_extension_5492_5_q = {c_i7_0_5492_10_q, in_i_data_24_tpl};

    // element_extension_5492_3(BITJOIN,17)
    assign element_extension_5492_3_q = {c_i7_0_5492_10_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_5492_1(BITJOIN,14)
    assign dsdk_ip_adapt_bitjoin_5492_1_q = {element_extension_5492_13_q, element_extension_5492_11_q, element_extension_5492_9_q, element_extension_5492_7_q, element_extension_5492_5_q, in_i_data_23_tpl, in_i_data_22_tpl, in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, element_extension_5492_3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr(EXTIFACE,21)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_data = dsdk_ip_adapt_bitjoin_5492_1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_valid_bitsignaltemp;
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
        .WIDTH(520)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_5492_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_346(GPOUT,75)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_5492_72(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect_5492_72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[512:512];

    // adapt_scalar_trunc_5492_73(ROUND,7)
    assign adapt_scalar_trunc_5492_73_in = ip_dsdk_adapt_bitselect_5492_72_b;
    assign adapt_scalar_trunc_5492_73_q = adapt_scalar_trunc_5492_73_in[0:0];

    // ip_dsdk_adapt_bitselect_5492_70(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect_5492_70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[504:504];

    // adapt_scalar_trunc_5492_71(ROUND,6)
    assign adapt_scalar_trunc_5492_71_in = ip_dsdk_adapt_bitselect_5492_70_b;
    assign adapt_scalar_trunc_5492_71_q = adapt_scalar_trunc_5492_71_in[0:0];

    // ip_dsdk_adapt_bitselect_5492_68(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect_5492_68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[496:496];

    // adapt_scalar_trunc_5492_69(ROUND,5)
    assign adapt_scalar_trunc_5492_69_in = ip_dsdk_adapt_bitselect_5492_68_b;
    assign adapt_scalar_trunc_5492_69_q = adapt_scalar_trunc_5492_69_in[0:0];

    // ip_dsdk_adapt_bitselect_5492_66(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect_5492_66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[488:488];

    // adapt_scalar_trunc_5492_67(ROUND,4)
    assign adapt_scalar_trunc_5492_67_in = ip_dsdk_adapt_bitselect_5492_66_b;
    assign adapt_scalar_trunc_5492_67_q = adapt_scalar_trunc_5492_67_in[0:0];

    // ip_dsdk_adapt_bitselect_5492_64(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect_5492_64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[480:480];

    // adapt_scalar_trunc_5492_65(ROUND,3)
    assign adapt_scalar_trunc_5492_65_in = ip_dsdk_adapt_bitselect_5492_64_b;
    assign adapt_scalar_trunc_5492_65_q = adapt_scalar_trunc_5492_65_in[0:0];

    // ip_dsdk_adapt_bitselect_5492_62(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect_5492_62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[479:448];

    // ip_dsdk_adapt_bitselect_5492_60(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect_5492_60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[447:416];

    // ip_dsdk_adapt_bitselect_5492_58(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect_5492_58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[415:408];

    // ip_dsdk_adapt_bitselect_5492_56(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect_5492_56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[407:400];

    // ip_dsdk_adapt_bitselect_5492_54(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect_5492_54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[399:392];

    // ip_dsdk_adapt_bitselect_5492_52(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect_5492_52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[391:384];

    // ip_dsdk_adapt_bitselect_5492_50(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect_5492_50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[383:376];

    // ip_dsdk_adapt_bitselect_5492_48(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect_5492_48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[375:368];

    // ip_dsdk_adapt_bitselect_5492_46(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect_5492_46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[367:360];

    // ip_dsdk_adapt_bitselect_5492_44(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect_5492_44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[359:352];

    // ip_dsdk_adapt_bitselect_5492_42(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect_5492_42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[351:344];

    // ip_dsdk_adapt_bitselect_5492_40(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect_5492_40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[343:336];

    // ip_dsdk_adapt_bitselect_5492_38(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect_5492_38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[335:328];

    // ip_dsdk_adapt_bitselect_5492_36(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect_5492_36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[327:296];

    // ip_dsdk_adapt_bitselect_5492_34(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect_5492_34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[295:264];

    // ip_dsdk_adapt_bitselect_5492_32(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect_5492_32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[263:232];

    // ip_dsdk_adapt_bitselect_5492_30(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect_5492_30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[231:200];

    // ip_dsdk_adapt_bitselect_5492_28(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect_5492_28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[199:168];

    // ip_dsdk_adapt_bitselect_5492_26(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect_5492_26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[167:136];

    // ip_dsdk_adapt_bitselect_5492_24(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect_5492_24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[135:104];

    // ip_dsdk_adapt_bitselect_5492_22(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect_5492_22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[103:72];

    // ip_dsdk_adapt_bitselect_5492_20(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect_5492_20_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[71:40];

    // ip_dsdk_adapt_bitselect_5492_18(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect_5492_18_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[39:8];

    // ip_dsdk_adapt_bitselect_5492_16(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect_5492_16_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_data[0:0];

    // adapt_scalar_trunc_5492_17(ROUND,2)
    assign adapt_scalar_trunc_5492_17_in = ip_dsdk_adapt_bitselect_5492_16_b;
    assign adapt_scalar_trunc_5492_17_q = adapt_scalar_trunc_5492_17_in[0:0];

    // sync_out_347_aunroll_x(GPOUT,76)@20000000
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc_5492_17_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect_5492_18_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect_5492_20_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect_5492_22_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect_5492_24_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect_5492_26_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect_5492_28_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect_5492_30_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect_5492_32_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect_5492_34_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect_5492_36_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect_5492_38_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect_5492_40_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect_5492_42_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect_5492_44_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect_5492_46_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect_5492_48_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect_5492_50_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect_5492_52_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect_5492_54_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect_5492_56_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect_5492_58_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect_5492_60_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect_5492_62_b;
    assign out_o_data_24_tpl = adapt_scalar_trunc_5492_65_q;
    assign out_o_data_25_tpl = adapt_scalar_trunc_5492_67_q;
    assign out_o_data_26_tpl = adapt_scalar_trunc_5492_69_q;
    assign out_o_data_27_tpl = adapt_scalar_trunc_5492_71_q;
    assign out_o_data_28_tpl = adapt_scalar_trunc_5492_73_q;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body34_i_dijkstraoptimisedids_c0_exit297_dijkstraoptimisedid_5492_0gr_o_valid;

endmodule
