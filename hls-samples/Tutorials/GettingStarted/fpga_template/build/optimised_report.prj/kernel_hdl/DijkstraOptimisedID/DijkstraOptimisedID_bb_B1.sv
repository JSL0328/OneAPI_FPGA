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

// SystemVerilog created from bb_DijkstraOptimisedID_B1
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B1 (
    input wire [63:0] in_arg_in_g,
    input wire [63:0] in_arg_out_dist,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe4,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [7:0] out_intel_reserved_ffwd_10_0,
    output wire [7:0] out_intel_reserved_ffwd_11_0,
    output wire [7:0] out_intel_reserved_ffwd_12_0,
    output wire [7:0] out_intel_reserved_ffwd_13_0,
    output wire [7:0] out_intel_reserved_ffwd_14_0,
    output wire [7:0] out_intel_reserved_ffwd_15_0,
    output wire [7:0] out_intel_reserved_ffwd_16_0,
    output wire [7:0] out_intel_reserved_ffwd_17_0,
    output wire [7:0] out_intel_reserved_ffwd_18_0,
    output wire [7:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [7:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] DijkstraOptimisedID_B1_branch_out_c0_exe1;
    wire [31:0] DijkstraOptimisedID_B1_branch_out_c0_exe2;
    wire [0:0] DijkstraOptimisedID_B1_branch_out_c0_exe4;
    wire [0:0] DijkstraOptimisedID_B1_branch_out_stall_out;
    wire [0:0] DijkstraOptimisedID_B1_branch_out_valid_out_0;
    wire [0:0] DijkstraOptimisedID_B1_merge_out_almost_empty_out;
    wire [0:0] DijkstraOptimisedID_B1_merge_out_empty_out;
    wire [0:0] DijkstraOptimisedID_B1_merge_out_stall_out_0;
    wire [0:0] DijkstraOptimisedID_B1_merge_out_valid_out;
    wire [0:0] bb_DijkstraOptimisedID_B1_stall_region_out_almost_empty_out;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe1;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe2;
    wire [0:0] bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe4;
    wire [0:0] bb_DijkstraOptimisedID_B1_stall_region_out_empty_out;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_0_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_10_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_11_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_12_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_13_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_14_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_15_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_16_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_17_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_18_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_1_0;
    wire [7:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_DijkstraOptimisedID_B1_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraOptimisedID_B1_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraOptimisedID_B1_merge(BLACKBOX,3)
    DijkstraOptimisedID_B1_merge theDijkstraOptimisedID_B1_merge (
        .in_stall_in(bb_DijkstraOptimisedID_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(DijkstraOptimisedID_B1_merge_out_almost_empty_out),
        .out_empty_out(DijkstraOptimisedID_B1_merge_out_empty_out),
        .out_stall_out_0(DijkstraOptimisedID_B1_merge_out_stall_out_0),
        .out_valid_out(DijkstraOptimisedID_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraOptimisedID_B1_stall_region(BLACKBOX,4)
    DijkstraOptimisedID_bb_B1_stall_region thebb_DijkstraOptimisedID_B1_stall_region (
        .in_almost_empty_in(DijkstraOptimisedID_B1_merge_out_almost_empty_out),
        .in_empty_in(DijkstraOptimisedID_B1_merge_out_empty_out),
        .in_stall_in(DijkstraOptimisedID_B1_branch_out_stall_out),
        .in_valid_in(DijkstraOptimisedID_B1_merge_out_valid_out),
        .out_almost_empty_out(bb_DijkstraOptimisedID_B1_stall_region_out_almost_empty_out),
        .out_c0_exe1(bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe1),
        .out_c0_exe2(bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe2),
        .out_c0_exe4(bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe4),
        .out_empty_out(bb_DijkstraOptimisedID_B1_stall_region_out_empty_out),
        .out_intel_reserved_ffwd_0_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_2_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_9_0),
        .out_stall_out(bb_DijkstraOptimisedID_B1_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraOptimisedID_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraOptimisedID_B1_branch(BLACKBOX,2)
    DijkstraOptimisedID_B1_branch theDijkstraOptimisedID_B1_branch (
        .in_almost_empty_in(bb_DijkstraOptimisedID_B1_stall_region_out_almost_empty_out),
        .in_c0_exe1(bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe1),
        .in_c0_exe2(bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe2),
        .in_c0_exe4(bb_DijkstraOptimisedID_B1_stall_region_out_c0_exe4),
        .in_empty_in(bb_DijkstraOptimisedID_B1_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraOptimisedID_B1_stall_region_out_valid_out),
        .out_c0_exe1(DijkstraOptimisedID_B1_branch_out_c0_exe1),
        .out_c0_exe2(DijkstraOptimisedID_B1_branch_out_c0_exe2),
        .out_c0_exe4(DijkstraOptimisedID_B1_branch_out_c0_exe4),
        .out_stall_out(DijkstraOptimisedID_B1_branch_out_stall_out),
        .out_valid_out_0(DijkstraOptimisedID_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,9)
    assign out_c0_exe1 = DijkstraOptimisedID_B1_branch_out_c0_exe1;

    // out_c0_exe2(GPOUT,10)
    assign out_c0_exe2 = DijkstraOptimisedID_B1_branch_out_c0_exe2;

    // out_c0_exe4(GPOUT,11)
    assign out_c0_exe4 = DijkstraOptimisedID_B1_branch_out_c0_exe4;

    // out_intel_reserved_ffwd_0_0(GPOUT,12)
    assign out_intel_reserved_ffwd_0_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_10_0(GPOUT,13)
    assign out_intel_reserved_ffwd_10_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,14)
    assign out_intel_reserved_ffwd_11_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,15)
    assign out_intel_reserved_ffwd_12_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,16)
    assign out_intel_reserved_ffwd_13_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,17)
    assign out_intel_reserved_ffwd_14_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,18)
    assign out_intel_reserved_ffwd_15_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,19)
    assign out_intel_reserved_ffwd_16_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,20)
    assign out_intel_reserved_ffwd_17_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,21)
    assign out_intel_reserved_ffwd_18_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,22)
    assign out_intel_reserved_ffwd_19_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,23)
    assign out_intel_reserved_ffwd_1_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,24)
    assign out_intel_reserved_ffwd_20_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,25)
    assign out_intel_reserved_ffwd_2_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,26)
    assign out_intel_reserved_ffwd_3_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,27)
    assign out_intel_reserved_ffwd_4_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,28)
    assign out_intel_reserved_ffwd_5_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,29)
    assign out_intel_reserved_ffwd_6_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,30)
    assign out_intel_reserved_ffwd_7_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,31)
    assign out_intel_reserved_ffwd_8_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,32)
    assign out_intel_reserved_ffwd_9_0 = bb_DijkstraOptimisedID_B1_stall_region_out_intel_reserved_ffwd_9_0;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = DijkstraOptimisedID_B1_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,34)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = DijkstraOptimisedID_B1_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,36)
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
