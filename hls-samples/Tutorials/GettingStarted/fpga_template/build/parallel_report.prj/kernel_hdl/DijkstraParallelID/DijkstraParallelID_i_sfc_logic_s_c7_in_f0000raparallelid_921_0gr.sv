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

// SystemVerilog created from i_sfc_logic_s_c7_in_for_cond_cleanup4_i_dijkstraparallelids_c7_enter_dijkstraparallelid_921_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c7_in_f0000raparallelid_921_0gr (
    input wire [63:0] in_arg_g,
    output wire [0:0] out_c7_exi6_0_tpl,
    output wire [31:0] out_c7_exi6_1_tpl,
    output wire [63:0] out_c7_exi6_2_tpl,
    output wire [63:0] out_c7_exi6_3_tpl,
    output wire [31:0] out_c7_exi6_4_tpl,
    output wire [31:0] out_c7_exi6_5_tpl,
    output wire [31:0] out_c7_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c7_eni2_0_tpl,
    input wire [31:0] in_c7_eni2_1_tpl,
    input wire [31:0] in_c7_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_1_924_16_q;
    wire [31:0] c_i32_3_924_17_q;
    wire [31:0] c_i32_5_924_18_q;
    wire [32:0] i_add_i_1_dijkstraparallelid_924_6gr_a;
    wire [32:0] i_add_i_1_dijkstraparallelid_924_6gr_b;
    logic [32:0] i_add_i_1_dijkstraparallelid_924_6gr_o;
    wire [32:0] i_add_i_1_dijkstraparallelid_924_6gr_q;
    wire [32:0] i_add_i_3_dijkstraparallelid_924_10_a;
    wire [32:0] i_add_i_3_dijkstraparallelid_924_10_b;
    logic [32:0] i_add_i_3_dijkstraparallelid_924_10_o;
    wire [32:0] i_add_i_3_dijkstraparallelid_924_10_q;
    wire [32:0] i_add_i_5_dijkstraparallelid_924_11_a;
    wire [32:0] i_add_i_5_dijkstraparallelid_924_11_b;
    logic [32:0] i_add_i_5_dijkstraparallelid_924_11_o;
    wire [32:0] i_add_i_5_dijkstraparallelid_924_11_q;
    wire [1:0] i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q;
    wire [63:0] i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_join_q;
    wire [61:0] i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_select_63_b;
    wire [63:0] i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_join_q;
    wire [61:0] i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_select_63_b;
    wire [32:0] i_mul_i_add164_dijkstraparallelid_924_2gr_a;
    wire [32:0] i_mul_i_add164_dijkstraparallelid_924_2gr_b;
    logic [32:0] i_mul_i_add164_dijkstraparallelid_924_2gr_o;
    wire [32:0] i_mul_i_add164_dijkstraparallelid_924_2gr_q;
    wire [31:0] bgTrunc_i_add_i_10_dijkstraparallelid_924_12_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_3_dijkstraparallelid_924_10_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_5_dijkstraparallelid_924_11_sel_x_b;
    wire [31:0] bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b;
    wire [61:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_narrow_x_b;
    wire [63:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_dupName_0_trunc_sel_x_b;
    wire [61:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_narrow_x_b;
    wire [63:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom20_i_1_dijkstraparallelid_924_7gr_sel_x_b;
    wire [63:0] i_idxprom20_i_dijkstraparallelid_924_3gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [30:0] i_add_i_10_dijkstraparallelid_924_12_rhsMSBs_select_b;
    wire [0:0] i_add_i_10_dijkstraparallelid_924_12_rhsLSBs_select_b;
    wire [31:0] i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_a;
    wire [31:0] i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_b;
    logic [31:0] i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_o;
    wire [31:0] i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_q;
    wire [32:0] i_add_i_10_dijkstraparallelid_924_12_split_join_q;
    wire [61:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [61:0] i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [30:0] i_add_i_10_dijkstraparallelid_924_12_lhsMSBs_select_b_const_q;
    reg [0:0] redist0_sync_together_924_23_aunroll_x_in_i_valid_39_q;
    reg [31:0] redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q;
    reg [31:0] redist3_bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b_1_q;
    reg [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_outputreg0_q;
    wire redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_reset0;
    wire [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_ia;
    wire [1:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_aa;
    wire [1:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_ab;
    wire [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_iq;
    wire [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_q;
    wire [1:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_i = 2'b11;
    wire [1:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_offset_q;
    wire [2:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_a;
    wire [2:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_b;
    logic [2:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_o;
    wire [2:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_q;
    reg [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_inputreg0_q;
    wire redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_reset0;
    wire [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_ia;
    wire [4:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_aa;
    wire [4:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_ab;
    wire [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_iq;
    wire [31:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_q;
    wire [4:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_i = 5'b11111;
    wire [4:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_offset_q;
    wire [5:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_a;
    wire [5:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_b;
    logic [5:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_o;
    wire [5:0] redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist0_sync_together_924_23_aunroll_x_in_i_valid_39(DELAY,91)
    dspba_delay_ver #( .width(1), .depth(39), .reset_kind("SYNC"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist0_sync_together_924_23_aunroll_x_in_i_valid_39 ( .xin(in_i_valid), .xout(redist0_sync_together_924_23_aunroll_x_in_i_valid_39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,61)@44 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist0_sync_together_924_23_aunroll_x_in_i_valid_39_q;
        end
    end

    // i_add_i_10_dijkstraparallelid_924_12_rhsMSBs_select(BITSELECT,71)@45
    assign i_add_i_10_dijkstraparallelid_924_12_rhsMSBs_select_b = $signed(redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q[31:1]);

    // i_add_i_10_dijkstraparallelid_924_12_lhsMSBs_select_b_const(CONSTANT,88)
    assign i_add_i_10_dijkstraparallelid_924_12_lhsMSBs_select_b_const_q = 31'b0000000000000000000000000000101;

    // i_add_i_10_dijkstraparallelid_924_12_MSBs_sums(ADD,74)@45
    assign i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_a = {1'b0, i_add_i_10_dijkstraparallelid_924_12_lhsMSBs_select_b_const_q};
    assign i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_b = {1'b0, i_add_i_10_dijkstraparallelid_924_12_rhsMSBs_select_b};
    assign i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_o = $unsigned(i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_a) + $unsigned(i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_b);
    assign i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_q = $signed(i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_o[31:0]);

    // i_add_i_10_dijkstraparallelid_924_12_rhsLSBs_select(BITSELECT,72)@45
    assign i_add_i_10_dijkstraparallelid_924_12_rhsLSBs_select_b = $signed(redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q[0:0]);

    // i_add_i_10_dijkstraparallelid_924_12_split_join(BITJOIN,75)@45
    assign i_add_i_10_dijkstraparallelid_924_12_split_join_q = {i_add_i_10_dijkstraparallelid_924_12_MSBs_sums_q, i_add_i_10_dijkstraparallelid_924_12_rhsLSBs_select_b};

    // bgTrunc_i_add_i_10_dijkstraparallelid_924_12_sel_x(BITSELECT,39)@45
    assign bgTrunc_i_add_i_10_dijkstraparallelid_924_12_sel_x_b = i_add_i_10_dijkstraparallelid_924_12_split_join_q[31:0];

    // c_i32_5_924_18(CONSTANT,12)
    assign c_i32_5_924_18_q = 32'b00000000000000000000000000000101;

    // i_add_i_5_dijkstraparallelid_924_11(ADD,16)@45
    assign i_add_i_5_dijkstraparallelid_924_11_a = {1'b0, redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q};
    assign i_add_i_5_dijkstraparallelid_924_11_b = {1'b0, c_i32_5_924_18_q};
    assign i_add_i_5_dijkstraparallelid_924_11_o = $unsigned(i_add_i_5_dijkstraparallelid_924_11_a) + $unsigned(i_add_i_5_dijkstraparallelid_924_11_b);
    assign i_add_i_5_dijkstraparallelid_924_11_q = i_add_i_5_dijkstraparallelid_924_11_o[32:0];

    // bgTrunc_i_add_i_5_dijkstraparallelid_924_11_sel_x(BITSELECT,42)@45
    assign bgTrunc_i_add_i_5_dijkstraparallelid_924_11_sel_x_b = i_add_i_5_dijkstraparallelid_924_11_q[31:0];

    // c_i32_3_924_17(CONSTANT,11)
    assign c_i32_3_924_17_q = 32'b00000000000000000000000000000011;

    // i_add_i_3_dijkstraparallelid_924_10(ADD,15)@45
    assign i_add_i_3_dijkstraparallelid_924_10_a = {1'b0, redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q};
    assign i_add_i_3_dijkstraparallelid_924_10_b = {1'b0, c_i32_3_924_17_q};
    assign i_add_i_3_dijkstraparallelid_924_10_o = $unsigned(i_add_i_3_dijkstraparallelid_924_10_a) + $unsigned(i_add_i_3_dijkstraparallelid_924_10_b);
    assign i_add_i_3_dijkstraparallelid_924_10_q = i_add_i_3_dijkstraparallelid_924_10_o[32:0];

    // bgTrunc_i_add_i_3_dijkstraparallelid_924_10_sel_x(BITSELECT,41)@45
    assign bgTrunc_i_add_i_3_dijkstraparallelid_924_10_sel_x_b = i_add_i_3_dijkstraparallelid_924_10_q[31:0];

    // c_i32_1_924_16(CONSTANT,10)
    assign c_i32_1_924_16_q = 32'b00000000000000000000000000000001;

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_offset(CONSTANT,99)
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_offset_q = 2'b10;

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt(ADD,100)
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_a = {1'b0, redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_q};
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_b = {1'b0, redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_o <= $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_a) + $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_b);
        end
    end
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_q = redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_o[2:0];

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_offset(CONSTANT,104)
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_offset_q = 5'b00011;

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt(ADD,105)
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_a = {1'b0, redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_q};
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_b = {1'b0, redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_o <= $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_a) + $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_b);
        end
    end
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_q = redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_o[5:0];

    // i_mul_i_add164_dijkstraparallelid_924_2gr(ADD,35)@5
    assign i_mul_i_add164_dijkstraparallelid_924_2gr_a = {1'b0, in_c7_eni2_1_tpl};
    assign i_mul_i_add164_dijkstraparallelid_924_2gr_b = {1'b0, in_c7_eni2_2_tpl};
    assign i_mul_i_add164_dijkstraparallelid_924_2gr_o = $unsigned(i_mul_i_add164_dijkstraparallelid_924_2gr_a) + $unsigned(i_mul_i_add164_dijkstraparallelid_924_2gr_b);
    assign i_mul_i_add164_dijkstraparallelid_924_2gr_q = i_mul_i_add164_dijkstraparallelid_924_2gr_o[32:0];

    // bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x(BITSELECT,43)@5
    assign bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b = i_mul_i_add164_dijkstraparallelid_924_2gr_q[31:0];

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_inputreg0(DELAY,101)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_inputreg0_q <= bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b;
        end
    end

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr(COUNTER,103)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_i <= $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_q = $signed(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_i[4:0]);

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem(DUALMEM,102)
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_ia = $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_inputreg0_q);
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_aa = redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_wraddr_q;
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_ab = redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_aa),
        .data_a(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_ab),
        .q_b(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_q = $signed(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_iq[31:0]);

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr(COUNTER,98)
    // low=0, high=3, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_i <= $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_q = $signed(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_i[1:0]);

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem(DUALMEM,97)
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_ia = $unsigned(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_split_0_mem_q);
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_aa = redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_wraddr_q;
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_ab = redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_aa),
        .data_a(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_ab),
        .q_b(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_q = $signed(redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_iq[31:0]);

    // redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_outputreg0(DELAY,96)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_outputreg0_q <= redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_mem_q;
        end
    end

    // i_add_i_1_dijkstraparallelid_924_6gr(ADD,14)@44
    assign i_add_i_1_dijkstraparallelid_924_6gr_a = {1'b0, redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_outputreg0_q};
    assign i_add_i_1_dijkstraparallelid_924_6gr_b = {1'b0, c_i32_1_924_16_q};
    assign i_add_i_1_dijkstraparallelid_924_6gr_o = $unsigned(i_add_i_1_dijkstraparallelid_924_6gr_a) + $unsigned(i_add_i_1_dijkstraparallelid_924_6gr_b);
    assign i_add_i_1_dijkstraparallelid_924_6gr_q = i_add_i_1_dijkstraparallelid_924_6gr_o[32:0];

    // bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x(BITSELECT,40)@44
    assign bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b = i_add_i_1_dijkstraparallelid_924_6gr_q[31:0];

    // redist3_bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b_1(DELAY,94)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b_1_q <= bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b;
        end
    end

    // i_idxprom20_i_1_dijkstraparallelid_924_7gr_sel_x(BITSELECT,57)@45
    assign i_idxprom20_i_1_dijkstraparallelid_924_7gr_sel_x_b = {{32{redist3_bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b_1_q[31]}}, redist3_bgTrunc_i_add_i_1_dijkstraparallelid_924_6gr_sel_x_b_1_q[31:0]};

    // i_arrayidx21_i_1_dijkstraparallelid_954_0gr_narrow_x(BITSELECT,47)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_narrow_x_b = i_idxprom20_i_1_dijkstraparallelid_924_7gr_sel_x_b[61:0];

    // i_arrayidx21_i_1_dijkstraparallelid_954_0gr_shift_join_x(BITJOIN,48)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_shift_join_x_q = {i_arrayidx21_i_1_dijkstraparallelid_954_0gr_narrow_x_b, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,86)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx21_i_1_dijkstraparallelid_954_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg2(REG,63)@44 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= redist0_sync_together_924_23_aunroll_x_in_i_valid_39_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr(BLACKBOX,27)@0
    // in in_i_dependence@45
    // in in_valid_in@45
    // out out_buffer_out@45
    // out out_valid_out@45
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_949_0gr thei_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr (
        .in_buffer_in(in_arg_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_select_63(BITSELECT,30)@45
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_join(BITJOIN,29)@45
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_select_63_b, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_lhsMSBs_select(BITSELECT,78)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer165_dijkstraparallelid_924_8gr_vt_join_q[63:2]);

    // i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums(ADD,79)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_split_join(BITJOIN,80)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_split_join_q = {i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_MSBs_sums_q, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // i_arrayidx21_i_1_dijkstraparallelid_954_0gr_dupName_0_trunc_sel_x(BITSELECT,50)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_954_0gr_dupName_0_trunc_sel_x_b = i_arrayidx21_i_1_dijkstraparallelid_954_0gr_add_x_split_join_q[63:0];

    // i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_select_63(BITSELECT,19)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_select_63_b = i_arrayidx21_i_1_dijkstraparallelid_954_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1(CONSTANT,17)
    assign i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q = 2'b00;

    // i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_join(BITJOIN,18)@45
    assign i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_join_q = {i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_select_63_b, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // i_idxprom20_i_dijkstraparallelid_924_3gr_sel_x(BITSELECT,58)@45
    assign i_idxprom20_i_dijkstraparallelid_924_3gr_sel_x_b = {{32{redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q[31]}}, redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q[31:0]};

    // i_arrayidx21_i_dijkstraparallelid_937_0gr_narrow_x(BITSELECT,53)@45
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_narrow_x_b = i_idxprom20_i_dijkstraparallelid_924_3gr_sel_x_b[61:0];

    // i_arrayidx21_i_dijkstraparallelid_937_0gr_shift_join_x(BITJOIN,54)@45
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_shift_join_x_q = {i_arrayidx21_i_dijkstraparallelid_937_0gr_narrow_x_b, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,87)@45
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx21_i_dijkstraparallelid_937_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg1(REG,62)@44 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= redist0_sync_together_924_23_aunroll_x_in_i_valid_39_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr(BLACKBOX,31)@0
    // in in_i_dependence@45
    // in in_valid_in@45
    // out out_buffer_out@45
    // out out_valid_out@45
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_932_0gr thei_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr (
        .in_buffer_in(in_arg_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_select_63(BITSELECT,34)@45
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_join(BITJOIN,33)@45
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_select_63_b, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_lhsMSBs_select(BITSELECT,83)@45
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstraparallelid_924_4gr_vt_join_q[63:2]);

    // i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums(ADD,84)@45
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_split_join(BITJOIN,85)@45
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_split_join_q = {i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_MSBs_sums_q, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // i_arrayidx21_i_dijkstraparallelid_937_0gr_dupName_0_trunc_sel_x(BITSELECT,56)@45
    assign i_arrayidx21_i_dijkstraparallelid_937_0gr_dupName_0_trunc_sel_x_b = i_arrayidx21_i_dijkstraparallelid_937_0gr_add_x_split_join_q[63:0];

    // i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_select_63(BITSELECT,22)@45
    assign i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_select_63_b = i_arrayidx21_i_dijkstraparallelid_937_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_join(BITJOIN,21)@45
    assign i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_join_q = {i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_select_63_b, i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_const_1_q};

    // redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40(DELAY,93)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q <= redist1_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_39_outputreg0_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_22_aunroll_x(GPOUT,59)@45
    assign out_c7_exi6_0_tpl = GND_q;
    assign out_c7_exi6_1_tpl = redist2_bgTrunc_i_mul_i_add164_dijkstraparallelid_924_2gr_sel_x_b_40_q;
    assign out_c7_exi6_2_tpl = i_arrayidx21_i_dijkstraparallelid_924_5gr_vt_join_q;
    assign out_c7_exi6_3_tpl = i_arrayidx21_i_1_dijkstraparallelid_924_9gr_vt_join_q;
    assign out_c7_exi6_4_tpl = bgTrunc_i_add_i_3_dijkstraparallelid_924_10_sel_x_b;
    assign out_c7_exi6_5_tpl = bgTrunc_i_add_i_5_dijkstraparallelid_924_11_sel_x_b;
    assign out_c7_exi6_6_tpl = bgTrunc_i_add_i_10_dijkstraparallelid_924_12_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
