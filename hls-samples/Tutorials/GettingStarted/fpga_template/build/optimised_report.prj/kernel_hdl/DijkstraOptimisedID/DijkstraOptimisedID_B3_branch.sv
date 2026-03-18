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

// SystemVerilog created from DijkstraOptimisedID_B3_branch
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_B3_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe4175,
    input wire [0:0] in_c0_exe5,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [7:0] DijkstraOptimisedID_B3_branch_data_pack_q;
    wire [0:0] DijkstraOptimisedID_B3_branch_valid_and_q;
    wire [0:0] adapt_scalar_trunc_725_2_in;
    wire [0:0] adapt_scalar_trunc_725_2_q;
    wire [6:0] c_i7_0_725_1gr_q;
    wire [7:0] element_extension_725_0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_0_725_1gr(CONSTANT,6)
    assign c_i7_0_725_1gr_q = 7'b0000000;

    // element_extension_725_0(BITJOIN,7)
    assign element_extension_725_0_q = {c_i7_0_725_1gr_q, in_c0_exe5};

    // DijkstraOptimisedID_B3_branch_data_pack(BITJOIN,2)
    assign DijkstraOptimisedID_B3_branch_data_pack_q = element_extension_725_0_q;

    // adapt_scalar_trunc_725_2(ROUND,5)
    assign adapt_scalar_trunc_725_2_in = DijkstraOptimisedID_B3_branch_data_pack_q[0:0];
    assign adapt_scalar_trunc_725_2_q = adapt_scalar_trunc_725_2_in[0:0];

    // out_c0_exe5(GPOUT,14)
    assign out_c0_exe5 = adapt_scalar_trunc_725_2_q;

    // out_stall_out(GPOUT,15)
    assign out_stall_out = in_stall_in_0;

    // DijkstraOptimisedID_B3_branch_valid_and(LOGICAL,4)
    assign DijkstraOptimisedID_B3_branch_valid_and_q = in_valid_in & in_c0_exe4175;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = DijkstraOptimisedID_B3_branch_valid_and_q;

    // rst_sync(RESETSYNC,17)
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
