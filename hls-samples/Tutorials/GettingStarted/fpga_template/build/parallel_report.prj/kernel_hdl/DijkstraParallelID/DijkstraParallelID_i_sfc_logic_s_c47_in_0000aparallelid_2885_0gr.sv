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

// SystemVerilog created from i_sfc_logic_s_c47_in_for_cond_cleanup4_i_dijkstraparallelids_c47_enter_dijkstraparallelid_2885_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c47_in_0000aparallelid_2885_0gr (
    output wire [0:0] out_c47_exi1_0_tpl,
    output wire [0:0] out_c47_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c47_eni2_0_tpl,
    input wire [7:0] in_c47_eni2_1_tpl,
    input wire [0:0] in_c47_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_acl_35_dijkstraparallelid_2888_5gr_s;
    reg [0:0] i_acl_35_dijkstraparallelid_2888_5gr_q;
    wire [0:0] i_load7_10_lm_struct_0_shuffle_bit0_not_dijkstraparallelid_2888_4gr_q;
    wire [0:0] i_unnamed_dijkstraparallelid_2888_6gr_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup4_i_dijkstraparallelid_fpgaunique_0s_v1i32_load7_10_lm_struct_0_shuffle_bit0_dijkstraparallelid_2895_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup4_i_dijkstraparallelid_fpgaunique_0s_v1i32_load7_10_lm_struct_0_shuffle_bit0_dijkstraparallelid_2895_0gr_NO_NAME_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup4_i_dijkstraparallelid_fpgaunique_0s_v1i32_load7_10_lm_struct_0_shuffle_bit0_dijkstraparallelid_2895_0gr_NO_NAME_x(CHOOSEBITS,8)@2733
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup4_i_dijkstraparallelid_fpgaunique_0s_v1i32_load7_10_lm_struct_0_shuffle_bit0_dijkstraparallelid_2895_0gr_NO_NAME_x_a = in_c47_eni2_1_tpl;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup4_i_dijkstraparallelid_fpgaunique_0s_v1i32_load7_10_lm_struct_0_shuffle_bit0_dijkstraparallelid_2895_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup4_i_dijkstraparallelid_fpgaunique_0s_v1i32_load7_10_lm_struct_0_shuffle_bit0_dijkstraparallelid_2895_0gr_NO_NAME_x_a[0:0];

    // i_load7_10_lm_struct_0_shuffle_bit0_not_dijkstraparallelid_2888_4gr(LOGICAL,5)@2733
    assign i_load7_10_lm_struct_0_shuffle_bit0_not_dijkstraparallelid_2888_4gr_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup4_i_dijkstraparallelid_fpgaunique_0s_v1i32_load7_10_lm_struct_0_shuffle_bit0_dijkstraparallelid_2895_0gr_NO_NAME_x_q ^ VCC_q;

    // i_acl_35_dijkstraparallelid_2888_5gr(MUX,4)@2733
    assign i_acl_35_dijkstraparallelid_2888_5gr_s = in_c47_eni2_2_tpl;
    always_comb 
    begin
        unique case (i_acl_35_dijkstraparallelid_2888_5gr_s)
            1'b0 : i_acl_35_dijkstraparallelid_2888_5gr_q = GND_q;
            1'b1 : i_acl_35_dijkstraparallelid_2888_5gr_q = i_load7_10_lm_struct_0_shuffle_bit0_not_dijkstraparallelid_2888_4gr_q;
            default : i_acl_35_dijkstraparallelid_2888_5gr_q = 1'b0;
        endcase
    end

    // i_unnamed_dijkstraparallelid_2888_6gr(LOGICAL,6)@2733
    assign i_unnamed_dijkstraparallelid_2888_6gr_q = i_acl_35_dijkstraparallelid_2888_5gr_q ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_49_aunroll_x(GPOUT,12)@2733
    assign out_c47_exi1_0_tpl = GND_q;
    assign out_c47_exi1_1_tpl = i_unnamed_dijkstraparallelid_2888_6gr_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
