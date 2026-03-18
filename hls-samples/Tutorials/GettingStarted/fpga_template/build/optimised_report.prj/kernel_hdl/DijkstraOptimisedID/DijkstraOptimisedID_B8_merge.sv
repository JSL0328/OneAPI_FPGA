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

// SystemVerilog created from DijkstraOptimisedID_B8_merge
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_B8_merge (
    input wire [31:0] in_dist_i_sroa_0_0_pop23128_0,
    input wire [31:0] in_dist_i_sroa_104_2_replace_phi121_0,
    input wire [31:0] in_dist_i_sroa_121_2_replace_phi122_0,
    input wire [31:0] in_dist_i_sroa_138_2_replace_phi123_0,
    input wire [31:0] in_dist_i_sroa_155_2_replace_phi124_0,
    input wire [31:0] in_dist_i_sroa_172_2_replace_phi125_0,
    input wire [31:0] in_dist_i_sroa_19_2_replace_phi116_0,
    input wire [31:0] in_dist_i_sroa_36_2_replace_phi117_0,
    input wire [31:0] in_dist_i_sroa_53_2_replace_phi118_0,
    input wire [31:0] in_dist_i_sroa_70_2_replace_phi119_0,
    input wire [31:0] in_dist_i_sroa_87_2_replace_phi120_0,
    input wire [0:0] in_exitcond26126_0,
    input wire [0:0] in_forked104_0,
    input wire [0:0] in_notcmp56127_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [7:0] in_visited_i_sroa_0_2_replace_phi105_0,
    input wire [7:0] in_visited_i_sroa_10_2_replace_phi107_0,
    input wire [7:0] in_visited_i_sroa_14_2_replace_phi108_0,
    input wire [7:0] in_visited_i_sroa_18_2_replace_phi109_0,
    input wire [7:0] in_visited_i_sroa_22_2_replace_phi110_0,
    input wire [7:0] in_visited_i_sroa_26_2_replace_phi111_0,
    input wire [7:0] in_visited_i_sroa_30_2_replace_phi112_0,
    input wire [7:0] in_visited_i_sroa_34_2_replace_phi113_0,
    input wire [7:0] in_visited_i_sroa_38_2_replace_phi114_0,
    input wire [7:0] in_visited_i_sroa_42_2_replace_phi115_0,
    input wire [7:0] in_visited_i_sroa_6_2_replace_phi106_0,
    output wire [0:0] out_almost_empty_out,
    output wire [31:0] out_dist_i_sroa_0_0_pop23128,
    output wire [31:0] out_dist_i_sroa_104_2_replace_phi121,
    output wire [31:0] out_dist_i_sroa_121_2_replace_phi122,
    output wire [31:0] out_dist_i_sroa_138_2_replace_phi123,
    output wire [31:0] out_dist_i_sroa_155_2_replace_phi124,
    output wire [31:0] out_dist_i_sroa_172_2_replace_phi125,
    output wire [31:0] out_dist_i_sroa_19_2_replace_phi116,
    output wire [31:0] out_dist_i_sroa_36_2_replace_phi117,
    output wire [31:0] out_dist_i_sroa_53_2_replace_phi118,
    output wire [31:0] out_dist_i_sroa_70_2_replace_phi119,
    output wire [31:0] out_dist_i_sroa_87_2_replace_phi120,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_exitcond26126,
    output wire [0:0] out_forked104,
    output wire [0:0] out_notcmp56127,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    output wire [7:0] out_visited_i_sroa_0_2_replace_phi105,
    output wire [7:0] out_visited_i_sroa_10_2_replace_phi107,
    output wire [7:0] out_visited_i_sroa_14_2_replace_phi108,
    output wire [7:0] out_visited_i_sroa_18_2_replace_phi109,
    output wire [7:0] out_visited_i_sroa_22_2_replace_phi110,
    output wire [7:0] out_visited_i_sroa_26_2_replace_phi111,
    output wire [7:0] out_visited_i_sroa_30_2_replace_phi112,
    output wire [7:0] out_visited_i_sroa_34_2_replace_phi113,
    output wire [7:0] out_visited_i_sroa_38_2_replace_phi114,
    output wire [7:0] out_visited_i_sroa_42_2_replace_phi115,
    output wire [7:0] out_visited_i_sroa_6_2_replace_phi106,
    input wire clock,
    input wire resetn
    );

    wire [463:0] DijkstraOptimisedID_B8_merge_data_pack_0_q;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_0_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_1_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_10_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_11_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_12_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_13_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_14_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_15_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_16_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_17_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_18_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_19_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_2_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_20_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_21_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_22_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_23_b;
    wire [31:0] DijkstraOptimisedID_B8_merge_data_unpack_24_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_3_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_4_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_5_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_6_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_7_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_8_b;
    wire [7:0] DijkstraOptimisedID_B8_merge_data_unpack_9_b;
    wire [0:0] DijkstraOptimisedID_B8_merge_storage_out_o_almost_empty;
    wire [463:0] DijkstraOptimisedID_B8_merge_storage_out_o_data;
    wire [0:0] DijkstraOptimisedID_B8_merge_storage_out_o_empty;
    wire [0:0] DijkstraOptimisedID_B8_merge_storage_out_o_stall;
    wire [0:0] DijkstraOptimisedID_B8_merge_storage_out_o_valid;
    wire [0:0] adapt_scalar_trunc_2960_2_in;
    wire [0:0] adapt_scalar_trunc_2960_2_q;
    wire [0:0] adapt_scalar_trunc_2960_26_in;
    wire [0:0] adapt_scalar_trunc_2960_26_q;
    wire [0:0] adapt_scalar_trunc_2960_29_in;
    wire [0:0] adapt_scalar_trunc_2960_29_q;
    wire [1:0] c_i2_0_2960_31_q;
    wire [6:0] c_i7_0_2960_1gr_q;
    wire [7:0] element_extension_2960_0_q;
    wire [7:0] element_extension_2960_24_q;
    wire [7:0] element_extension_2960_27_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_0_2960_1gr(CONSTANT,33)
    assign c_i7_0_2960_1gr_q = 7'b0000000;

    // element_extension_2960_27(BITJOIN,38)
    assign element_extension_2960_27_q = {c_i7_0_2960_1gr_q, in_notcmp56127_0};

    // element_extension_2960_24(BITJOIN,37)
    assign element_extension_2960_24_q = {c_i7_0_2960_1gr_q, in_exitcond26126_0};

    // element_extension_2960_0(BITJOIN,36)
    assign element_extension_2960_0_q = {c_i7_0_2960_1gr_q, in_forked104_0};

    // DijkstraOptimisedID_B8_merge_data_pack_0(BITJOIN,2)
    assign DijkstraOptimisedID_B8_merge_data_pack_0_q = {in_dist_i_sroa_0_0_pop23128_0, element_extension_2960_27_q, element_extension_2960_24_q, in_dist_i_sroa_172_2_replace_phi125_0, in_dist_i_sroa_155_2_replace_phi124_0, in_dist_i_sroa_138_2_replace_phi123_0, in_dist_i_sroa_121_2_replace_phi122_0, in_dist_i_sroa_104_2_replace_phi121_0, in_dist_i_sroa_87_2_replace_phi120_0, in_dist_i_sroa_70_2_replace_phi119_0, in_dist_i_sroa_53_2_replace_phi118_0, in_dist_i_sroa_36_2_replace_phi117_0, in_dist_i_sroa_19_2_replace_phi116_0, in_visited_i_sroa_42_2_replace_phi115_0, in_visited_i_sroa_38_2_replace_phi114_0, in_visited_i_sroa_34_2_replace_phi113_0, in_visited_i_sroa_30_2_replace_phi112_0, in_visited_i_sroa_26_2_replace_phi111_0, in_visited_i_sroa_22_2_replace_phi110_0, in_visited_i_sroa_18_2_replace_phi109_0, in_visited_i_sroa_14_2_replace_phi108_0, in_visited_i_sroa_10_2_replace_phi107_0, in_visited_i_sroa_6_2_replace_phi106_0, in_visited_i_sroa_0_2_replace_phi105_0, element_extension_2960_0_q};

    // c_i2_0_2960_31(CONSTANT,32)
    assign c_i2_0_2960_31_q = 2'b00;

    // DijkstraOptimisedID_B8_merge_storage(BLACKBOX,28)
    DijkstraOptimisedID_B8_merge_storage theDijkstraOptimisedID_B8_merge_storage (
        .in_almost_empty_in(c_i2_0_2960_31_q),
        .in_empty_in(c_i2_0_2960_31_q),
        .in_i_data(DijkstraOptimisedID_B8_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(DijkstraOptimisedID_B8_merge_storage_out_o_almost_empty),
        .out_o_data(DijkstraOptimisedID_B8_merge_storage_out_o_data),
        .out_o_empty(DijkstraOptimisedID_B8_merge_storage_out_o_empty),
        .out_o_stall(DijkstraOptimisedID_B8_merge_storage_out_o_stall),
        .out_o_valid(DijkstraOptimisedID_B8_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,66)
    assign out_almost_empty_out = DijkstraOptimisedID_B8_merge_storage_out_o_almost_empty;

    // DijkstraOptimisedID_B8_merge_data_unpack_24(BITSELECT,20)
    assign DijkstraOptimisedID_B8_merge_data_unpack_24_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[463:432];

    // out_dist_i_sroa_0_0_pop23128(GPOUT,67)
    assign out_dist_i_sroa_0_0_pop23128 = DijkstraOptimisedID_B8_merge_data_unpack_24_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_17(BITSELECT,12)
    assign DijkstraOptimisedID_B8_merge_data_unpack_17_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[287:256];

    // out_dist_i_sroa_104_2_replace_phi121(GPOUT,68)
    assign out_dist_i_sroa_104_2_replace_phi121 = DijkstraOptimisedID_B8_merge_data_unpack_17_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_18(BITSELECT,13)
    assign DijkstraOptimisedID_B8_merge_data_unpack_18_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[319:288];

    // out_dist_i_sroa_121_2_replace_phi122(GPOUT,69)
    assign out_dist_i_sroa_121_2_replace_phi122 = DijkstraOptimisedID_B8_merge_data_unpack_18_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_19(BITSELECT,14)
    assign DijkstraOptimisedID_B8_merge_data_unpack_19_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[351:320];

    // out_dist_i_sroa_138_2_replace_phi123(GPOUT,70)
    assign out_dist_i_sroa_138_2_replace_phi123 = DijkstraOptimisedID_B8_merge_data_unpack_19_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_20(BITSELECT,16)
    assign DijkstraOptimisedID_B8_merge_data_unpack_20_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[383:352];

    // out_dist_i_sroa_155_2_replace_phi124(GPOUT,71)
    assign out_dist_i_sroa_155_2_replace_phi124 = DijkstraOptimisedID_B8_merge_data_unpack_20_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_21(BITSELECT,17)
    assign DijkstraOptimisedID_B8_merge_data_unpack_21_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[415:384];

    // out_dist_i_sroa_172_2_replace_phi125(GPOUT,72)
    assign out_dist_i_sroa_172_2_replace_phi125 = DijkstraOptimisedID_B8_merge_data_unpack_21_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_12(BITSELECT,7)
    assign DijkstraOptimisedID_B8_merge_data_unpack_12_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[127:96];

    // out_dist_i_sroa_19_2_replace_phi116(GPOUT,73)
    assign out_dist_i_sroa_19_2_replace_phi116 = DijkstraOptimisedID_B8_merge_data_unpack_12_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_13(BITSELECT,8)
    assign DijkstraOptimisedID_B8_merge_data_unpack_13_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[159:128];

    // out_dist_i_sroa_36_2_replace_phi117(GPOUT,74)
    assign out_dist_i_sroa_36_2_replace_phi117 = DijkstraOptimisedID_B8_merge_data_unpack_13_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_14(BITSELECT,9)
    assign DijkstraOptimisedID_B8_merge_data_unpack_14_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[191:160];

    // out_dist_i_sroa_53_2_replace_phi118(GPOUT,75)
    assign out_dist_i_sroa_53_2_replace_phi118 = DijkstraOptimisedID_B8_merge_data_unpack_14_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_15(BITSELECT,10)
    assign DijkstraOptimisedID_B8_merge_data_unpack_15_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[223:192];

    // out_dist_i_sroa_70_2_replace_phi119(GPOUT,76)
    assign out_dist_i_sroa_70_2_replace_phi119 = DijkstraOptimisedID_B8_merge_data_unpack_15_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_16(BITSELECT,11)
    assign DijkstraOptimisedID_B8_merge_data_unpack_16_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[255:224];

    // out_dist_i_sroa_87_2_replace_phi120(GPOUT,77)
    assign out_dist_i_sroa_87_2_replace_phi120 = DijkstraOptimisedID_B8_merge_data_unpack_16_b;

    // out_empty_out(GPOUT,78)
    assign out_empty_out = DijkstraOptimisedID_B8_merge_storage_out_o_empty;

    // DijkstraOptimisedID_B8_merge_data_unpack_22(BITSELECT,18)
    assign DijkstraOptimisedID_B8_merge_data_unpack_22_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[423:416];

    // adapt_scalar_trunc_2960_26(ROUND,30)
    assign adapt_scalar_trunc_2960_26_in = DijkstraOptimisedID_B8_merge_data_unpack_22_b[0:0];
    assign adapt_scalar_trunc_2960_26_q = adapt_scalar_trunc_2960_26_in[0:0];

    // out_exitcond26126(GPOUT,79)
    assign out_exitcond26126 = adapt_scalar_trunc_2960_26_q;

    // DijkstraOptimisedID_B8_merge_data_unpack_0(BITSELECT,3)
    assign DijkstraOptimisedID_B8_merge_data_unpack_0_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc_2960_2(ROUND,29)
    assign adapt_scalar_trunc_2960_2_in = DijkstraOptimisedID_B8_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc_2960_2_q = adapt_scalar_trunc_2960_2_in[0:0];

    // out_forked104(GPOUT,80)
    assign out_forked104 = adapt_scalar_trunc_2960_2_q;

    // DijkstraOptimisedID_B8_merge_data_unpack_23(BITSELECT,19)
    assign DijkstraOptimisedID_B8_merge_data_unpack_23_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[431:424];

    // adapt_scalar_trunc_2960_29(ROUND,31)
    assign adapt_scalar_trunc_2960_29_in = DijkstraOptimisedID_B8_merge_data_unpack_23_b[0:0];
    assign adapt_scalar_trunc_2960_29_q = adapt_scalar_trunc_2960_29_in[0:0];

    // out_notcmp56127(GPOUT,81)
    assign out_notcmp56127 = adapt_scalar_trunc_2960_29_q;

    // out_stall_out_0(GPOUT,82)
    assign out_stall_out_0 = DijkstraOptimisedID_B8_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,83)
    assign out_valid_out = DijkstraOptimisedID_B8_merge_storage_out_o_valid;

    // DijkstraOptimisedID_B8_merge_data_unpack_1(BITSELECT,4)
    assign DijkstraOptimisedID_B8_merge_data_unpack_1_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[15:8];

    // out_visited_i_sroa_0_2_replace_phi105(GPOUT,84)
    assign out_visited_i_sroa_0_2_replace_phi105 = DijkstraOptimisedID_B8_merge_data_unpack_1_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_3(BITSELECT,21)
    assign DijkstraOptimisedID_B8_merge_data_unpack_3_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[31:24];

    // out_visited_i_sroa_10_2_replace_phi107(GPOUT,85)
    assign out_visited_i_sroa_10_2_replace_phi107 = DijkstraOptimisedID_B8_merge_data_unpack_3_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_4(BITSELECT,22)
    assign DijkstraOptimisedID_B8_merge_data_unpack_4_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[39:32];

    // out_visited_i_sroa_14_2_replace_phi108(GPOUT,86)
    assign out_visited_i_sroa_14_2_replace_phi108 = DijkstraOptimisedID_B8_merge_data_unpack_4_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_5(BITSELECT,23)
    assign DijkstraOptimisedID_B8_merge_data_unpack_5_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[47:40];

    // out_visited_i_sroa_18_2_replace_phi109(GPOUT,87)
    assign out_visited_i_sroa_18_2_replace_phi109 = DijkstraOptimisedID_B8_merge_data_unpack_5_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_6(BITSELECT,24)
    assign DijkstraOptimisedID_B8_merge_data_unpack_6_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[55:48];

    // out_visited_i_sroa_22_2_replace_phi110(GPOUT,88)
    assign out_visited_i_sroa_22_2_replace_phi110 = DijkstraOptimisedID_B8_merge_data_unpack_6_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_7(BITSELECT,25)
    assign DijkstraOptimisedID_B8_merge_data_unpack_7_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[63:56];

    // out_visited_i_sroa_26_2_replace_phi111(GPOUT,89)
    assign out_visited_i_sroa_26_2_replace_phi111 = DijkstraOptimisedID_B8_merge_data_unpack_7_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_8(BITSELECT,26)
    assign DijkstraOptimisedID_B8_merge_data_unpack_8_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[71:64];

    // out_visited_i_sroa_30_2_replace_phi112(GPOUT,90)
    assign out_visited_i_sroa_30_2_replace_phi112 = DijkstraOptimisedID_B8_merge_data_unpack_8_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_9(BITSELECT,27)
    assign DijkstraOptimisedID_B8_merge_data_unpack_9_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[79:72];

    // out_visited_i_sroa_34_2_replace_phi113(GPOUT,91)
    assign out_visited_i_sroa_34_2_replace_phi113 = DijkstraOptimisedID_B8_merge_data_unpack_9_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_10(BITSELECT,5)
    assign DijkstraOptimisedID_B8_merge_data_unpack_10_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[87:80];

    // out_visited_i_sroa_38_2_replace_phi114(GPOUT,92)
    assign out_visited_i_sroa_38_2_replace_phi114 = DijkstraOptimisedID_B8_merge_data_unpack_10_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_11(BITSELECT,6)
    assign DijkstraOptimisedID_B8_merge_data_unpack_11_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[95:88];

    // out_visited_i_sroa_42_2_replace_phi115(GPOUT,93)
    assign out_visited_i_sroa_42_2_replace_phi115 = DijkstraOptimisedID_B8_merge_data_unpack_11_b;

    // DijkstraOptimisedID_B8_merge_data_unpack_2(BITSELECT,15)
    assign DijkstraOptimisedID_B8_merge_data_unpack_2_b = DijkstraOptimisedID_B8_merge_storage_out_o_data[23:16];

    // out_visited_i_sroa_6_2_replace_phi106(GPOUT,94)
    assign out_visited_i_sroa_6_2_replace_phi106 = DijkstraOptimisedID_B8_merge_data_unpack_2_b;

    // rst_sync(RESETSYNC,95)
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
