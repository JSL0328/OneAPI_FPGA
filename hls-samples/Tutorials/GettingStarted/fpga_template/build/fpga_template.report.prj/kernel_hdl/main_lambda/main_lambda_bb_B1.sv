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

// SystemVerilog created from bb_main_lambda_B1
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_bb_B1 (
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_b,
    input wire [63:0] in_arg_c,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_main_lambda_B1_stall_region_out_c0_exe1;
    wire [0:0] bb_main_lambda_B1_stall_region_out_c0_exe3;
    wire [0:0] bb_main_lambda_B1_stall_region_out_c0_exe4;
    wire [0:0] bb_main_lambda_B1_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_main_lambda_B1_stall_region_out_stall_out;
    wire [0:0] bb_main_lambda_B1_stall_region_out_valid_out;
    wire [31:0] main_lambda_B1_branch_out_c0_exe1;
    wire [0:0] main_lambda_B1_branch_out_c0_exe3;
    wire [0:0] main_lambda_B1_branch_out_c0_exe4;
    wire [0:0] main_lambda_B1_branch_out_stall_out;
    wire [0:0] main_lambda_B1_branch_out_valid_out_0;
    wire [0:0] main_lambda_B1_merge_out_stall_out_0;
    wire [0:0] main_lambda_B1_merge_out_stall_out_1;
    wire [0:0] main_lambda_B1_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // main_lambda_B1_merge(BLACKBOX,4)
    main_lambda_B1_merge themain_lambda_B1_merge (
        .in_stall_in(bb_main_lambda_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(main_lambda_B1_merge_out_stall_out_0),
        .out_stall_out_1(main_lambda_B1_merge_out_stall_out_1),
        .out_valid_out(main_lambda_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B1_stall_region(BLACKBOX,2)
    main_lambda_bb_B1_stall_region thebb_main_lambda_B1_stall_region (
        .in_stall_in(main_lambda_B1_branch_out_stall_out),
        .in_valid_in(main_lambda_B1_merge_out_valid_out),
        .out_c0_exe1(bb_main_lambda_B1_stall_region_out_c0_exe1),
        .out_c0_exe3(bb_main_lambda_B1_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_main_lambda_B1_stall_region_out_c0_exe4),
        .out_profile_loop_o_valid(bb_main_lambda_B1_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_main_lambda_B1_stall_region_out_stall_out),
        .out_valid_out(bb_main_lambda_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // main_lambda_B1_branch(BLACKBOX,3)
    main_lambda_B1_branch themain_lambda_B1_branch (
        .in_c0_exe1(bb_main_lambda_B1_stall_region_out_c0_exe1),
        .in_c0_exe3(bb_main_lambda_B1_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_main_lambda_B1_stall_region_out_c0_exe4),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_main_lambda_B1_stall_region_out_valid_out),
        .out_c0_exe1(main_lambda_B1_branch_out_c0_exe1),
        .out_c0_exe3(main_lambda_B1_branch_out_c0_exe3),
        .out_c0_exe4(main_lambda_B1_branch_out_c0_exe4),
        .out_stall_out(main_lambda_B1_branch_out_stall_out),
        .out_valid_out_0(main_lambda_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,11)
    assign out_c0_exe1 = main_lambda_B1_branch_out_c0_exe1;

    // out_c0_exe3(GPOUT,12)
    assign out_c0_exe3 = main_lambda_B1_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,13)
    assign out_c0_exe4 = main_lambda_B1_branch_out_c0_exe4;

    // out_profile_loop_o_valid(GPOUT,14)
    assign out_profile_loop_o_valid = bb_main_lambda_B1_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = main_lambda_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,16)
    assign out_stall_out_1 = main_lambda_B1_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,17)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = main_lambda_B1_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,19)
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
