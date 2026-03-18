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

// SystemVerilog created from bb_DijkstraOptimisedID_B3
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B3 (
    input wire [63:0] in_arg_in_g,
    input wire [63:0] in_arg_out_dist,
    input wire [0:0] in_flush,
    input wire [63:0] in_load_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_load_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_load_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_load_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_mul_i_add36101_0,
    input wire [0:0] in_notcmp65102_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID21_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe5,
    output wire [40:0] out_load_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_burstcount,
    output wire [7:0] out_load_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_write,
    output wire [63:0] out_load_DijkstraOptimisedID_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraOptimisedID_B3_branch_out_c0_exe5;
    wire [0:0] DijkstraOptimisedID_B3_branch_out_stall_out;
    wire [0:0] DijkstraOptimisedID_B3_branch_out_valid_out_0;
    wire [0:0] DijkstraOptimisedID_B3_merge_out_almost_empty_out;
    wire [0:0] DijkstraOptimisedID_B3_merge_out_empty_out;
    wire [31:0] DijkstraOptimisedID_B3_merge_out_mul_i_add36101;
    wire [0:0] DijkstraOptimisedID_B3_merge_out_notcmp65102;
    wire [0:0] DijkstraOptimisedID_B3_merge_out_stall_out_0;
    wire [31:0] DijkstraOptimisedID_B3_merge_out_unnamed_DijkstraOptimisedID21;
    wire [0:0] DijkstraOptimisedID_B3_merge_out_valid_out;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_almost_empty_out;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_c0_exe4175;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_c0_exe5;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_empty_out;
    wire [40:0] bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_burstcount;
    wire [7:0] bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_write;
    wire [63:0] bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_writedata;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_stall_out;
    wire [31:0] bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;
    wire [0:0] bb_DijkstraOptimisedID_B3_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraOptimisedID_B3_merge(BLACKBOX,3)
    DijkstraOptimisedID_B3_merge theDijkstraOptimisedID_B3_merge (
        .in_mul_i_add36101_0(in_mul_i_add36101_0),
        .in_notcmp65102_0(in_notcmp65102_0),
        .in_stall_in(bb_DijkstraOptimisedID_B3_stall_region_out_stall_out),
        .in_unnamed_DijkstraOptimisedID21_0(in_unnamed_DijkstraOptimisedID21_0),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(DijkstraOptimisedID_B3_merge_out_almost_empty_out),
        .out_empty_out(DijkstraOptimisedID_B3_merge_out_empty_out),
        .out_mul_i_add36101(DijkstraOptimisedID_B3_merge_out_mul_i_add36101),
        .out_notcmp65102(DijkstraOptimisedID_B3_merge_out_notcmp65102),
        .out_stall_out_0(DijkstraOptimisedID_B3_merge_out_stall_out_0),
        .out_unnamed_DijkstraOptimisedID21(DijkstraOptimisedID_B3_merge_out_unnamed_DijkstraOptimisedID21),
        .out_valid_out(DijkstraOptimisedID_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraOptimisedID_B3_stall_region(BLACKBOX,4)
    DijkstraOptimisedID_bb_B3_stall_region thebb_DijkstraOptimisedID_B3_stall_region (
        .in_almost_empty_in(DijkstraOptimisedID_B3_merge_out_almost_empty_out),
        .in_arg_in_g(in_arg_in_g),
        .in_empty_in(DijkstraOptimisedID_B3_merge_out_empty_out),
        .in_flush(in_flush),
        .in_load_DijkstraOptimisedID_avm_readdata(in_load_DijkstraOptimisedID_avm_readdata),
        .in_load_DijkstraOptimisedID_avm_readdatavalid(in_load_DijkstraOptimisedID_avm_readdatavalid),
        .in_load_DijkstraOptimisedID_avm_waitrequest(in_load_DijkstraOptimisedID_avm_waitrequest),
        .in_load_DijkstraOptimisedID_avm_writeack(in_load_DijkstraOptimisedID_avm_writeack),
        .in_mul_i_add36101(DijkstraOptimisedID_B3_merge_out_mul_i_add36101),
        .in_notcmp65102(DijkstraOptimisedID_B3_merge_out_notcmp65102),
        .in_stall_in(DijkstraOptimisedID_B3_branch_out_stall_out),
        .in_unnamed_DijkstraOptimisedID21(DijkstraOptimisedID_B3_merge_out_unnamed_DijkstraOptimisedID21),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack),
        .in_valid_in(DijkstraOptimisedID_B3_merge_out_valid_out),
        .out_almost_empty_out(bb_DijkstraOptimisedID_B3_stall_region_out_almost_empty_out),
        .out_c0_exe4175(bb_DijkstraOptimisedID_B3_stall_region_out_c0_exe4175),
        .out_c0_exe5(bb_DijkstraOptimisedID_B3_stall_region_out_c0_exe5),
        .out_empty_out(bb_DijkstraOptimisedID_B3_stall_region_out_empty_out),
        .out_load_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_address),
        .out_load_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_burstcount),
        .out_load_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_byteenable),
        .out_load_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_enable),
        .out_load_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_read),
        .out_load_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_write),
        .out_load_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_writedata),
        .out_profile_loop_o_valid(bb_DijkstraOptimisedID_B3_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_DijkstraOptimisedID_B3_stall_region_out_stall_out),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata),
        .out_valid_out(bb_DijkstraOptimisedID_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraOptimisedID_B3_branch(BLACKBOX,2)
    DijkstraOptimisedID_B3_branch theDijkstraOptimisedID_B3_branch (
        .in_almost_empty_in(bb_DijkstraOptimisedID_B3_stall_region_out_almost_empty_out),
        .in_c0_exe4175(bb_DijkstraOptimisedID_B3_stall_region_out_c0_exe4175),
        .in_c0_exe5(bb_DijkstraOptimisedID_B3_stall_region_out_c0_exe5),
        .in_empty_in(bb_DijkstraOptimisedID_B3_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraOptimisedID_B3_stall_region_out_valid_out),
        .out_c0_exe5(DijkstraOptimisedID_B3_branch_out_c0_exe5),
        .out_stall_out(DijkstraOptimisedID_B3_branch_out_stall_out),
        .out_valid_out_0(DijkstraOptimisedID_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe5(GPOUT,21)
    assign out_c0_exe5 = DijkstraOptimisedID_B3_branch_out_c0_exe5;

    // out_load_DijkstraOptimisedID_avm_address(GPOUT,22)
    assign out_load_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_address;

    // out_load_DijkstraOptimisedID_avm_burstcount(GPOUT,23)
    assign out_load_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_burstcount;

    // out_load_DijkstraOptimisedID_avm_byteenable(GPOUT,24)
    assign out_load_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_byteenable;

    // out_load_DijkstraOptimisedID_avm_enable(GPOUT,25)
    assign out_load_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_enable;

    // out_load_DijkstraOptimisedID_avm_read(GPOUT,26)
    assign out_load_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_read;

    // out_load_DijkstraOptimisedID_avm_write(GPOUT,27)
    assign out_load_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_write;

    // out_load_DijkstraOptimisedID_avm_writedata(GPOUT,28)
    assign out_load_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B3_stall_region_out_load_DijkstraOptimisedID_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,29)
    assign out_profile_loop_o_valid = bb_DijkstraOptimisedID_B3_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,30)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = DijkstraOptimisedID_B3_merge_out_stall_out_0;

    // out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address(GPOUT,32)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount(GPOUT,33)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable(GPOUT,34)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable(GPOUT,35)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read(GPOUT,36)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write(GPOUT,37)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata(GPOUT,38)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B3_stall_region_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;

    // out_valid_in_0(GPOUT,39)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,40)
    assign out_valid_out_0 = DijkstraOptimisedID_B3_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,41)
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
