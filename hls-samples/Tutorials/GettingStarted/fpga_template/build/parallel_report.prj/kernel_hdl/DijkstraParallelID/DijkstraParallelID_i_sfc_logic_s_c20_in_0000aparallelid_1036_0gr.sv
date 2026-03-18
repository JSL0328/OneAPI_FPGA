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

// SystemVerilog created from i_sfc_logic_s_c20_in_for_cond_cleanup4_i_dijkstraparallelids_c20_enter_dijkstraparallelid_1036_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c20_in_0000aparallelid_1036_0gr (
    input wire [63:0] in_arg_g,
    output wire [0:0] out_c20_exi2_0_tpl,
    output wire [63:0] out_c20_exi2_1_tpl,
    output wire [63:0] out_c20_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c20_eni1_0_tpl,
    input wire [31:0] in_c20_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_9_1039_14_q;
    wire [32:0] i_add_i_9_dijkstraparallelid_1039_6gr_a;
    wire [32:0] i_add_i_9_dijkstraparallelid_1039_6gr_b;
    logic [32:0] i_add_i_9_dijkstraparallelid_1039_6gr_o;
    wire [32:0] i_add_i_9_dijkstraparallelid_1039_6gr_q;
    wire [1:0] i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q;
    wire [63:0] i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_join_q;
    wire [61:0] i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_select_63_b;
    wire [63:0] i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_join_q;
    wire [61:0] i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_select_63_b;
    wire [31:0] bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b;
    wire [61:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_narrow_x_b;
    wire [63:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_dupName_0_trunc_sel_x_b;
    wire [61:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_narrow_x_b;
    wire [63:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom20_i_8_dijkstraparallelid_1039_3gr_sel_x_b;
    wire [63:0] i_idxprom20_i_9_dijkstraparallelid_1039_7gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [29:0] i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_a;
    wire [29:0] i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_b;
    logic [29:0] i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_o;
    wire [29:0] i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_q;
    wire [32:0] i_add_i_8_dijkstraparallelid_1039_2gr_split_join_q;
    wire [61:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [61:0] i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [28:0] i_add_i_8_dijkstraparallelid_1039_2gr_rhsMSBs_select_bit_select_merged_b;
    wire [2:0] i_add_i_8_dijkstraparallelid_1039_2gr_rhsMSBs_select_bit_select_merged_c;
    wire [28:0] i_add_i_8_dijkstraparallelid_1039_2gr_lhsMSBs_select_b_const_q;
    reg [31:0] redist0_bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b_1_q;
    reg [31:0] redist1_bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,50)@2048 + 1
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

    // c_i32_9_1039_14(CONSTANT,7)
    assign c_i32_9_1039_14_q = 32'b00000000000000000000000000001001;

    // i_add_i_9_dijkstraparallelid_1039_6gr(ADD,9)@2048
    assign i_add_i_9_dijkstraparallelid_1039_6gr_a = {1'b0, in_c20_eni1_1_tpl};
    assign i_add_i_9_dijkstraparallelid_1039_6gr_b = {1'b0, c_i32_9_1039_14_q};
    assign i_add_i_9_dijkstraparallelid_1039_6gr_o = $unsigned(i_add_i_9_dijkstraparallelid_1039_6gr_a) + $unsigned(i_add_i_9_dijkstraparallelid_1039_6gr_b);
    assign i_add_i_9_dijkstraparallelid_1039_6gr_q = i_add_i_9_dijkstraparallelid_1039_6gr_o[32:0];

    // bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x(BITSELECT,32)@2048
    assign bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b = i_add_i_9_dijkstraparallelid_1039_6gr_q[31:0];

    // redist0_bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b_1(DELAY,78)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b_1_q <= bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b;
        end
    end

    // i_idxprom20_i_9_dijkstraparallelid_1039_7gr_sel_x(BITSELECT,47)@2049
    assign i_idxprom20_i_9_dijkstraparallelid_1039_7gr_sel_x_b = {{32{redist0_bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b_1_q[31]}}, redist0_bgTrunc_i_add_i_9_dijkstraparallelid_1039_6gr_sel_x_b_1_q[31:0]};

    // i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_narrow_x(BITSELECT,42)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_narrow_x_b = i_idxprom20_i_9_dijkstraparallelid_1039_7gr_sel_x_b[61:0];

    // i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_shift_join_x(BITJOIN,43)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_shift_join_x_q = {i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_narrow_x_b, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,73)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg2(REG,52)@2048 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr(BLACKBOX,24)@0
    // in in_i_dependence@2049
    // in in_valid_in@2049
    // out out_buffer_out@2049
    // out out_valid_out@2049
    DijkstraParallelID_i_llvm_fpga_sync_buff0000aparallelid_1064_0gr thei_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr (
        .in_buffer_in(in_arg_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_select_63(BITSELECT,27)@2049
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_join(BITJOIN,26)@2049
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_select_63_b, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_lhsMSBs_select(BITSELECT,69)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer173_dijkstraparallelid_1039_8gr_vt_join_q[63:2]);

    // i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums(ADD,70)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_split_join(BITJOIN,71)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_split_join_q = {i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_MSBs_sums_q, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_dupName_0_trunc_sel_x(BITSELECT,45)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_dupName_0_trunc_sel_x_b = i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_add_x_split_join_q[63:0];

    // i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_select_63(BITSELECT,15)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_select_63_b = i_arrayidx21_i_9_dijkstraparallelid_1069_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1(CONSTANT,10)
    assign i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q = 2'b00;

    // i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_join(BITJOIN,14)@2049
    assign i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_join_q = {i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_select_63_b, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // i_add_i_8_dijkstraparallelid_1039_2gr_lhsMSBs_select_b_const(CONSTANT,75)
    assign i_add_i_8_dijkstraparallelid_1039_2gr_lhsMSBs_select_b_const_q = 29'b00000000000000000000000000001;

    // i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums(ADD,60)@2048
    assign i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_a = {1'b0, i_add_i_8_dijkstraparallelid_1039_2gr_lhsMSBs_select_b_const_q};
    assign i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_b = {1'b0, i_add_i_8_dijkstraparallelid_1039_2gr_rhsMSBs_select_bit_select_merged_b};
    assign i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_o = $unsigned(i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_a) + $unsigned(i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_b);
    assign i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_q = $signed(i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_o[29:0]);

    // i_add_i_8_dijkstraparallelid_1039_2gr_rhsMSBs_select_bit_select_merged(BITSELECT,74)@2048
    assign i_add_i_8_dijkstraparallelid_1039_2gr_rhsMSBs_select_bit_select_merged_b = $signed(in_c20_eni1_1_tpl[31:3]);
    assign i_add_i_8_dijkstraparallelid_1039_2gr_rhsMSBs_select_bit_select_merged_c = $signed(in_c20_eni1_1_tpl[2:0]);

    // i_add_i_8_dijkstraparallelid_1039_2gr_split_join(BITJOIN,61)@2048
    assign i_add_i_8_dijkstraparallelid_1039_2gr_split_join_q = {i_add_i_8_dijkstraparallelid_1039_2gr_MSBs_sums_q, i_add_i_8_dijkstraparallelid_1039_2gr_rhsMSBs_select_bit_select_merged_c};

    // bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x(BITSELECT,31)@2048
    assign bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b = i_add_i_8_dijkstraparallelid_1039_2gr_split_join_q[31:0];

    // redist1_bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b_1(DELAY,79)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b_1_q <= bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b;
        end
    end

    // i_idxprom20_i_8_dijkstraparallelid_1039_3gr_sel_x(BITSELECT,46)@2049
    assign i_idxprom20_i_8_dijkstraparallelid_1039_3gr_sel_x_b = {{32{redist1_bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b_1_q[31]}}, redist1_bgTrunc_i_add_i_8_dijkstraparallelid_1039_2gr_sel_x_b_1_q[31:0]};

    // i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_narrow_x(BITSELECT,36)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_narrow_x_b = i_idxprom20_i_8_dijkstraparallelid_1039_3gr_sel_x_b[61:0];

    // i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_shift_join_x(BITJOIN,37)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_shift_join_x_q = {i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_narrow_x_b, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,72)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg1(REG,51)@2048 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr(BLACKBOX,20)@0
    // in in_i_dependence@2049
    // in in_valid_in@2049
    // out out_buffer_out@2049
    // out out_valid_out@2049
    DijkstraParallelID_i_llvm_fpga_sync_buff0000aparallelid_1047_0gr thei_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr (
        .in_buffer_in(in_arg_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_select_63(BITSELECT,23)@2049
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_join(BITJOIN,22)@2049
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_select_63_b, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_lhsMSBs_select(BITSELECT,64)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer172_dijkstraparallelid_1039_4gr_vt_join_q[63:2]);

    // i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums(ADD,65)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_split_join(BITJOIN,66)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_split_join_q = {i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_MSBs_sums_q, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_dupName_0_trunc_sel_x(BITSELECT,39)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_dupName_0_trunc_sel_x_b = i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_add_x_split_join_q[63:0];

    // i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_select_63(BITSELECT,12)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_select_63_b = i_arrayidx21_i_8_dijkstraparallelid_1052_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_join(BITJOIN,11)@2049
    assign i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_join_q = {i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_select_63_b, i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_24_aunroll_x(GPOUT,48)@2049
    assign out_c20_exi2_0_tpl = GND_q;
    assign out_c20_exi2_1_tpl = i_arrayidx21_i_8_dijkstraparallelid_1039_5gr_vt_join_q;
    assign out_c20_exi2_2_tpl = i_arrayidx21_i_9_dijkstraparallelid_1039_9gr_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
