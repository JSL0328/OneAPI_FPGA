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

// SystemVerilog created from bb_main_lambda_B2
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_bb_B2 (
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_b,
    input wire [63:0] in_arg_c,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked2635_0,
    input wire [0:0] in_forked2635_1,
    input wire [63:0] in_load2_pre_main_lambda_avm_readdata,
    input wire [0:0] in_load2_pre_main_lambda_avm_readdatavalid,
    input wire [0:0] in_load2_pre_main_lambda_avm_waitrequest,
    input wire [0:0] in_load2_pre_main_lambda_avm_writeack,
    input wire [0:0] in_notcmp2038_0,
    input wire [0:0] in_notcmp2038_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_main_lambda0_0,
    input wire [31:0] in_unnamed_main_lambda0_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe160,
    output wire [31:0] out_c0_exe261,
    output wire [31:0] out_c0_exe362,
    output wire [63:0] out_c0_exe463,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_load2_pre,
    output wire [40:0] out_load2_pre_main_lambda_avm_address,
    output wire [0:0] out_load2_pre_main_lambda_avm_burstcount,
    output wire [7:0] out_load2_pre_main_lambda_avm_byteenable,
    output wire [0:0] out_load2_pre_main_lambda_avm_enable,
    output wire [0:0] out_load2_pre_main_lambda_avm_read,
    output wire [0:0] out_load2_pre_main_lambda_avm_write,
    output wire [63:0] out_load2_pre_main_lambda_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_main_lambda_B2_stall_region_out_c0_exe160;
    wire [31:0] bb_main_lambda_B2_stall_region_out_c0_exe261;
    wire [31:0] bb_main_lambda_B2_stall_region_out_c0_exe362;
    wire [63:0] bb_main_lambda_B2_stall_region_out_c0_exe463;
    wire [0:0] bb_main_lambda_B2_stall_region_out_c0_exe6;
    wire [0:0] bb_main_lambda_B2_stall_region_out_c0_exe7;
    wire [0:0] bb_main_lambda_B2_stall_region_out_c0_exe8;
    wire [0:0] bb_main_lambda_B2_stall_region_out_c0_exe9;
    wire [31:0] bb_main_lambda_B2_stall_region_out_load2_pre;
    wire [40:0] bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_writedata;
    wire [0:0] bb_main_lambda_B2_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_main_lambda_B2_stall_region_out_stall_out;
    wire [0:0] bb_main_lambda_B2_stall_region_out_valid_out;
    wire [31:0] main_lambda_B2_branch_out_c0_exe160;
    wire [31:0] main_lambda_B2_branch_out_c0_exe261;
    wire [31:0] main_lambda_B2_branch_out_c0_exe362;
    wire [63:0] main_lambda_B2_branch_out_c0_exe463;
    wire [0:0] main_lambda_B2_branch_out_c0_exe6;
    wire [0:0] main_lambda_B2_branch_out_c0_exe7;
    wire [0:0] main_lambda_B2_branch_out_c0_exe8;
    wire [0:0] main_lambda_B2_branch_out_c0_exe9;
    wire [31:0] main_lambda_B2_branch_out_load2_pre;
    wire [0:0] main_lambda_B2_branch_out_stall_out;
    wire [0:0] main_lambda_B2_branch_out_valid_out_0;
    wire [0:0] main_lambda_B2_merge_out_forked2635;
    wire [0:0] main_lambda_B2_merge_out_notcmp2038;
    wire [0:0] main_lambda_B2_merge_out_stall_out_0;
    wire [0:0] main_lambda_B2_merge_out_stall_out_1;
    wire [31:0] main_lambda_B2_merge_out_unnamed_main_lambda0;
    wire [0:0] main_lambda_B2_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // main_lambda_B2_merge(BLACKBOX,4)
    main_lambda_B2_merge themain_lambda_B2_merge (
        .in_forked2635_0(in_forked2635_0),
        .in_forked2635_1(in_forked2635_1),
        .in_notcmp2038_0(in_notcmp2038_0),
        .in_notcmp2038_1(in_notcmp2038_1),
        .in_stall_in(bb_main_lambda_B2_stall_region_out_stall_out),
        .in_unnamed_main_lambda0_0(in_unnamed_main_lambda0_0),
        .in_unnamed_main_lambda0_1(in_unnamed_main_lambda0_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked2635(main_lambda_B2_merge_out_forked2635),
        .out_notcmp2038(main_lambda_B2_merge_out_notcmp2038),
        .out_stall_out_0(main_lambda_B2_merge_out_stall_out_0),
        .out_stall_out_1(main_lambda_B2_merge_out_stall_out_1),
        .out_unnamed_main_lambda0(main_lambda_B2_merge_out_unnamed_main_lambda0),
        .out_valid_out(main_lambda_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B2_stall_region(BLACKBOX,2)
    main_lambda_bb_B2_stall_region thebb_main_lambda_B2_stall_region (
        .in_arg_c(in_arg_c),
        .in_flush(in_flush),
        .in_forked2635(main_lambda_B2_merge_out_forked2635),
        .in_load2_pre_main_lambda_avm_readdata(in_load2_pre_main_lambda_avm_readdata),
        .in_load2_pre_main_lambda_avm_readdatavalid(in_load2_pre_main_lambda_avm_readdatavalid),
        .in_load2_pre_main_lambda_avm_waitrequest(in_load2_pre_main_lambda_avm_waitrequest),
        .in_load2_pre_main_lambda_avm_writeack(in_load2_pre_main_lambda_avm_writeack),
        .in_notcmp2038(main_lambda_B2_merge_out_notcmp2038),
        .in_stall_in(main_lambda_B2_branch_out_stall_out),
        .in_unnamed_main_lambda0(main_lambda_B2_merge_out_unnamed_main_lambda0),
        .in_valid_in(main_lambda_B2_merge_out_valid_out),
        .out_c0_exe160(bb_main_lambda_B2_stall_region_out_c0_exe160),
        .out_c0_exe261(bb_main_lambda_B2_stall_region_out_c0_exe261),
        .out_c0_exe362(bb_main_lambda_B2_stall_region_out_c0_exe362),
        .out_c0_exe463(bb_main_lambda_B2_stall_region_out_c0_exe463),
        .out_c0_exe6(bb_main_lambda_B2_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_main_lambda_B2_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_main_lambda_B2_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_main_lambda_B2_stall_region_out_c0_exe9),
        .out_load2_pre(bb_main_lambda_B2_stall_region_out_load2_pre),
        .out_load2_pre_main_lambda_avm_address(bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_address),
        .out_load2_pre_main_lambda_avm_burstcount(bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_burstcount),
        .out_load2_pre_main_lambda_avm_byteenable(bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_byteenable),
        .out_load2_pre_main_lambda_avm_enable(bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_enable),
        .out_load2_pre_main_lambda_avm_read(bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_read),
        .out_load2_pre_main_lambda_avm_write(bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_write),
        .out_load2_pre_main_lambda_avm_writedata(bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_writedata),
        .out_profile_loop_o_valid(bb_main_lambda_B2_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_main_lambda_B2_stall_region_out_stall_out),
        .out_valid_out(bb_main_lambda_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // main_lambda_B2_branch(BLACKBOX,3)
    main_lambda_B2_branch themain_lambda_B2_branch (
        .in_c0_exe160(bb_main_lambda_B2_stall_region_out_c0_exe160),
        .in_c0_exe261(bb_main_lambda_B2_stall_region_out_c0_exe261),
        .in_c0_exe362(bb_main_lambda_B2_stall_region_out_c0_exe362),
        .in_c0_exe463(bb_main_lambda_B2_stall_region_out_c0_exe463),
        .in_c0_exe6(bb_main_lambda_B2_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_main_lambda_B2_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_main_lambda_B2_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_main_lambda_B2_stall_region_out_c0_exe9),
        .in_load2_pre(bb_main_lambda_B2_stall_region_out_load2_pre),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_main_lambda_B2_stall_region_out_valid_out),
        .out_c0_exe160(main_lambda_B2_branch_out_c0_exe160),
        .out_c0_exe261(main_lambda_B2_branch_out_c0_exe261),
        .out_c0_exe362(main_lambda_B2_branch_out_c0_exe362),
        .out_c0_exe463(main_lambda_B2_branch_out_c0_exe463),
        .out_c0_exe6(main_lambda_B2_branch_out_c0_exe6),
        .out_c0_exe7(main_lambda_B2_branch_out_c0_exe7),
        .out_c0_exe8(main_lambda_B2_branch_out_c0_exe8),
        .out_c0_exe9(main_lambda_B2_branch_out_c0_exe9),
        .out_load2_pre(main_lambda_B2_branch_out_load2_pre),
        .out_stall_out(main_lambda_B2_branch_out_stall_out),
        .out_valid_out_0(main_lambda_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe160(GPOUT,22)
    assign out_c0_exe160 = main_lambda_B2_branch_out_c0_exe160;

    // out_c0_exe261(GPOUT,23)
    assign out_c0_exe261 = main_lambda_B2_branch_out_c0_exe261;

    // out_c0_exe362(GPOUT,24)
    assign out_c0_exe362 = main_lambda_B2_branch_out_c0_exe362;

    // out_c0_exe463(GPOUT,25)
    assign out_c0_exe463 = main_lambda_B2_branch_out_c0_exe463;

    // out_c0_exe6(GPOUT,26)
    assign out_c0_exe6 = main_lambda_B2_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,27)
    assign out_c0_exe7 = main_lambda_B2_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,28)
    assign out_c0_exe8 = main_lambda_B2_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,29)
    assign out_c0_exe9 = main_lambda_B2_branch_out_c0_exe9;

    // out_load2_pre(GPOUT,30)
    assign out_load2_pre = main_lambda_B2_branch_out_load2_pre;

    // out_load2_pre_main_lambda_avm_address(GPOUT,31)
    assign out_load2_pre_main_lambda_avm_address = bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_address;

    // out_load2_pre_main_lambda_avm_burstcount(GPOUT,32)
    assign out_load2_pre_main_lambda_avm_burstcount = bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_burstcount;

    // out_load2_pre_main_lambda_avm_byteenable(GPOUT,33)
    assign out_load2_pre_main_lambda_avm_byteenable = bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_byteenable;

    // out_load2_pre_main_lambda_avm_enable(GPOUT,34)
    assign out_load2_pre_main_lambda_avm_enable = bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_enable;

    // out_load2_pre_main_lambda_avm_read(GPOUT,35)
    assign out_load2_pre_main_lambda_avm_read = bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_read;

    // out_load2_pre_main_lambda_avm_write(GPOUT,36)
    assign out_load2_pre_main_lambda_avm_write = bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_write;

    // out_load2_pre_main_lambda_avm_writedata(GPOUT,37)
    assign out_load2_pre_main_lambda_avm_writedata = bb_main_lambda_B2_stall_region_out_load2_pre_main_lambda_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,38)
    assign out_profile_loop_o_valid = bb_main_lambda_B2_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = main_lambda_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = main_lambda_B2_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,41)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,42)
    assign out_valid_out_0 = main_lambda_B2_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,43)
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
