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

// SystemVerilog created from i_sfc_logic_s_c37_in_for_cond_cleanup4_i_dijkstraparallelids_c37_enter_dijkstraparallelid_2232_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c37_in_0000aparallelid_2232_0gr (
    output wire [0:0] out_c37_exi4_0_tpl,
    output wire [0:0] out_c37_exi4_1_tpl,
    output wire [0:0] out_c37_exi4_2_tpl,
    output wire [0:0] out_c37_exi4_3_tpl,
    output wire [0:0] out_c37_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c37_eni2_0_tpl,
    input wire [31:0] in_c37_eni2_1_tpl,
    input wire [31:0] in_c37_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_tobool22_i_not_6_dijkstraparallelid_2235_2gr_q;
    wire [0:0] i_tobool22_i_not_7_dijkstraparallelid_2235_5gr_q;
    wire [0:0] i_unnamed_dijkstraparallelid_2235_4gr_q;
    wire [0:0] i_unnamed_dijkstraparallelid_2235_7gr_q;
    wire [31:0] c_i32_0_2235_10_recast_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_unnamed_dijkstraparallelid_2235_7gr(LOGICAL,7)@1649
    assign i_unnamed_dijkstraparallelid_2235_7gr_q = i_tobool22_i_not_7_dijkstraparallelid_2235_5gr_q ^ VCC_q;

    // c_i32_0_2235_10_recast_x(CONSTANT,11)
    assign c_i32_0_2235_10_recast_x_q = 32'b00000000000000000000000000000000;

    // i_tobool22_i_not_7_dijkstraparallelid_2235_5gr(LOGICAL,5)@1649
    assign i_tobool22_i_not_7_dijkstraparallelid_2235_5gr_q = $unsigned(in_c37_eni2_2_tpl != c_i32_0_2235_10_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraparallelid_2235_4gr(LOGICAL,6)@1649
    assign i_unnamed_dijkstraparallelid_2235_4gr_q = i_tobool22_i_not_6_dijkstraparallelid_2235_2gr_q ^ VCC_q;

    // i_tobool22_i_not_6_dijkstraparallelid_2235_2gr(LOGICAL,4)@1649
    assign i_tobool22_i_not_6_dijkstraparallelid_2235_2gr_q = $unsigned(in_c37_eni2_1_tpl != c_i32_0_2235_10_recast_x_q ? 1'b1 : 1'b0);

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_40_aunroll_x(GPOUT,13)@1649
    assign out_c37_exi4_0_tpl = GND_q;
    assign out_c37_exi4_1_tpl = i_tobool22_i_not_6_dijkstraparallelid_2235_2gr_q;
    assign out_c37_exi4_2_tpl = i_unnamed_dijkstraparallelid_2235_4gr_q;
    assign out_c37_exi4_3_tpl = i_tobool22_i_not_7_dijkstraparallelid_2235_5gr_q;
    assign out_c37_exi4_4_tpl = i_unnamed_dijkstraparallelid_2235_7gr_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
