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

// SystemVerilog created from DijkstraOptimisedID_B3_merge
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_B3_merge (
    input wire [31:0] in_mul_i_add36101_0,
    input wire [0:0] in_notcmp65102_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_DijkstraOptimisedID21_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [31:0] out_mul_i_add36101,
    output wire [0:0] out_notcmp65102,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_DijkstraOptimisedID21,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [71:0] DijkstraOptimisedID_B3_merge_data_pack_0_q;
    wire [31:0] DijkstraOptimisedID_B3_merge_data_unpack_0_b;
    wire [31:0] DijkstraOptimisedID_B3_merge_data_unpack_1_b;
    wire [7:0] DijkstraOptimisedID_B3_merge_data_unpack_2_b;
    wire [0:0] DijkstraOptimisedID_B3_merge_storage_out_o_almost_empty;
    wire [71:0] DijkstraOptimisedID_B3_merge_storage_out_o_data;
    wire [0:0] DijkstraOptimisedID_B3_merge_storage_out_o_empty;
    wire [0:0] DijkstraOptimisedID_B3_merge_storage_out_o_stall;
    wire [0:0] DijkstraOptimisedID_B3_merge_storage_out_o_valid;
    wire [0:0] adapt_scalar_trunc_708_4_in;
    wire [0:0] adapt_scalar_trunc_708_4_q;
    wire [1:0] c_i2_0_708_5gr_q;
    wire [6:0] c_i7_0_708_3gr_q;
    wire [7:0] element_extension_708_2_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_0_708_3gr(CONSTANT,9)
    assign c_i7_0_708_3gr_q = 7'b0000000;

    // element_extension_708_2(BITJOIN,10)
    assign element_extension_708_2_q = {c_i7_0_708_3gr_q, in_notcmp65102_0};

    // DijkstraOptimisedID_B3_merge_data_pack_0(BITJOIN,2)
    assign DijkstraOptimisedID_B3_merge_data_pack_0_q = {element_extension_708_2_q, in_mul_i_add36101_0, in_unnamed_DijkstraOptimisedID21_0};

    // c_i2_0_708_5gr(CONSTANT,8)
    assign c_i2_0_708_5gr_q = 2'b00;

    // DijkstraOptimisedID_B3_merge_storage(BLACKBOX,6)
    DijkstraOptimisedID_B3_merge_storage theDijkstraOptimisedID_B3_merge_storage (
        .in_almost_empty_in(c_i2_0_708_5gr_q),
        .in_empty_in(c_i2_0_708_5gr_q),
        .in_i_data(DijkstraOptimisedID_B3_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(DijkstraOptimisedID_B3_merge_storage_out_o_almost_empty),
        .out_o_data(DijkstraOptimisedID_B3_merge_storage_out_o_data),
        .out_o_empty(DijkstraOptimisedID_B3_merge_storage_out_o_empty),
        .out_o_stall(DijkstraOptimisedID_B3_merge_storage_out_o_stall),
        .out_o_valid(DijkstraOptimisedID_B3_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,16)
    assign out_almost_empty_out = DijkstraOptimisedID_B3_merge_storage_out_o_almost_empty;

    // out_empty_out(GPOUT,17)
    assign out_empty_out = DijkstraOptimisedID_B3_merge_storage_out_o_empty;

    // DijkstraOptimisedID_B3_merge_data_unpack_1(BITSELECT,4)
    assign DijkstraOptimisedID_B3_merge_data_unpack_1_b = DijkstraOptimisedID_B3_merge_storage_out_o_data[63:32];

    // out_mul_i_add36101(GPOUT,18)
    assign out_mul_i_add36101 = DijkstraOptimisedID_B3_merge_data_unpack_1_b;

    // DijkstraOptimisedID_B3_merge_data_unpack_2(BITSELECT,5)
    assign DijkstraOptimisedID_B3_merge_data_unpack_2_b = DijkstraOptimisedID_B3_merge_storage_out_o_data[71:64];

    // adapt_scalar_trunc_708_4(ROUND,7)
    assign adapt_scalar_trunc_708_4_in = DijkstraOptimisedID_B3_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc_708_4_q = adapt_scalar_trunc_708_4_in[0:0];

    // out_notcmp65102(GPOUT,19)
    assign out_notcmp65102 = adapt_scalar_trunc_708_4_q;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = DijkstraOptimisedID_B3_merge_storage_out_o_stall;

    // DijkstraOptimisedID_B3_merge_data_unpack_0(BITSELECT,3)
    assign DijkstraOptimisedID_B3_merge_data_unpack_0_b = DijkstraOptimisedID_B3_merge_storage_out_o_data[31:0];

    // out_unnamed_DijkstraOptimisedID21(GPOUT,21)
    assign out_unnamed_DijkstraOptimisedID21 = DijkstraOptimisedID_B3_merge_data_unpack_0_b;

    // out_valid_out(GPOUT,22)
    assign out_valid_out = DijkstraOptimisedID_B3_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,23)
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
