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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_550_1gr_data_fifo
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_llvm_fpga_sfc_exit_s_c0000id_550_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [63:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [63:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_1987_21_in;
    wire [0:0] adapt_scalar_trunc_1987_21_q;
    wire [0:0] adapt_scalar_trunc_1987_27_in;
    wire [0:0] adapt_scalar_trunc_1987_27_q;
    wire [0:0] adapt_scalar_trunc_1987_29_in;
    wire [0:0] adapt_scalar_trunc_1987_29_q;
    wire [0:0] adapt_scalar_trunc_1987_33_in;
    wire [0:0] adapt_scalar_trunc_1987_33_q;
    wire [0:0] adapt_scalar_trunc_1987_35_in;
    wire [0:0] adapt_scalar_trunc_1987_35_q;
    wire [0:0] adapt_scalar_trunc_1987_37_in;
    wire [0:0] adapt_scalar_trunc_1987_37_q;
    wire [0:0] adapt_scalar_trunc_1987_39_in;
    wire [0:0] adapt_scalar_trunc_1987_39_q;
    wire [0:0] adapt_scalar_trunc_1987_41_in;
    wire [0:0] adapt_scalar_trunc_1987_41_q;
    wire [6:0] c_i7_0_1987_10_q;
    wire [223:0] dsdk_ip_adapt_bitjoin_1987_1_q;
    wire [7:0] element_extension_1987_11_q;
    wire [7:0] element_extension_1987_13_q;
    wire [7:0] element_extension_1987_15_q;
    wire [7:0] element_extension_1987_17_q;
    wire [7:0] element_extension_1987_3_q;
    wire [7:0] element_extension_1987_5_q;
    wire [7:0] element_extension_1987_7_q;
    wire [7:0] element_extension_1987_9_q;
    wire [223:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_almost_full_bitsignaltemp;
    wire [223:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_20_b;
    wire [31:0] ip_dsdk_adapt_bitselect_1987_22_b;
    wire [63:0] ip_dsdk_adapt_bitselect_1987_24_b;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_26_b;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_28_b;
    wire [63:0] ip_dsdk_adapt_bitselect_1987_30_b;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_32_b;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_34_b;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_36_b;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_38_b;
    wire [0:0] ip_dsdk_adapt_bitselect_1987_40_b;


    // c_i7_0_1987_10(CONSTANT,10)
    assign c_i7_0_1987_10_q = 7'b0000000;

    // element_extension_1987_17(BITJOIN,22)
    assign element_extension_1987_17_q = {c_i7_0_1987_10_q, in_i_data_10_tpl};

    // element_extension_1987_15(BITJOIN,21)
    assign element_extension_1987_15_q = {c_i7_0_1987_10_q, in_i_data_9_tpl};

    // element_extension_1987_13(BITJOIN,20)
    assign element_extension_1987_13_q = {c_i7_0_1987_10_q, in_i_data_8_tpl};

    // element_extension_1987_11(BITJOIN,19)
    assign element_extension_1987_11_q = {c_i7_0_1987_10_q, in_i_data_7_tpl};

    // element_extension_1987_9(BITJOIN,26)
    assign element_extension_1987_9_q = {c_i7_0_1987_10_q, in_i_data_6_tpl};

    // element_extension_1987_7(BITJOIN,25)
    assign element_extension_1987_7_q = {c_i7_0_1987_10_q, in_i_data_4_tpl};

    // element_extension_1987_5(BITJOIN,24)
    assign element_extension_1987_5_q = {c_i7_0_1987_10_q, in_i_data_3_tpl};

    // element_extension_1987_3(BITJOIN,23)
    assign element_extension_1987_3_q = {c_i7_0_1987_10_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_1987_1(BITJOIN,18)
    assign dsdk_ip_adapt_bitjoin_1987_1_q = {element_extension_1987_17_q, element_extension_1987_15_q, element_extension_1987_13_q, element_extension_1987_11_q, element_extension_1987_9_q, in_i_data_5_tpl, element_extension_1987_7_q, element_extension_1987_5_q, in_i_data_2_tpl, in_i_data_1_tpl, element_extension_1987_3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr(EXTIFACE,27)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_data = dsdk_ip_adapt_bitjoin_1987_1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(224)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_1987_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_77(GPOUT,43)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_1987_40(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect_1987_40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[216:216];

    // adapt_scalar_trunc_1987_41(ROUND,9)
    assign adapt_scalar_trunc_1987_41_in = ip_dsdk_adapt_bitselect_1987_40_b;
    assign adapt_scalar_trunc_1987_41_q = adapt_scalar_trunc_1987_41_in[0:0];

    // ip_dsdk_adapt_bitselect_1987_38(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect_1987_38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[208:208];

    // adapt_scalar_trunc_1987_39(ROUND,8)
    assign adapt_scalar_trunc_1987_39_in = ip_dsdk_adapt_bitselect_1987_38_b;
    assign adapt_scalar_trunc_1987_39_q = adapt_scalar_trunc_1987_39_in[0:0];

    // ip_dsdk_adapt_bitselect_1987_36(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect_1987_36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[200:200];

    // adapt_scalar_trunc_1987_37(ROUND,7)
    assign adapt_scalar_trunc_1987_37_in = ip_dsdk_adapt_bitselect_1987_36_b;
    assign adapt_scalar_trunc_1987_37_q = adapt_scalar_trunc_1987_37_in[0:0];

    // ip_dsdk_adapt_bitselect_1987_34(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect_1987_34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[192:192];

    // adapt_scalar_trunc_1987_35(ROUND,6)
    assign adapt_scalar_trunc_1987_35_in = ip_dsdk_adapt_bitselect_1987_34_b;
    assign adapt_scalar_trunc_1987_35_q = adapt_scalar_trunc_1987_35_in[0:0];

    // ip_dsdk_adapt_bitselect_1987_32(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect_1987_32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[184:184];

    // adapt_scalar_trunc_1987_33(ROUND,5)
    assign adapt_scalar_trunc_1987_33_in = ip_dsdk_adapt_bitselect_1987_32_b;
    assign adapt_scalar_trunc_1987_33_q = adapt_scalar_trunc_1987_33_in[0:0];

    // ip_dsdk_adapt_bitselect_1987_30(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect_1987_30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[183:120];

    // ip_dsdk_adapt_bitselect_1987_28(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect_1987_28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[112:112];

    // adapt_scalar_trunc_1987_29(ROUND,4)
    assign adapt_scalar_trunc_1987_29_in = ip_dsdk_adapt_bitselect_1987_28_b;
    assign adapt_scalar_trunc_1987_29_q = adapt_scalar_trunc_1987_29_in[0:0];

    // ip_dsdk_adapt_bitselect_1987_26(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect_1987_26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[104:104];

    // adapt_scalar_trunc_1987_27(ROUND,3)
    assign adapt_scalar_trunc_1987_27_in = ip_dsdk_adapt_bitselect_1987_26_b;
    assign adapt_scalar_trunc_1987_27_q = adapt_scalar_trunc_1987_27_in[0:0];

    // ip_dsdk_adapt_bitselect_1987_24(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect_1987_24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[103:40];

    // ip_dsdk_adapt_bitselect_1987_22(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect_1987_22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[39:8];

    // ip_dsdk_adapt_bitselect_1987_20(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect_1987_20_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_data[0:0];

    // adapt_scalar_trunc_1987_21(ROUND,2)
    assign adapt_scalar_trunc_1987_21_in = ip_dsdk_adapt_bitselect_1987_20_b;
    assign adapt_scalar_trunc_1987_21_q = adapt_scalar_trunc_1987_21_in[0:0];

    // sync_out_78_aunroll_x(GPOUT,44)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc_1987_21_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect_1987_22_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect_1987_24_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc_1987_27_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc_1987_29_q;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect_1987_30_b;
    assign out_o_data_6_tpl = adapt_scalar_trunc_1987_33_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc_1987_35_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc_1987_37_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc_1987_39_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc_1987_41_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_1987_0gr_o_valid;

endmodule
