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

// SystemVerilog created from DijkstraOptimisedID_B1_branch
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_B1_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_c0_exe1,
    input wire [31:0] in_c0_exe2,
    input wire [0:0] in_c0_exe4,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [71:0] DijkstraOptimisedID_B1_branch_data_pack_q;
    wire [31:0] DijkstraOptimisedID_B1_branch_data_unpack_0_b;
    wire [31:0] DijkstraOptimisedID_B1_branch_data_unpack_1_b;
    wire [7:0] DijkstraOptimisedID_B1_branch_data_unpack_2_b;
    wire [0:0] adapt_scalar_trunc_45_4_in;
    wire [0:0] adapt_scalar_trunc_45_4_q;
    wire [6:0] c_i7_0_45_3gr_q;
    wire [7:0] element_extension_45_2_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_0_45_3gr(CONSTANT,7)
    assign c_i7_0_45_3gr_q = 7'b0000000;

    // element_extension_45_2(BITJOIN,8)
    assign element_extension_45_2_q = {c_i7_0_45_3gr_q, in_c0_exe4};

    // DijkstraOptimisedID_B1_branch_data_pack(BITJOIN,2)
    assign DijkstraOptimisedID_B1_branch_data_pack_q = {element_extension_45_2_q, in_c0_exe2, in_c0_exe1};

    // DijkstraOptimisedID_B1_branch_data_unpack_0(BITSELECT,3)
    assign DijkstraOptimisedID_B1_branch_data_unpack_0_b = DijkstraOptimisedID_B1_branch_data_pack_q[31:0];

    // out_c0_exe1(GPOUT,16)
    assign out_c0_exe1 = DijkstraOptimisedID_B1_branch_data_unpack_0_b;

    // DijkstraOptimisedID_B1_branch_data_unpack_1(BITSELECT,4)
    assign DijkstraOptimisedID_B1_branch_data_unpack_1_b = DijkstraOptimisedID_B1_branch_data_pack_q[63:32];

    // out_c0_exe2(GPOUT,17)
    assign out_c0_exe2 = DijkstraOptimisedID_B1_branch_data_unpack_1_b;

    // DijkstraOptimisedID_B1_branch_data_unpack_2(BITSELECT,5)
    assign DijkstraOptimisedID_B1_branch_data_unpack_2_b = DijkstraOptimisedID_B1_branch_data_pack_q[71:64];

    // adapt_scalar_trunc_45_4(ROUND,6)
    assign adapt_scalar_trunc_45_4_in = DijkstraOptimisedID_B1_branch_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc_45_4_q = adapt_scalar_trunc_45_4_in[0:0];

    // out_c0_exe4(GPOUT,18)
    assign out_c0_exe4 = adapt_scalar_trunc_45_4_q;

    // out_stall_out(GPOUT,19)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,21)
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
