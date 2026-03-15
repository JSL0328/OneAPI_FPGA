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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body9_i_main_lambdas_c1_enter_main_lambda_985_0gr
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_i_sfc_logic_s_c1_in_for_body0000_main_lambda_985_0gr (
    output wire [0:0] out_c1_exi2_0_tpl,
    output wire [31:0] out_c1_exi2_1_tpl,
    output wire [63:0] out_c1_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_main_lambda2,
    input wire [0:0] in_c1_eni6_0_tpl,
    input wire [31:0] in_c1_eni6_1_tpl,
    input wire [31:0] in_c1_eni6_2_tpl,
    input wire [31:0] in_c1_eni6_3_tpl,
    input wire [0:0] in_c1_eni6_4_tpl,
    input wire [63:0] in_c1_eni6_5_tpl,
    input wire [0:0] in_c1_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] i_add19_i_main_lambda_988_4gr_a;
    wire [32:0] i_add19_i_main_lambda_988_4gr_b;
    logic [32:0] i_add19_i_main_lambda_988_4gr_o;
    wire [32:0] i_add19_i_main_lambda_988_4gr_q;
    wire [31:0] i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_feedback_stall_out_14;
    wire [63:0] i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr_out_feedback_valid_out_23;
    wire [31:0] bgTrunc_i_add19_i_main_lambda_988_4gr_sel_x_b;
    wire [63:0] bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_in;
    wire [31:0] bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    wire [14:0] i_mul14_i_main_lambda_988_2gr_bjA10_q;
    wire [14:0] i_mul14_i_main_lambda_988_2gr_bjB12_q;
    wire [65:0] i_mul14_i_main_lambda_988_2gr_sums_join_0_q;
    wire [50:0] i_mul14_i_main_lambda_988_2gr_sums_align_1_q;
    wire [50:0] i_mul14_i_main_lambda_988_2gr_sums_align_1_qint;
    wire [66:0] i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_a;
    wire [66:0] i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_b;
    logic [66:0] i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_o;
    wire [66:0] i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_q;
    wire i_mul14_i_main_lambda_988_2gr_im0_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul14_i_main_lambda_988_2gr_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul14_i_main_lambda_988_2gr_im0_cma_ch [0:0];
    wire [17:0] i_mul14_i_main_lambda_988_2gr_im0_cma_a0;
    wire [17:0] i_mul14_i_main_lambda_988_2gr_im0_cma_c0;
    wire [35:0] i_mul14_i_main_lambda_988_2gr_im0_cma_s0;
    wire [35:0] i_mul14_i_main_lambda_988_2gr_im0_cma_qq0;
    reg [35:0] i_mul14_i_main_lambda_988_2gr_im0_cma_q;
    wire i_mul14_i_main_lambda_988_2gr_im0_cma_ena0;
    wire i_mul14_i_main_lambda_988_2gr_im0_cma_ena1;
    wire i_mul14_i_main_lambda_988_2gr_im0_cma_ena2;
    wire i_mul14_i_main_lambda_988_2gr_im8_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul14_i_main_lambda_988_2gr_im8_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul14_i_main_lambda_988_2gr_im8_cma_ch [0:0];
    wire [14:0] i_mul14_i_main_lambda_988_2gr_im8_cma_a0;
    wire [14:0] i_mul14_i_main_lambda_988_2gr_im8_cma_c0;
    wire [29:0] i_mul14_i_main_lambda_988_2gr_im8_cma_s0;
    wire [29:0] i_mul14_i_main_lambda_988_2gr_im8_cma_qq0;
    reg [29:0] i_mul14_i_main_lambda_988_2gr_im8_cma_q;
    wire i_mul14_i_main_lambda_988_2gr_im8_cma_ena0;
    wire i_mul14_i_main_lambda_988_2gr_im8_cma_ena1;
    wire i_mul14_i_main_lambda_988_2gr_im8_cma_ena2;
    wire i_mul14_i_main_lambda_988_2gr_ma3_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_ch [0:1];
    wire [13:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_a0;
    wire [17:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_c0;
    wire [13:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_a1;
    wire [17:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_c1;
    wire [32:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_s0;
    wire [32:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_qq0;
    reg [32:0] i_mul14_i_main_lambda_988_2gr_ma3_cma_q;
    wire i_mul14_i_main_lambda_988_2gr_ma3_cma_ena0;
    wire i_mul14_i_main_lambda_988_2gr_ma3_cma_ena1;
    wire i_mul14_i_main_lambda_988_2gr_ma3_cma_ena2;
    wire [17:0] i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_b;
    wire [13:0] i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_c;
    wire [17:0] i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_b;
    wire [13:0] i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_c;
    reg [31:0] redist0_sync_together_988_19_aunroll_x_in_c1_eni6_3_tpl_1_q;
    reg [0:0] redist1_sync_together_988_19_aunroll_x_in_c1_eni6_4_tpl_1_q;
    reg [63:0] redist2_sync_together_988_19_aunroll_x_in_c1_eni6_5_tpl_1_q;
    reg [0:0] redist3_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_1_q;
    reg [0:0] redist4_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_7_q;
    reg [0:0] redist5_sync_together_988_19_aunroll_x_in_i_valid_6_q;
    reg [31:0] redist6_bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_b_1_q;
    reg [63:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_inputreg0_q;
    reg [63:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_outputreg0_q;
    wire redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_reset0;
    wire [63:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_ia;
    wire [1:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_aa;
    wire [1:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_ab;
    wire [63:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_iq;
    wire [63:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_q;
    wire [1:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_i = 2'b11;
    wire [1:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_offset_q;
    wire [2:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_a;
    wire [2:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_b;
    logic [2:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_o;
    wire [2:0] redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_q;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_inputreg0_q;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_outputreg0_q;
    wire redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_reset0;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_ia;
    wire [1:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_aa;
    wire [1:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_ab;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_iq;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_q;
    wire [1:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_i = 2'b11;
    wire [2:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_a;
    wire [2:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_b;
    logic [2:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_o;
    wire [2:0] redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist5_sync_together_988_19_aunroll_x_in_i_valid_6(DELAY,53)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("SYNC"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist5_sync_together_988_19_aunroll_x_in_i_valid_6 ( .xin(in_i_valid), .xout(redist5_sync_together_988_19_aunroll_x_in_i_valid_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,19)@85 + 1
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= redist5_sync_together_988_19_aunroll_x_in_i_valid_6_q;
        end
    end

    // redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_offset(CONSTANT,61)
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_offset_q = 2'b11;

    // redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt(ADD,62)
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_a = {1'b0, redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_q};
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_b = {1'b0, redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_o <= $unsigned(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_a) + $unsigned(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_b);
        end
    end
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_q = redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_o[2:0];

    // valid_fanout_reg2(REG,21)@79 + 1
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

    // valid_fanout_reg3(REG,22)@79 + 1
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

    // redist3_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_1(DELAY,51)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_1_q <= in_c1_eni6_6_tpl;
        end
    end

    // i_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr(BLACKBOX,12)@80
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    main_lambda_i_llvm_fpga_push_p1024_array0000_i33_push23_1009_0gr thei_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr (
        .in_c1_ene6(redist3_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together_988_19_aunroll_x_in_c1_eni6_4_tpl_1(DELAY,49)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_988_19_aunroll_x_in_c1_eni6_4_tpl_1_q <= in_c1_eni6_4_tpl;
        end
    end

    // redist2_sync_together_988_19_aunroll_x_in_c1_eni6_5_tpl_1(DELAY,50)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_988_19_aunroll_x_in_c1_eni6_5_tpl_1_q <= in_c1_eni6_5_tpl;
        end
    end

    // i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr(BLACKBOX,10)@80
    // out out_feedback_stall_out_23@20000000
    main_lambda_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_1002_0gr thei_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr (
        .in_data_in(redist2_sync_together_988_19_aunroll_x_in_c1_eni6_5_tpl_1_q),
        .in_dir(redist1_sync_together_988_19_aunroll_x_in_c1_eni6_4_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_p1024_arrayidx18_i33_push23_main_lambda_988_6gr_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_inputreg0(DELAY,57)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_inputreg0_q <= i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out;
        end
    end

    // redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr(COUNTER,60)
    // low=0, high=3, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_i <= $unsigned(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_q = $signed(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_i[1:0]);

    // redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem(DUALMEM,59)
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_ia = $unsigned(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_inputreg0_q);
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_aa = redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_wraddr_q;
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_ab = redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_aa),
        .data_a(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_ab),
        .q_b(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_q = $signed(redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_iq[63:0]);

    // redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_outputreg0(DELAY,58)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_outputreg0_q <= redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_mem_q;
        end
    end

    // i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged(BITSELECT,47)@79
    assign i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_b = $signed(in_c1_eni6_2_tpl[17:0]);
    assign i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_c = $signed(in_c1_eni6_2_tpl[31:18]);

    // i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged(BITSELECT,46)@79
    assign i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_b = $signed(in_c1_eni6_1_tpl[17:0]);
    assign i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_c = $signed(in_c1_eni6_1_tpl[31:18]);

    // i_mul14_i_main_lambda_988_2gr_ma3_cma(CHAINMULTADD,45)@79 + 5
    // out q@85
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_reset = ~ (resetn);
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_ena0 = 1'b1;
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_ena1 = i_mul14_i_main_lambda_988_2gr_ma3_cma_ena0;
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_ena2 = i_mul14_i_main_lambda_988_2gr_ma3_cma_ena0;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul14_i_main_lambda_988_2gr_ma3_cma_ah[0] <= i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_c;
            i_mul14_i_main_lambda_988_2gr_ma3_cma_ah[1] <= i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_c;
            i_mul14_i_main_lambda_988_2gr_ma3_cma_ch[0] <= i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_b;
            i_mul14_i_main_lambda_988_2gr_ma3_cma_ch[1] <= i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_b;
        end
    end

    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_a0 = i_mul14_i_main_lambda_988_2gr_ma3_cma_ah[0];
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_c0 = i_mul14_i_main_lambda_988_2gr_ma3_cma_ch[0];
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_a1 = i_mul14_i_main_lambda_988_2gr_ma3_cma_ah[1];
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_c1 = i_mul14_i_main_lambda_988_2gr_ma3_cma_ch[1];
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(14),
        .by_clken("0"),
        .by_width(14),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(33)
    ) i_mul14_i_main_lambda_988_2gr_ma3_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul14_i_main_lambda_988_2gr_ma3_cma_ena2, i_mul14_i_main_lambda_988_2gr_ma3_cma_ena1, i_mul14_i_main_lambda_988_2gr_ma3_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul14_i_main_lambda_988_2gr_ma3_cma_a1),
        .by(i_mul14_i_main_lambda_988_2gr_ma3_cma_a0),
        .ax(i_mul14_i_main_lambda_988_2gr_ma3_cma_c1),
        .bx(i_mul14_i_main_lambda_988_2gr_ma3_cma_c0),
        .resulta(i_mul14_i_main_lambda_988_2gr_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(33), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_i_main_lambda_988_2gr_ma3_cma_delay0 ( .xin(i_mul14_i_main_lambda_988_2gr_ma3_cma_s0), .xout(i_mul14_i_main_lambda_988_2gr_ma3_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul14_i_main_lambda_988_2gr_ma3_cma_q = $unsigned(i_mul14_i_main_lambda_988_2gr_ma3_cma_qq0[32:0]);

    // i_mul14_i_main_lambda_988_2gr_sums_align_1(BITSHIFT,40)@85
    assign i_mul14_i_main_lambda_988_2gr_sums_align_1_qint = { i_mul14_i_main_lambda_988_2gr_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul14_i_main_lambda_988_2gr_sums_align_1_q = i_mul14_i_main_lambda_988_2gr_sums_align_1_qint[50:0];

    // i_mul14_i_main_lambda_988_2gr_bjB12(BITJOIN,38)@79
    assign i_mul14_i_main_lambda_988_2gr_bjB12_q = {GND_q, i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_c};

    // i_mul14_i_main_lambda_988_2gr_bjA10(BITJOIN,36)@79
    assign i_mul14_i_main_lambda_988_2gr_bjA10_q = {GND_q, i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_c};

    // i_mul14_i_main_lambda_988_2gr_im8_cma(CHAINMULTADD,44)@79 + 5
    // out q@85
    assign i_mul14_i_main_lambda_988_2gr_im8_cma_reset = ~ (resetn);
    assign i_mul14_i_main_lambda_988_2gr_im8_cma_ena0 = 1'b1;
    assign i_mul14_i_main_lambda_988_2gr_im8_cma_ena1 = i_mul14_i_main_lambda_988_2gr_im8_cma_ena0;
    assign i_mul14_i_main_lambda_988_2gr_im8_cma_ena2 = i_mul14_i_main_lambda_988_2gr_im8_cma_ena0;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul14_i_main_lambda_988_2gr_im8_cma_ah[0] <= i_mul14_i_main_lambda_988_2gr_bjA10_q;
            i_mul14_i_main_lambda_988_2gr_im8_cma_ch[0] <= i_mul14_i_main_lambda_988_2gr_bjB12_q;
        end
    end

    assign i_mul14_i_main_lambda_988_2gr_im8_cma_a0 = $unsigned(i_mul14_i_main_lambda_988_2gr_im8_cma_ah[0]);
    assign i_mul14_i_main_lambda_988_2gr_im8_cma_c0 = $unsigned(i_mul14_i_main_lambda_988_2gr_im8_cma_ch[0]);
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(15),
        .ax_clken("0"),
        .ax_width(15),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(30)
    ) i_mul14_i_main_lambda_988_2gr_im8_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul14_i_main_lambda_988_2gr_im8_cma_ena2, i_mul14_i_main_lambda_988_2gr_im8_cma_ena1, i_mul14_i_main_lambda_988_2gr_im8_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul14_i_main_lambda_988_2gr_im8_cma_a0),
        .ax(i_mul14_i_main_lambda_988_2gr_im8_cma_c0),
        .resulta(i_mul14_i_main_lambda_988_2gr_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(30), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_i_main_lambda_988_2gr_im8_cma_delay0 ( .xin(i_mul14_i_main_lambda_988_2gr_im8_cma_s0), .xout(i_mul14_i_main_lambda_988_2gr_im8_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul14_i_main_lambda_988_2gr_im8_cma_q = $unsigned(i_mul14_i_main_lambda_988_2gr_im8_cma_qq0[29:0]);

    // i_mul14_i_main_lambda_988_2gr_im0_cma(CHAINMULTADD,43)@79 + 5
    // out q@85
    assign i_mul14_i_main_lambda_988_2gr_im0_cma_reset = ~ (resetn);
    assign i_mul14_i_main_lambda_988_2gr_im0_cma_ena0 = 1'b1;
    assign i_mul14_i_main_lambda_988_2gr_im0_cma_ena1 = i_mul14_i_main_lambda_988_2gr_im0_cma_ena0;
    assign i_mul14_i_main_lambda_988_2gr_im0_cma_ena2 = i_mul14_i_main_lambda_988_2gr_im0_cma_ena0;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul14_i_main_lambda_988_2gr_im0_cma_ah[0] <= i_mul14_i_main_lambda_988_2gr_bs1_bit_select_merged_b;
            i_mul14_i_main_lambda_988_2gr_im0_cma_ch[0] <= i_mul14_i_main_lambda_988_2gr_bs2_bit_select_merged_b;
        end
    end

    assign i_mul14_i_main_lambda_988_2gr_im0_cma_a0 = i_mul14_i_main_lambda_988_2gr_im0_cma_ah[0];
    assign i_mul14_i_main_lambda_988_2gr_im0_cma_c0 = i_mul14_i_main_lambda_988_2gr_im0_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul14_i_main_lambda_988_2gr_im0_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul14_i_main_lambda_988_2gr_im0_cma_ena2, i_mul14_i_main_lambda_988_2gr_im0_cma_ena1, i_mul14_i_main_lambda_988_2gr_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul14_i_main_lambda_988_2gr_im0_cma_a0),
        .ax(i_mul14_i_main_lambda_988_2gr_im0_cma_c0),
        .resulta(i_mul14_i_main_lambda_988_2gr_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_i_main_lambda_988_2gr_im0_cma_delay0 ( .xin(i_mul14_i_main_lambda_988_2gr_im0_cma_s0), .xout(i_mul14_i_main_lambda_988_2gr_im0_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul14_i_main_lambda_988_2gr_im0_cma_q = $unsigned(i_mul14_i_main_lambda_988_2gr_im0_cma_qq0[35:0]);

    // i_mul14_i_main_lambda_988_2gr_sums_join_0(BITJOIN,39)@85
    assign i_mul14_i_main_lambda_988_2gr_sums_join_0_q = {i_mul14_i_main_lambda_988_2gr_im8_cma_q, i_mul14_i_main_lambda_988_2gr_im0_cma_q};

    // i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0(ADD,42)@85
    assign i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_a = {1'b0, i_mul14_i_main_lambda_988_2gr_sums_join_0_q};
    assign i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_b = {16'b0000000000000000, i_mul14_i_main_lambda_988_2gr_sums_align_1_q};
    assign i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_o = $unsigned(i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_a) + $unsigned(i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_b);
    assign i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_q = $signed(i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_o[66:0]);

    // bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x(BITSELECT,16)@85
    assign bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_in = i_mul14_i_main_lambda_988_2gr_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_b = bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_in[31:0];

    // redist6_bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_b_1(DELAY,54)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_b_1_q <= bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_b;
        end
    end

    // redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt(ADD,68)
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_a = {1'b0, redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_q};
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_b = {1'b0, redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_o <= $unsigned(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_a) + $unsigned(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_b);
        end
    end
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_q = redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_o[2:0];

    // valid_fanout_reg1(REG,20)@79 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg4(REG,23)@85 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= redist5_sync_together_988_19_aunroll_x_in_i_valid_6_q;
        end
    end

    // redist4_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_7(DELAY,52)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_7 ( .xin(redist3_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_1_q), .xout(redist4_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr(BLACKBOX,11)@86
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    main_lambda_i_llvm_fpga_push_i32_load2_push14_1016_0gr thei_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr (
        .in_c1_ene6(redist4_sync_together_988_19_aunroll_x_in_c1_eni6_6_tpl_7_q),
        .in_data_in(bgTrunc_i_add19_i_main_lambda_988_4gr_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together_988_19_aunroll_x_in_c1_eni6_3_tpl_1(DELAY,48)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_988_19_aunroll_x_in_c1_eni6_3_tpl_1_q <= in_c1_eni6_3_tpl;
        end
    end

    // i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr(BLACKBOX,9)@80
    // out out_feedback_stall_out_14@20000000
    main_lambda_i_llvm_fpga_pop_i32_load2_pop14_994_0gr thei_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr (
        .in_data_in(redist0_sync_together_988_19_aunroll_x_in_c1_eni6_3_tpl_1_q),
        .in_dir(redist1_sync_together_988_19_aunroll_x_in_c1_eni6_4_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_load2_push14_main_lambda_988_7gr_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_inputreg0(DELAY,63)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_inputreg0_q <= i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out;
        end
    end

    // redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr(COUNTER,66)
    // low=0, high=3, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_i <= $unsigned(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_q = $signed(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_i[1:0]);

    // redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem(DUALMEM,65)
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_ia = $unsigned(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_inputreg0_q);
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_aa = redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_wraddr_q;
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_ab = redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_aa),
        .data_a(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_ab),
        .q_b(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_q = $signed(redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_iq[31:0]);

    // redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_outputreg0(DELAY,64)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_outputreg0_q <= redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_mem_q;
        end
    end

    // i_add19_i_main_lambda_988_4gr(ADD,8)@86
    assign i_add19_i_main_lambda_988_4gr_a = {1'b0, redist8_i_llvm_fpga_pop_i32_load2_pop14_main_lambda_988_3gr_out_data_out_6_outputreg0_q};
    assign i_add19_i_main_lambda_988_4gr_b = {1'b0, redist6_bgTrunc_i_mul14_i_main_lambda_988_2gr_sel_x_b_1_q};
    assign i_add19_i_main_lambda_988_4gr_o = $unsigned(i_add19_i_main_lambda_988_4gr_a) + $unsigned(i_add19_i_main_lambda_988_4gr_b);
    assign i_add19_i_main_lambda_988_4gr_q = i_add19_i_main_lambda_988_4gr_o[32:0];

    // bgTrunc_i_add19_i_main_lambda_988_4gr_sel_x(BITSELECT,15)@86
    assign bgTrunc_i_add19_i_main_lambda_988_4gr_sel_x_b = i_add19_i_main_lambda_988_4gr_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_4_aunroll_x(GPOUT,17)@86
    assign out_c1_exi2_0_tpl = GND_q;
    assign out_c1_exi2_1_tpl = bgTrunc_i_add19_i_main_lambda_988_4gr_sel_x_b;
    assign out_c1_exi2_2_tpl = redist7_i_llvm_fpga_pop_p1024_arrayidx18_i33_pop23_main_lambda_988_5gr_out_data_out_6_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_main_lambda2 = GND_q;

endmodule
