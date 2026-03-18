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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_260_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c1_in_for_0000kstranaiveid_260_0gr (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraNaiveID0,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_unnamed_dijkstranaiveid_263_2gr_vt_join_q;
    wire [31:0] i_unnamed_dijkstranaiveid_263_2gr_vt_select_31_in;
    wire [30:0] i_unnamed_dijkstranaiveid_263_2gr_vt_select_31_b;
    wire [2:0] i_unnamed_dijkstranaiveid_263_4gr_vt_const_2_q;
    wire [31:0] i_unnamed_dijkstranaiveid_263_4gr_vt_join_q;
    wire [31:0] i_unnamed_dijkstranaiveid_263_4gr_vt_select_31_in;
    wire [28:0] i_unnamed_dijkstranaiveid_263_4gr_vt_select_31_b;
    wire [31:0] bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b;
    wire [31:0] bgTrunc_i_mul_i_add34_dijkstranaiveid_263_5gr_sel_x_b;
    wire [30:0] i_mul_i_add32_dijkstranaiveid_263_3gr_lhsMSBs_select_b;
    wire [31:0] i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_a;
    wire [31:0] i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_b;
    logic [31:0] i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_o;
    wire [31:0] i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_q;
    wire [32:0] i_mul_i_add32_dijkstranaiveid_263_3gr_split_join_q;
    wire [28:0] i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select_b;
    wire [29:0] i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_a;
    wire [29:0] i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_b;
    logic [29:0] i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_o;
    wire [29:0] i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_q;
    wire [32:0] i_mul_i_add34_dijkstranaiveid_263_5gr_split_join_q;
    wire [32:0] i_unnamed_dijkstranaiveid_268_0gr_shift_x_fs_q;
    wire [32:0] i_unnamed_dijkstranaiveid_268_0gr_shift_x_fs_qint;
    wire [34:0] i_unnamed_dijkstranaiveid_274_0gr_shift_x_fs_q;
    wire [34:0] i_unnamed_dijkstranaiveid_274_0gr_shift_x_fs_qint;
    wire [28:0] i_mul_i_add34_dijkstranaiveid_263_5gr_rhsMSBs_select_bit_select_merged_b;
    wire [2:0] i_mul_i_add34_dijkstranaiveid_263_5gr_rhsMSBs_select_bit_select_merged_c;
    wire [30:0] i_mul_i_add32_dijkstranaiveid_263_3gr_rhsMSBs_select_bit_select_merged_b;
    wire [0:0] i_mul_i_add32_dijkstranaiveid_263_3gr_rhsMSBs_select_bit_select_merged_c;
    reg [28:0] redist0_i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select_b_1_q;
    reg [0:0] redist1_sync_together_263_12_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist2_bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist1_sync_together_263_12_aunroll_x_in_i_valid_1(DELAY,49)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together_263_12_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together_263_12_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // i_unnamed_dijkstranaiveid_274_0gr_shift_x_fs(BITSHIFT,45)@0
    assign i_unnamed_dijkstranaiveid_274_0gr_shift_x_fs_qint = { in_c1_eni1_1_tpl, 3'b000 };
    assign i_unnamed_dijkstranaiveid_274_0gr_shift_x_fs_q = i_unnamed_dijkstranaiveid_274_0gr_shift_x_fs_qint[34:0];

    // i_unnamed_dijkstranaiveid_263_4gr_vt_select_31(BITSELECT,14)@0
    assign i_unnamed_dijkstranaiveid_263_4gr_vt_select_31_in = i_unnamed_dijkstranaiveid_274_0gr_shift_x_fs_q[31:0];
    assign i_unnamed_dijkstranaiveid_263_4gr_vt_select_31_b = i_unnamed_dijkstranaiveid_263_4gr_vt_select_31_in[31:3];

    // i_unnamed_dijkstranaiveid_263_4gr_vt_const_2(CONSTANT,12)
    assign i_unnamed_dijkstranaiveid_263_4gr_vt_const_2_q = 3'b000;

    // i_unnamed_dijkstranaiveid_263_4gr_vt_join(BITJOIN,13)@0
    assign i_unnamed_dijkstranaiveid_263_4gr_vt_join_q = {i_unnamed_dijkstranaiveid_263_4gr_vt_select_31_b, i_unnamed_dijkstranaiveid_263_4gr_vt_const_2_q};

    // i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select(BITSELECT,41)@0
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select_b = $signed(i_unnamed_dijkstranaiveid_263_4gr_vt_join_q[31:3]);

    // redist0_i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select_b_1(DELAY,48)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select_b_1_q <= i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select_b;
        end
    end

    // i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums(ADD,42)@1
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_a = {1'b0, redist0_i_mul_i_add34_dijkstranaiveid_263_5gr_lhsMSBs_select_b_1_q};
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_b = {1'b0, i_mul_i_add34_dijkstranaiveid_263_5gr_rhsMSBs_select_bit_select_merged_b};
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_o = $unsigned(i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_a) + $unsigned(i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_b);
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_q = $signed(i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_o[29:0]);

    // i_unnamed_dijkstranaiveid_268_0gr_shift_x_fs(BITSHIFT,44)@0
    assign i_unnamed_dijkstranaiveid_268_0gr_shift_x_fs_qint = { in_c1_eni1_1_tpl, 1'b0 };
    assign i_unnamed_dijkstranaiveid_268_0gr_shift_x_fs_q = i_unnamed_dijkstranaiveid_268_0gr_shift_x_fs_qint[32:0];

    // i_unnamed_dijkstranaiveid_263_2gr_vt_select_31(BITSELECT,11)@0
    assign i_unnamed_dijkstranaiveid_263_2gr_vt_select_31_in = i_unnamed_dijkstranaiveid_268_0gr_shift_x_fs_q[31:0];
    assign i_unnamed_dijkstranaiveid_263_2gr_vt_select_31_b = i_unnamed_dijkstranaiveid_263_2gr_vt_select_31_in[31:1];

    // i_unnamed_dijkstranaiveid_263_2gr_vt_join(BITJOIN,10)@0
    assign i_unnamed_dijkstranaiveid_263_2gr_vt_join_q = {i_unnamed_dijkstranaiveid_263_2gr_vt_select_31_b, GND_q};

    // i_mul_i_add32_dijkstranaiveid_263_3gr_lhsMSBs_select(BITSELECT,36)@0
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_lhsMSBs_select_b = $signed(i_unnamed_dijkstranaiveid_263_2gr_vt_join_q[31:1]);

    // i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums(ADD,37)@0
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_a = {1'b0, i_mul_i_add32_dijkstranaiveid_263_3gr_lhsMSBs_select_b};
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_b = {1'b0, i_mul_i_add32_dijkstranaiveid_263_3gr_rhsMSBs_select_bit_select_merged_b};
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_o = $unsigned(i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_a) + $unsigned(i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_b);
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_q = $signed(i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_o[31:0]);

    // i_mul_i_add32_dijkstranaiveid_263_3gr_rhsMSBs_select_bit_select_merged(BITSELECT,47)@0
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_rhsMSBs_select_bit_select_merged_b = $signed(in_c1_eni1_1_tpl[31:1]);
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_rhsMSBs_select_bit_select_merged_c = $signed(in_c1_eni1_1_tpl[0:0]);

    // i_mul_i_add32_dijkstranaiveid_263_3gr_split_join(BITJOIN,38)@0
    assign i_mul_i_add32_dijkstranaiveid_263_3gr_split_join_q = {i_mul_i_add32_dijkstranaiveid_263_3gr_MSBs_sums_q, i_mul_i_add32_dijkstranaiveid_263_3gr_rhsMSBs_select_bit_select_merged_c};

    // bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x(BITSELECT,16)@0
    assign bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b = i_mul_i_add32_dijkstranaiveid_263_3gr_split_join_q[31:0];

    // redist2_bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b_1(DELAY,50)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b_1_q <= bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b;
        end
    end

    // i_mul_i_add34_dijkstranaiveid_263_5gr_rhsMSBs_select_bit_select_merged(BITSELECT,46)@1
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_rhsMSBs_select_bit_select_merged_b = $signed(redist2_bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b_1_q[31:3]);
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_rhsMSBs_select_bit_select_merged_c = $signed(redist2_bgTrunc_i_mul_i_add32_dijkstranaiveid_263_3gr_sel_x_b_1_q[2:0]);

    // i_mul_i_add34_dijkstranaiveid_263_5gr_split_join(BITJOIN,43)@1
    assign i_mul_i_add34_dijkstranaiveid_263_5gr_split_join_q = {i_mul_i_add34_dijkstranaiveid_263_5gr_MSBs_sums_q, i_mul_i_add34_dijkstranaiveid_263_5gr_rhsMSBs_select_bit_select_merged_c};

    // bgTrunc_i_mul_i_add34_dijkstranaiveid_263_5gr_sel_x(BITSELECT,17)@1
    assign bgTrunc_i_mul_i_add34_dijkstranaiveid_263_5gr_sel_x_b = i_mul_i_add34_dijkstranaiveid_263_5gr_split_join_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_3_aunroll_x(GPOUT,26)@1
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = bgTrunc_i_mul_i_add34_dijkstranaiveid_263_5gr_sel_x_b;
    assign out_o_valid = redist1_sync_together_263_12_aunroll_x_in_i_valid_1_q;
    assign out_unnamed_DijkstraNaiveID0 = GND_q;

endmodule
