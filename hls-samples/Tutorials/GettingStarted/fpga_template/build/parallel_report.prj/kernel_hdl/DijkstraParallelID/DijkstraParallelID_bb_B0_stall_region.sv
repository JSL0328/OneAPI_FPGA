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

// SystemVerilog created from bb_DijkstraParallelID_B0_stall_region
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_bb_B0_stall_region (
    input wire [63:0] in_arg_dist,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] DijkstraParallelID_B0_merge_reg_out_stall_out;
    wire [0:0] DijkstraParallelID_B0_merge_reg_out_valid_out;
    wire [63:0] i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_o_valid;
    wire [0:0] SE_out_DijkstraParallelID_B0_merge_reg_wireValid;
    wire [0:0] SE_out_DijkstraParallelID_B0_merge_reg_backStall;
    wire [0:0] SE_out_DijkstraParallelID_B0_merge_reg_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_stall_entry(STALLENABLE,29)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = DijkstraParallelID_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // DijkstraParallelID_B0_merge_reg(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    DijkstraParallelID_B0_merge_reg theDijkstraParallelID_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_DijkstraParallelID_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(DijkstraParallelID_B0_merge_reg_out_stall_out),
        .out_valid_out(DijkstraParallelID_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_DijkstraParallelID_B0_merge_reg(STALLENABLE,28)
    // Valid signal propagation
    assign SE_out_DijkstraParallelID_B0_merge_reg_V0 = SE_out_DijkstraParallelID_B0_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_DijkstraParallelID_B0_merge_reg_backStall = i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_o_stall | ~ (SE_out_DijkstraParallelID_B0_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_DijkstraParallelID_B0_merge_reg_wireValid = DijkstraParallelID_B0_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x(STALLENABLE,32)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_wireValid = i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x(BLACKBOX,23)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit_0_tpl@7
    DijkstraParallelID_i_sfc_s_c0_in_entry_d0000traparallelid_27_0gr thei_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_i_stall(SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_backStall),
        .in_i_valid(SE_out_DijkstraParallelID_B0_merge_reg_V0),
        .in_unnamed_DijkstraParallelID0_0_tpl(GND_q),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_o_stall(i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,12)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out_83(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // sync_out_84(GPOUT,17)@7
    assign out_valid_out = SE_out_i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_V0;

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_1_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_27_0gr_aunroll_x_out_intel_reserved_ffwd_4_0;

    // rst_sync(RESETSYNC,39)
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
