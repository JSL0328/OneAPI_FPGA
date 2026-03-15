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

// SystemVerilog created from bb_main_lambda_B2_stall_region
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_bb_B2_stall_region (
    input wire [63:0] in_load2_pre_main_lambda_avm_readdata,
    input wire [0:0] in_load2_pre_main_lambda_avm_writeack,
    input wire [0:0] in_load2_pre_main_lambda_avm_waitrequest,
    input wire [0:0] in_load2_pre_main_lambda_avm_readdatavalid,
    output wire [40:0] out_load2_pre_main_lambda_avm_address,
    output wire [0:0] out_load2_pre_main_lambda_avm_enable,
    output wire [0:0] out_load2_pre_main_lambda_avm_read,
    output wire [0:0] out_load2_pre_main_lambda_avm_write,
    output wire [63:0] out_load2_pre_main_lambda_avm_writedata,
    output wire [7:0] out_load2_pre_main_lambda_avm_byteenable,
    output wire [0:0] out_load2_pre_main_lambda_avm_burstcount,
    input wire [63:0] in_arg_c,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_c0_exe160,
    output wire [31:0] out_c0_exe261,
    output wire [31:0] out_c0_exe362,
    output wire [63:0] out_c0_exe463,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_load2_pre,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_forked2635,
    input wire [0:0] in_notcmp2038,
    input wire [31:0] in_unnamed_main_lambda0,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [40:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_address;
    wire [0:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_read;
    wire [0:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_write;
    wire [63:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_9_tpl;
    wire [164:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [164:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [164:0] coalesced_delay_0_fifo_o_data;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_b;
    wire [33:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [164:0] bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_j;
    wire [164:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [164:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // join_for_coalesced_delay_0(BITJOIN,32)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_f};

    // coalesced_delay_0_fifo(STALLFIFO,34)
    assign coalesced_delay_0_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_V1;
    assign coalesced_delay_0_fifo_i_stall = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(72),
        .WIDTH(165),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,40)
    assign bubble_join_stall_entry_q = {in_unnamed_main_lambda0, in_notcmp2038, in_forked2635};

    // bubble_select_stall_entry(BITSELECT,41)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[1:1];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[33:2];

    // SE_stall_entry(STALLENABLE,51)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x(BLACKBOX,21)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_profile_loop_o_valid@6
    // out out_c0_exit59_0_tpl@6
    // out out_c0_exit59_1_tpl@6
    // out out_c0_exit59_2_tpl@6
    // out out_c0_exit59_3_tpl@6
    // out out_c0_exit59_4_tpl@6
    // out out_c0_exit59_5_tpl@6
    // out out_c0_exit59_6_tpl@6
    // out out_c0_exit59_7_tpl@6
    // out out_c0_exit59_8_tpl@6
    // out out_c0_exit59_9_tpl@6
    // out out_c0_exit59_10_tpl@6
    // out out_c0_exit59_11_tpl@6
    // out out_c0_exit59_12_tpl@6
    main_lambda_i_sfc_s_c0_in_for_cond6_i_pr0000_main_lambda_201_4gr thei_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x (
        .in_arg_c(in_arg_c),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_stall_entry_d),
        .in_c0_eni4_2_tpl(GND_q),
        .in_c0_eni4_3_tpl(bubble_select_stall_entry_b),
        .in_c0_eni4_4_tpl(bubble_select_stall_entry_c),
        .out_o_stall(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit59_0_tpl(),
        .out_c0_exit59_1_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_1_tpl),
        .out_c0_exit59_2_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_2_tpl),
        .out_c0_exit59_3_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_3_tpl),
        .out_c0_exit59_4_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_4_tpl),
        .out_c0_exit59_5_tpl(),
        .out_c0_exit59_6_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_6_tpl),
        .out_c0_exit59_7_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_7_tpl),
        .out_c0_exit59_8_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_8_tpl),
        .out_c0_exit59_9_tpl(i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_9_tpl),
        .out_c0_exit59_10_tpl(),
        .out_c0_exit59_11_tpl(),
        .out_c0_exit59_12_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x(STALLENABLE,54)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,58)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_o_valid;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x(BITJOIN,44)
    assign bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q = {i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_9_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_8_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_7_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_6_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_4_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_3_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_2_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_c0_exit59_1_tpl, i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x(BITSELECT,45)
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[32:1];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[64:33];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[96:65];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[160:97];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[161:161];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[162:162];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[163:163];
    assign bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_j = bubble_join_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_q[164:164];

    // i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr(BLACKBOX,8)@6
    // in in_i_stall@20000000
    // out out_load2_pre_main_lambda_avm_address@20000000
    // out out_load2_pre_main_lambda_avm_burstcount@20000000
    // out out_load2_pre_main_lambda_avm_byteenable@20000000
    // out out_load2_pre_main_lambda_avm_enable@20000000
    // out out_load2_pre_main_lambda_avm_read@20000000
    // out out_load2_pre_main_lambda_avm_write@20000000
    // out out_load2_pre_main_lambda_avm_writedata@20000000
    // out out_o_readdata@77
    // out out_o_stall@20000000
    // out out_o_valid@77
    main_lambda_i_llvm_fpga_mem_load2_pre_395_0gr thei_llvm_fpga_mem_load2_pre_main_lambda_201_6gr (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_f),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond6_i_preheader_main_lambdas_c0_enter535_main_lambda_201_4gr_aunroll_x_V0),
        .in_load2_pre_main_lambda_avm_readdata(in_load2_pre_main_lambda_avm_readdata),
        .in_load2_pre_main_lambda_avm_readdatavalid(in_load2_pre_main_lambda_avm_readdatavalid),
        .in_load2_pre_main_lambda_avm_waitrequest(in_load2_pre_main_lambda_avm_waitrequest),
        .in_load2_pre_main_lambda_avm_writeack(in_load2_pre_main_lambda_avm_writeack),
        .out_load2_pre_main_lambda_avm_address(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_address),
        .out_load2_pre_main_lambda_avm_burstcount(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_burstcount),
        .out_load2_pre_main_lambda_avm_byteenable(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_byteenable),
        .out_load2_pre_main_lambda_avm_enable(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_enable),
        .out_load2_pre_main_lambda_avm_read(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_read),
        .out_load2_pre_main_lambda_avm_write(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_write),
        .out_load2_pre_main_lambda_avm_writedata(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_load2_pre_main_lambda_avm_address = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_address;
    assign out_load2_pre_main_lambda_avm_enable = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_enable;
    assign out_load2_pre_main_lambda_avm_read = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_read;
    assign out_load2_pre_main_lambda_avm_write = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_write;
    assign out_load2_pre_main_lambda_avm_writedata = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_writedata;
    assign out_load2_pre_main_lambda_avm_byteenable = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_byteenable;
    assign out_load2_pre_main_lambda_avm_burstcount = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_load2_pre_main_lambda_avm_burstcount;

    // sync_out_43(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr(BITJOIN,36)
    assign bubble_join_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_q = i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr(BITSELECT,37)
    assign bubble_select_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_b = bubble_join_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_q[31:0];

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,47)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,48)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[164:0];

    // sel_for_coalesced_delay_0(BITSELECT,33)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[63:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[95:64];
    assign sel_for_coalesced_delay_0_d = bubble_select_coalesced_delay_0_fifo_b[127:96];
    assign sel_for_coalesced_delay_0_e = bubble_select_coalesced_delay_0_fifo_b[159:128];
    assign sel_for_coalesced_delay_0_f = bubble_select_coalesced_delay_0_fifo_b[160:160];
    assign sel_for_coalesced_delay_0_g = bubble_select_coalesced_delay_0_fifo_b[161:161];
    assign sel_for_coalesced_delay_0_h = bubble_select_coalesced_delay_0_fifo_b[162:162];
    assign sel_for_coalesced_delay_0_i = bubble_select_coalesced_delay_0_fifo_b[163:163];
    assign sel_for_coalesced_delay_0_j = bubble_select_coalesced_delay_0_fifo_b[164:164];

    // sync_out_44(GPOUT,19)@77
    assign out_c0_exe160 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe261 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe362 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe463 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_j;
    assign out_load2_pre = bubble_select_i_llvm_fpga_mem_load2_pre_main_lambda_201_6gr_b;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_f;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // rst_sync(RESETSYNC,79)
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
