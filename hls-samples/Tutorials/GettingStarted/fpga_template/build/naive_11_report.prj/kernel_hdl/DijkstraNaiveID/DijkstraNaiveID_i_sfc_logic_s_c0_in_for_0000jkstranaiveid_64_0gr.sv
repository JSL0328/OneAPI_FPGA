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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_64_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c0_in_for_0000jkstranaiveid_64_0gr (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_DijkstraNaiveID_B1_current_iter_isspec,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] c_i5_1_67_28_q;
    wire [4:0] c_i5_8_67_26_q;
    wire [0:0] i_dijkstranaiveid_b1_current_iter_isspec_dijkstranaiveid_67_5gr_q;
    wire [0:0] i_dijkstranaiveid_b1_next_iter_isreal_dijkstranaiveid_67_7gr_q;
    wire [5:0] i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_a;
    wire [5:0] i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_b;
    logic [5:0] i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_o;
    wire [5:0] i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_q;
    wire [0:0] i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13_out_feedback_valid_out_5;
    wire [0:0] i_notcmp45_dijkstranaiveid_67_12_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_c_i7_0_101_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_element_extension_101_2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_valid;
    wire i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_stall;
    wire i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_adapt_scalar_trunc_101_4_sel_x_b;
    wire [2:0] i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_c_i3_0_127_3gr_x_q;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_element_extension_127_2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_adapt_scalar_trunc_127_4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond30_dijkstranaiveid_67_10_cmp_nsign_q;
    reg [0:0] redist0_sync_together_67_33_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1_q;
    reg [0:0] redist2_i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr_out_dummy_out_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist0_sync_together_67_33_aunroll_x_in_i_valid_1(DELAY,59)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_67_33_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i5_8_67_26(CONSTANT,14)
    assign c_i5_8_67_26_q = 5'b01000;

    // i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_c_i3_0_127_3gr_x(CONSTANT,41)
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_c_i3_0_127_3gr_x_q = 3'b000;

    // c_i5_1_67_28(CONSTANT,13)
    assign c_i5_1_67_28_q = 5'b11111;

    // i_fpga_indvars_iv_next29_dijkstranaiveid_67_14(ADD,18)@1
    assign i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_q};
    assign i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_b = {1'b0, c_i5_1_67_28_q};
    assign i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_o = $unsigned(i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_a) + $unsigned(i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_b);
    assign i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_q = i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_sel_x(BITSELECT,27)@1
    assign bgTrunc_i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_sel_x_b = i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_element_extension_127_2_x(BITJOIN,42)@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_element_extension_127_2_x_q = {i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_c_i3_0_127_3gr_x_q, bgTrunc_i_fpga_indvars_iv_next29_dijkstranaiveid_67_14_sel_x_b};

    // i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x(FIFODELAY,43)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_stall = ~ (redist0_sync_together_67_33_aunroll_x_in_i_valid_1_q & VCC_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_valid = redist0_sync_together_67_33_aunroll_x_in_i_valid_1_q & VCC_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_element_extension_127_2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_element_extension_127_2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_adapt_scalar_trunc_127_4_sel_x(BITSELECT,45)@1
    assign i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_adapt_scalar_trunc_127_4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_1gr_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x(MUX,33)@1
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_s = redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv28_push6_dijkstranaiveid_127_0gr_adapt_scalar_trunc_127_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_q = c_i5_8_67_26_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond30_dijkstranaiveid_67_10_cmp_nsign(LOGICAL,58)@1
    assign i_exitcond30_dijkstranaiveid_67_10_cmp_nsign_q = ~ (i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_109_0gr_i_llvm_fpga_pop_i5_fpga_indvars_iv28_pop6_dijkstranaiveid_67_9gr_mux_x_q[4:4]);

    // i_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13(BLACKBOX,22)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    DijkstraNaiveID_i_llvm_fpga_push_i1_note0000kstranaiveid_117_0gr thei_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13 (
        .in_data_in(i_exitcond30_dijkstranaiveid_67_10_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist0_sync_together_67_33_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr(BLACKBOX,19)@0
    // in in_stall_in@20000000
    DijkstraNaiveID_i_llvm_fpga_dummy_thread0000jkstranaiveid_72_0gr thei_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr_out_dummy_out_1(DELAY,61)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr_out_dummy_out_1_q <= i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr_out_dummy_out;
        end
    end

    // i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr(BLACKBOX,20)@0
    // in in_stall_in@20000000
    DijkstraNaiveID_i_llvm_fpga_forked_dijks0000jkstranaiveid_80_0gr thei_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1(DELAY,60)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1_q <= i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out;
        end
    end

    // i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr(BLACKBOX,21)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    DijkstraNaiveID_i_llvm_fpga_pipeline_kee0000jkstranaiveid_93_0gr thei_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr (
        .in_data_in(redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1_q),
        .in_dummy_in(redist2_i_llvm_fpga_dummy_thread_dijkstranaiveid_b1_dummy_dijkstranaiveid_67_2gr_out_dummy_out_1_q),
        .in_forked_in(redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond48_dijkstranaiveid_67_13_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist0_sync_together_67_33_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,25)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,29)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,30)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,31)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,48)@0 + 1
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

    // i_notcmp45_dijkstranaiveid_67_12(LOGICAL,23)@1
    assign i_notcmp45_dijkstranaiveid_67_12_q = i_exitcond30_dijkstranaiveid_67_10_cmp_nsign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_c_i7_0_101_3gr_x(CONSTANT,35)
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_c_i7_0_101_3gr_x_q = 7'b0000000;

    // i_dijkstranaiveid_b1_next_iter_isreal_dijkstranaiveid_67_7gr(LOGICAL,16)@1
    assign i_dijkstranaiveid_b1_next_iter_isreal_dijkstranaiveid_67_7gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_q & i_llvm_fpga_pipeline_keep_going47_dijkstranaiveid_67_6gr_out_data_out;

    // i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_element_extension_101_2_x(BITJOIN,36)@1
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_element_extension_101_2_x_q = {i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_c_i7_0_101_3gr_x_q, i_dijkstranaiveid_b1_next_iter_isreal_dijkstranaiveid_67_7gr_q};

    // valid_fanout_reg3(REG,51)@0 + 1
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

    // valid_fanout_reg2(REG,50)@0 + 1
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

    // i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x(FIFODELAY,37)@1 + 1
    // out o_data@1
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_stall = ~ (valid_fanout_reg3_q & VCC_q);
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_valid = valid_fanout_reg2_q & VCC_q;
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_data = i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_element_extension_101_2_x_q;
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x (
        .i_valid(i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_element_extension_101_2_x_q),
        .o_data(i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_adapt_scalar_trunc_101_4_sel_x(BITSELECT,39)@1
    assign i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_adapt_scalar_trunc_101_4_sel_x_b = i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_1gr_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x(MUX,32)@1
    assign i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_s = redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_q = i_llvm_fpga_push_i1_dijkstranaiveid_b1_next_iter_isreal_push_dijkstranaiveid_101_0gr_adapt_scalar_trunc_101_4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_q = 1'b0;
        endcase
    end

    // i_dijkstranaiveid_b1_current_iter_isspec_dijkstranaiveid_67_5gr(LOGICAL,15)@1
    assign i_dijkstranaiveid_b1_current_iter_isspec_dijkstranaiveid_67_5gr_q = i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_88_0gr_i_llvm_fpga_pop_coalesce_i1_dijkstranaiveid_b1_current_iter_isreal_dijkstranaiveid_67_4gr_mux_x_q ^ VCC_q;

    // sync_out_1_aunroll_x(GPOUT,46)@1
    assign out_DijkstraNaiveID_B1_current_iter_isspec = i_dijkstranaiveid_b1_current_iter_isspec_dijkstranaiveid_67_5gr_q;
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = i_exitcond30_dijkstranaiveid_67_10_cmp_nsign_q;
    assign out_c0_exi3_2_tpl = i_notcmp45_dijkstranaiveid_67_12_q;
    assign out_c0_exi3_3_tpl = redist1_i_llvm_fpga_forked_dijkstranaiveid_b1_forked_dijkstranaiveid_67_3gr_out_buffer_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist0_sync_together_67_33_aunroll_x_in_i_valid_1_q;

endmodule
