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

// SystemVerilog created from DijkstraOptimisedID_B8_branch
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_B8_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_c0_exe10307,
    input wire [7:0] in_c0_exe11308,
    input wire [7:0] in_c0_exe12309,
    input wire [31:0] in_c0_exe1298,
    input wire [7:0] in_c0_exe13310,
    input wire [7:0] in_c0_exe14311,
    input wire [7:0] in_c0_exe15312,
    input wire [7:0] in_c0_exe16313,
    input wire [7:0] in_c0_exe17314,
    input wire [7:0] in_c0_exe18315,
    input wire [7:0] in_c0_exe19316,
    input wire [7:0] in_c0_exe20317,
    input wire [7:0] in_c0_exe21318,
    input wire [31:0] in_c0_exe22319,
    input wire [31:0] in_c0_exe2299,
    input wire [31:0] in_c0_exe23,
    input wire [0:0] in_c0_exe25,
    input wire [0:0] in_c0_exe26,
    input wire [0:0] in_c0_exe27,
    input wire [0:0] in_c0_exe28,
    input wire [31:0] in_c0_exe3300,
    input wire [31:0] in_c0_exe4301,
    input wire [31:0] in_c0_exe5302,
    input wire [31:0] in_c0_exe6303,
    input wire [31:0] in_c0_exe7304,
    input wire [31:0] in_c0_exe8305,
    input wire [31:0] in_c0_exe9306,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10307,
    output wire [7:0] out_c0_exe11308,
    output wire [7:0] out_c0_exe12309,
    output wire [31:0] out_c0_exe1298,
    output wire [7:0] out_c0_exe13310,
    output wire [7:0] out_c0_exe14311,
    output wire [7:0] out_c0_exe15312,
    output wire [7:0] out_c0_exe16313,
    output wire [7:0] out_c0_exe17314,
    output wire [7:0] out_c0_exe18315,
    output wire [7:0] out_c0_exe19316,
    output wire [7:0] out_c0_exe20317,
    output wire [7:0] out_c0_exe21318,
    output wire [31:0] out_c0_exe22319,
    output wire [31:0] out_c0_exe2299,
    output wire [31:0] out_c0_exe23,
    output wire [0:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe3300,
    output wire [31:0] out_c0_exe4301,
    output wire [31:0] out_c0_exe5302,
    output wire [31:0] out_c0_exe6303,
    output wire [31:0] out_c0_exe7304,
    output wire [31:0] out_c0_exe8305,
    output wire [31:0] out_c0_exe9306,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [495:0] DijkstraOptimisedID_B8_branch_data_pack_q;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_0_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_1_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_10_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_11_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_12_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_13_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_14_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_15_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_16_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_17_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_18_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_19_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_2_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_20_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_21_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_22_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_23_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_24_b;
    wire [7:0] DijkstraOptimisedID_B8_branch_data_unpack_25_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_3_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_4_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_5_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_6_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_7_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_8_b;
    wire [31:0] DijkstraOptimisedID_B8_branch_data_unpack_9_b;
    wire [0:0] DijkstraOptimisedID_B8_branch_valid_and_q;
    wire [0:0] adapt_scalar_trunc_3025_25_in;
    wire [0:0] adapt_scalar_trunc_3025_25_q;
    wire [0:0] adapt_scalar_trunc_3025_28_in;
    wire [0:0] adapt_scalar_trunc_3025_28_q;
    wire [0:0] adapt_scalar_trunc_3025_31_in;
    wire [0:0] adapt_scalar_trunc_3025_31_q;
    wire [6:0] c_i7_0_3025_24_q;
    wire [7:0] element_extension_3025_23_q;
    wire [7:0] element_extension_3025_26_q;
    wire [7:0] element_extension_3025_29_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_0_3025_24(CONSTANT,33)
    assign c_i7_0_3025_24_q = 7'b0000000;

    // element_extension_3025_29(BITJOIN,38)
    assign element_extension_3025_29_q = {c_i7_0_3025_24_q, in_c0_exe28};

    // element_extension_3025_26(BITJOIN,37)
    assign element_extension_3025_26_q = {c_i7_0_3025_24_q, in_c0_exe27};

    // element_extension_3025_23(BITJOIN,36)
    assign element_extension_3025_23_q = {c_i7_0_3025_24_q, in_c0_exe26};

    // DijkstraOptimisedID_B8_branch_data_pack(BITJOIN,2)
    assign DijkstraOptimisedID_B8_branch_data_pack_q = {element_extension_3025_29_q, element_extension_3025_26_q, element_extension_3025_23_q, in_c0_exe23, in_c0_exe22319, in_c0_exe21318, in_c0_exe20317, in_c0_exe19316, in_c0_exe18315, in_c0_exe17314, in_c0_exe16313, in_c0_exe15312, in_c0_exe14311, in_c0_exe13310, in_c0_exe12309, in_c0_exe11308, in_c0_exe10307, in_c0_exe9306, in_c0_exe8305, in_c0_exe7304, in_c0_exe6303, in_c0_exe5302, in_c0_exe4301, in_c0_exe3300, in_c0_exe2299, in_c0_exe1298};

    // DijkstraOptimisedID_B8_branch_data_unpack_9(BITSELECT,28)
    assign DijkstraOptimisedID_B8_branch_data_unpack_9_b = DijkstraOptimisedID_B8_branch_data_pack_q[319:288];

    // out_c0_exe10307(GPOUT,70)
    assign out_c0_exe10307 = DijkstraOptimisedID_B8_branch_data_unpack_9_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_10(BITSELECT,5)
    assign DijkstraOptimisedID_B8_branch_data_unpack_10_b = DijkstraOptimisedID_B8_branch_data_pack_q[327:320];

    // out_c0_exe11308(GPOUT,71)
    assign out_c0_exe11308 = DijkstraOptimisedID_B8_branch_data_unpack_10_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_11(BITSELECT,6)
    assign DijkstraOptimisedID_B8_branch_data_unpack_11_b = DijkstraOptimisedID_B8_branch_data_pack_q[335:328];

    // out_c0_exe12309(GPOUT,72)
    assign out_c0_exe12309 = DijkstraOptimisedID_B8_branch_data_unpack_11_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_0(BITSELECT,3)
    assign DijkstraOptimisedID_B8_branch_data_unpack_0_b = DijkstraOptimisedID_B8_branch_data_pack_q[31:0];

    // out_c0_exe1298(GPOUT,73)
    assign out_c0_exe1298 = DijkstraOptimisedID_B8_branch_data_unpack_0_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_12(BITSELECT,7)
    assign DijkstraOptimisedID_B8_branch_data_unpack_12_b = DijkstraOptimisedID_B8_branch_data_pack_q[343:336];

    // out_c0_exe13310(GPOUT,74)
    assign out_c0_exe13310 = DijkstraOptimisedID_B8_branch_data_unpack_12_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_13(BITSELECT,8)
    assign DijkstraOptimisedID_B8_branch_data_unpack_13_b = DijkstraOptimisedID_B8_branch_data_pack_q[351:344];

    // out_c0_exe14311(GPOUT,75)
    assign out_c0_exe14311 = DijkstraOptimisedID_B8_branch_data_unpack_13_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_14(BITSELECT,9)
    assign DijkstraOptimisedID_B8_branch_data_unpack_14_b = DijkstraOptimisedID_B8_branch_data_pack_q[359:352];

    // out_c0_exe15312(GPOUT,76)
    assign out_c0_exe15312 = DijkstraOptimisedID_B8_branch_data_unpack_14_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_15(BITSELECT,10)
    assign DijkstraOptimisedID_B8_branch_data_unpack_15_b = DijkstraOptimisedID_B8_branch_data_pack_q[367:360];

    // out_c0_exe16313(GPOUT,77)
    assign out_c0_exe16313 = DijkstraOptimisedID_B8_branch_data_unpack_15_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_16(BITSELECT,11)
    assign DijkstraOptimisedID_B8_branch_data_unpack_16_b = DijkstraOptimisedID_B8_branch_data_pack_q[375:368];

    // out_c0_exe17314(GPOUT,78)
    assign out_c0_exe17314 = DijkstraOptimisedID_B8_branch_data_unpack_16_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_17(BITSELECT,12)
    assign DijkstraOptimisedID_B8_branch_data_unpack_17_b = DijkstraOptimisedID_B8_branch_data_pack_q[383:376];

    // out_c0_exe18315(GPOUT,79)
    assign out_c0_exe18315 = DijkstraOptimisedID_B8_branch_data_unpack_17_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_18(BITSELECT,13)
    assign DijkstraOptimisedID_B8_branch_data_unpack_18_b = DijkstraOptimisedID_B8_branch_data_pack_q[391:384];

    // out_c0_exe19316(GPOUT,80)
    assign out_c0_exe19316 = DijkstraOptimisedID_B8_branch_data_unpack_18_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_19(BITSELECT,14)
    assign DijkstraOptimisedID_B8_branch_data_unpack_19_b = DijkstraOptimisedID_B8_branch_data_pack_q[399:392];

    // out_c0_exe20317(GPOUT,81)
    assign out_c0_exe20317 = DijkstraOptimisedID_B8_branch_data_unpack_19_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_20(BITSELECT,16)
    assign DijkstraOptimisedID_B8_branch_data_unpack_20_b = DijkstraOptimisedID_B8_branch_data_pack_q[407:400];

    // out_c0_exe21318(GPOUT,82)
    assign out_c0_exe21318 = DijkstraOptimisedID_B8_branch_data_unpack_20_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_21(BITSELECT,17)
    assign DijkstraOptimisedID_B8_branch_data_unpack_21_b = DijkstraOptimisedID_B8_branch_data_pack_q[439:408];

    // out_c0_exe22319(GPOUT,83)
    assign out_c0_exe22319 = DijkstraOptimisedID_B8_branch_data_unpack_21_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_1(BITSELECT,4)
    assign DijkstraOptimisedID_B8_branch_data_unpack_1_b = DijkstraOptimisedID_B8_branch_data_pack_q[63:32];

    // out_c0_exe2299(GPOUT,84)
    assign out_c0_exe2299 = DijkstraOptimisedID_B8_branch_data_unpack_1_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_22(BITSELECT,18)
    assign DijkstraOptimisedID_B8_branch_data_unpack_22_b = DijkstraOptimisedID_B8_branch_data_pack_q[471:440];

    // out_c0_exe23(GPOUT,85)
    assign out_c0_exe23 = DijkstraOptimisedID_B8_branch_data_unpack_22_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_23(BITSELECT,19)
    assign DijkstraOptimisedID_B8_branch_data_unpack_23_b = DijkstraOptimisedID_B8_branch_data_pack_q[479:472];

    // adapt_scalar_trunc_3025_25(ROUND,30)
    assign adapt_scalar_trunc_3025_25_in = DijkstraOptimisedID_B8_branch_data_unpack_23_b[0:0];
    assign adapt_scalar_trunc_3025_25_q = adapt_scalar_trunc_3025_25_in[0:0];

    // out_c0_exe26(GPOUT,86)
    assign out_c0_exe26 = adapt_scalar_trunc_3025_25_q;

    // DijkstraOptimisedID_B8_branch_data_unpack_24(BITSELECT,20)
    assign DijkstraOptimisedID_B8_branch_data_unpack_24_b = DijkstraOptimisedID_B8_branch_data_pack_q[487:480];

    // adapt_scalar_trunc_3025_28(ROUND,31)
    assign adapt_scalar_trunc_3025_28_in = DijkstraOptimisedID_B8_branch_data_unpack_24_b[0:0];
    assign adapt_scalar_trunc_3025_28_q = adapt_scalar_trunc_3025_28_in[0:0];

    // out_c0_exe27(GPOUT,87)
    assign out_c0_exe27 = adapt_scalar_trunc_3025_28_q;

    // DijkstraOptimisedID_B8_branch_data_unpack_25(BITSELECT,21)
    assign DijkstraOptimisedID_B8_branch_data_unpack_25_b = DijkstraOptimisedID_B8_branch_data_pack_q[495:488];

    // adapt_scalar_trunc_3025_31(ROUND,32)
    assign adapt_scalar_trunc_3025_31_in = DijkstraOptimisedID_B8_branch_data_unpack_25_b[0:0];
    assign adapt_scalar_trunc_3025_31_q = adapt_scalar_trunc_3025_31_in[0:0];

    // out_c0_exe28(GPOUT,88)
    assign out_c0_exe28 = adapt_scalar_trunc_3025_31_q;

    // DijkstraOptimisedID_B8_branch_data_unpack_2(BITSELECT,15)
    assign DijkstraOptimisedID_B8_branch_data_unpack_2_b = DijkstraOptimisedID_B8_branch_data_pack_q[95:64];

    // out_c0_exe3300(GPOUT,89)
    assign out_c0_exe3300 = DijkstraOptimisedID_B8_branch_data_unpack_2_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_3(BITSELECT,22)
    assign DijkstraOptimisedID_B8_branch_data_unpack_3_b = DijkstraOptimisedID_B8_branch_data_pack_q[127:96];

    // out_c0_exe4301(GPOUT,90)
    assign out_c0_exe4301 = DijkstraOptimisedID_B8_branch_data_unpack_3_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_4(BITSELECT,23)
    assign DijkstraOptimisedID_B8_branch_data_unpack_4_b = DijkstraOptimisedID_B8_branch_data_pack_q[159:128];

    // out_c0_exe5302(GPOUT,91)
    assign out_c0_exe5302 = DijkstraOptimisedID_B8_branch_data_unpack_4_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_5(BITSELECT,24)
    assign DijkstraOptimisedID_B8_branch_data_unpack_5_b = DijkstraOptimisedID_B8_branch_data_pack_q[191:160];

    // out_c0_exe6303(GPOUT,92)
    assign out_c0_exe6303 = DijkstraOptimisedID_B8_branch_data_unpack_5_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_6(BITSELECT,25)
    assign DijkstraOptimisedID_B8_branch_data_unpack_6_b = DijkstraOptimisedID_B8_branch_data_pack_q[223:192];

    // out_c0_exe7304(GPOUT,93)
    assign out_c0_exe7304 = DijkstraOptimisedID_B8_branch_data_unpack_6_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_7(BITSELECT,26)
    assign DijkstraOptimisedID_B8_branch_data_unpack_7_b = DijkstraOptimisedID_B8_branch_data_pack_q[255:224];

    // out_c0_exe8305(GPOUT,94)
    assign out_c0_exe8305 = DijkstraOptimisedID_B8_branch_data_unpack_7_b;

    // DijkstraOptimisedID_B8_branch_data_unpack_8(BITSELECT,27)
    assign DijkstraOptimisedID_B8_branch_data_unpack_8_b = DijkstraOptimisedID_B8_branch_data_pack_q[287:256];

    // out_c0_exe9306(GPOUT,95)
    assign out_c0_exe9306 = DijkstraOptimisedID_B8_branch_data_unpack_8_b;

    // out_stall_out(GPOUT,96)
    assign out_stall_out = in_stall_in_0;

    // DijkstraOptimisedID_B8_branch_valid_and(LOGICAL,29)
    assign DijkstraOptimisedID_B8_branch_valid_and_q = in_valid_in & in_c0_exe25;

    // out_valid_out_0(GPOUT,97)
    assign out_valid_out_0 = DijkstraOptimisedID_B8_branch_valid_and_q;

    // rst_sync(RESETSYNC,98)
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
