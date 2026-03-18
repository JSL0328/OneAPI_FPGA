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

// SystemVerilog created from DijkstraOptimisedID_B7_merge
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_B7_merge (
    input wire [31:0] in_c0_exe1030711_0,
    input wire [7:0] in_c0_exe1130812_0,
    input wire [7:0] in_c0_exe1230913_0,
    input wire [31:0] in_c0_exe12982_0,
    input wire [7:0] in_c0_exe1331014_0,
    input wire [7:0] in_c0_exe1431115_0,
    input wire [7:0] in_c0_exe1531216_0,
    input wire [7:0] in_c0_exe1631317_0,
    input wire [7:0] in_c0_exe1731418_0,
    input wire [7:0] in_c0_exe1831519_0,
    input wire [7:0] in_c0_exe1931620_0,
    input wire [7:0] in_c0_exe2031721_0,
    input wire [7:0] in_c0_exe2131822_0,
    input wire [31:0] in_c0_exe2231923_0,
    input wire [31:0] in_c0_exe22993_0,
    input wire [31:0] in_c0_exe2324_0,
    input wire [0:0] in_c0_exe2625_0,
    input wire [0:0] in_c0_exe2726_0,
    input wire [0:0] in_c0_exe2827_0,
    input wire [31:0] in_c0_exe33004_0,
    input wire [31:0] in_c0_exe43015_0,
    input wire [31:0] in_c0_exe53026_0,
    input wire [31:0] in_c0_exe63037_0,
    input wire [31:0] in_c0_exe73048_0,
    input wire [31:0] in_c0_exe83059_0,
    input wire [31:0] in_c0_exe930610_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [31:0] out_c0_exe1030711,
    output wire [7:0] out_c0_exe1130812,
    output wire [7:0] out_c0_exe1230913,
    output wire [31:0] out_c0_exe12982,
    output wire [7:0] out_c0_exe1331014,
    output wire [7:0] out_c0_exe1431115,
    output wire [7:0] out_c0_exe1531216,
    output wire [7:0] out_c0_exe1631317,
    output wire [7:0] out_c0_exe1731418,
    output wire [7:0] out_c0_exe1831519,
    output wire [7:0] out_c0_exe1931620,
    output wire [7:0] out_c0_exe2031721,
    output wire [7:0] out_c0_exe2131822,
    output wire [31:0] out_c0_exe2231923,
    output wire [31:0] out_c0_exe22993,
    output wire [31:0] out_c0_exe2324,
    output wire [0:0] out_c0_exe2625,
    output wire [0:0] out_c0_exe2726,
    output wire [0:0] out_c0_exe2827,
    output wire [31:0] out_c0_exe33004,
    output wire [31:0] out_c0_exe43015,
    output wire [31:0] out_c0_exe53026,
    output wire [31:0] out_c0_exe63037,
    output wire [31:0] out_c0_exe73048,
    output wire [31:0] out_c0_exe83059,
    output wire [31:0] out_c0_exe930610,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [495:0] DijkstraOptimisedID_B7_merge_data_pack_0_q;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_0_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_1_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_10_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_11_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_12_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_13_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_14_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_15_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_16_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_17_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_18_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_19_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_2_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_20_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_21_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_22_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_23_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_24_b;
    wire [7:0] DijkstraOptimisedID_B7_merge_data_unpack_25_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_3_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_4_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_5_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_6_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_7_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_8_b;
    wire [31:0] DijkstraOptimisedID_B7_merge_data_unpack_9_b;
    wire [0:0] DijkstraOptimisedID_B7_merge_storage_out_o_almost_empty;
    wire [495:0] DijkstraOptimisedID_B7_merge_storage_out_o_data;
    wire [0:0] DijkstraOptimisedID_B7_merge_storage_out_o_empty;
    wire [0:0] DijkstraOptimisedID_B7_merge_storage_out_o_stall;
    wire [0:0] DijkstraOptimisedID_B7_merge_storage_out_o_valid;
    wire [0:0] adapt_scalar_trunc_1656_25_in;
    wire [0:0] adapt_scalar_trunc_1656_25_q;
    wire [0:0] adapt_scalar_trunc_1656_28_in;
    wire [0:0] adapt_scalar_trunc_1656_28_q;
    wire [0:0] adapt_scalar_trunc_1656_31_in;
    wire [0:0] adapt_scalar_trunc_1656_31_q;
    wire [1:0] c_i2_0_1656_32_q;
    wire [6:0] c_i7_0_1656_24_q;
    wire [7:0] element_extension_1656_23_q;
    wire [7:0] element_extension_1656_26_q;
    wire [7:0] element_extension_1656_29_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_0_1656_24(CONSTANT,34)
    assign c_i7_0_1656_24_q = 7'b0000000;

    // element_extension_1656_29(BITJOIN,39)
    assign element_extension_1656_29_q = {c_i7_0_1656_24_q, in_c0_exe2827_0};

    // element_extension_1656_26(BITJOIN,38)
    assign element_extension_1656_26_q = {c_i7_0_1656_24_q, in_c0_exe2726_0};

    // element_extension_1656_23(BITJOIN,37)
    assign element_extension_1656_23_q = {c_i7_0_1656_24_q, in_c0_exe2625_0};

    // DijkstraOptimisedID_B7_merge_data_pack_0(BITJOIN,2)
    assign DijkstraOptimisedID_B7_merge_data_pack_0_q = {element_extension_1656_29_q, element_extension_1656_26_q, element_extension_1656_23_q, in_c0_exe2324_0, in_c0_exe2231923_0, in_c0_exe2131822_0, in_c0_exe2031721_0, in_c0_exe1931620_0, in_c0_exe1831519_0, in_c0_exe1731418_0, in_c0_exe1631317_0, in_c0_exe1531216_0, in_c0_exe1431115_0, in_c0_exe1331014_0, in_c0_exe1230913_0, in_c0_exe1130812_0, in_c0_exe1030711_0, in_c0_exe930610_0, in_c0_exe83059_0, in_c0_exe73048_0, in_c0_exe63037_0, in_c0_exe53026_0, in_c0_exe43015_0, in_c0_exe33004_0, in_c0_exe22993_0, in_c0_exe12982_0};

    // c_i2_0_1656_32(CONSTANT,33)
    assign c_i2_0_1656_32_q = 2'b00;

    // DijkstraOptimisedID_B7_merge_storage(BLACKBOX,29)
    DijkstraOptimisedID_B7_merge_storage theDijkstraOptimisedID_B7_merge_storage (
        .in_almost_empty_in(c_i2_0_1656_32_q),
        .in_empty_in(c_i2_0_1656_32_q),
        .in_i_data(DijkstraOptimisedID_B7_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(DijkstraOptimisedID_B7_merge_storage_out_o_almost_empty),
        .out_o_data(DijkstraOptimisedID_B7_merge_storage_out_o_data),
        .out_o_empty(DijkstraOptimisedID_B7_merge_storage_out_o_empty),
        .out_o_stall(DijkstraOptimisedID_B7_merge_storage_out_o_stall),
        .out_o_valid(DijkstraOptimisedID_B7_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,68)
    assign out_almost_empty_out = DijkstraOptimisedID_B7_merge_storage_out_o_almost_empty;

    // DijkstraOptimisedID_B7_merge_data_unpack_9(BITSELECT,28)
    assign DijkstraOptimisedID_B7_merge_data_unpack_9_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[319:288];

    // out_c0_exe1030711(GPOUT,69)
    assign out_c0_exe1030711 = DijkstraOptimisedID_B7_merge_data_unpack_9_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_10(BITSELECT,5)
    assign DijkstraOptimisedID_B7_merge_data_unpack_10_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[327:320];

    // out_c0_exe1130812(GPOUT,70)
    assign out_c0_exe1130812 = DijkstraOptimisedID_B7_merge_data_unpack_10_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_11(BITSELECT,6)
    assign DijkstraOptimisedID_B7_merge_data_unpack_11_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[335:328];

    // out_c0_exe1230913(GPOUT,71)
    assign out_c0_exe1230913 = DijkstraOptimisedID_B7_merge_data_unpack_11_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_0(BITSELECT,3)
    assign DijkstraOptimisedID_B7_merge_data_unpack_0_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[31:0];

    // out_c0_exe12982(GPOUT,72)
    assign out_c0_exe12982 = DijkstraOptimisedID_B7_merge_data_unpack_0_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_12(BITSELECT,7)
    assign DijkstraOptimisedID_B7_merge_data_unpack_12_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[343:336];

    // out_c0_exe1331014(GPOUT,73)
    assign out_c0_exe1331014 = DijkstraOptimisedID_B7_merge_data_unpack_12_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_13(BITSELECT,8)
    assign DijkstraOptimisedID_B7_merge_data_unpack_13_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[351:344];

    // out_c0_exe1431115(GPOUT,74)
    assign out_c0_exe1431115 = DijkstraOptimisedID_B7_merge_data_unpack_13_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_14(BITSELECT,9)
    assign DijkstraOptimisedID_B7_merge_data_unpack_14_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[359:352];

    // out_c0_exe1531216(GPOUT,75)
    assign out_c0_exe1531216 = DijkstraOptimisedID_B7_merge_data_unpack_14_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_15(BITSELECT,10)
    assign DijkstraOptimisedID_B7_merge_data_unpack_15_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[367:360];

    // out_c0_exe1631317(GPOUT,76)
    assign out_c0_exe1631317 = DijkstraOptimisedID_B7_merge_data_unpack_15_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_16(BITSELECT,11)
    assign DijkstraOptimisedID_B7_merge_data_unpack_16_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[375:368];

    // out_c0_exe1731418(GPOUT,77)
    assign out_c0_exe1731418 = DijkstraOptimisedID_B7_merge_data_unpack_16_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_17(BITSELECT,12)
    assign DijkstraOptimisedID_B7_merge_data_unpack_17_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[383:376];

    // out_c0_exe1831519(GPOUT,78)
    assign out_c0_exe1831519 = DijkstraOptimisedID_B7_merge_data_unpack_17_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_18(BITSELECT,13)
    assign DijkstraOptimisedID_B7_merge_data_unpack_18_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[391:384];

    // out_c0_exe1931620(GPOUT,79)
    assign out_c0_exe1931620 = DijkstraOptimisedID_B7_merge_data_unpack_18_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_19(BITSELECT,14)
    assign DijkstraOptimisedID_B7_merge_data_unpack_19_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[399:392];

    // out_c0_exe2031721(GPOUT,80)
    assign out_c0_exe2031721 = DijkstraOptimisedID_B7_merge_data_unpack_19_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_20(BITSELECT,16)
    assign DijkstraOptimisedID_B7_merge_data_unpack_20_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[407:400];

    // out_c0_exe2131822(GPOUT,81)
    assign out_c0_exe2131822 = DijkstraOptimisedID_B7_merge_data_unpack_20_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_21(BITSELECT,17)
    assign DijkstraOptimisedID_B7_merge_data_unpack_21_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[439:408];

    // out_c0_exe2231923(GPOUT,82)
    assign out_c0_exe2231923 = DijkstraOptimisedID_B7_merge_data_unpack_21_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_1(BITSELECT,4)
    assign DijkstraOptimisedID_B7_merge_data_unpack_1_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[63:32];

    // out_c0_exe22993(GPOUT,83)
    assign out_c0_exe22993 = DijkstraOptimisedID_B7_merge_data_unpack_1_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_22(BITSELECT,18)
    assign DijkstraOptimisedID_B7_merge_data_unpack_22_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[471:440];

    // out_c0_exe2324(GPOUT,84)
    assign out_c0_exe2324 = DijkstraOptimisedID_B7_merge_data_unpack_22_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_23(BITSELECT,19)
    assign DijkstraOptimisedID_B7_merge_data_unpack_23_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[479:472];

    // adapt_scalar_trunc_1656_25(ROUND,30)
    assign adapt_scalar_trunc_1656_25_in = DijkstraOptimisedID_B7_merge_data_unpack_23_b[0:0];
    assign adapt_scalar_trunc_1656_25_q = adapt_scalar_trunc_1656_25_in[0:0];

    // out_c0_exe2625(GPOUT,85)
    assign out_c0_exe2625 = adapt_scalar_trunc_1656_25_q;

    // DijkstraOptimisedID_B7_merge_data_unpack_24(BITSELECT,20)
    assign DijkstraOptimisedID_B7_merge_data_unpack_24_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[487:480];

    // adapt_scalar_trunc_1656_28(ROUND,31)
    assign adapt_scalar_trunc_1656_28_in = DijkstraOptimisedID_B7_merge_data_unpack_24_b[0:0];
    assign adapt_scalar_trunc_1656_28_q = adapt_scalar_trunc_1656_28_in[0:0];

    // out_c0_exe2726(GPOUT,86)
    assign out_c0_exe2726 = adapt_scalar_trunc_1656_28_q;

    // DijkstraOptimisedID_B7_merge_data_unpack_25(BITSELECT,21)
    assign DijkstraOptimisedID_B7_merge_data_unpack_25_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[495:488];

    // adapt_scalar_trunc_1656_31(ROUND,32)
    assign adapt_scalar_trunc_1656_31_in = DijkstraOptimisedID_B7_merge_data_unpack_25_b[0:0];
    assign adapt_scalar_trunc_1656_31_q = adapt_scalar_trunc_1656_31_in[0:0];

    // out_c0_exe2827(GPOUT,87)
    assign out_c0_exe2827 = adapt_scalar_trunc_1656_31_q;

    // DijkstraOptimisedID_B7_merge_data_unpack_2(BITSELECT,15)
    assign DijkstraOptimisedID_B7_merge_data_unpack_2_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[95:64];

    // out_c0_exe33004(GPOUT,88)
    assign out_c0_exe33004 = DijkstraOptimisedID_B7_merge_data_unpack_2_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_3(BITSELECT,22)
    assign DijkstraOptimisedID_B7_merge_data_unpack_3_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[127:96];

    // out_c0_exe43015(GPOUT,89)
    assign out_c0_exe43015 = DijkstraOptimisedID_B7_merge_data_unpack_3_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_4(BITSELECT,23)
    assign DijkstraOptimisedID_B7_merge_data_unpack_4_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[159:128];

    // out_c0_exe53026(GPOUT,90)
    assign out_c0_exe53026 = DijkstraOptimisedID_B7_merge_data_unpack_4_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_5(BITSELECT,24)
    assign DijkstraOptimisedID_B7_merge_data_unpack_5_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[191:160];

    // out_c0_exe63037(GPOUT,91)
    assign out_c0_exe63037 = DijkstraOptimisedID_B7_merge_data_unpack_5_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_6(BITSELECT,25)
    assign DijkstraOptimisedID_B7_merge_data_unpack_6_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[223:192];

    // out_c0_exe73048(GPOUT,92)
    assign out_c0_exe73048 = DijkstraOptimisedID_B7_merge_data_unpack_6_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_7(BITSELECT,26)
    assign DijkstraOptimisedID_B7_merge_data_unpack_7_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[255:224];

    // out_c0_exe83059(GPOUT,93)
    assign out_c0_exe83059 = DijkstraOptimisedID_B7_merge_data_unpack_7_b;

    // DijkstraOptimisedID_B7_merge_data_unpack_8(BITSELECT,27)
    assign DijkstraOptimisedID_B7_merge_data_unpack_8_b = DijkstraOptimisedID_B7_merge_storage_out_o_data[287:256];

    // out_c0_exe930610(GPOUT,94)
    assign out_c0_exe930610 = DijkstraOptimisedID_B7_merge_data_unpack_8_b;

    // out_empty_out(GPOUT,95)
    assign out_empty_out = DijkstraOptimisedID_B7_merge_storage_out_o_empty;

    // out_stall_out_0(GPOUT,96)
    assign out_stall_out_0 = DijkstraOptimisedID_B7_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,97)
    assign out_valid_out = DijkstraOptimisedID_B7_merge_storage_out_o_valid;

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
