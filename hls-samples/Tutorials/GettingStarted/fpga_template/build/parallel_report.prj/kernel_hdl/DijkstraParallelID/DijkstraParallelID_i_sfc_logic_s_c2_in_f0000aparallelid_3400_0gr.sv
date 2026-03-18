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

// SystemVerilog created from i_sfc_logic_s_c2_in_for_body5_i_dijkstraparallelids_c2_enter241_dijkstraparallelid_3400_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c2_in_f0000aparallelid_3400_0gr (
    output wire [0:0] out_c2_exi1242_0_tpl,
    output wire [31:0] out_c2_exi1242_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c2_eni6_0_tpl,
    input wire [31:0] in_c2_eni6_1_tpl,
    input wire [31:0] in_c2_eni6_2_tpl,
    input wire [0:0] in_c2_eni6_3_tpl,
    input wire [0:0] in_c2_eni6_4_tpl,
    input wire [31:0] in_c2_eni6_5_tpl,
    input wire [31:0] in_c2_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_acl_3_dijkstraparallelid_3403_5gr_s;
    reg [31:0] i_acl_3_dijkstraparallelid_3403_5gr_q;
    wire [33:0] i_cmp12_i_dijkstraparallelid_3403_2gr_a;
    wire [33:0] i_cmp12_i_dijkstraparallelid_3403_2gr_b;
    logic [33:0] i_cmp12_i_dijkstraparallelid_3403_2gr_o;
    wire [0:0] i_cmp12_i_dijkstraparallelid_3403_2gr_c;
    wire [0:0] i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_s;
    reg [0:0] i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_q;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_cmp12_i_dijkstraparallelid_3403_2gr(COMPARE,4)@185
    assign i_cmp12_i_dijkstraparallelid_3403_2gr_a = $unsigned({{2{in_c2_eni6_1_tpl[31]}}, in_c2_eni6_1_tpl});
    assign i_cmp12_i_dijkstraparallelid_3403_2gr_b = $unsigned({{2{in_c2_eni6_2_tpl[31]}}, in_c2_eni6_2_tpl});
    assign i_cmp12_i_dijkstraparallelid_3403_2gr_o = $unsigned($signed(i_cmp12_i_dijkstraparallelid_3403_2gr_a) - $signed(i_cmp12_i_dijkstraparallelid_3403_2gr_b));
    assign i_cmp12_i_dijkstraparallelid_3403_2gr_c[0] = i_cmp12_i_dijkstraparallelid_3403_2gr_o[33];

    // i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr(MUX,5)@185
    assign i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_s = in_c2_eni6_3_tpl;
    always_comb 
    begin
        unique case (i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_s)
            1'b0 : i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_q = i_cmp12_i_dijkstraparallelid_3403_2gr_c;
            1'b1 : i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_q = in_c2_eni6_4_tpl;
            default : i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_q = 1'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_acl_3_dijkstraparallelid_3403_5gr(MUX,3)@185
    assign i_acl_3_dijkstraparallelid_3403_5gr_s = i_reduction_dijkstraparallelid_1_dijkstraparallelid_3403_4gr_q;
    always_comb 
    begin
        unique case (i_acl_3_dijkstraparallelid_3403_5gr_s)
            1'b0 : i_acl_3_dijkstraparallelid_3403_5gr_q = in_c2_eni6_6_tpl;
            1'b1 : i_acl_3_dijkstraparallelid_3403_5gr_q = in_c2_eni6_5_tpl;
            default : i_acl_3_dijkstraparallelid_3403_5gr_q = 32'b0;
        endcase
    end

    // sync_out_53_aunroll_x(GPOUT,9)@185
    assign out_c2_exi1242_0_tpl = in_c2_eni6_0_tpl;
    assign out_c2_exi1242_1_tpl = i_acl_3_dijkstraparallelid_3403_5gr_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
