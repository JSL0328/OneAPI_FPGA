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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_3946_1gr_data_fifo
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_llvm_fpga_sfc_exit0000d_3946_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_5594_11_in;
    wire [0:0] adapt_scalar_trunc_5594_11_q;
    wire [0:0] adapt_scalar_trunc_5594_17_in;
    wire [0:0] adapt_scalar_trunc_5594_17_q;
    wire [0:0] adapt_scalar_trunc_5594_19_in;
    wire [0:0] adapt_scalar_trunc_5594_19_q;
    wire [6:0] c_i7_0_5594_4gr_q;
    wire [119:0] dsdk_ip_adapt_bitjoin_5594_1_q;
    wire [7:0] element_extension_5594_3_q;
    wire [7:0] element_extension_5594_5_q;
    wire [7:0] element_extension_5594_7_q;
    wire [119:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_almost_empty_bitsignaltemp;
    wire [119:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_5594_10_b;
    wire [31:0] ip_dsdk_adapt_bitselect_5594_12_b;
    wire [63:0] ip_dsdk_adapt_bitselect_5594_14_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5594_16_b;
    wire [0:0] ip_dsdk_adapt_bitselect_5594_18_b;


    // c_i7_0_5594_4gr(CONSTANT,5)
    assign c_i7_0_5594_4gr_q = 7'b0000000;

    // element_extension_5594_7(BITJOIN,11)
    assign element_extension_5594_7_q = {c_i7_0_5594_4gr_q, in_i_data_4_tpl};

    // element_extension_5594_5(BITJOIN,10)
    assign element_extension_5594_5_q = {c_i7_0_5594_4gr_q, in_i_data_3_tpl};

    // element_extension_5594_3(BITJOIN,9)
    assign element_extension_5594_3_q = {c_i7_0_5594_4gr_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_5594_1(BITJOIN,8)
    assign dsdk_ip_adapt_bitjoin_5594_1_q = {element_extension_5594_7_q, element_extension_5594_5_q, in_i_data_2_tpl, in_i_data_1_tpl, element_extension_5594_3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr(EXTIFACE,12)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_data = dsdk_ip_adapt_bitjoin_5594_1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_valid_bitsignaltemp;
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
        .WIDTH(120)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_5594_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_369(GPOUT,21)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_5594_18(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect_5594_18_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_data[112:112];

    // adapt_scalar_trunc_5594_19(ROUND,4)
    assign adapt_scalar_trunc_5594_19_in = ip_dsdk_adapt_bitselect_5594_18_b;
    assign adapt_scalar_trunc_5594_19_q = adapt_scalar_trunc_5594_19_in[0:0];

    // ip_dsdk_adapt_bitselect_5594_16(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect_5594_16_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_data[104:104];

    // adapt_scalar_trunc_5594_17(ROUND,3)
    assign adapt_scalar_trunc_5594_17_in = ip_dsdk_adapt_bitselect_5594_16_b;
    assign adapt_scalar_trunc_5594_17_q = adapt_scalar_trunc_5594_17_in[0:0];

    // ip_dsdk_adapt_bitselect_5594_14(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect_5594_14_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_data[103:40];

    // ip_dsdk_adapt_bitselect_5594_12(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect_5594_12_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_data[39:8];

    // ip_dsdk_adapt_bitselect_5594_10(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect_5594_10_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_data[0:0];

    // adapt_scalar_trunc_5594_11(ROUND,2)
    assign adapt_scalar_trunc_5594_11_in = ip_dsdk_adapt_bitselect_5594_10_b;
    assign adapt_scalar_trunc_5594_11_q = adapt_scalar_trunc_5594_11_in[0:0];

    // sync_out_370_aunroll_x(GPOUT,22)@20000000
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc_5594_11_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect_5594_12_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect_5594_14_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc_5594_17_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc_5594_19_q;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body93_i_dijkstraoptimisedids_c0_exit327_dijkstraoptimisedid_5594_0gr_o_valid;

endmodule
