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

// SystemVerilog created from i_sfc_logic_s_c5_in_for_cond_cleanup4_i_dijkstraparallelids_c5_enter_dijkstraparallelid_823_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c5_in_f0000raparallelid_823_0gr (
    input wire [63:0] in_arg_visited,
    output wire [0:0] out_c5_exi4_0_tpl,
    output wire [63:0] out_c5_exi4_1_tpl,
    output wire [63:0] out_c5_exi4_2_tpl,
    output wire [31:0] out_c5_exi4_3_tpl,
    output wire [31:0] out_c5_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c5_eni1_0_tpl,
    input wire [31:0] in_c5_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer199_dijkstraparallelid_826_3gr_out_buffer_out;
    wire [31:0] i_unnamed_dijkstraparallelid_826_5gr_vt_join_q;
    wire [31:0] i_unnamed_dijkstraparallelid_826_5gr_vt_select_31_in;
    wire [30:0] i_unnamed_dijkstraparallelid_826_5gr_vt_select_31_b;
    wire [2:0] i_unnamed_dijkstraparallelid_826_7gr_vt_const_2_q;
    wire [31:0] i_unnamed_dijkstraparallelid_826_7gr_vt_join_q;
    wire [31:0] i_unnamed_dijkstraparallelid_826_7gr_vt_select_31_in;
    wire [28:0] i_unnamed_dijkstraparallelid_826_7gr_vt_select_31_b;
    wire [31:0] bgTrunc_i_mul_i_add162_dijkstraparallelid_826_6gr_sel_x_b;
    wire [64:0] i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_a;
    wire [64:0] i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_b;
    logic [64:0] i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_o;
    wire [64:0] i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_q;
    wire [63:0] i_arrayidx15_i_dijkstraparallelid_838_0gr_trunc_sel_x_b;
    wire [63:0] i_idxprom14_i_dijkstraparallelid_826_2gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    wire [30:0] i_mul_i_add162_dijkstraparallelid_826_6gr_rhsMSBs_select_b;
    wire [0:0] i_mul_i_add162_dijkstraparallelid_826_6gr_rhsLSBs_select_b;
    wire [30:0] i_mul_i_add162_dijkstraparallelid_826_6gr_lhsMSBs_select_b;
    wire [31:0] i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_a;
    wire [31:0] i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_b;
    logic [31:0] i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_o;
    wire [31:0] i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_q;
    wire [32:0] i_mul_i_add162_dijkstraparallelid_826_6gr_split_join_q;
    wire [32:0] i_unnamed_dijkstraparallelid_843_0gr_shift_x_fs_q;
    wire [32:0] i_unnamed_dijkstraparallelid_843_0gr_shift_x_fs_qint;
    wire [34:0] i_unnamed_dijkstraparallelid_849_0gr_shift_x_fs_q;
    wire [34:0] i_unnamed_dijkstraparallelid_849_0gr_shift_x_fs_qint;
    reg [31:0] redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,34)@0 + 1
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

    // redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1(DELAY,49)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q <= in_c5_eni1_1_tpl;
        end
    end

    // i_unnamed_dijkstraparallelid_849_0gr_shift_x_fs(BITSHIFT,48)@1
    assign i_unnamed_dijkstraparallelid_849_0gr_shift_x_fs_qint = { redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q, 3'b000 };
    assign i_unnamed_dijkstraparallelid_849_0gr_shift_x_fs_q = i_unnamed_dijkstraparallelid_849_0gr_shift_x_fs_qint[34:0];

    // i_unnamed_dijkstraparallelid_826_7gr_vt_select_31(BITSELECT,15)@1
    assign i_unnamed_dijkstraparallelid_826_7gr_vt_select_31_in = i_unnamed_dijkstraparallelid_849_0gr_shift_x_fs_q[31:0];
    assign i_unnamed_dijkstraparallelid_826_7gr_vt_select_31_b = i_unnamed_dijkstraparallelid_826_7gr_vt_select_31_in[31:3];

    // i_unnamed_dijkstraparallelid_826_7gr_vt_const_2(CONSTANT,13)
    assign i_unnamed_dijkstraparallelid_826_7gr_vt_const_2_q = 3'b000;

    // i_unnamed_dijkstraparallelid_826_7gr_vt_join(BITJOIN,14)@1
    assign i_unnamed_dijkstraparallelid_826_7gr_vt_join_q = {i_unnamed_dijkstraparallelid_826_7gr_vt_select_31_b, i_unnamed_dijkstraparallelid_826_7gr_vt_const_2_q};

    // i_mul_i_add162_dijkstraparallelid_826_6gr_rhsMSBs_select(BITSELECT,42)@1
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_rhsMSBs_select_b = $signed(redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q[31:1]);

    // i_unnamed_dijkstraparallelid_843_0gr_shift_x_fs(BITSHIFT,47)@1
    assign i_unnamed_dijkstraparallelid_843_0gr_shift_x_fs_qint = { redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q, 1'b0 };
    assign i_unnamed_dijkstraparallelid_843_0gr_shift_x_fs_q = i_unnamed_dijkstraparallelid_843_0gr_shift_x_fs_qint[32:0];

    // i_unnamed_dijkstraparallelid_826_5gr_vt_select_31(BITSELECT,12)@1
    assign i_unnamed_dijkstraparallelid_826_5gr_vt_select_31_in = i_unnamed_dijkstraparallelid_843_0gr_shift_x_fs_q[31:0];
    assign i_unnamed_dijkstraparallelid_826_5gr_vt_select_31_b = i_unnamed_dijkstraparallelid_826_5gr_vt_select_31_in[31:1];

    // i_unnamed_dijkstraparallelid_826_5gr_vt_join(BITJOIN,11)@1
    assign i_unnamed_dijkstraparallelid_826_5gr_vt_join_q = {i_unnamed_dijkstraparallelid_826_5gr_vt_select_31_b, GND_q};

    // i_mul_i_add162_dijkstraparallelid_826_6gr_lhsMSBs_select(BITSELECT,44)@1
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_lhsMSBs_select_b = $signed(i_unnamed_dijkstraparallelid_826_5gr_vt_join_q[31:1]);

    // i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums(ADD,45)@1
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_a = {1'b0, i_mul_i_add162_dijkstraparallelid_826_6gr_lhsMSBs_select_b};
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_b = {1'b0, i_mul_i_add162_dijkstraparallelid_826_6gr_rhsMSBs_select_b};
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_o = $unsigned(i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_a) + $unsigned(i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_b);
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_q = $signed(i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_o[31:0]);

    // i_mul_i_add162_dijkstraparallelid_826_6gr_rhsLSBs_select(BITSELECT,43)@1
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_rhsLSBs_select_b = $signed(redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q[0:0]);

    // i_mul_i_add162_dijkstraparallelid_826_6gr_split_join(BITJOIN,46)@1
    assign i_mul_i_add162_dijkstraparallelid_826_6gr_split_join_q = {i_mul_i_add162_dijkstraparallelid_826_6gr_MSBs_sums_q, i_mul_i_add162_dijkstraparallelid_826_6gr_rhsLSBs_select_b};

    // bgTrunc_i_mul_i_add162_dijkstraparallelid_826_6gr_sel_x(BITSELECT,19)@1
    assign bgTrunc_i_mul_i_add162_dijkstraparallelid_826_6gr_sel_x_b = i_mul_i_add162_dijkstraparallelid_826_6gr_split_join_q[31:0];

    // valid_fanout_reg1(REG,35)@0 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer199_dijkstraparallelid_826_3gr(BLACKBOX,8)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_833_0gr thei_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer199_dijkstraparallelid_826_3gr (
        .in_buffer_in(in_arg_visited),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer199_dijkstraparallelid_826_3gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x(ADD,20)@1
    assign i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer199_dijkstraparallelid_826_3gr_out_buffer_out};
    assign i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_b = {1'b0, i_idxprom14_i_dijkstraparallelid_826_2gr_sel_x_b};
    assign i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_o = $unsigned(i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_a) + $unsigned(i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_b);
    assign i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_q = i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_o[64:0];

    // i_arrayidx15_i_dijkstraparallelid_838_0gr_trunc_sel_x(BITSELECT,22)@1
    assign i_arrayidx15_i_dijkstraparallelid_838_0gr_trunc_sel_x_b = i_arrayidx15_i_dijkstraparallelid_838_0gr_add_x_q[63:0];

    // i_idxprom14_i_dijkstraparallelid_826_2gr_sel_x(BITSELECT,23)@1
    assign i_idxprom14_i_dijkstraparallelid_826_2gr_sel_x_b = {{32{redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q[31]}}, redist0_sync_together_826_16_aunroll_x_in_c5_eni1_1_tpl_1_q[31:0]};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_20_aunroll_x(GPOUT,32)@1
    assign out_c5_exi4_0_tpl = GND_q;
    assign out_c5_exi4_1_tpl = i_idxprom14_i_dijkstraparallelid_826_2gr_sel_x_b;
    assign out_c5_exi4_2_tpl = i_arrayidx15_i_dijkstraparallelid_838_0gr_trunc_sel_x_b;
    assign out_c5_exi4_3_tpl = bgTrunc_i_mul_i_add162_dijkstraparallelid_826_6gr_sel_x_b;
    assign out_c5_exi4_4_tpl = i_unnamed_dijkstraparallelid_826_7gr_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
