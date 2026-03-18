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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body29_i_dijkstraoptimisedids_c0_enter17929_dijkstraoptimisedid_1234_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000optimisedid_1234_0gr (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_DijkstraOptimisedID_B6_current_iter_isspec,
    output wire [0:0] out_c0_exi3183_0_tpl,
    output wire [0:0] out_c0_exi3183_1_tpl,
    output wire [0:0] out_c0_exi3183_2_tpl,
    output wire [0:0] out_c0_exi3183_3_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1178_0_tpl,
    input wire [0:0] in_c0_eni1178_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] c_i5_1_1237_33_q;
    wire [4:0] c_i5_8_1237_31_q;
    wire [0:0] i_dijkstraoptimisedid_b6_current_iter_isspec_dijkstraoptimisedid_1237_5gr_q;
    wire [0:0] i_dijkstraoptimisedid_b6_next_iter_isreal_dijkstraoptimisedid_1237_7gr_q;
    wire [5:0] i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_a;
    wire [5:0] i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_b;
    logic [5:0] i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_o;
    wire [5:0] i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_q;
    wire [0:0] i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b6_dummy_dijkstraoptimisedid_1237_2gr_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13_out_feedback_valid_out_5;
    wire [0:0] i_notcmp56_dijkstraoptimisedid_1237_12_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_c_i7_0_1271_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_element_extension_1271_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_adapt_scalar_trunc_1271_4_sel_x_b;
    wire [2:0] i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_c_i3_0_1297_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_element_extension_1297_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_adapt_scalar_trunc_1297_4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_data_out_1_q;
    reg [0:0] redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i5_8_1237_31(CONSTANT,19)
    assign c_i5_8_1237_31_q = 5'b01000;

    // i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_c_i3_0_1297_3gr_x(CONSTANT,46)
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_c_i3_0_1297_3gr_x_q = 3'b000;

    // c_i5_1_1237_33(CONSTANT,18)
    assign c_i5_1_1237_33_q = 5'b11111;

    // i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14(ADD,23)@0
    assign i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_q};
    assign i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_b = {1'b0, c_i5_1_1237_33_q};
    assign i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_o = $unsigned(i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_a) + $unsigned(i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_b);
    assign i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_q = i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_sel_x(BITSELECT,32)@0
    assign bgTrunc_i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_sel_x_b = i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_element_extension_1297_2_x(BITJOIN,47)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_element_extension_1297_2_x_q = {i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_c_i3_0_1297_3gr_x_q, bgTrunc_i_fpga_indvars_iv_next25_dijkstraoptimisedid_1237_14_sel_x_b};

    // i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x(FIFODELAY,48)@0 + 1
    // out o_data@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_stall = ~ (in_i_valid & VCC_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_valid = in_i_valid & VCC_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_element_extension_1297_2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_element_extension_1297_2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_adapt_scalar_trunc_1297_4_sel_x(BITSELECT,50)@0
    assign i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_adapt_scalar_trunc_1297_4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x(MUX,38)@0
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_s = i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv24_push12_dijkstraoptimisedid_1297_0gr_adapt_scalar_trunc_1297_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_q = c_i5_8_1237_31_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_q = 5'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign(LOGICAL,63)@0
    assign i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q = ~ (i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1279_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv24_pop12_dijkstraoptimisedid_1237_9gr_mux_x_q[4:4]);

    // i_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13(BLACKBOX,27)@0
    // in in_empty_in@20000000
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    DijkstraOptimisedID_i_llvm_fpga_push_i1_0000optimisedid_1287_0gr thei_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b6_dummy_dijkstraoptimisedid_1237_2gr(BLACKBOX,24)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_dummy_th0000optimisedid_1242_0gr thei_llvm_fpga_dummy_thread_dijkstraoptimisedid_b6_dummy_dijkstraoptimisedid_1237_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b6_dummy_dijkstraoptimisedid_1237_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr(BLACKBOX,25)@0
    // in in_stall_in@20000000
    DijkstraOptimisedID_i_llvm_fpga_forked_d0000optimisedid_1250_0gr thei_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr(BLACKBOX,26)@0
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    DijkstraOptimisedID_i_llvm_fpga_pipeline0000optimisedid_1263_0gr thei_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr (
        .in_data_in(i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out),
        .in_dummy_in(i_llvm_fpga_dummy_thread_dijkstraoptimisedid_b6_dummy_dijkstraoptimisedid_1237_2gr_out_dummy_out),
        .in_forked_in(i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond58_dijkstraoptimisedid_1237_13_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,30)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,34)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,35)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,36)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,53)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= in_i_valid;
        end
    end

    // redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out_1(DELAY,66)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out;
        end
    end

    // i_notcmp56_dijkstraoptimisedid_1237_12(LOGICAL,28)@1
    assign i_notcmp56_dijkstraoptimisedid_1237_12_q = redist0_i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q_1(DELAY,64)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q_1_q <= i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q;
        end
    end

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_c_i7_0_1271_3gr_x(CONSTANT,40)
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_c_i7_0_1271_3gr_x_q = 7'b0000000;

    // redist1_i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_data_out_1(DELAY,65)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_data_out_1_q <= i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_data_out;
        end
    end

    // i_dijkstraoptimisedid_b6_next_iter_isreal_dijkstraoptimisedid_1237_7gr(LOGICAL,21)@1
    assign i_dijkstraoptimisedid_b6_next_iter_isreal_dijkstraoptimisedid_1237_7gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_q & redist1_i_llvm_fpga_pipeline_keep_going57_dijkstraoptimisedid_1237_6gr_out_data_out_1_q;

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_element_extension_1271_2_x(BITJOIN,41)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_element_extension_1271_2_x_q = {i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_c_i7_0_1271_3gr_x_q, i_dijkstraoptimisedid_b6_next_iter_isreal_dijkstraoptimisedid_1237_7gr_q};

    // valid_fanout_reg3(REG,56)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= in_i_valid;
        end
    end

    // valid_fanout_reg2(REG,55)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x(FIFODELAY,42)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_data = i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_element_extension_1271_2_x_q;
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_element_extension_1271_2_x_q),
        .o_data(i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_adapt_scalar_trunc_1271_4_sel_x(BITSELECT,44)@1
    assign i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_adapt_scalar_trunc_1271_4_sel_x_b = i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x(MUX,37)@1
    assign i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_s = redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_q = i_llvm_fpga_push_i1_dijkstraoptimisedid_b6_next_iter_isreal_push_dijkstraoptimisedid_1271_0gr_adapt_scalar_trunc_1271_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_q = 1'b0;
        endcase
    end

    // i_dijkstraoptimisedid_b6_current_iter_isspec_dijkstraoptimisedid_1237_5gr(LOGICAL,20)@1
    assign i_dijkstraoptimisedid_b6_current_iter_isspec_dijkstraoptimisedid_1237_5gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1258_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstraoptimisedid_b6_current_iter_isreal_dijkstraoptimisedid_1237_4gr_mux_x_q ^ VCC_q;

    // sync_out_5_aunroll_x(GPOUT,51)@1
    assign out_DijkstraOptimisedID_B6_current_iter_isspec = i_dijkstraoptimisedid_b6_current_iter_isspec_dijkstraoptimisedid_1237_5gr_q;
    assign out_c0_exi3183_0_tpl = GND_q;
    assign out_c0_exi3183_1_tpl = redist0_i_exitcond26_dijkstraoptimisedid_1237_10_cmp_nsign_q_1_q;
    assign out_c0_exi3183_2_tpl = i_notcmp56_dijkstraoptimisedid_1237_12_q;
    assign out_c0_exi3183_3_tpl = redist2_i_llvm_fpga_forked_dijkstraoptimisedid_b6_forked_dijkstraoptimisedid_1237_3gr_out_buffer_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
