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

// SystemVerilog created from i_sfc_logic_s_c4_in_for_body19_i_dijkstranaiveids_c4_enter_dijkstranaiveid_1350_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c4_in_for_0000stranaiveid_1350_0gr (
    output wire [0:0] out_c4_exi2_0_tpl,
    output wire [31:0] out_c4_exi2_1_tpl,
    output wire [0:0] out_c4_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraNaiveID0,
    input wire [0:0] in_c4_eni4_0_tpl,
    input wire [31:0] in_c4_eni4_1_tpl,
    input wire [31:0] in_c4_eni4_2_tpl,
    input wire [31:0] in_c4_eni4_3_tpl,
    input wire [0:0] in_c4_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_acl_7_dijkstranaiveid_1353_5gr_s;
    reg [0:0] i_acl_7_dijkstranaiveid_1353_5gr_q;
    wire [32:0] i_add37_i_dijkstranaiveid_1353_2gr_a;
    wire [32:0] i_add37_i_dijkstranaiveid_1353_2gr_b;
    logic [32:0] i_add37_i_dijkstranaiveid_1353_2gr_o;
    wire [32:0] i_add37_i_dijkstranaiveid_1353_2gr_q;
    wire [33:0] i_cmp41_i_dijkstranaiveid_1353_3gr_a;
    wire [33:0] i_cmp41_i_dijkstranaiveid_1353_3gr_b;
    logic [33:0] i_cmp41_i_dijkstranaiveid_1353_3gr_o;
    wire [0:0] i_cmp41_i_dijkstranaiveid_1353_3gr_n;
    wire [31:0] bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b;
    reg [31:0] redist0_sync_together_1353_11_aunroll_x_in_c4_eni4_3_tpl_1_q;
    reg [0:0] redist1_sync_together_1353_11_aunroll_x_in_c4_eni4_4_tpl_1_q;
    reg [0:0] redist2_sync_together_1353_11_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist3_bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist2_sync_together_1353_11_aunroll_x_in_i_valid_1(DELAY,17)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together_1353_11_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together_1353_11_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // redist0_sync_together_1353_11_aunroll_x_in_c4_eni4_3_tpl_1(DELAY,15)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_1353_11_aunroll_x_in_c4_eni4_3_tpl_1_q <= in_c4_eni4_3_tpl;
        end
    end

    // i_cmp41_i_dijkstranaiveid_1353_3gr(COMPARE,7)@236
    assign i_cmp41_i_dijkstranaiveid_1353_3gr_a = $unsigned({{2{redist3_bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b_1_q[31]}}, redist3_bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b_1_q});
    assign i_cmp41_i_dijkstranaiveid_1353_3gr_b = $unsigned({{2{redist0_sync_together_1353_11_aunroll_x_in_c4_eni4_3_tpl_1_q[31]}}, redist0_sync_together_1353_11_aunroll_x_in_c4_eni4_3_tpl_1_q});
    assign i_cmp41_i_dijkstranaiveid_1353_3gr_o = $unsigned($signed(i_cmp41_i_dijkstranaiveid_1353_3gr_a) - $signed(i_cmp41_i_dijkstranaiveid_1353_3gr_b));
    assign i_cmp41_i_dijkstranaiveid_1353_3gr_n[0] = ~ (i_cmp41_i_dijkstranaiveid_1353_3gr_o[33]);

    // redist1_sync_together_1353_11_aunroll_x_in_c4_eni4_4_tpl_1(DELAY,16)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_1353_11_aunroll_x_in_c4_eni4_4_tpl_1_q <= in_c4_eni4_4_tpl;
        end
    end

    // i_acl_7_dijkstranaiveid_1353_5gr(MUX,5)@236
    assign i_acl_7_dijkstranaiveid_1353_5gr_s = redist1_sync_together_1353_11_aunroll_x_in_c4_eni4_4_tpl_1_q;
    always_comb 
    begin
        unique case (i_acl_7_dijkstranaiveid_1353_5gr_s)
            1'b0 : i_acl_7_dijkstranaiveid_1353_5gr_q = i_cmp41_i_dijkstranaiveid_1353_3gr_n;
            1'b1 : i_acl_7_dijkstranaiveid_1353_5gr_q = VCC_q;
            default : i_acl_7_dijkstranaiveid_1353_5gr_q = 1'b0;
        endcase
    end

    // i_add37_i_dijkstranaiveid_1353_2gr(ADD,6)@235
    assign i_add37_i_dijkstranaiveid_1353_2gr_a = {1'b0, in_c4_eni4_1_tpl};
    assign i_add37_i_dijkstranaiveid_1353_2gr_b = {1'b0, in_c4_eni4_2_tpl};
    assign i_add37_i_dijkstranaiveid_1353_2gr_o = $unsigned(i_add37_i_dijkstranaiveid_1353_2gr_a) + $unsigned(i_add37_i_dijkstranaiveid_1353_2gr_b);
    assign i_add37_i_dijkstranaiveid_1353_2gr_q = i_add37_i_dijkstranaiveid_1353_2gr_o[32:0];

    // bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x(BITSELECT,11)@235
    assign bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b = i_add37_i_dijkstranaiveid_1353_2gr_q[31:0];

    // redist3_bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b_1(DELAY,18)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b_1_q <= bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_12_aunroll_x(GPOUT,12)@236
    assign out_c4_exi2_0_tpl = GND_q;
    assign out_c4_exi2_1_tpl = redist3_bgTrunc_i_add37_i_dijkstranaiveid_1353_2gr_sel_x_b_1_q;
    assign out_c4_exi2_2_tpl = i_acl_7_dijkstranaiveid_1353_5gr_q;
    assign out_o_valid = redist2_sync_together_1353_11_aunroll_x_in_i_valid_1_q;
    assign out_unnamed_DijkstraNaiveID0 = GND_q;

endmodule
