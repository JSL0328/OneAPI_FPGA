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

// SystemVerilog created from i_sfc_logic_s_c11_in_for_cond_cleanup4_i_dijkstraparallelids_c11_enter_dijkstraparallelid_1140_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c11_in_0000aparallelid_1140_0gr (
    input wire [63:0] in_arg_g,
    output wire [0:0] out_c11_exi2_0_tpl,
    output wire [63:0] out_c11_exi2_1_tpl,
    output wire [63:0] out_c11_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c11_eni2_0_tpl,
    input wire [31:0] in_c11_eni2_1_tpl,
    input wire [31:0] in_c11_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q;
    wire [63:0] i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_join_q;
    wire [61:0] i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_select_63_b;
    wire [63:0] i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_join_q;
    wire [61:0] i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_select_63_b;
    wire [31:0] bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b;
    wire [61:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_narrow_x_b;
    wire [63:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_dupName_0_trunc_sel_x_b;
    wire [61:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_narrow_x_b;
    wire [63:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom20_i_2_dijkstraparallelid_1143_3gr_sel_x_b;
    wire [63:0] i_idxprom20_i_3_dijkstraparallelid_1143_6gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [31:0] i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_a;
    wire [31:0] i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_b;
    logic [31:0] i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_o;
    wire [31:0] i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_q;
    wire [32:0] i_add_i_2_dijkstraparallelid_1143_2gr_split_join_q;
    wire [61:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [61:0] i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [30:0] i_add_i_2_dijkstraparallelid_1143_2gr_rhsMSBs_select_bit_select_merged_b;
    wire [0:0] i_add_i_2_dijkstraparallelid_1143_2gr_rhsMSBs_select_bit_select_merged_c;
    wire [30:0] i_add_i_2_dijkstraparallelid_1143_2gr_lhsMSBs_select_b_const_q;
    reg [31:0] redist0_sync_together_1143_15_aunroll_x_in_c11_eni2_2_tpl_1_q;
    reg [31:0] redist1_bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,46)@545 + 1
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

    // redist0_sync_together_1143_15_aunroll_x_in_c11_eni2_2_tpl_1(DELAY,73)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_1143_15_aunroll_x_in_c11_eni2_2_tpl_1_q <= in_c11_eni2_2_tpl;
        end
    end

    // i_idxprom20_i_3_dijkstraparallelid_1143_6gr_sel_x(BITSELECT,43)@546
    assign i_idxprom20_i_3_dijkstraparallelid_1143_6gr_sel_x_b = {{32{redist0_sync_together_1143_15_aunroll_x_in_c11_eni2_2_tpl_1_q[31]}}, redist0_sync_together_1143_15_aunroll_x_in_c11_eni2_2_tpl_1_q[31:0]};

    // i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_narrow_x(BITSELECT,38)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_narrow_x_b = i_idxprom20_i_3_dijkstraparallelid_1143_6gr_sel_x_b[61:0];

    // i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_shift_join_x(BITJOIN,39)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_shift_join_x_q = {i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_narrow_x_b, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,68)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg2(REG,48)@545 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr(BLACKBOX,21)@0
    // in in_i_dependence@546
    // in in_valid_in@546
    // out out_buffer_out@546
    // out out_valid_out@546
    DijkstraParallelID_i_llvm_fpga_sync_buff0000aparallelid_1167_0gr thei_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr (
        .in_buffer_in(in_arg_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_select_63(BITSELECT,24)@546
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_join(BITJOIN,23)@546
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_select_63_b, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_lhsMSBs_select(BITSELECT,64)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer167_dijkstraparallelid_1143_7gr_vt_join_q[63:2]);

    // i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums(ADD,65)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_split_join(BITJOIN,66)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_split_join_q = {i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_MSBs_sums_q, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_dupName_0_trunc_sel_x(BITSELECT,41)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_dupName_0_trunc_sel_x_b = i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_add_x_split_join_q[63:0];

    // i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_select_63(BITSELECT,12)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_select_63_b = i_arrayidx21_i_3_dijkstraparallelid_1172_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1(CONSTANT,7)
    assign i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q = 2'b00;

    // i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_join(BITJOIN,11)@546
    assign i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_join_q = {i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_select_63_b, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // i_add_i_2_dijkstraparallelid_1143_2gr_lhsMSBs_select_b_const(CONSTANT,70)
    assign i_add_i_2_dijkstraparallelid_1143_2gr_lhsMSBs_select_b_const_q = 31'b0000000000000000000000000000001;

    // i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums(ADD,55)@545
    assign i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_a = {1'b0, i_add_i_2_dijkstraparallelid_1143_2gr_lhsMSBs_select_b_const_q};
    assign i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_b = {1'b0, i_add_i_2_dijkstraparallelid_1143_2gr_rhsMSBs_select_bit_select_merged_b};
    assign i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_o = $unsigned(i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_a) + $unsigned(i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_b);
    assign i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_q = $signed(i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_o[31:0]);

    // i_add_i_2_dijkstraparallelid_1143_2gr_rhsMSBs_select_bit_select_merged(BITSELECT,69)@545
    assign i_add_i_2_dijkstraparallelid_1143_2gr_rhsMSBs_select_bit_select_merged_b = $signed(in_c11_eni2_1_tpl[31:1]);
    assign i_add_i_2_dijkstraparallelid_1143_2gr_rhsMSBs_select_bit_select_merged_c = $signed(in_c11_eni2_1_tpl[0:0]);

    // i_add_i_2_dijkstraparallelid_1143_2gr_split_join(BITJOIN,56)@545
    assign i_add_i_2_dijkstraparallelid_1143_2gr_split_join_q = {i_add_i_2_dijkstraparallelid_1143_2gr_MSBs_sums_q, i_add_i_2_dijkstraparallelid_1143_2gr_rhsMSBs_select_bit_select_merged_c};

    // bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x(BITSELECT,28)@545
    assign bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b = i_add_i_2_dijkstraparallelid_1143_2gr_split_join_q[31:0];

    // redist1_bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b_1(DELAY,74)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b_1_q <= bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b;
        end
    end

    // i_idxprom20_i_2_dijkstraparallelid_1143_3gr_sel_x(BITSELECT,42)@546
    assign i_idxprom20_i_2_dijkstraparallelid_1143_3gr_sel_x_b = {{32{redist1_bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b_1_q[31]}}, redist1_bgTrunc_i_add_i_2_dijkstraparallelid_1143_2gr_sel_x_b_1_q[31:0]};

    // i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_narrow_x(BITSELECT,32)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_narrow_x_b = i_idxprom20_i_2_dijkstraparallelid_1143_3gr_sel_x_b[61:0];

    // i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_shift_join_x(BITJOIN,33)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_shift_join_x_q = {i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_narrow_x_b, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,67)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg1(REG,47)@545 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr(BLACKBOX,17)@0
    // in in_i_dependence@546
    // in in_valid_in@546
    // out out_buffer_out@546
    // out out_valid_out@546
    DijkstraParallelID_i_llvm_fpga_sync_buff0000aparallelid_1151_0gr thei_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr (
        .in_buffer_in(in_arg_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_select_63(BITSELECT,20)@546
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_join(BITJOIN,19)@546
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_select_63_b, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_lhsMSBs_select(BITSELECT,59)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer166_dijkstraparallelid_1143_4gr_vt_join_q[63:2]);

    // i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums(ADD,60)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_split_join(BITJOIN,61)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_split_join_q = {i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_MSBs_sums_q, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_dupName_0_trunc_sel_x(BITSELECT,35)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_dupName_0_trunc_sel_x_b = i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_add_x_split_join_q[63:0];

    // i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_select_63(BITSELECT,9)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_select_63_b = i_arrayidx21_i_2_dijkstraparallelid_1156_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_join(BITJOIN,8)@546
    assign i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_join_q = {i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_select_63_b, i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_25_aunroll_x(GPOUT,44)@546
    assign out_c11_exi2_0_tpl = GND_q;
    assign out_c11_exi2_1_tpl = i_arrayidx21_i_2_dijkstraparallelid_1143_5gr_vt_join_q;
    assign out_c11_exi2_2_tpl = i_arrayidx21_i_3_dijkstraparallelid_1143_8gr_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
