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

// SystemVerilog created from bb_DijkstraNaiveID_B4_stall_region
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B4_stall_region (
    output wire [0:0] out_feedback_out_7,
    input wire [0:0] in_feedback_stall_in_7,
    output wire [0:0] out_feedback_valid_out_7,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_notcmp4554_pop206,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_exitcond3052_pop195,
    input wire [0:0] in_memdep_7,
    input wire [0:0] in_notcmp4554_pop206,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_valid_out;
    wire [2:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_stall_entry(STALLENABLE,22)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr(STALLENABLE,21)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_wireValid = i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,17)
    assign bubble_join_stall_entry_q = {in_notcmp4554_pop206, in_memdep_7, in_exitcond3052_pop195};

    // bubble_select_stall_entry(BITSELECT,18)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[1:1];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[2:2];

    // i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    DijkstraNaiveID_i_llvm_fpga_push_i1_memd0000kstranaiveid_793_0gr thei_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr (
        .in_data_in(bubble_select_stall_entry_c),
        .in_exitcond3052_pop195(bubble_select_stall_entry_b),
        .in_feedback_stall_in_7(in_feedback_stall_in_7),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_feedback_valid_out_7),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_out_7_sync(GPOUT,4)
    assign out_feedback_out_7 = i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_feedback_out_7;

    // feedback_valid_out_7_sync(GPOUT,6)
    assign out_feedback_valid_out_7 = i_llvm_fpga_push_i1_memdep_phi_push7_dijkstranaiveid_788_0gr_out_feedback_valid_out_7;

    // sync_out_125(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // sync_out_126(GPOUT,14)@0
    assign out_notcmp4554_pop206 = bubble_select_stall_entry_d;
    assign out_valid_out = SE_stall_entry_V0;

    // rst_sync(RESETSYNC,30)
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
