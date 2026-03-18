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

// SystemVerilog created from i_sfc_logic_s_c5_in_for_body19_i_dijkstranaiveids_c5_enter_dijkstranaiveid_1272_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c5_in_for_0000stranaiveid_1272_0gr (
    output wire [0:0] out_c5_exi1_0_tpl,
    output wire [0:0] out_c5_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraNaiveID0,
    input wire [0:0] in_c5_eni2_0_tpl,
    input wire [7:0] in_c5_eni2_1_tpl,
    input wire [0:0] in_c5_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_acl_5_dijkstranaiveid_1275_5gr_s;
    reg [0:0] i_acl_5_dijkstranaiveid_1275_5gr_q;
    wire [0:0] i_load7_lm_struct_0_shuffle_bit0_not_dijkstranaiveid_1275_4gr_q;
    wire [0:0] i_unnamed_dijkstranaiveid_1275_6gr_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_0s_v1i32_load7_lm_struct_0_shuffle_bit0_dijkstranaiveid_1282_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_0s_v1i32_load7_lm_struct_0_shuffle_bit0_dijkstranaiveid_1282_0gr_NO_NAME_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_0s_v1i32_load7_lm_struct_0_shuffle_bit0_dijkstranaiveid_1282_0gr_NO_NAME_x(CHOOSEBITS,8)@157
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_0s_v1i32_load7_lm_struct_0_shuffle_bit0_dijkstranaiveid_1282_0gr_NO_NAME_x_a = in_c5_eni2_1_tpl;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_0s_v1i32_load7_lm_struct_0_shuffle_bit0_dijkstranaiveid_1282_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_0s_v1i32_load7_lm_struct_0_shuffle_bit0_dijkstranaiveid_1282_0gr_NO_NAME_x_a[0:0];

    // i_load7_lm_struct_0_shuffle_bit0_not_dijkstranaiveid_1275_4gr(LOGICAL,5)@157
    assign i_load7_lm_struct_0_shuffle_bit0_not_dijkstranaiveid_1275_4gr_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body19_i_dijkstranaiveid_fpgaunique_0s_v1i32_load7_lm_struct_0_shuffle_bit0_dijkstranaiveid_1282_0gr_NO_NAME_x_q ^ VCC_q;

    // i_acl_5_dijkstranaiveid_1275_5gr(MUX,4)@157
    assign i_acl_5_dijkstranaiveid_1275_5gr_s = in_c5_eni2_2_tpl;
    always_comb 
    begin
        unique case (i_acl_5_dijkstranaiveid_1275_5gr_s)
            1'b0 : i_acl_5_dijkstranaiveid_1275_5gr_q = GND_q;
            1'b1 : i_acl_5_dijkstranaiveid_1275_5gr_q = i_load7_lm_struct_0_shuffle_bit0_not_dijkstranaiveid_1275_4gr_q;
            default : i_acl_5_dijkstranaiveid_1275_5gr_q = 1'b0;
        endcase
    end

    // i_unnamed_dijkstranaiveid_1275_6gr(LOGICAL,6)@157
    assign i_unnamed_dijkstranaiveid_1275_6gr_q = i_acl_5_dijkstranaiveid_1275_5gr_q ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_11_aunroll_x(GPOUT,12)@157
    assign out_c5_exi1_0_tpl = GND_q;
    assign out_c5_exi1_1_tpl = i_unnamed_dijkstranaiveid_1275_6gr_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_DijkstraNaiveID0 = GND_q;

endmodule
