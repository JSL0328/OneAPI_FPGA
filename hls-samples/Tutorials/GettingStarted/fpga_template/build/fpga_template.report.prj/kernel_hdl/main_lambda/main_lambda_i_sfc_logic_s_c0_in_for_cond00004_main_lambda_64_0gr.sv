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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond2_i_preheader_main_lambdas_c0_enter4_main_lambda_64_0gr
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_i_sfc_logic_s_c0_in_for_cond00004_main_lambda_64_0gr (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [31:0] out_c0_exi4_1_tpl,
    output wire [0:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_main_lambda_B1_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] c_i6_1_67_38_q;
    wire [5:0] c_i6_30_67_35_q;
    wire [6:0] c_i7_0_67_34_q;
    wire [0:0] i_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_not_main_lambda_67_14_q;
    wire [6:0] i_fpga_indvars_iv_next13_main_lambda_67_16_a;
    wire [6:0] i_fpga_indvars_iv_next13_main_lambda_67_16_b;
    logic [6:0] i_fpga_indvars_iv_next13_main_lambda_67_16_o;
    wire [6:0] i_fpga_indvars_iv_next13_main_lambda_67_16_q;
    wire [23:0] i_inc24_i_zext_main_lambda_67_19_vt_const_31_q;
    wire [31:0] i_inc24_i_zext_main_lambda_67_19_vt_join_q;
    wire [7:0] i_inc24_i_zext_main_lambda_67_19_vt_select_7_b;
    wire [0:0] i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_a;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_b;
    logic [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_o;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15_out_feedback_valid_out_5;
    wire [0:0] i_main_lambda_b1_current_iter_isspec_main_lambda_67_5gr_q;
    wire [0:0] i_main_lambda_b1_next_iter_isreal_main_lambda_67_7gr_q;
    wire [24:0] i_unnamed_main_lambda_67_10_vt_const_31_q;
    wire [31:0] i_unnamed_main_lambda_67_10_vt_join_q;
    wire [6:0] i_unnamed_main_lambda_67_10_vt_select_6_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next13_main_lambda_67_16_sel_x_b;
    wire [31:0] i_inc24_i_zext_main_lambda_67_19_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x_q;
    wire [1:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_c_i2_0_120_4gr_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_element_extension_120_3_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_s;
    reg [6:0] i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_q;
    wire [7:0] i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_element_extension_101_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_adapt_scalar_trunc_101_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_element_extension_140_2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_adapt_scalar_trunc_140_4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_element_extension_151_2_x_q;
    wire [0:0] i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_valid;
    wire i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_stall;
    wire i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_o_data;
    wire [6:0] i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_adapt_scalar_trunc_151_4_sel_x_b;
    wire [31:0] i_unnamed_main_lambda_67_10_sel_x_b;
    wire [6:0] i_unnamed_main_lambda_67_20_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    reg [0:0] redist0_sync_together_67_44_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q;
    reg [0:0] redist2_i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr_out_dummy_out_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist0_sync_together_67_44_aunroll_x_in_i_valid_1(DELAY,92)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_67_44_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_c_i2_0_120_4gr_x(CONSTANT,45)
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_c_i2_0_120_4gr_x_q = 2'b00;

    // c_i6_30_67_35(CONSTANT,16)
    assign c_i6_30_67_35_q = 6'b011110;

    // c_i6_1_67_38(CONSTANT,15)
    assign c_i6_1_67_38_q = 6'b111111;

    // i_fpga_indvars_iv_next13_main_lambda_67_16(ADD,19)@1
    assign i_fpga_indvars_iv_next13_main_lambda_67_16_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_q};
    assign i_fpga_indvars_iv_next13_main_lambda_67_16_b = {1'b0, c_i6_1_67_38_q};
    assign i_fpga_indvars_iv_next13_main_lambda_67_16_o = $unsigned(i_fpga_indvars_iv_next13_main_lambda_67_16_a) + $unsigned(i_fpga_indvars_iv_next13_main_lambda_67_16_b);
    assign i_fpga_indvars_iv_next13_main_lambda_67_16_q = i_fpga_indvars_iv_next13_main_lambda_67_16_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next13_main_lambda_67_16_sel_x(BITSELECT,38)@1
    assign bgTrunc_i_fpga_indvars_iv_next13_main_lambda_67_16_sel_x_b = i_fpga_indvars_iv_next13_main_lambda_67_16_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_element_extension_140_2_x(BITJOIN,60)@1
    assign i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_element_extension_140_2_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_c_i2_0_120_4gr_x_q, bgTrunc_i_fpga_indvars_iv_next13_main_lambda_67_16_sel_x_b};

    // i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x(FIFODELAY,61)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_stall = ~ (redist0_sync_together_67_44_aunroll_x_in_i_valid_1_q & VCC_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_valid = redist0_sync_together_67_44_aunroll_x_in_i_valid_1_q & VCC_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_element_extension_140_2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_element_extension_140_2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_adapt_scalar_trunc_140_4_sel_x(BITSELECT,63)@1
    assign i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_adapt_scalar_trunc_140_4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_1gr_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x(MUX,50)@1
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_s = redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv12_push6_main_lambda_140_0gr_adapt_scalar_trunc_140_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_q = c_i6_30_67_35_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_q = 6'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_element_extension_120_3_x(BITJOIN,47)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_element_extension_120_3_x_q = {i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_c_i2_0_120_4gr_x_q, i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_114_0gr_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop6_main_lambda_67_11_mux_x_q};

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x(CHOOSEBITS,43)@1
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_element_extension_120_3_x_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x_a[5:5];

    // i_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_not_main_lambda_67_14(LOGICAL,18)@1
    assign i_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_not_main_lambda_67_14_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15(BLACKBOX,28)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    main_lambda_i_llvm_fpga_push_i1_notexitcond23_130_0gr thei_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15 (
        .in_data_in(i_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_not_main_lambda_67_14_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist0_sync_together_67_44_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr(BLACKBOX,24)@0
    // in in_stall_in@20000000
    main_lambda_i_llvm_fpga_dummy_thread_b1_dummy_main_lambda_72_0gr thei_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr_out_dummy_out_1(DELAY,94)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr_out_dummy_out_1_q <= i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr_out_dummy_out;
        end
    end

    // i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr(BLACKBOX,25)@0
    // in in_stall_in@20000000
    main_lambda_i_llvm_fpga_forked_b1_forked_main_lambda_80_0gr thei_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1(DELAY,93)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr(BLACKBOX,27)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    main_lambda_i_llvm_fpga_pipeline_keep_going22_93_0gr thei_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr (
        .in_data_in(redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q),
        .in_dummy_in(redist2_i_llvm_fpga_dummy_thread_main_lambda_b1_dummy_main_lambda_67_2gr_out_dummy_out_1_q),
        .in_forked_in(redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond23_main_lambda_67_15_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist0_sync_together_67_44_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,36)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,39)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,40)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,41)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,74)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= in_i_valid;
        end
    end

    // c_i7_0_67_34(CONSTANT,17)
    assign c_i7_0_67_34_q = 7'b0000000;

    // i_main_lambda_b1_next_iter_isreal_main_lambda_67_7gr(LOGICAL,30)@1
    assign i_main_lambda_b1_next_iter_isreal_main_lambda_67_7gr_q = i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_q & i_llvm_fpga_pipeline_keep_going22_main_lambda_67_6gr_out_data_out;

    // i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_element_extension_101_2_x(BITJOIN,54)@1
    assign i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_element_extension_101_2_x_q = {c_i7_0_67_34_q, i_main_lambda_b1_next_iter_isreal_main_lambda_67_7gr_q};

    // valid_fanout_reg3(REG,77)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= in_i_valid;
        end
    end

    // valid_fanout_reg2(REG,76)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x(FIFODELAY,55)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_data = i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_element_extension_101_2_x_q;
    assign i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_element_extension_101_2_x_q),
        .o_data(i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_adapt_scalar_trunc_101_4_sel_x(BITSELECT,57)@1
    assign i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_adapt_scalar_trunc_101_4_sel_x_b = i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x(MUX,49)@1
    assign i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_s = redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_q = i_llvm_fpga_push_i1_main_lambda_b1_next_iter_isreal_push_main_lambda_101_0gr_adapt_scalar_trunc_101_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_q = 1'b0;
        endcase
    end

    // i_main_lambda_b1_current_iter_isspec_main_lambda_67_5gr(LOGICAL,29)@1
    assign i_main_lambda_b1_current_iter_isspec_main_lambda_67_5gr_q = i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_88_0gr_i_llvm_fpga_pop_coalesce_i1_main_lambda_b1_current_iter_isreal_main_lambda_67_4gr_mux_x_q ^ VCC_q;

    // i_unnamed_main_lambda_67_10_vt_const_31(CONSTANT,32)
    assign i_unnamed_main_lambda_67_10_vt_const_31_q = 25'b0000000000000000000000000;

    // i_inc24_i_zext_main_lambda_67_19_vt_const_31(CONSTANT,21)
    assign i_inc24_i_zext_main_lambda_67_19_vt_const_31_q = 24'b000000000000000000000000;

    // i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18(ADD,26)@1
    assign i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_a = {1'b0, i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_q};
    assign i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_b = {7'b0000000, VCC_q};
    assign i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_o = $unsigned(i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_a) + $unsigned(i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_b);
    assign i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_q = i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_o[7:0];

    // i_inc24_i_zext_main_lambda_67_19_sel_x(BITSELECT,42)@1
    assign i_inc24_i_zext_main_lambda_67_19_sel_x_b = {24'b000000000000000000000000, i_llvm_fpga_int_add_i8_i7_i1_inc24_i_i_main_lambda_67_18_q[7:0]};

    // i_inc24_i_zext_main_lambda_67_19_vt_select_7(BITSELECT,23)@1
    assign i_inc24_i_zext_main_lambda_67_19_vt_select_7_b = i_inc24_i_zext_main_lambda_67_19_sel_x_b[7:0];

    // i_inc24_i_zext_main_lambda_67_19_vt_join(BITJOIN,22)@1
    assign i_inc24_i_zext_main_lambda_67_19_vt_join_q = {i_inc24_i_zext_main_lambda_67_19_vt_const_31_q, i_inc24_i_zext_main_lambda_67_19_vt_select_7_b};

    // i_unnamed_main_lambda_67_20_sel_x(BITSELECT,71)@1
    assign i_unnamed_main_lambda_67_20_sel_x_b = i_inc24_i_zext_main_lambda_67_19_vt_join_q[6:0];

    // i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_element_extension_151_2_x(BITJOIN,66)@1
    assign i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_element_extension_151_2_x_q = {GND_q, i_unnamed_main_lambda_67_20_sel_x_b};

    // valid_fanout_reg6(REG,80)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= in_i_valid;
        end
    end

    // valid_fanout_reg5(REG,79)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x(FIFODELAY,67)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_stall = ~ (valid_fanout_reg6_q & VCC_q);
    assign i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_valid = valid_fanout_reg5_q & VCC_q;
    assign i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_data = i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_element_extension_151_2_x_q;
    assign i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x (
        .i_valid(i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_element_extension_151_2_x_q),
        .o_data(i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_adapt_scalar_trunc_151_4_sel_x(BITSELECT,69)@1
    assign i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_adapt_scalar_trunc_151_4_sel_x_b = i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_1gr_x_o_data[6:0];

    // i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x(MUX,51)@1
    assign i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_s = redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_q = i_llvm_fpga_push_i7_i_0_i6_narrowing_push7_main_lambda_151_0gr_adapt_scalar_trunc_151_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_q = c_i7_0_67_34_q;
            default : i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_q = 7'b0;
        endcase
    end

    // i_unnamed_main_lambda_67_10_sel_x(BITSELECT,70)@1
    assign i_unnamed_main_lambda_67_10_sel_x_b = {25'b0000000000000000000000000, i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_109_0gr_i_llvm_fpga_pop_i7_i_0_i6_narrowing_pop7_main_lambda_67_9gr_mux_x_q[6:0]};

    // i_unnamed_main_lambda_67_10_vt_select_6(BITSELECT,34)@1
    assign i_unnamed_main_lambda_67_10_vt_select_6_b = i_unnamed_main_lambda_67_10_sel_x_b[6:0];

    // i_unnamed_main_lambda_67_10_vt_join(BITJOIN,33)@1
    assign i_unnamed_main_lambda_67_10_vt_join_q = {i_unnamed_main_lambda_67_10_vt_const_31_q, i_unnamed_main_lambda_67_10_vt_select_6_b};

    // sync_out_1_aunroll_x(GPOUT,72)@1
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = i_unnamed_main_lambda_67_10_vt_join_q;
    assign out_c0_exi4_2_tpl = GND_q;
    assign out_c0_exi4_3_tpl = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond2_i_preheader_main_lambda_fpgaunique_0s_v1i32_fpga_indvars_iv12_pop6_struct_0_shuffle_bit5_main_lambda_120_0gr_NO_NAME_x_q;
    assign out_c0_exi4_4_tpl = redist1_i_llvm_fpga_forked_main_lambda_b1_forked_main_lambda_67_3gr_out_buffer_out_1_q;
    assign out_main_lambda_B1_current_iter_isspec = i_main_lambda_b1_current_iter_isspec_main_lambda_67_5gr_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist0_sync_together_67_44_aunroll_x_in_i_valid_1_q;

endmodule
