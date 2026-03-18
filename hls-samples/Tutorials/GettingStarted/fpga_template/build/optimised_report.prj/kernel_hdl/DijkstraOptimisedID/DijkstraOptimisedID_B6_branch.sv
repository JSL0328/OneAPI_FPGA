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

// SystemVerilog created from DijkstraOptimisedID_B6_branch
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_B6_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe1185,
    input wire [0:0] in_c0_exe2186,
    input wire [0:0] in_c0_exe3187,
    input wire [7:0] in_c1_exe1,
    input wire [7:0] in_c1_exe10,
    input wire [7:0] in_c1_exe11,
    input wire [31:0] in_c1_exe12,
    input wire [31:0] in_c1_exe13,
    input wire [31:0] in_c1_exe14,
    input wire [31:0] in_c1_exe15,
    input wire [31:0] in_c1_exe16,
    input wire [31:0] in_c1_exe17,
    input wire [31:0] in_c1_exe18,
    input wire [31:0] in_c1_exe19,
    input wire [7:0] in_c1_exe2,
    input wire [31:0] in_c1_exe20,
    input wire [31:0] in_c1_exe21,
    input wire [7:0] in_c1_exe3,
    input wire [7:0] in_c1_exe4,
    input wire [7:0] in_c1_exe5,
    input wire [7:0] in_c1_exe6,
    input wire [7:0] in_c1_exe7,
    input wire [7:0] in_c1_exe8,
    input wire [7:0] in_c1_exe9,
    input wire [31:0] in_dist_i_sroa_0_0_pop23,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1185,
    output wire [0:0] out_c0_exe2186,
    output wire [0:0] out_c0_exe3187,
    output wire [7:0] out_c1_exe1,
    output wire [7:0] out_c1_exe10,
    output wire [7:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe15,
    output wire [31:0] out_c1_exe16,
    output wire [31:0] out_c1_exe17,
    output wire [31:0] out_c1_exe18,
    output wire [31:0] out_c1_exe19,
    output wire [7:0] out_c1_exe2,
    output wire [31:0] out_c1_exe20,
    output wire [31:0] out_c1_exe21,
    output wire [7:0] out_c1_exe3,
    output wire [7:0] out_c1_exe4,
    output wire [7:0] out_c1_exe5,
    output wire [7:0] out_c1_exe6,
    output wire [7:0] out_c1_exe7,
    output wire [7:0] out_c1_exe8,
    output wire [7:0] out_c1_exe9,
    output wire [31:0] out_dist_i_sroa_0_0_pop23,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [463:0] DijkstraOptimisedID_B6_branch_data_pack_q;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_0_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_1_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_10_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_11_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_12_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_13_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_14_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_15_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_16_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_17_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_18_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_19_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_2_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_20_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_21_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_22_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_23_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_24_b;
    wire [31:0] DijkstraOptimisedID_B6_branch_data_unpack_3_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_4_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_5_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_6_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_7_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_8_b;
    wire [7:0] DijkstraOptimisedID_B6_branch_data_unpack_9_b;
    wire [0:0] adapt_scalar_trunc_1166_2_in;
    wire [0:0] adapt_scalar_trunc_1166_2_q;
    wire [0:0] adapt_scalar_trunc_1166_5_in;
    wire [0:0] adapt_scalar_trunc_1166_5_q;
    wire [0:0] adapt_scalar_trunc_1166_8_in;
    wire [0:0] adapt_scalar_trunc_1166_8_q;
    wire [6:0] c_i7_0_1166_1gr_q;
    wire [7:0] element_extension_1166_0_q;
    wire [7:0] element_extension_1166_3_q;
    wire [7:0] element_extension_1166_6_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_0_1166_1gr(CONSTANT,31)
    assign c_i7_0_1166_1gr_q = 7'b0000000;

    // element_extension_1166_6(BITJOIN,36)
    assign element_extension_1166_6_q = {c_i7_0_1166_1gr_q, in_c0_exe3187};

    // element_extension_1166_3(BITJOIN,35)
    assign element_extension_1166_3_q = {c_i7_0_1166_1gr_q, in_c0_exe2186};

    // element_extension_1166_0(BITJOIN,34)
    assign element_extension_1166_0_q = {c_i7_0_1166_1gr_q, in_c0_exe1185};

    // DijkstraOptimisedID_B6_branch_data_pack(BITJOIN,2)
    assign DijkstraOptimisedID_B6_branch_data_pack_q = {in_c1_exe21, in_c1_exe20, in_c1_exe19, in_c1_exe18, in_c1_exe17, in_c1_exe16, in_c1_exe15, in_c1_exe14, in_c1_exe13, in_c1_exe12, in_c1_exe11, in_c1_exe10, in_c1_exe9, in_c1_exe8, in_c1_exe7, in_c1_exe6, in_c1_exe5, in_c1_exe4, in_c1_exe3, in_c1_exe2, in_c1_exe1, in_dist_i_sroa_0_0_pop23, element_extension_1166_6_q, element_extension_1166_3_q, element_extension_1166_0_q};

    // DijkstraOptimisedID_B6_branch_data_unpack_0(BITSELECT,3)
    assign DijkstraOptimisedID_B6_branch_data_unpack_0_b = DijkstraOptimisedID_B6_branch_data_pack_q[7:0];

    // adapt_scalar_trunc_1166_2(ROUND,28)
    assign adapt_scalar_trunc_1166_2_in = DijkstraOptimisedID_B6_branch_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc_1166_2_q = adapt_scalar_trunc_1166_2_in[0:0];

    // out_c0_exe1185(GPOUT,66)
    assign out_c0_exe1185 = adapt_scalar_trunc_1166_2_q;

    // DijkstraOptimisedID_B6_branch_data_unpack_1(BITSELECT,4)
    assign DijkstraOptimisedID_B6_branch_data_unpack_1_b = DijkstraOptimisedID_B6_branch_data_pack_q[15:8];

    // adapt_scalar_trunc_1166_5(ROUND,29)
    assign adapt_scalar_trunc_1166_5_in = DijkstraOptimisedID_B6_branch_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc_1166_5_q = adapt_scalar_trunc_1166_5_in[0:0];

    // out_c0_exe2186(GPOUT,67)
    assign out_c0_exe2186 = adapt_scalar_trunc_1166_5_q;

    // DijkstraOptimisedID_B6_branch_data_unpack_2(BITSELECT,15)
    assign DijkstraOptimisedID_B6_branch_data_unpack_2_b = DijkstraOptimisedID_B6_branch_data_pack_q[23:16];

    // adapt_scalar_trunc_1166_8(ROUND,30)
    assign adapt_scalar_trunc_1166_8_in = DijkstraOptimisedID_B6_branch_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc_1166_8_q = adapt_scalar_trunc_1166_8_in[0:0];

    // out_c0_exe3187(GPOUT,68)
    assign out_c0_exe3187 = adapt_scalar_trunc_1166_8_q;

    // DijkstraOptimisedID_B6_branch_data_unpack_4(BITSELECT,22)
    assign DijkstraOptimisedID_B6_branch_data_unpack_4_b = DijkstraOptimisedID_B6_branch_data_pack_q[63:56];

    // out_c1_exe1(GPOUT,69)
    assign out_c1_exe1 = DijkstraOptimisedID_B6_branch_data_unpack_4_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_13(BITSELECT,8)
    assign DijkstraOptimisedID_B6_branch_data_unpack_13_b = DijkstraOptimisedID_B6_branch_data_pack_q[135:128];

    // out_c1_exe10(GPOUT,70)
    assign out_c1_exe10 = DijkstraOptimisedID_B6_branch_data_unpack_13_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_14(BITSELECT,9)
    assign DijkstraOptimisedID_B6_branch_data_unpack_14_b = DijkstraOptimisedID_B6_branch_data_pack_q[143:136];

    // out_c1_exe11(GPOUT,71)
    assign out_c1_exe11 = DijkstraOptimisedID_B6_branch_data_unpack_14_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_15(BITSELECT,10)
    assign DijkstraOptimisedID_B6_branch_data_unpack_15_b = DijkstraOptimisedID_B6_branch_data_pack_q[175:144];

    // out_c1_exe12(GPOUT,72)
    assign out_c1_exe12 = DijkstraOptimisedID_B6_branch_data_unpack_15_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_16(BITSELECT,11)
    assign DijkstraOptimisedID_B6_branch_data_unpack_16_b = DijkstraOptimisedID_B6_branch_data_pack_q[207:176];

    // out_c1_exe13(GPOUT,73)
    assign out_c1_exe13 = DijkstraOptimisedID_B6_branch_data_unpack_16_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_17(BITSELECT,12)
    assign DijkstraOptimisedID_B6_branch_data_unpack_17_b = DijkstraOptimisedID_B6_branch_data_pack_q[239:208];

    // out_c1_exe14(GPOUT,74)
    assign out_c1_exe14 = DijkstraOptimisedID_B6_branch_data_unpack_17_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_18(BITSELECT,13)
    assign DijkstraOptimisedID_B6_branch_data_unpack_18_b = DijkstraOptimisedID_B6_branch_data_pack_q[271:240];

    // out_c1_exe15(GPOUT,75)
    assign out_c1_exe15 = DijkstraOptimisedID_B6_branch_data_unpack_18_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_19(BITSELECT,14)
    assign DijkstraOptimisedID_B6_branch_data_unpack_19_b = DijkstraOptimisedID_B6_branch_data_pack_q[303:272];

    // out_c1_exe16(GPOUT,76)
    assign out_c1_exe16 = DijkstraOptimisedID_B6_branch_data_unpack_19_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_20(BITSELECT,16)
    assign DijkstraOptimisedID_B6_branch_data_unpack_20_b = DijkstraOptimisedID_B6_branch_data_pack_q[335:304];

    // out_c1_exe17(GPOUT,77)
    assign out_c1_exe17 = DijkstraOptimisedID_B6_branch_data_unpack_20_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_21(BITSELECT,17)
    assign DijkstraOptimisedID_B6_branch_data_unpack_21_b = DijkstraOptimisedID_B6_branch_data_pack_q[367:336];

    // out_c1_exe18(GPOUT,78)
    assign out_c1_exe18 = DijkstraOptimisedID_B6_branch_data_unpack_21_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_22(BITSELECT,18)
    assign DijkstraOptimisedID_B6_branch_data_unpack_22_b = DijkstraOptimisedID_B6_branch_data_pack_q[399:368];

    // out_c1_exe19(GPOUT,79)
    assign out_c1_exe19 = DijkstraOptimisedID_B6_branch_data_unpack_22_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_5(BITSELECT,23)
    assign DijkstraOptimisedID_B6_branch_data_unpack_5_b = DijkstraOptimisedID_B6_branch_data_pack_q[71:64];

    // out_c1_exe2(GPOUT,80)
    assign out_c1_exe2 = DijkstraOptimisedID_B6_branch_data_unpack_5_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_23(BITSELECT,19)
    assign DijkstraOptimisedID_B6_branch_data_unpack_23_b = DijkstraOptimisedID_B6_branch_data_pack_q[431:400];

    // out_c1_exe20(GPOUT,81)
    assign out_c1_exe20 = DijkstraOptimisedID_B6_branch_data_unpack_23_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_24(BITSELECT,20)
    assign DijkstraOptimisedID_B6_branch_data_unpack_24_b = DijkstraOptimisedID_B6_branch_data_pack_q[463:432];

    // out_c1_exe21(GPOUT,82)
    assign out_c1_exe21 = DijkstraOptimisedID_B6_branch_data_unpack_24_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_6(BITSELECT,24)
    assign DijkstraOptimisedID_B6_branch_data_unpack_6_b = DijkstraOptimisedID_B6_branch_data_pack_q[79:72];

    // out_c1_exe3(GPOUT,83)
    assign out_c1_exe3 = DijkstraOptimisedID_B6_branch_data_unpack_6_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_7(BITSELECT,25)
    assign DijkstraOptimisedID_B6_branch_data_unpack_7_b = DijkstraOptimisedID_B6_branch_data_pack_q[87:80];

    // out_c1_exe4(GPOUT,84)
    assign out_c1_exe4 = DijkstraOptimisedID_B6_branch_data_unpack_7_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_8(BITSELECT,26)
    assign DijkstraOptimisedID_B6_branch_data_unpack_8_b = DijkstraOptimisedID_B6_branch_data_pack_q[95:88];

    // out_c1_exe5(GPOUT,85)
    assign out_c1_exe5 = DijkstraOptimisedID_B6_branch_data_unpack_8_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_9(BITSELECT,27)
    assign DijkstraOptimisedID_B6_branch_data_unpack_9_b = DijkstraOptimisedID_B6_branch_data_pack_q[103:96];

    // out_c1_exe6(GPOUT,86)
    assign out_c1_exe6 = DijkstraOptimisedID_B6_branch_data_unpack_9_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_10(BITSELECT,5)
    assign DijkstraOptimisedID_B6_branch_data_unpack_10_b = DijkstraOptimisedID_B6_branch_data_pack_q[111:104];

    // out_c1_exe7(GPOUT,87)
    assign out_c1_exe7 = DijkstraOptimisedID_B6_branch_data_unpack_10_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_11(BITSELECT,6)
    assign DijkstraOptimisedID_B6_branch_data_unpack_11_b = DijkstraOptimisedID_B6_branch_data_pack_q[119:112];

    // out_c1_exe8(GPOUT,88)
    assign out_c1_exe8 = DijkstraOptimisedID_B6_branch_data_unpack_11_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_12(BITSELECT,7)
    assign DijkstraOptimisedID_B6_branch_data_unpack_12_b = DijkstraOptimisedID_B6_branch_data_pack_q[127:120];

    // out_c1_exe9(GPOUT,89)
    assign out_c1_exe9 = DijkstraOptimisedID_B6_branch_data_unpack_12_b;

    // DijkstraOptimisedID_B6_branch_data_unpack_3(BITSELECT,21)
    assign DijkstraOptimisedID_B6_branch_data_unpack_3_b = DijkstraOptimisedID_B6_branch_data_pack_q[55:24];

    // out_dist_i_sroa_0_0_pop23(GPOUT,90)
    assign out_dist_i_sroa_0_0_pop23 = DijkstraOptimisedID_B6_branch_data_unpack_3_b;

    // out_stall_out(GPOUT,91)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,92)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,93)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
