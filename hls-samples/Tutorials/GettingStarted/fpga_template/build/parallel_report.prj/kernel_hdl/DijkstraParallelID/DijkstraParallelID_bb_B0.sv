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

// SystemVerilog created from bb_DijkstraParallelID_B0
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_bb_B0 (
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraParallelID_B0_branch_out_stall_out;
    wire [0:0] DijkstraParallelID_B0_branch_out_valid_out_0;
    wire [0:0] DijkstraParallelID_B0_merge_out_stall_out_0;
    wire [0:0] DijkstraParallelID_B0_merge_out_valid_out;
    wire [63:0] bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_DijkstraParallelID_B0_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraParallelID_B0_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraParallelID_B0_merge(BLACKBOX,3)
    DijkstraParallelID_B0_merge theDijkstraParallelID_B0_merge (
        .in_stall_in(bb_DijkstraParallelID_B0_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(DijkstraParallelID_B0_merge_out_stall_out_0),
        .out_valid_out(DijkstraParallelID_B0_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraParallelID_B0_branch(BLACKBOX,2)
    DijkstraParallelID_B0_branch theDijkstraParallelID_B0_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraParallelID_B0_stall_region_out_valid_out),
        .out_stall_out(DijkstraParallelID_B0_branch_out_stall_out),
        .out_valid_out_0(DijkstraParallelID_B0_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraParallelID_B0_stall_region(BLACKBOX,4)
    DijkstraParallelID_bb_B0_stall_region thebb_DijkstraParallelID_B0_stall_region (
        .in_arg_dist(in_arg_dist),
        .in_stall_in(DijkstraParallelID_B0_branch_out_stall_out),
        .in_valid_in(DijkstraParallelID_B0_merge_out_valid_out),
        .out_intel_reserved_ffwd_0_0(bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_4_0),
        .out_stall_out(bb_DijkstraParallelID_B0_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraParallelID_B0_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_0_0(GPOUT,10)
    assign out_intel_reserved_ffwd_0_0 = bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,11)
    assign out_intel_reserved_ffwd_1_0 = bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,12)
    assign out_intel_reserved_ffwd_2_0 = bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,13)
    assign out_intel_reserved_ffwd_3_0 = bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,14)
    assign out_intel_reserved_ffwd_4_0 = bb_DijkstraParallelID_B0_stall_region_out_intel_reserved_ffwd_4_0;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = DijkstraParallelID_B0_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = DijkstraParallelID_B0_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,17)
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
