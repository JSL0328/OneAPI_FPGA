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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body9_i_main_lambdas_c0_enter686_main_lambda_820_0gr
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_i_sfc_logic_s_c0_in_for_body0000_main_lambda_820_0gr (
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_b,
    output wire [0:0] out_c0_exi274_0_tpl,
    output wire [63:0] out_c0_exi274_1_tpl,
    output wire [63:0] out_c0_exi274_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_main_lambda2,
    input wire [0:0] in_c0_eni467_0_tpl,
    input wire [0:0] in_c0_eni467_1_tpl,
    input wire [31:0] in_c0_eni467_2_tpl,
    input wire [31:0] in_c0_eni467_3_tpl,
    input wire [0:0] in_c0_eni467_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [6:0] c_i7_0_823_30_q;
    wire [32:0] i_add_i_main_lambda_823_5gr_a;
    wire [32:0] i_add_i_main_lambda_823_5gr_b;
    logic [32:0] i_add_i_main_lambda_823_5gr_o;
    wire [32:0] i_add_i_main_lambda_823_5gr_q;
    wire [1:0] i_arrayidx13_i_main_lambda_823_14_vt_const_1_q;
    wire [63:0] i_arrayidx13_i_main_lambda_823_14_vt_join_q;
    wire [61:0] i_arrayidx13_i_main_lambda_823_14_vt_select_63_b;
    wire [63:0] i_arrayidx_i_main_lambda_823_8gr_vt_join_q;
    wire [61:0] i_arrayidx_i_main_lambda_823_8gr_vt_select_63_b;
    wire [23:0] i_inc_i_zext_main_lambda_823_16_vt_const_31_q;
    wire [31:0] i_inc_i_zext_main_lambda_823_16_vt_join_q;
    wire [7:0] i_inc_i_zext_main_lambda_823_16_vt_select_7_b;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_a;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_b;
    logic [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_o;
    wire [7:0] i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_q;
    wire [31:0] i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_feedback_stall_out_22;
    wire [6:0] i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_push22_main_lambda_823_18_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_push22_main_lambda_823_18_out_feedback_valid_out_22;
    wire [7:0] i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_select_63_b;
    wire [19:0] i_mul10_i_main_lambda_823_9gr_vt_const_31_q;
    wire [4:0] i_mul10_i_main_lambda_823_9gr_vt_const_4_q;
    wire [31:0] i_mul10_i_main_lambda_823_9gr_vt_join_q;
    wire [31:0] i_mul10_i_main_lambda_823_9gr_vt_select_11_in;
    wire [6:0] i_mul10_i_main_lambda_823_9gr_vt_select_11_b;
    wire [24:0] i_unnamed_main_lambda_823_3gr_vt_const_31_q;
    wire [31:0] i_unnamed_main_lambda_823_3gr_vt_join_q;
    wire [6:0] i_unnamed_main_lambda_823_3gr_vt_select_6_b;
    wire [31:0] bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b;
    wire [61:0] i_arrayidx13_i_main_lambda_882_0gr_narrow_x_b;
    wire [63:0] i_arrayidx13_i_main_lambda_882_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx13_i_main_lambda_882_0gr_dupName_0_trunc_sel_x_b;
    wire [61:0] i_arrayidx_i_main_lambda_853_0gr_narrow_x_b;
    wire [63:0] i_arrayidx_i_main_lambda_853_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx_i_main_lambda_853_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom12_i_main_lambda_823_12_sel_x_b;
    wire [63:0] i_idxprom_i_main_lambda_823_6gr_sel_x_b;
    wire [31:0] i_inc_i_zext_main_lambda_823_16_sel_x_b;
    wire [6:0] i_unnamed_main_lambda_823_17_sel_x_b;
    wire [31:0] i_unnamed_main_lambda_823_3gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    wire [26:0] i_add11_i_main_lambda_823_11_lhsMSBs_select_b;
    wire [27:0] i_add11_i_main_lambda_823_11_MSBs_sums_a;
    wire [27:0] i_add11_i_main_lambda_823_11_MSBs_sums_b;
    logic [27:0] i_add11_i_main_lambda_823_11_MSBs_sums_o;
    wire [27:0] i_add11_i_main_lambda_823_11_MSBs_sums_q;
    wire [32:0] i_add11_i_main_lambda_823_11_split_join_q;
    wire [61:0] i_arrayidx13_i_main_lambda_882_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx13_i_main_lambda_882_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx_i_main_lambda_853_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx_i_main_lambda_853_0gr_add_x_split_join_q;
    wire [36:0] i_mul10_i_main_lambda_862_0gr_shift_x_fs_q;
    wire [36:0] i_mul10_i_main_lambda_862_0gr_shift_x_fs_qint;
    wire [26:0] i_add11_i_main_lambda_823_11_rhsMSBs_select_bit_select_merged_b;
    wire [4:0] i_add11_i_main_lambda_823_11_rhsMSBs_select_bit_select_merged_c;
    wire [61:0] i_arrayidx13_i_main_lambda_882_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [61:0] i_arrayidx_i_main_lambda_853_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [0:0] redist0_sync_together_823_42_aunroll_x_in_c0_eni467_1_tpl_1_q;
    reg [31:0] redist1_sync_together_823_42_aunroll_x_in_c0_eni467_2_tpl_1_q;
    reg [31:0] redist2_sync_together_823_42_aunroll_x_in_c0_eni467_3_tpl_1_q;
    reg [0:0] redist3_sync_together_823_42_aunroll_x_in_c0_eni467_4_tpl_1_q;
    reg [0:0] redist4_sync_together_823_42_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist5_bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b_1_q;
    reg [31:0] redist6_bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist4_sync_together_823_42_aunroll_x_in_i_valid_1(DELAY,128)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together_823_42_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist4_sync_together_823_42_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg0(REG,85)@3 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist4_sync_together_823_42_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_mul10_i_main_lambda_823_9gr_vt_const_31(CONSTANT,46)
    assign i_mul10_i_main_lambda_823_9gr_vt_const_31_q = 20'b00000000000000000000;

    // i_unnamed_main_lambda_823_3gr_vt_const_31(CONSTANT,52)
    assign i_unnamed_main_lambda_823_3gr_vt_const_31_q = 25'b0000000000000000000000000;

    // valid_fanout_reg1(REG,86)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg8(REG,93)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= in_i_valid;
        end
    end

    // i_inc_i_zext_main_lambda_823_16_vt_const_31(CONSTANT,28)
    assign i_inc_i_zext_main_lambda_823_16_vt_const_31_q = 24'b000000000000000000000000;

    // i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15(ADD,31)@3
    assign i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_a = {1'b0, i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr_out_data_out};
    assign i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_b = {7'b0000000, VCC_q};
    assign i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_o = $unsigned(i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_a) + $unsigned(i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_b);
    assign i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_q = i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_o[7:0];

    // i_inc_i_zext_main_lambda_823_16_sel_x(BITSELECT,76)@3
    assign i_inc_i_zext_main_lambda_823_16_sel_x_b = {24'b000000000000000000000000, i_llvm_fpga_int_add_i8_i7_i1_inc_i_i_main_lambda_823_15_q[7:0]};

    // i_inc_i_zext_main_lambda_823_16_vt_select_7(BITSELECT,30)@3
    assign i_inc_i_zext_main_lambda_823_16_vt_select_7_b = i_inc_i_zext_main_lambda_823_16_sel_x_b[7:0];

    // i_inc_i_zext_main_lambda_823_16_vt_join(BITJOIN,29)@3
    assign i_inc_i_zext_main_lambda_823_16_vt_join_q = {i_inc_i_zext_main_lambda_823_16_vt_const_31_q, i_inc_i_zext_main_lambda_823_16_vt_select_7_b};

    // i_unnamed_main_lambda_823_17_sel_x(BITSELECT,81)@3
    assign i_unnamed_main_lambda_823_17_sel_x_b = i_inc_i_zext_main_lambda_823_16_vt_join_q[6:0];

    // redist3_sync_together_823_42_aunroll_x_in_c0_eni467_4_tpl_1(DELAY,127)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together_823_42_aunroll_x_in_c0_eni467_4_tpl_1_q <= in_c0_eni467_4_tpl;
        end
    end

    // i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20(BLACKBOX,37)@3
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    main_lambda_i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_908_0gr thei_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20 (
        .in_c0_ene472(redist3_sync_together_823_42_aunroll_x_in_c0_eni467_4_tpl_1_q),
        .in_data_in(i_unnamed_main_lambda_823_17_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together_823_42_aunroll_x_in_c0_eni467_1_tpl_1(DELAY,124)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_823_42_aunroll_x_in_c0_eni467_1_tpl_1_q <= in_c0_eni467_1_tpl;
        end
    end

    // c_i7_0_823_30(CONSTANT,14)
    assign c_i7_0_823_30_q = 7'b0000000;

    // i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr(BLACKBOX,34)@3
    // out out_feedback_stall_out_15@20000000
    main_lambda_i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_828_0gr thei_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr (
        .in_data_in(c_i7_0_823_30_q),
        .in_dir(redist0_sync_together_823_42_aunroll_x_in_c0_eni467_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i7_k_0_i4_narrowing_push15_main_lambda_823_20_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_main_lambda_823_3gr_sel_x(BITSELECT,82)@3
    assign i_unnamed_main_lambda_823_3gr_sel_x_b = {25'b0000000000000000000000000, i_llvm_fpga_pop_i7_k_0_i4_narrowing_pop15_main_lambda_823_2gr_out_data_out[6:0]};

    // i_unnamed_main_lambda_823_3gr_vt_select_6(BITSELECT,54)@3
    assign i_unnamed_main_lambda_823_3gr_vt_select_6_b = i_unnamed_main_lambda_823_3gr_sel_x_b[6:0];

    // i_unnamed_main_lambda_823_3gr_vt_join(BITJOIN,53)@3
    assign i_unnamed_main_lambda_823_3gr_vt_join_q = {i_unnamed_main_lambda_823_3gr_vt_const_31_q, i_unnamed_main_lambda_823_3gr_vt_select_6_b};

    // i_mul10_i_main_lambda_862_0gr_shift_x_fs(BITSHIFT,118)@3
    assign i_mul10_i_main_lambda_862_0gr_shift_x_fs_qint = { i_unnamed_main_lambda_823_3gr_vt_join_q, 5'b00000 };
    assign i_mul10_i_main_lambda_862_0gr_shift_x_fs_q = i_mul10_i_main_lambda_862_0gr_shift_x_fs_qint[36:0];

    // i_mul10_i_main_lambda_823_9gr_vt_select_11(BITSELECT,49)@3
    assign i_mul10_i_main_lambda_823_9gr_vt_select_11_in = i_mul10_i_main_lambda_862_0gr_shift_x_fs_q[31:0];
    assign i_mul10_i_main_lambda_823_9gr_vt_select_11_b = i_mul10_i_main_lambda_823_9gr_vt_select_11_in[11:5];

    // i_mul10_i_main_lambda_823_9gr_vt_const_4(CONSTANT,47)
    assign i_mul10_i_main_lambda_823_9gr_vt_const_4_q = 5'b00000;

    // i_mul10_i_main_lambda_823_9gr_vt_join(BITJOIN,48)@3
    assign i_mul10_i_main_lambda_823_9gr_vt_join_q = {i_mul10_i_main_lambda_823_9gr_vt_const_31_q, i_mul10_i_main_lambda_823_9gr_vt_select_11_b, i_mul10_i_main_lambda_823_9gr_vt_const_4_q};

    // i_add11_i_main_lambda_823_11_lhsMSBs_select(BITSELECT,105)@3
    assign i_add11_i_main_lambda_823_11_lhsMSBs_select_b = $signed(i_mul10_i_main_lambda_823_9gr_vt_join_q[31:5]);

    // i_add11_i_main_lambda_823_11_MSBs_sums(ADD,106)@3
    assign i_add11_i_main_lambda_823_11_MSBs_sums_a = {1'b0, i_add11_i_main_lambda_823_11_lhsMSBs_select_b};
    assign i_add11_i_main_lambda_823_11_MSBs_sums_b = {1'b0, i_add11_i_main_lambda_823_11_rhsMSBs_select_bit_select_merged_b};
    assign i_add11_i_main_lambda_823_11_MSBs_sums_o = $unsigned(i_add11_i_main_lambda_823_11_MSBs_sums_a) + $unsigned(i_add11_i_main_lambda_823_11_MSBs_sums_b);
    assign i_add11_i_main_lambda_823_11_MSBs_sums_q = $signed(i_add11_i_main_lambda_823_11_MSBs_sums_o[27:0]);

    // valid_fanout_reg4(REG,89)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= in_i_valid;
        end
    end

    // valid_fanout_reg6(REG,91)@2 + 1
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

    // i_llvm_fpga_push_i32_push22_main_lambda_823_18(BLACKBOX,36)@3
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    main_lambda_i_llvm_fpga_push_i32_push22_894_0gr thei_llvm_fpga_push_i32_push22_main_lambda_823_18 (
        .in_c0_ene472(redist3_sync_together_823_42_aunroll_x_in_c0_eni467_4_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_push22_main_lambda_823_18_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_push22_main_lambda_823_18_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together_823_42_aunroll_x_in_c0_eni467_3_tpl_1(DELAY,126)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_823_42_aunroll_x_in_c0_eni467_3_tpl_1_q <= in_c0_eni467_3_tpl;
        end
    end

    // i_llvm_fpga_pop_i32_pop22_main_lambda_823_10(BLACKBOX,33)@3
    // out out_feedback_stall_out_22@20000000
    main_lambda_i_llvm_fpga_pop_i32_pop22_867_0gr thei_llvm_fpga_pop_i32_pop22_main_lambda_823_10 (
        .in_data_in(redist2_sync_together_823_42_aunroll_x_in_c0_eni467_3_tpl_1_q),
        .in_dir(redist0_sync_together_823_42_aunroll_x_in_c0_eni467_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_push22_main_lambda_823_18_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_push22_main_lambda_823_18_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add11_i_main_lambda_823_11_rhsMSBs_select_bit_select_merged(BITSELECT,119)@3
    assign i_add11_i_main_lambda_823_11_rhsMSBs_select_bit_select_merged_b = $signed(i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_data_out[31:5]);
    assign i_add11_i_main_lambda_823_11_rhsMSBs_select_bit_select_merged_c = $signed(i_llvm_fpga_pop_i32_pop22_main_lambda_823_10_out_data_out[4:0]);

    // i_add11_i_main_lambda_823_11_split_join(BITJOIN,107)@3
    assign i_add11_i_main_lambda_823_11_split_join_q = {i_add11_i_main_lambda_823_11_MSBs_sums_q, i_add11_i_main_lambda_823_11_rhsMSBs_select_bit_select_merged_c};

    // bgTrunc_i_add11_i_main_lambda_823_11_sel_x(BITSELECT,59)@3
    assign bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b = i_add11_i_main_lambda_823_11_split_join_q[31:0];

    // redist6_bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b_1(DELAY,130)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b_1_q <= bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b;
        end
    end

    // i_idxprom12_i_main_lambda_823_12_sel_x(BITSELECT,74)@4
    assign i_idxprom12_i_main_lambda_823_12_sel_x_b = {{32{redist6_bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b_1_q[31]}}, redist6_bgTrunc_i_add11_i_main_lambda_823_11_sel_x_b_1_q[31:0]};

    // i_arrayidx13_i_main_lambda_882_0gr_narrow_x(BITSELECT,64)@4
    assign i_arrayidx13_i_main_lambda_882_0gr_narrow_x_b = i_idxprom12_i_main_lambda_823_12_sel_x_b[61:0];

    // i_arrayidx13_i_main_lambda_882_0gr_shift_join_x(BITJOIN,65)@4
    assign i_arrayidx13_i_main_lambda_882_0gr_shift_join_x_q = {i_arrayidx13_i_main_lambda_882_0gr_narrow_x_b, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // i_arrayidx13_i_main_lambda_882_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,120)@4
    assign i_arrayidx13_i_main_lambda_882_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx13_i_main_lambda_882_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg5(REG,90)@3 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= redist4_sync_together_823_42_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13(BLACKBOX,42)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    main_lambda_i_llvm_fpga_sync_buffer_p1020000_sync_buffer_877_0gr thei_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13 (
        .in_buffer_in(in_arg_b),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_select_63(BITSELECT,45)@4
    assign i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_join(BITJOIN,44)@4
    assign i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_select_63_b, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // i_arrayidx13_i_main_lambda_882_0gr_add_x_lhsMSBs_select(BITSELECT,110)@4
    assign i_arrayidx13_i_main_lambda_882_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_b_sync_buffer_main_lambda_823_13_vt_join_q[63:2]);

    // i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums(ADD,111)@4
    assign i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx13_i_main_lambda_882_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx13_i_main_lambda_882_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx13_i_main_lambda_882_0gr_add_x_split_join(BITJOIN,112)@4
    assign i_arrayidx13_i_main_lambda_882_0gr_add_x_split_join_q = {i_arrayidx13_i_main_lambda_882_0gr_add_x_MSBs_sums_q, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // i_arrayidx13_i_main_lambda_882_0gr_dupName_0_trunc_sel_x(BITSELECT,67)@4
    assign i_arrayidx13_i_main_lambda_882_0gr_dupName_0_trunc_sel_x_b = i_arrayidx13_i_main_lambda_882_0gr_add_x_split_join_q[63:0];

    // i_arrayidx13_i_main_lambda_823_14_vt_select_63(BITSELECT,19)@4
    assign i_arrayidx13_i_main_lambda_823_14_vt_select_63_b = i_arrayidx13_i_main_lambda_882_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx13_i_main_lambda_823_14_vt_const_1(CONSTANT,17)
    assign i_arrayidx13_i_main_lambda_823_14_vt_const_1_q = 2'b00;

    // i_arrayidx13_i_main_lambda_823_14_vt_join(BITJOIN,18)@4
    assign i_arrayidx13_i_main_lambda_823_14_vt_join_q = {i_arrayidx13_i_main_lambda_823_14_vt_select_63_b, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // valid_fanout_reg2(REG,87)@2 + 1
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

    // valid_fanout_reg7(REG,92)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19(BLACKBOX,35)@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    main_lambda_i_llvm_fpga_push_i32_mul_i32_push21_901_0gr thei_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19 (
        .in_c0_ene472(redist3_sync_together_823_42_aunroll_x_in_c0_eni467_4_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together_823_42_aunroll_x_in_c0_eni467_2_tpl_1(DELAY,125)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_823_42_aunroll_x_in_c0_eni467_2_tpl_1_q <= in_c0_eni467_2_tpl;
        end
    end

    // i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr(BLACKBOX,32)@3
    // out out_feedback_stall_out_21@20000000
    main_lambda_i_llvm_fpga_pop_i32_mul_i32_pop21_838_0gr thei_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr (
        .in_data_in(redist1_sync_together_823_42_aunroll_x_in_c0_eni467_2_tpl_1_q),
        .in_dir(redist0_sync_together_823_42_aunroll_x_in_c0_eni467_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_mul_i32_push21_main_lambda_823_19_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_i_main_lambda_823_5gr(ADD,16)@3
    assign i_add_i_main_lambda_823_5gr_a = {1'b0, i_unnamed_main_lambda_823_3gr_vt_join_q};
    assign i_add_i_main_lambda_823_5gr_b = {1'b0, i_llvm_fpga_pop_i32_mul_i32_pop21_main_lambda_823_4gr_out_data_out};
    assign i_add_i_main_lambda_823_5gr_o = $unsigned(i_add_i_main_lambda_823_5gr_a) + $unsigned(i_add_i_main_lambda_823_5gr_b);
    assign i_add_i_main_lambda_823_5gr_q = i_add_i_main_lambda_823_5gr_o[32:0];

    // bgTrunc_i_add_i_main_lambda_823_5gr_sel_x(BITSELECT,60)@3
    assign bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b = i_add_i_main_lambda_823_5gr_q[31:0];

    // redist5_bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b_1(DELAY,129)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b_1_q <= bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b;
        end
    end

    // i_idxprom_i_main_lambda_823_6gr_sel_x(BITSELECT,75)@4
    assign i_idxprom_i_main_lambda_823_6gr_sel_x_b = {{32{redist5_bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b_1_q[31]}}, redist5_bgTrunc_i_add_i_main_lambda_823_5gr_sel_x_b_1_q[31:0]};

    // i_arrayidx_i_main_lambda_853_0gr_narrow_x(BITSELECT,70)@4
    assign i_arrayidx_i_main_lambda_853_0gr_narrow_x_b = i_idxprom_i_main_lambda_823_6gr_sel_x_b[61:0];

    // i_arrayidx_i_main_lambda_853_0gr_shift_join_x(BITJOIN,71)@4
    assign i_arrayidx_i_main_lambda_853_0gr_shift_join_x_q = {i_arrayidx_i_main_lambda_853_0gr_narrow_x_b, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // i_arrayidx_i_main_lambda_853_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,121)@4
    assign i_arrayidx_i_main_lambda_853_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx_i_main_lambda_853_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg3(REG,88)@3 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist4_sync_together_823_42_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr(BLACKBOX,38)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    main_lambda_i_llvm_fpga_sync_buffer_p1020000_sync_buffer_848_0gr thei_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr (
        .in_buffer_in(in_arg_a),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_select_63(BITSELECT,41)@4
    assign i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_join(BITJOIN,40)@4
    assign i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_select_63_b, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // i_arrayidx_i_main_lambda_853_0gr_add_x_lhsMSBs_select(BITSELECT,115)@4
    assign i_arrayidx_i_main_lambda_853_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_a_sync_buffer_main_lambda_823_7gr_vt_join_q[63:2]);

    // i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums(ADD,116)@4
    assign i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx_i_main_lambda_853_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx_i_main_lambda_853_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx_i_main_lambda_853_0gr_add_x_split_join(BITJOIN,117)@4
    assign i_arrayidx_i_main_lambda_853_0gr_add_x_split_join_q = {i_arrayidx_i_main_lambda_853_0gr_add_x_MSBs_sums_q, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // i_arrayidx_i_main_lambda_853_0gr_dupName_0_trunc_sel_x(BITSELECT,73)@4
    assign i_arrayidx_i_main_lambda_853_0gr_dupName_0_trunc_sel_x_b = i_arrayidx_i_main_lambda_853_0gr_add_x_split_join_q[63:0];

    // i_arrayidx_i_main_lambda_823_8gr_vt_select_63(BITSELECT,22)@4
    assign i_arrayidx_i_main_lambda_823_8gr_vt_select_63_b = i_arrayidx_i_main_lambda_853_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx_i_main_lambda_823_8gr_vt_join(BITJOIN,21)@4
    assign i_arrayidx_i_main_lambda_823_8gr_vt_join_q = {i_arrayidx_i_main_lambda_823_8gr_vt_select_63_b, i_arrayidx13_i_main_lambda_823_14_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_3_aunroll_x(GPOUT,83)@4
    assign out_c0_exi274_0_tpl = GND_q;
    assign out_c0_exi274_1_tpl = i_arrayidx_i_main_lambda_823_8gr_vt_join_q;
    assign out_c0_exi274_2_tpl = i_arrayidx13_i_main_lambda_823_14_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_main_lambda2 = GND_q;

endmodule
