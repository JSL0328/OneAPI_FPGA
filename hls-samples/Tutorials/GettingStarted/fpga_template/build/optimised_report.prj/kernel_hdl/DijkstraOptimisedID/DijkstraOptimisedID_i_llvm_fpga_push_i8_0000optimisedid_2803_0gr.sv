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

// SystemVerilog created from i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2803_0gr (
    input wire [0:0] in_feedback_stall_in_34,
    output wire [7:0] out_feedback_data_out_34,
    output wire [0:0] out_feedback_empty_out_34,
    output wire [0:0] out_feedback_almost_empty_out_34,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_almost_empty_out,
    output wire [7:0] out_data_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_almost_empty_in,
    input wire [7:0] in_data_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_data_in;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_stall_in;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_in;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_in;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_almost_empty_out;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_almost_empty_out_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_data_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_empty_out;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_empty_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_almost_empty_out;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_almost_empty_out_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_data_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_empty_out;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_empty_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_out;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_out;
    wire i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_out_bitsignaltemp;


    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr(EXTIFACE,4)
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_data_in = in_data_in;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_stall_in = in_feedback_stall_in_34;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_in = in_stall_in;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_in = in_valid_in;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_stall_in[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_in_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_in[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_in_bitsignaltemp = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_in[0];
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_almost_empty_out[0] = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_almost_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_empty_out[0] = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_almost_empty_out[0] = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_almost_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_empty_out[0] = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_out[0] = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_out[0] = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_out_bitsignaltemp;
    acl_push_stall_latency #(
        .DOWN_ALMOST_EMPTY_CUTOFF(4),
        .FIFO_DEPTH(2),
        .INITIAL_OCCUPANCY(1),
        .STYLE("COALESCE"),
        .UP_ALMOST_FULL_CUTOFF(9),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(0),
        .DATA_WIDTH(8),
        .NO_PREDICATION(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr (
        .data_in(in_data_in),
        .feedback_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_stall_in_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_in_bitsignaltemp),
        .almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_almost_empty_out_bitsignaltemp),
        .data_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_data_out),
        .empty_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_empty_out_bitsignaltemp),
        .feedback_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_almost_empty_out_bitsignaltemp),
        .feedback_data_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_data_out),
        .feedback_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_empty_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,3)
    assign out_feedback_data_out_34 = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_data_out;
    assign out_feedback_empty_out_34 = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_empty_out;
    assign out_feedback_almost_empty_out_34 = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_feedback_almost_empty_out;

    // sync_out_293(GPOUT,7)@20000000
    assign out_stall_out = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_stall_out;

    // sync_out_294(GPOUT,8)@75
    assign out_almost_empty_out = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_almost_empty_out;
    assign out_data_out = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_data_out;
    assign out_empty_out = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_empty_out;
    assign out_valid_out = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_2803_1gr_valid_out;

endmodule
