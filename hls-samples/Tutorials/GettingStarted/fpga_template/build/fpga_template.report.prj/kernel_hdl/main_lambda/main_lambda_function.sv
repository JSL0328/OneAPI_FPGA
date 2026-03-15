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

// SystemVerilog created from main_lambda_function
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_function (
    input wire [63:0] in_arg_arg_a,
    input wire [63:0] in_arg_arg_b,
    input wire [63:0] in_arg_arg_c,
    input wire [63:0] in_load1_main_lambda_avm_readdata,
    input wire [0:0] in_load1_main_lambda_avm_readdatavalid,
    input wire [0:0] in_load1_main_lambda_avm_waitrequest,
    input wire [0:0] in_load1_main_lambda_avm_writeack,
    input wire [63:0] in_load2_pre_main_lambda_avm_readdata,
    input wire [0:0] in_load2_pre_main_lambda_avm_readdatavalid,
    input wire [0:0] in_load2_pre_main_lambda_avm_waitrequest,
    input wire [0:0] in_load2_pre_main_lambda_avm_writeack,
    input wire [63:0] in_load_main_lambda_avm_readdata,
    input wire [0:0] in_load_main_lambda_avm_readdatavalid,
    input wire [0:0] in_load_main_lambda_avm_waitrequest,
    input wire [0:0] in_load_main_lambda_avm_writeack,
    input wire [63:0] in_memdep_main_lambda_avm_readdata,
    input wire [0:0] in_memdep_main_lambda_avm_readdatavalid,
    input wire [0:0] in_memdep_main_lambda_avm_waitrequest,
    input wire [0:0] in_memdep_main_lambda_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [40:0] out_load1_main_lambda_avm_address,
    output wire [0:0] out_load1_main_lambda_avm_burstcount,
    output wire [7:0] out_load1_main_lambda_avm_byteenable,
    output wire [0:0] out_load1_main_lambda_avm_enable,
    output wire [0:0] out_load1_main_lambda_avm_read,
    output wire [0:0] out_load1_main_lambda_avm_write,
    output wire [63:0] out_load1_main_lambda_avm_writedata,
    output wire [40:0] out_load2_pre_main_lambda_avm_address,
    output wire [0:0] out_load2_pre_main_lambda_avm_burstcount,
    output wire [7:0] out_load2_pre_main_lambda_avm_byteenable,
    output wire [0:0] out_load2_pre_main_lambda_avm_enable,
    output wire [0:0] out_load2_pre_main_lambda_avm_read,
    output wire [0:0] out_load2_pre_main_lambda_avm_write,
    output wire [63:0] out_load2_pre_main_lambda_avm_writedata,
    output wire [40:0] out_load_main_lambda_avm_address,
    output wire [0:0] out_load_main_lambda_avm_burstcount,
    output wire [7:0] out_load_main_lambda_avm_byteenable,
    output wire [0:0] out_load_main_lambda_avm_enable,
    output wire [0:0] out_load_main_lambda_avm_read,
    output wire [0:0] out_load_main_lambda_avm_write,
    output wire [63:0] out_load_main_lambda_avm_writedata,
    output wire [40:0] out_memdep_main_lambda_avm_address,
    output wire [0:0] out_memdep_main_lambda_avm_burstcount,
    output wire [7:0] out_memdep_main_lambda_avm_byteenable,
    output wire [0:0] out_memdep_main_lambda_avm_enable,
    output wire [0:0] out_memdep_main_lambda_avm_read,
    output wire [0:0] out_memdep_main_lambda_avm_write,
    output wire [63:0] out_memdep_main_lambda_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_main_lambda_B0_out_stall_out_0;
    wire [0:0] bb_main_lambda_B0_out_valid_out_0;
    wire [31:0] bb_main_lambda_B1_out_c0_exe1;
    wire [0:0] bb_main_lambda_B1_out_c0_exe3;
    wire [0:0] bb_main_lambda_B1_out_c0_exe4;
    wire [0:0] bb_main_lambda_B1_out_stall_out_1;
    wire [0:0] bb_main_lambda_B1_out_valid_out_0;
    wire [31:0] bb_main_lambda_B2_out_c0_exe160;
    wire [31:0] bb_main_lambda_B2_out_c0_exe261;
    wire [31:0] bb_main_lambda_B2_out_c0_exe362;
    wire [63:0] bb_main_lambda_B2_out_c0_exe463;
    wire [0:0] bb_main_lambda_B2_out_c0_exe6;
    wire [0:0] bb_main_lambda_B2_out_c0_exe7;
    wire [0:0] bb_main_lambda_B2_out_c0_exe8;
    wire [0:0] bb_main_lambda_B2_out_c0_exe9;
    wire [31:0] bb_main_lambda_B2_out_load2_pre;
    wire [40:0] bb_main_lambda_B2_out_load2_pre_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B2_out_load2_pre_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B2_out_load2_pre_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B2_out_load2_pre_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B2_out_load2_pre_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B2_out_load2_pre_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B2_out_load2_pre_main_lambda_avm_writedata;
    wire [0:0] bb_main_lambda_B2_out_stall_out_1;
    wire [0:0] bb_main_lambda_B2_out_valid_out_0;
    wire [0:0] bb_main_lambda_B3_out_stall_out_0;
    wire [0:0] bb_main_lambda_B3_out_valid_out_0;
    wire [0:0] bb_main_lambda_B4_out_notcmp2030_pop193;
    wire [0:0] bb_main_lambda_B4_out_stall_out_0;
    wire [0:0] bb_main_lambda_B4_out_valid_out_0;
    wire [0:0] bb_main_lambda_B5_out_exiting_stall_out;
    wire [0:0] bb_main_lambda_B5_out_exiting_valid_out;
    wire [40:0] bb_main_lambda_B5_out_load1_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B5_out_load1_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B5_out_load1_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B5_out_load1_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B5_out_load1_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B5_out_load1_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B5_out_load1_main_lambda_avm_writedata;
    wire [40:0] bb_main_lambda_B5_out_load_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B5_out_load_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B5_out_load_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B5_out_load_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B5_out_load_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B5_out_load_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B5_out_load_main_lambda_avm_writedata;
    wire [0:0] bb_main_lambda_B5_out_lsu_memdep_o_active;
    wire [40:0] bb_main_lambda_B5_out_memdep_main_lambda_avm_address;
    wire [0:0] bb_main_lambda_B5_out_memdep_main_lambda_avm_burstcount;
    wire [7:0] bb_main_lambda_B5_out_memdep_main_lambda_avm_byteenable;
    wire [0:0] bb_main_lambda_B5_out_memdep_main_lambda_avm_enable;
    wire [0:0] bb_main_lambda_B5_out_memdep_main_lambda_avm_read;
    wire [0:0] bb_main_lambda_B5_out_memdep_main_lambda_avm_write;
    wire [63:0] bb_main_lambda_B5_out_memdep_main_lambda_avm_writedata;
    wire [0:0] bb_main_lambda_B5_out_notcmp1534_pop24;
    wire [0:0] bb_main_lambda_B5_out_notcmp2030_pop19;
    wire [0:0] bb_main_lambda_B5_out_pipeline_valid_out;
    wire [0:0] bb_main_lambda_B5_out_stall_out_0;
    wire [0:0] bb_main_lambda_B5_out_stall_out_1;
    wire [0:0] bb_main_lambda_B5_out_valid_out_0;
    wire [0:0] bb_main_lambda_B6_out_stall_out_0;
    wire [0:0] bb_main_lambda_B6_out_valid_out_0;
    wire [31:0] c_i32_undef_9_19_q;
    wire [63:0] c_ptr_addrspace_1024_undef_9_25_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr_out_o_valid;
    wire [0:0] loop_limiter_main_lambda0_out_o_stall;
    wire [0:0] loop_limiter_main_lambda0_out_o_valid;
    wire [0:0] main_lambda_function_i_enable;
    wire main_lambda_function_i_enable_bitsignaltemp;
    wire [0:0] main_lambda_function_i_end;
    wire main_lambda_function_i_end_bitsignaltemp;
    wire [0:0] main_lambda_function_i_start;
    wire main_lambda_function_i_start_bitsignaltemp;
    wire [0:0] bb_main_lambda_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_main_lambda_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_main_lambda_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_main_lambda_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_main_lambda_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_main_lambda_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_main_lambda_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_main_lambda_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_main_lambda_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_main_lambda_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_main_lambda_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_main_lambda_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_main_lambda_B6_sr_0_aunroll_x_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr(BLACKBOX,38)
    main_lambda_i_llvm_fpga_pipeline_keep_going_523_0gr_sr thei_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_main_lambda_B5_out_stall_out_0),
        .in_i_valid(bb_main_lambda_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i32_undef_9_19(CONSTANT,31)
    assign c_i32_undef_9_19_q = 32'b00000000000000000000000000000000;

    // bb_main_lambda_B0(BLACKBOX,2)
    main_lambda_bb_B0 thebb_main_lambda_B0 (
        .in_arg_a(in_arg_arg_a),
        .in_arg_b(in_arg_arg_b),
        .in_arg_c(in_arg_arg_c),
        .in_stall_in_0(bb_main_lambda_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_main_lambda_B0_out_stall_out_0),
        .out_valid_out_0(bb_main_lambda_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B1_sr_1_aunroll_x(BLACKBOX,44)
    main_lambda_bb_B1_sr_1 thebb_main_lambda_B1_sr_1_aunroll_x (
        .in_i_stall(bb_main_lambda_B1_out_stall_out_1),
        .in_i_valid(bb_main_lambda_B0_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_main_lambda_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_lambda_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_main_lambda_B1(BLACKBOX,3)
    main_lambda_bb_B1 thebb_main_lambda_B1 (
        .in_arg_a(in_arg_arg_a),
        .in_arg_b(in_arg_arg_b),
        .in_arg_c(in_arg_arg_c),
        .in_stall_in_0(bb_main_lambda_B2_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_main_lambda_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_main_lambda_B1_out_c0_exe1),
        .out_c0_exe3(bb_main_lambda_B1_out_c0_exe3),
        .out_c0_exe4(bb_main_lambda_B1_out_c0_exe4),
        .out_profile_loop_o_valid(),
        .out_stall_out_0(),
        .out_stall_out_1(bb_main_lambda_B1_out_stall_out_1),
        .out_valid_in_1(),
        .out_valid_out_0(bb_main_lambda_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B2_sr_1_aunroll_x(BLACKBOX,45)
    main_lambda_bb_B2_sr_1 thebb_main_lambda_B2_sr_1_aunroll_x (
        .in_i_stall(bb_main_lambda_B2_out_stall_out_1),
        .in_i_valid(bb_main_lambda_B1_out_valid_out_0),
        .in_i_data_0_tpl(bb_main_lambda_B1_out_c0_exe4),
        .in_i_data_1_tpl(bb_main_lambda_B1_out_c0_exe1),
        .in_i_data_2_tpl(bb_main_lambda_B1_out_c0_exe3),
        .out_o_stall(bb_main_lambda_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_lambda_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_main_lambda_B2(BLACKBOX,4)
    main_lambda_bb_B2 thebb_main_lambda_B2 (
        .in_arg_a(in_arg_arg_a),
        .in_arg_b(in_arg_arg_b),
        .in_arg_c(in_arg_arg_c),
        .in_flush(in_start),
        .in_forked2635_0(GND_q),
        .in_forked2635_1(bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_load2_pre_main_lambda_avm_readdata(in_load2_pre_main_lambda_avm_readdata),
        .in_load2_pre_main_lambda_avm_readdatavalid(in_load2_pre_main_lambda_avm_readdatavalid),
        .in_load2_pre_main_lambda_avm_waitrequest(in_load2_pre_main_lambda_avm_waitrequest),
        .in_load2_pre_main_lambda_avm_writeack(in_load2_pre_main_lambda_avm_writeack),
        .in_notcmp2038_0(GND_q),
        .in_notcmp2038_1(bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(loop_limiter_main_lambda0_out_o_stall),
        .in_unnamed_main_lambda0_0(c_i32_undef_9_19_q),
        .in_unnamed_main_lambda0_1(bb_main_lambda_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_main_lambda_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe160(bb_main_lambda_B2_out_c0_exe160),
        .out_c0_exe261(bb_main_lambda_B2_out_c0_exe261),
        .out_c0_exe362(bb_main_lambda_B2_out_c0_exe362),
        .out_c0_exe463(bb_main_lambda_B2_out_c0_exe463),
        .out_c0_exe6(bb_main_lambda_B2_out_c0_exe6),
        .out_c0_exe7(bb_main_lambda_B2_out_c0_exe7),
        .out_c0_exe8(bb_main_lambda_B2_out_c0_exe8),
        .out_c0_exe9(bb_main_lambda_B2_out_c0_exe9),
        .out_load2_pre(bb_main_lambda_B2_out_load2_pre),
        .out_load2_pre_main_lambda_avm_address(bb_main_lambda_B2_out_load2_pre_main_lambda_avm_address),
        .out_load2_pre_main_lambda_avm_burstcount(bb_main_lambda_B2_out_load2_pre_main_lambda_avm_burstcount),
        .out_load2_pre_main_lambda_avm_byteenable(bb_main_lambda_B2_out_load2_pre_main_lambda_avm_byteenable),
        .out_load2_pre_main_lambda_avm_enable(bb_main_lambda_B2_out_load2_pre_main_lambda_avm_enable),
        .out_load2_pre_main_lambda_avm_read(bb_main_lambda_B2_out_load2_pre_main_lambda_avm_read),
        .out_load2_pre_main_lambda_avm_write(bb_main_lambda_B2_out_load2_pre_main_lambda_avm_write),
        .out_load2_pre_main_lambda_avm_writedata(bb_main_lambda_B2_out_load2_pre_main_lambda_avm_writedata),
        .out_profile_loop_o_valid(),
        .out_stall_out_0(),
        .out_stall_out_1(bb_main_lambda_B2_out_stall_out_1),
        .out_valid_in_1(),
        .out_valid_out_0(bb_main_lambda_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_main_lambda0(BLACKBOX,39)
    main_lambda_loop_limiter_0 theloop_limiter_main_lambda0 (
        .in_i_stall(bb_main_lambda_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_main_lambda_B5_out_exiting_stall_out),
        .in_i_valid(bb_main_lambda_B2_out_valid_out_0),
        .in_i_valid_exit(bb_main_lambda_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_main_lambda0_out_o_stall),
        .out_o_valid(loop_limiter_main_lambda0_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_main_lambda_B5_sr_1_aunroll_x(BLACKBOX,48)
    main_lambda_bb_B5_sr_1 thebb_main_lambda_B5_sr_1_aunroll_x (
        .in_i_stall(bb_main_lambda_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_main_lambda0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_main_lambda_B2_out_c0_exe9),
        .in_i_data_2_tpl(bb_main_lambda_B2_out_c0_exe160),
        .in_i_data_3_tpl(bb_main_lambda_B2_out_c0_exe261),
        .in_i_data_4_tpl(bb_main_lambda_B2_out_c0_exe362),
        .in_i_data_5_tpl(bb_main_lambda_B2_out_c0_exe463),
        .in_i_data_6_tpl(bb_main_lambda_B2_out_load2_pre),
        .in_i_data_7_tpl(bb_main_lambda_B2_out_c0_exe6),
        .in_i_data_8_tpl(bb_main_lambda_B2_out_c0_exe7),
        .in_i_data_9_tpl(bb_main_lambda_B2_out_c0_exe8),
        .out_o_stall(bb_main_lambda_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_lambda_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_ptr_addrspace_1024_undef_9_25(CONSTANT,36)
    assign c_ptr_addrspace_1024_undef_9_25_q = 64'b0000000000000000000000000000000000000000000000000000000000000000;

    // bb_main_lambda_B5(BLACKBOX,7)
    main_lambda_bb_B5 thebb_main_lambda_B5 (
        .in_arg_a(in_arg_arg_a),
        .in_arg_b(in_arg_arg_b),
        .in_arg_c(in_arg_arg_c),
        .in_arrayidx18_i44_0(c_ptr_addrspace_1024_undef_9_25_q),
        .in_arrayidx18_i44_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked2541_0(GND_q),
        .in_forked2541_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked2627_pop1047_0(GND_q),
        .in_forked2627_pop1047_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_load1_main_lambda_avm_readdata(in_load1_main_lambda_avm_readdata),
        .in_load1_main_lambda_avm_readdatavalid(in_load1_main_lambda_avm_readdatavalid),
        .in_load1_main_lambda_avm_waitrequest(in_load1_main_lambda_avm_waitrequest),
        .in_load1_main_lambda_avm_writeack(in_load1_main_lambda_avm_writeack),
        .in_load2_pre45_0(c_i32_undef_9_19_q),
        .in_load2_pre45_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_load_main_lambda_avm_readdata(in_load_main_lambda_avm_readdata),
        .in_load_main_lambda_avm_readdatavalid(in_load_main_lambda_avm_readdatavalid),
        .in_load_main_lambda_avm_waitrequest(in_load_main_lambda_avm_waitrequest),
        .in_load_main_lambda_avm_writeack(in_load_main_lambda_avm_writeack),
        .in_memdep_main_lambda_avm_readdata(in_memdep_main_lambda_avm_readdata),
        .in_memdep_main_lambda_avm_readdatavalid(in_memdep_main_lambda_avm_readdatavalid),
        .in_memdep_main_lambda_avm_waitrequest(in_memdep_main_lambda_avm_waitrequest),
        .in_memdep_main_lambda_avm_writeack(in_memdep_main_lambda_avm_writeack),
        .in_mul_i43_0(c_i32_undef_9_19_q),
        .in_mul_i43_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp1546_0(GND_q),
        .in_notcmp1546_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp2029_pop1248_0(GND_q),
        .in_notcmp2029_pop1248_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr_out_o_stall),
        .in_pop1142_0(c_i32_undef_9_19_q),
        .in_pop1142_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_main_lambda_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_main_lambda1_0(c_i32_undef_9_19_q),
        .in_unnamed_main_lambda1_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_main_lambda_523_0gr_sr_out_o_valid),
        .in_valid_in_1(bb_main_lambda_B5_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_main_lambda_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_main_lambda_B5_out_exiting_valid_out),
        .out_load1_main_lambda_avm_address(bb_main_lambda_B5_out_load1_main_lambda_avm_address),
        .out_load1_main_lambda_avm_burstcount(bb_main_lambda_B5_out_load1_main_lambda_avm_burstcount),
        .out_load1_main_lambda_avm_byteenable(bb_main_lambda_B5_out_load1_main_lambda_avm_byteenable),
        .out_load1_main_lambda_avm_enable(bb_main_lambda_B5_out_load1_main_lambda_avm_enable),
        .out_load1_main_lambda_avm_read(bb_main_lambda_B5_out_load1_main_lambda_avm_read),
        .out_load1_main_lambda_avm_write(bb_main_lambda_B5_out_load1_main_lambda_avm_write),
        .out_load1_main_lambda_avm_writedata(bb_main_lambda_B5_out_load1_main_lambda_avm_writedata),
        .out_load_main_lambda_avm_address(bb_main_lambda_B5_out_load_main_lambda_avm_address),
        .out_load_main_lambda_avm_burstcount(bb_main_lambda_B5_out_load_main_lambda_avm_burstcount),
        .out_load_main_lambda_avm_byteenable(bb_main_lambda_B5_out_load_main_lambda_avm_byteenable),
        .out_load_main_lambda_avm_enable(bb_main_lambda_B5_out_load_main_lambda_avm_enable),
        .out_load_main_lambda_avm_read(bb_main_lambda_B5_out_load_main_lambda_avm_read),
        .out_load_main_lambda_avm_write(bb_main_lambda_B5_out_load_main_lambda_avm_write),
        .out_load_main_lambda_avm_writedata(bb_main_lambda_B5_out_load_main_lambda_avm_writedata),
        .out_lsu_memdep_o_active(bb_main_lambda_B5_out_lsu_memdep_o_active),
        .out_memdep_main_lambda_avm_address(bb_main_lambda_B5_out_memdep_main_lambda_avm_address),
        .out_memdep_main_lambda_avm_burstcount(bb_main_lambda_B5_out_memdep_main_lambda_avm_burstcount),
        .out_memdep_main_lambda_avm_byteenable(bb_main_lambda_B5_out_memdep_main_lambda_avm_byteenable),
        .out_memdep_main_lambda_avm_enable(bb_main_lambda_B5_out_memdep_main_lambda_avm_enable),
        .out_memdep_main_lambda_avm_read(bb_main_lambda_B5_out_memdep_main_lambda_avm_read),
        .out_memdep_main_lambda_avm_write(bb_main_lambda_B5_out_memdep_main_lambda_avm_write),
        .out_memdep_main_lambda_avm_writedata(bb_main_lambda_B5_out_memdep_main_lambda_avm_writedata),
        .out_notcmp1534_pop24(bb_main_lambda_B5_out_notcmp1534_pop24),
        .out_notcmp2030_pop19(bb_main_lambda_B5_out_notcmp2030_pop19),
        .out_pipeline_valid_out(bb_main_lambda_B5_out_pipeline_valid_out),
        .out_stall_in_0(),
        .out_stall_out_0(bb_main_lambda_B5_out_stall_out_0),
        .out_stall_out_1(bb_main_lambda_B5_out_stall_out_1),
        .out_valid_in_0(),
        .out_valid_in_1(),
        .out_valid_out_0(bb_main_lambda_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B4_sr_0_aunroll_x(BLACKBOX,47)
    main_lambda_bb_B4_sr_0 thebb_main_lambda_B4_sr_0_aunroll_x (
        .in_i_stall(bb_main_lambda_B4_out_stall_out_0),
        .in_i_valid(bb_main_lambda_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_main_lambda_B5_out_notcmp1534_pop24),
        .in_i_data_1_tpl(bb_main_lambda_B5_out_notcmp2030_pop19),
        .out_o_stall(bb_main_lambda_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_lambda_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_lambda_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_main_lambda_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_main_lambda_B4(BLACKBOX,6)
    main_lambda_bb_B4 thebb_main_lambda_B4 (
        .in_arg_a(in_arg_arg_a),
        .in_arg_b(in_arg_arg_b),
        .in_arg_c(in_arg_arg_c),
        .in_notcmp1534_pop241_0(bb_main_lambda_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_notcmp2030_pop193_0(bb_main_lambda_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_main_lambda_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_main_lambda_B4_sr_0_aunroll_x_out_o_valid),
        .out_notcmp2030_pop193(bb_main_lambda_B4_out_notcmp2030_pop193),
        .out_stall_in_0(),
        .out_stall_out_0(bb_main_lambda_B4_out_stall_out_0),
        .out_valid_out_0(bb_main_lambda_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B3_sr_0_aunroll_x(BLACKBOX,46)
    main_lambda_bb_B3_sr_0 thebb_main_lambda_B3_sr_0_aunroll_x (
        .in_i_stall(bb_main_lambda_B3_out_stall_out_0),
        .in_i_valid(bb_main_lambda_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_main_lambda_B4_out_notcmp2030_pop193),
        .out_o_stall(bb_main_lambda_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_lambda_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_lambda_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_main_lambda_B3(BLACKBOX,5)
    main_lambda_bb_B3 thebb_main_lambda_B3 (
        .in_arg_a(in_arg_arg_a),
        .in_arg_b(in_arg_arg_b),
        .in_arg_c(in_arg_arg_c),
        .in_notcmp2030_pop192_0(bb_main_lambda_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_main_lambda_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_main_lambda_B3_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(),
        .out_stall_out_0(bb_main_lambda_B3_out_stall_out_0),
        .out_valid_out_0(bb_main_lambda_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_lambda_B6_sr_0_aunroll_x(BLACKBOX,49)
    main_lambda_bb_B6_sr_0 thebb_main_lambda_B6_sr_0_aunroll_x (
        .in_i_stall(bb_main_lambda_B6_out_stall_out_0),
        .in_i_valid(bb_main_lambda_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_main_lambda_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_lambda_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_main_lambda_B6(BLACKBOX,8)
    main_lambda_bb_B6 thebb_main_lambda_B6 (
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_main_lambda_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_main_lambda_B6_out_stall_out_0),
        .out_valid_out_0(bb_main_lambda_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // main_lambda_function(EXTIFACE,43)
    assign main_lambda_function_i_enable = VCC_q;
    assign main_lambda_function_i_end = bb_main_lambda_B6_out_valid_out_0;
    assign main_lambda_function_i_start = in_start;
    assign main_lambda_function_i_enable_bitsignaltemp = main_lambda_function_i_enable[0];
    assign main_lambda_function_i_end_bitsignaltemp = main_lambda_function_i_end[0];
    assign main_lambda_function_i_start_bitsignaltemp = main_lambda_function_i_start[0];
    hld_sim_latency_tracker #(
        .ADDITIONAL_START_LATENCY(9),
        .CRA_CONTROL(1),
        .IS_COMPONENT(1),
        .NAME("'lambda'()")
    ) themain_lambda_function (
        .i_enable(main_lambda_function_i_enable_bitsignaltemp),
        .i_end(main_lambda_function_i_end_bitsignaltemp),
        .i_start(main_lambda_function_i_start_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_load1_main_lambda_avm_address(GPOUT,72)
    assign out_load1_main_lambda_avm_address = bb_main_lambda_B5_out_load1_main_lambda_avm_address;

    // out_load1_main_lambda_avm_burstcount(GPOUT,73)
    assign out_load1_main_lambda_avm_burstcount = bb_main_lambda_B5_out_load1_main_lambda_avm_burstcount;

    // out_load1_main_lambda_avm_byteenable(GPOUT,74)
    assign out_load1_main_lambda_avm_byteenable = bb_main_lambda_B5_out_load1_main_lambda_avm_byteenable;

    // out_load1_main_lambda_avm_enable(GPOUT,75)
    assign out_load1_main_lambda_avm_enable = bb_main_lambda_B5_out_load1_main_lambda_avm_enable;

    // out_load1_main_lambda_avm_read(GPOUT,76)
    assign out_load1_main_lambda_avm_read = bb_main_lambda_B5_out_load1_main_lambda_avm_read;

    // out_load1_main_lambda_avm_write(GPOUT,77)
    assign out_load1_main_lambda_avm_write = bb_main_lambda_B5_out_load1_main_lambda_avm_write;

    // out_load1_main_lambda_avm_writedata(GPOUT,78)
    assign out_load1_main_lambda_avm_writedata = bb_main_lambda_B5_out_load1_main_lambda_avm_writedata;

    // out_load2_pre_main_lambda_avm_address(GPOUT,79)
    assign out_load2_pre_main_lambda_avm_address = bb_main_lambda_B2_out_load2_pre_main_lambda_avm_address;

    // out_load2_pre_main_lambda_avm_burstcount(GPOUT,80)
    assign out_load2_pre_main_lambda_avm_burstcount = bb_main_lambda_B2_out_load2_pre_main_lambda_avm_burstcount;

    // out_load2_pre_main_lambda_avm_byteenable(GPOUT,81)
    assign out_load2_pre_main_lambda_avm_byteenable = bb_main_lambda_B2_out_load2_pre_main_lambda_avm_byteenable;

    // out_load2_pre_main_lambda_avm_enable(GPOUT,82)
    assign out_load2_pre_main_lambda_avm_enable = bb_main_lambda_B2_out_load2_pre_main_lambda_avm_enable;

    // out_load2_pre_main_lambda_avm_read(GPOUT,83)
    assign out_load2_pre_main_lambda_avm_read = bb_main_lambda_B2_out_load2_pre_main_lambda_avm_read;

    // out_load2_pre_main_lambda_avm_write(GPOUT,84)
    assign out_load2_pre_main_lambda_avm_write = bb_main_lambda_B2_out_load2_pre_main_lambda_avm_write;

    // out_load2_pre_main_lambda_avm_writedata(GPOUT,85)
    assign out_load2_pre_main_lambda_avm_writedata = bb_main_lambda_B2_out_load2_pre_main_lambda_avm_writedata;

    // out_load_main_lambda_avm_address(GPOUT,86)
    assign out_load_main_lambda_avm_address = bb_main_lambda_B5_out_load_main_lambda_avm_address;

    // out_load_main_lambda_avm_burstcount(GPOUT,87)
    assign out_load_main_lambda_avm_burstcount = bb_main_lambda_B5_out_load_main_lambda_avm_burstcount;

    // out_load_main_lambda_avm_byteenable(GPOUT,88)
    assign out_load_main_lambda_avm_byteenable = bb_main_lambda_B5_out_load_main_lambda_avm_byteenable;

    // out_load_main_lambda_avm_enable(GPOUT,89)
    assign out_load_main_lambda_avm_enable = bb_main_lambda_B5_out_load_main_lambda_avm_enable;

    // out_load_main_lambda_avm_read(GPOUT,90)
    assign out_load_main_lambda_avm_read = bb_main_lambda_B5_out_load_main_lambda_avm_read;

    // out_load_main_lambda_avm_write(GPOUT,91)
    assign out_load_main_lambda_avm_write = bb_main_lambda_B5_out_load_main_lambda_avm_write;

    // out_load_main_lambda_avm_writedata(GPOUT,92)
    assign out_load_main_lambda_avm_writedata = bb_main_lambda_B5_out_load_main_lambda_avm_writedata;

    // out_memdep_main_lambda_avm_address(GPOUT,93)
    assign out_memdep_main_lambda_avm_address = bb_main_lambda_B5_out_memdep_main_lambda_avm_address;

    // out_memdep_main_lambda_avm_burstcount(GPOUT,94)
    assign out_memdep_main_lambda_avm_burstcount = bb_main_lambda_B5_out_memdep_main_lambda_avm_burstcount;

    // out_memdep_main_lambda_avm_byteenable(GPOUT,95)
    assign out_memdep_main_lambda_avm_byteenable = bb_main_lambda_B5_out_memdep_main_lambda_avm_byteenable;

    // out_memdep_main_lambda_avm_enable(GPOUT,96)
    assign out_memdep_main_lambda_avm_enable = bb_main_lambda_B5_out_memdep_main_lambda_avm_enable;

    // out_memdep_main_lambda_avm_read(GPOUT,97)
    assign out_memdep_main_lambda_avm_read = bb_main_lambda_B5_out_memdep_main_lambda_avm_read;

    // out_memdep_main_lambda_avm_write(GPOUT,98)
    assign out_memdep_main_lambda_avm_write = bb_main_lambda_B5_out_memdep_main_lambda_avm_write;

    // out_memdep_main_lambda_avm_writedata(GPOUT,99)
    assign out_memdep_main_lambda_avm_writedata = bb_main_lambda_B5_out_memdep_main_lambda_avm_writedata;

    // out_o_active_memdep(GPOUT,100)
    assign out_o_active_memdep = bb_main_lambda_B5_out_lsu_memdep_o_active;

    // out_stall_out(GPOUT,101)
    assign out_stall_out = bb_main_lambda_B0_out_stall_out_0;

    // out_valid_out(GPOUT,102)
    assign out_valid_out = bb_main_lambda_B6_out_valid_out_0;

    // rst_sync(RESETSYNC,103)
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
