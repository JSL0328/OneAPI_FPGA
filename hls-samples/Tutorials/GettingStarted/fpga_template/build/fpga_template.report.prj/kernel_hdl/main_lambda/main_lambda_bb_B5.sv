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

// SystemVerilog created from bb_main_lambda_B5
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_bb_B5 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_b,
    input wire [63:0] in_arg_c,
    input wire [63:0] in_arrayidx18_i44_0,
    input wire [63:0] in_arrayidx18_i44_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked2541_0,
    input wire [0:0] in_forked2541_1,
    input wire [0:0] in_forked2627_pop1047_0,
    input wire [0:0] in_forked2627_pop1047_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_load1_main_lambda_avm_readdata,
    input wire [0:0] in_load1_main_lambda_avm_readdatavalid,
    input wire [0:0] in_load1_main_lambda_avm_waitrequest,
    input wire [0:0] in_load1_main_lambda_avm_writeack,
    input wire [31:0] in_load2_pre45_0,
    input wire [31:0] in_load2_pre45_1,
    input wire [63:0] in_load_main_lambda_avm_readdata,
    input wire [0:0] in_load_main_lambda_avm_readdatavalid,
    input wire [0:0] in_load_main_lambda_avm_waitrequest,
    input wire [0:0] in_load_main_lambda_avm_writeack,
    input wire [63:0] in_memdep_main_lambda_avm_readdata,
    input wire [0:0] in_memdep_main_lambda_avm_readdatavalid,
    input wire [0:0] in_memdep_main_lambda_avm_waitrequest,
    input wire [0:0] in_memdep_main_lambda_avm_writeack,
    input wire [31:0] in_mul_i43_0,
    input wire [31:0] in_mul_i43_1,
    input wire [0:0] in_notcmp1546_0,
    input wire [0:0] in_notcmp1546_1,
    input wire [0:0] in_notcmp2029_pop1248_0,
    input wire [0:0] in_notcmp2029_pop1248_1,
    input wire [31:0] in_pop1142_0,
    input wire [31:0] in_pop1142_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_main_lambda1_0,
    input wire [31:0] in_unnamed_main_lambda1_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [40:0] out_load1_main_lambda_avm_address,
    output wire [0:0] out_load1_main_lambda_avm_burstcount,
    output wire [7:0] out_load1_main_lambda_avm_byteenable,
    output wire [0:0] out_load1_main_lambda_avm_enable,
    output wire [0:0] out_load1_main_lambda_avm_read,
    output wire [0:0] out_load1_main_lambda_avm_write,
    output wire [63:0] out_load1_main_lambda_avm_writedata,
    output wire [40:0] out_load_main_lambda_avm_address,
    output wire [0:0] out_load_main_lambda_avm_burstcount,
    output wire [7:0] out_load_main_lambda_avm_byteenable,
    output wire [0:0] out_load_main_lambda_avm_enable,
    output wire [0:0] out_load_main_lambda_avm_read,
    output wire [0:0] out_load_main_lambda_avm_write,
    output wire [63:0] out_load_main_lambda_avm_writedata,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [40:0] out_memdep_main_lambda_avm_address,
    output wire [0:0] out_memdep_main_lambda_avm_burstcount,
    output wire [7:0] out_memdep_main_lambda_avm_byteenable,
    output wire [0:0] out_memdep_main_lambda_avm_enable,
    output wire [0:0] out_memdep_main_lambda_avm_read,
    output wire [0:0] out_memdep_main_lambda_avm_write,
    output wire [63:0] out_memdep_main_lambda_avm_writedata,
    output wire [0:0] out_notcmp1534_pop24,
    output wire [0:0] out_notcmp2030_pop19,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_main_lambda_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_stall_out;
    wire [0:0] bb_main_lambda_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_valid_out;
    wire [0:0] bb_main_lambda_B5_stall_region_out_fpga_indvars_iv_pop13_struct_0_shuffle_bit5;
    wire [40:0] bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_writedata;
    wire [40:0] bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_writedata;
    wire [0:0] bb_main_lambda_B5_stall_region_out_lsu_memdep_o_active;
    wire [40:0] bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_writedata;
    wire [0:0] bb_main_lambda_B5_stall_region_out_notcmp1534_pop24;
    wire [0:0] bb_main_lambda_B5_stall_region_out_notcmp2030_pop19;
    wire [0:0] bb_main_lambda_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_main_lambda_B5_stall_region_out_stall_out;
    wire [0:0] bb_main_lambda_B5_stall_region_out_valid_out;
    wire [0:0] main_lambda_B5_branch_out_notcmp1534_pop24;
    wire [0:0] main_lambda_B5_branch_out_notcmp2030_pop19;
    wire [0:0] main_lambda_B5_branch_out_stall_out;
    wire [0:0] main_lambda_B5_branch_out_valid_out_0;
    wire [0:0] main_lambda_B5_branch_out_valid_out_1;
    wire [63:0] main_lambda_B5_merge_out_arrayidx18_i44;
    wire [0:0] main_lambda_B5_merge_out_forked;
    wire [0:0] main_lambda_B5_merge_out_forked2541;
    wire [0:0] main_lambda_B5_merge_out_forked2627_pop1047;
    wire [31:0] main_lambda_B5_merge_out_load2_pre45;
    wire [31:0] main_lambda_B5_merge_out_mul_i43;
    wire [0:0] main_lambda_B5_merge_out_notcmp1546;
    wire [0:0] main_lambda_B5_merge_out_notcmp2029_pop1248;
    wire [31:0] main_lambda_B5_merge_out_pop1142;
    wire [0:0] main_lambda_B5_merge_out_stall_out_0;
    wire [0:0] main_lambda_B5_merge_out_stall_out_1;
    wire [31:0] main_lambda_B5_merge_out_unnamed_main_lambda1;
    wire [0:0] main_lambda_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // main_lambda_B5_branch(BLACKBOX,3)
    main_lambda_B5_branch themain_lambda_B5_branch (
        .in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5(bb_main_lambda_B5_stall_region_out_fpga_indvars_iv_pop13_struct_0_shuffle_bit5),
        .in_notcmp1534_pop24(bb_main_lambda_B5_stall_region_out_notcmp1534_pop24),
        .in_notcmp2030_pop19(bb_main_lambda_B5_stall_region_out_notcmp2030_pop19),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_main_lambda_B5_stall_region_out_valid_out),
        .out_notcmp1534_pop24(main_lambda_B5_branch_out_notcmp1534_pop24),
        .out_notcmp2030_pop19(main_lambda_B5_branch_out_notcmp2030_pop19),
        .out_stall_out(main_lambda_B5_branch_out_stall_out),
        .out_valid_out_0(main_lambda_B5_branch_out_valid_out_0),
        .out_valid_out_1(main_lambda_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // main_lambda_B5_merge(BLACKBOX,4)
    main_lambda_B5_merge themain_lambda_B5_merge (
        .in_arrayidx18_i44_0(in_arrayidx18_i44_0),
        .in_arrayidx18_i44_1(in_arrayidx18_i44_1),
        .in_forked2541_0(in_forked2541_0),
        .in_forked2541_1(in_forked2541_1),
        .in_forked2627_pop1047_0(in_forked2627_pop1047_0),
        .in_forked2627_pop1047_1(in_forked2627_pop1047_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_load2_pre45_0(in_load2_pre45_0),
        .in_load2_pre45_1(in_load2_pre45_1),
        .in_mul_i43_0(in_mul_i43_0),
        .in_mul_i43_1(in_mul_i43_1),
        .in_notcmp1546_0(in_notcmp1546_0),
        .in_notcmp1546_1(in_notcmp1546_1),
        .in_notcmp2029_pop1248_0(in_notcmp2029_pop1248_0),
        .in_notcmp2029_pop1248_1(in_notcmp2029_pop1248_1),
        .in_pop1142_0(in_pop1142_0),
        .in_pop1142_1(in_pop1142_1),
        .in_stall_in(bb_main_lambda_B5_stall_region_out_stall_out),
        .in_unnamed_main_lambda1_0(in_unnamed_main_lambda1_0),
        .in_unnamed_main_lambda1_1(in_unnamed_main_lambda1_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx18_i44(main_lambda_B5_merge_out_arrayidx18_i44),
        .out_forked(main_lambda_B5_merge_out_forked),
        .out_forked2541(main_lambda_B5_merge_out_forked2541),
        .out_forked2627_pop1047(main_lambda_B5_merge_out_forked2627_pop1047),
        .out_load2_pre45(main_lambda_B5_merge_out_load2_pre45),
        .out_mul_i43(main_lambda_B5_merge_out_mul_i43),
        .out_notcmp1546(main_lambda_B5_merge_out_notcmp1546),
        .out_notcmp2029_pop1248(main_lambda_B5_merge_out_notcmp2029_pop1248),
        .out_pop1142(main_lambda_B5_merge_out_pop1142),
        .out_stall_out_0(main_lambda_B5_merge_out_stall_out_0),
        .out_stall_out_1(main_lambda_B5_merge_out_stall_out_1),
        .out_unnamed_main_lambda1(main_lambda_B5_merge_out_unnamed_main_lambda1),
        .out_valid_out(main_lambda_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B5_stall_region(BLACKBOX,2)
    main_lambda_bb_B5_stall_region thebb_main_lambda_B5_stall_region (
        .in_arg_a(in_arg_a),
        .in_arg_b(in_arg_b),
        .in_arrayidx18_i44(main_lambda_B5_merge_out_arrayidx18_i44),
        .in_flush(in_flush),
        .in_forked(main_lambda_B5_merge_out_forked),
        .in_forked2541(main_lambda_B5_merge_out_forked2541),
        .in_forked2627_pop1047(main_lambda_B5_merge_out_forked2627_pop1047),
        .in_load1_main_lambda_avm_readdata(in_load1_main_lambda_avm_readdata),
        .in_load1_main_lambda_avm_readdatavalid(in_load1_main_lambda_avm_readdatavalid),
        .in_load1_main_lambda_avm_waitrequest(in_load1_main_lambda_avm_waitrequest),
        .in_load1_main_lambda_avm_writeack(in_load1_main_lambda_avm_writeack),
        .in_load2_pre45(main_lambda_B5_merge_out_load2_pre45),
        .in_load_main_lambda_avm_readdata(in_load_main_lambda_avm_readdata),
        .in_load_main_lambda_avm_readdatavalid(in_load_main_lambda_avm_readdatavalid),
        .in_load_main_lambda_avm_waitrequest(in_load_main_lambda_avm_waitrequest),
        .in_load_main_lambda_avm_writeack(in_load_main_lambda_avm_writeack),
        .in_memdep_main_lambda_avm_readdata(in_memdep_main_lambda_avm_readdata),
        .in_memdep_main_lambda_avm_readdatavalid(in_memdep_main_lambda_avm_readdatavalid),
        .in_memdep_main_lambda_avm_waitrequest(in_memdep_main_lambda_avm_waitrequest),
        .in_memdep_main_lambda_avm_writeack(in_memdep_main_lambda_avm_writeack),
        .in_mul_i43(main_lambda_B5_merge_out_mul_i43),
        .in_notcmp1546(main_lambda_B5_merge_out_notcmp1546),
        .in_notcmp2029_pop1248(main_lambda_B5_merge_out_notcmp2029_pop1248),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop1142(main_lambda_B5_merge_out_pop1142),
        .in_stall_in(main_lambda_B5_branch_out_stall_out),
        .in_unnamed_main_lambda1(main_lambda_B5_merge_out_unnamed_main_lambda1),
        .in_valid_in(main_lambda_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_stall_out(bb_main_lambda_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_valid_out(bb_main_lambda_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_valid_out),
        .out_fpga_indvars_iv_pop13_struct_0_shuffle_bit5(bb_main_lambda_B5_stall_region_out_fpga_indvars_iv_pop13_struct_0_shuffle_bit5),
        .out_load1_main_lambda_avm_address(bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_address),
        .out_load1_main_lambda_avm_burstcount(bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_burstcount),
        .out_load1_main_lambda_avm_byteenable(bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_byteenable),
        .out_load1_main_lambda_avm_enable(bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_enable),
        .out_load1_main_lambda_avm_read(bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_read),
        .out_load1_main_lambda_avm_write(bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_write),
        .out_load1_main_lambda_avm_writedata(bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_writedata),
        .out_load_main_lambda_avm_address(bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_address),
        .out_load_main_lambda_avm_burstcount(bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_burstcount),
        .out_load_main_lambda_avm_byteenable(bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_byteenable),
        .out_load_main_lambda_avm_enable(bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_enable),
        .out_load_main_lambda_avm_read(bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_read),
        .out_load_main_lambda_avm_write(bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_write),
        .out_load_main_lambda_avm_writedata(bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_writedata),
        .out_lsu_memdep_o_active(bb_main_lambda_B5_stall_region_out_lsu_memdep_o_active),
        .out_memdep_main_lambda_avm_address(bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_address),
        .out_memdep_main_lambda_avm_burstcount(bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_burstcount),
        .out_memdep_main_lambda_avm_byteenable(bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_byteenable),
        .out_memdep_main_lambda_avm_enable(bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_enable),
        .out_memdep_main_lambda_avm_read(bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_read),
        .out_memdep_main_lambda_avm_write(bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_write),
        .out_memdep_main_lambda_avm_writedata(bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_writedata),
        .out_notcmp1534_pop24(bb_main_lambda_B5_stall_region_out_notcmp1534_pop24),
        .out_notcmp2030_pop19(bb_main_lambda_B5_stall_region_out_notcmp2030_pop19),
        .out_pipeline_valid_out(bb_main_lambda_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_main_lambda_B5_stall_region_out_stall_out),
        .out_valid_out(bb_main_lambda_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = bb_main_lambda_B5_stall_region_out_pipeline_valid_out;

    // out_exiting_stall_out(GPOUT,47)
    assign out_exiting_stall_out = bb_main_lambda_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,48)
    assign out_exiting_valid_out = bb_main_lambda_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_exiting_valid_out;

    // out_load1_main_lambda_avm_address(GPOUT,49)
    assign out_load1_main_lambda_avm_address = bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_address;

    // out_load1_main_lambda_avm_burstcount(GPOUT,50)
    assign out_load1_main_lambda_avm_burstcount = bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_burstcount;

    // out_load1_main_lambda_avm_byteenable(GPOUT,51)
    assign out_load1_main_lambda_avm_byteenable = bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_byteenable;

    // out_load1_main_lambda_avm_enable(GPOUT,52)
    assign out_load1_main_lambda_avm_enable = bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_enable;

    // out_load1_main_lambda_avm_read(GPOUT,53)
    assign out_load1_main_lambda_avm_read = bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_read;

    // out_load1_main_lambda_avm_write(GPOUT,54)
    assign out_load1_main_lambda_avm_write = bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_write;

    // out_load1_main_lambda_avm_writedata(GPOUT,55)
    assign out_load1_main_lambda_avm_writedata = bb_main_lambda_B5_stall_region_out_load1_main_lambda_avm_writedata;

    // out_load_main_lambda_avm_address(GPOUT,56)
    assign out_load_main_lambda_avm_address = bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_address;

    // out_load_main_lambda_avm_burstcount(GPOUT,57)
    assign out_load_main_lambda_avm_burstcount = bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_burstcount;

    // out_load_main_lambda_avm_byteenable(GPOUT,58)
    assign out_load_main_lambda_avm_byteenable = bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_byteenable;

    // out_load_main_lambda_avm_enable(GPOUT,59)
    assign out_load_main_lambda_avm_enable = bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_enable;

    // out_load_main_lambda_avm_read(GPOUT,60)
    assign out_load_main_lambda_avm_read = bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_read;

    // out_load_main_lambda_avm_write(GPOUT,61)
    assign out_load_main_lambda_avm_write = bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_write;

    // out_load_main_lambda_avm_writedata(GPOUT,62)
    assign out_load_main_lambda_avm_writedata = bb_main_lambda_B5_stall_region_out_load_main_lambda_avm_writedata;

    // out_lsu_memdep_o_active(GPOUT,63)
    assign out_lsu_memdep_o_active = bb_main_lambda_B5_stall_region_out_lsu_memdep_o_active;

    // out_memdep_main_lambda_avm_address(GPOUT,64)
    assign out_memdep_main_lambda_avm_address = bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_address;

    // out_memdep_main_lambda_avm_burstcount(GPOUT,65)
    assign out_memdep_main_lambda_avm_burstcount = bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_burstcount;

    // out_memdep_main_lambda_avm_byteenable(GPOUT,66)
    assign out_memdep_main_lambda_avm_byteenable = bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_byteenable;

    // out_memdep_main_lambda_avm_enable(GPOUT,67)
    assign out_memdep_main_lambda_avm_enable = bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_enable;

    // out_memdep_main_lambda_avm_read(GPOUT,68)
    assign out_memdep_main_lambda_avm_read = bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_read;

    // out_memdep_main_lambda_avm_write(GPOUT,69)
    assign out_memdep_main_lambda_avm_write = bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_write;

    // out_memdep_main_lambda_avm_writedata(GPOUT,70)
    assign out_memdep_main_lambda_avm_writedata = bb_main_lambda_B5_stall_region_out_memdep_main_lambda_avm_writedata;

    // out_notcmp1534_pop24(GPOUT,71)
    assign out_notcmp1534_pop24 = main_lambda_B5_branch_out_notcmp1534_pop24;

    // out_notcmp2030_pop19(GPOUT,72)
    assign out_notcmp2030_pop19 = main_lambda_B5_branch_out_notcmp2030_pop19;

    // out_stall_in_0(GPOUT,73)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,74)
    assign out_stall_out_0 = main_lambda_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,75)
    assign out_stall_out_1 = main_lambda_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,76)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,77)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,78)
    assign out_valid_out_0 = main_lambda_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,79)
    assign out_valid_out_1 = main_lambda_B5_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,80)
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
