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

// SystemVerilog created from i_sfc_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_523_27
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_i_sfc_s_c1_in_for_body9_i_s_0000r_main_lambda_523_27 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [31:0] out_c1_exit_1_tpl,
    output wire [63:0] out_c1_exit_2_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_c1_eni6_0_tpl,
    input wire [31:0] in_c1_eni6_1_tpl,
    input wire [31:0] in_c1_eni6_2_tpl,
    input wire [31:0] in_c1_eni6_3_tpl,
    input wire [0:0] in_c1_eni6_4_tpl,
    input wire [63:0] in_c1_eni6_5_tpl,
    input wire [0:0] in_c1_eni6_6_tpl,
    input wire [0:0] in_forked,
    input wire [0:0] in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_0_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_1_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_2_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x(BLACKBOX,8)@79
    // out out_o_valid@86
    // out out_unnamed_main_lambda2@86
    // out out_c1_exi2_0_tpl@86
    // out out_c1_exi2_1_tpl@86
    // out out_c1_exi2_2_tpl@86
    main_lambda_i_sfc_logic_s_c1_in_for_body0000_main_lambda_985_0gr thei_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_c1_eni6_0_tpl(in_c1_eni6_0_tpl),
        .in_c1_eni6_1_tpl(in_c1_eni6_1_tpl),
        .in_c1_eni6_2_tpl(in_c1_eni6_2_tpl),
        .in_c1_eni6_3_tpl(in_c1_eni6_3_tpl),
        .in_c1_eni6_4_tpl(in_c1_eni6_4_tpl),
        .in_c1_eni6_5_tpl(in_c1_eni6_5_tpl),
        .in_c1_eni6_6_tpl(in_c1_eni6_6_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_o_valid),
        .out_unnamed_main_lambda2(),
        .out_c1_exi2_0_tpl(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_0_tpl),
        .out_c1_exi2_1_tpl(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_1_tpl),
        .out_c1_exi2_2_tpl(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_2_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x(BLACKBOX,7)@86
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@90
    // out out_data_out_0_tpl@90
    // out out_data_out_1_tpl@90
    // out out_data_out_2_tpl@90
    main_lambda_i_llvm_fpga_sfc_exit_s_c1_ou0000main_lambda_1025_0gr thei_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x (
        .in_dec_pipelined_thread(in_fpga_indvars_iv_pop13_struct_0_shuffle_bit5_not),
        .in_inc_pipelined_thread(in_forked),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr_aunroll_x_out_c1_exi2_2_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out_155(GPOUT,6)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_stall_entry;

    // sync_out_156_aunroll_x(GPOUT,9)@90
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_data_out_2_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_i_main_lambdas_c1_exit_main_lambda_985_1gr_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,11)
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
