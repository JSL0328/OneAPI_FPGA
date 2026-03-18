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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body19_i_dijkstranaiveids_c0_enter10310_dijkstranaiveid_1040_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c0_in_for_0000stranaiveid_1040_0gr (
    input wire [63:0] in_arg_g,
    output wire [0:0] out_c0_exi2108_0_tpl,
    output wire [31:0] out_c0_exi2108_1_tpl,
    output wire [63:0] out_c0_exi2108_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraNaiveID0,
    input wire [0:0] in_c0_eni3102_0_tpl,
    input wire [0:0] in_c0_eni3102_1_tpl,
    input wire [31:0] in_c0_eni3102_2_tpl,
    input wire [0:0] in_c0_eni3102_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] c_i5_0_1043_20_q;
    wire [32:0] i_add_i_dijkstranaiveid_1043_5gr_a;
    wire [32:0] i_add_i_dijkstranaiveid_1043_5gr_b;
    logic [32:0] i_add_i_dijkstranaiveid_1043_5gr_o;
    wire [32:0] i_add_i_dijkstranaiveid_1043_5gr_q;
    wire [1:0] i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_const_1_q;
    wire [63:0] i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_join_q;
    wire [61:0] i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_select_63_b;
    wire [25:0] i_inc57_i_zext_dijkstranaiveid_1043_10_vt_const_31_q;
    wire [31:0] i_inc57_i_zext_dijkstranaiveid_1043_10_vt_join_q;
    wire [5:0] i_inc57_i_zext_dijkstranaiveid_1043_10_vt_select_5_b;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_a;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_b;
    logic [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_o;
    wire [5:0] i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_q;
    wire [31:0] i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr_out_feedback_stall_out_21;
    wire [4:0] i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13_out_feedback_valid_out_17;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_select_63_b;
    wire [26:0] i_unnamed_dijkstranaiveid_1043_3gr_vt_const_31_q;
    wire [31:0] i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q;
    wire [4:0] i_unnamed_dijkstranaiveid_1043_3gr_vt_select_4_b;
    wire [31:0] bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b;
    wire [61:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_narrow_x_b;
    wire [63:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom20_i_dijkstranaiveid_1043_6gr_sel_x_b;
    wire [31:0] i_inc57_i_zext_dijkstranaiveid_1043_10_sel_x_b;
    wire [4:0] i_unnamed_dijkstranaiveid_1043_11_sel_x_b;
    wire [31:0] i_unnamed_dijkstranaiveid_1043_3gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    wire [61:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [0:0] redist0_sync_together_1043_29_aunroll_x_in_c0_eni3102_1_tpl_1_q;
    reg [31:0] redist1_sync_together_1043_29_aunroll_x_in_c0_eni3102_2_tpl_1_q;
    reg [0:0] redist2_sync_together_1043_29_aunroll_x_in_c0_eni3102_3_tpl_1_q;
    reg [0:0] redist3_sync_together_1043_29_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist4_bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b_1_q;
    reg [31:0] redist5_i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist3_sync_together_1043_29_aunroll_x_in_i_valid_1(DELAY,71)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together_1043_29_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together_1043_29_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg0(REG,50)@3 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist3_sync_together_1043_29_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg2(REG,52)@2 + 1
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

    // valid_fanout_reg4(REG,54)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= in_i_valid;
        end
    end

    // redist2_sync_together_1043_29_aunroll_x_in_c0_eni3102_3_tpl_1(DELAY,70)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_1043_29_aunroll_x_in_c0_eni3102_3_tpl_1_q <= in_c0_eni3102_3_tpl;
        end
    end

    // i_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12(BLACKBOX,23)@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    DijkstraNaiveID_i_llvm_fpga_push_i32_mul0000stranaiveid_1085_0gr thei_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12 (
        .in_c0_ene3106(redist2_sync_together_1043_29_aunroll_x_in_c0_eni3102_3_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together_1043_29_aunroll_x_in_c0_eni3102_1_tpl_1(DELAY,68)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_1043_29_aunroll_x_in_c0_eni3102_1_tpl_1_q <= in_c0_eni3102_1_tpl;
        end
    end

    // redist1_sync_together_1043_29_aunroll_x_in_c0_eni3102_2_tpl_1(DELAY,69)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_1043_29_aunroll_x_in_c0_eni3102_2_tpl_1_q <= in_c0_eni3102_2_tpl;
        end
    end

    // i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr(BLACKBOX,21)@3
    // out out_feedback_stall_out_21@20000000
    DijkstraNaiveID_i_llvm_fpga_pop_i32_mul_0000stranaiveid_1058_0gr thei_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr (
        .in_data_in(redist1_sync_together_1043_29_aunroll_x_in_c0_eni3102_2_tpl_1_q),
        .in_dir(redist0_sync_together_1043_29_aunroll_x_in_c0_eni3102_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_mul_i_add3458_push21_dijkstranaiveid_1043_12_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_dijkstranaiveid_1043_3gr_vt_const_31(CONSTANT,31)
    assign i_unnamed_dijkstranaiveid_1043_3gr_vt_const_31_q = 27'b000000000000000000000000000;

    // valid_fanout_reg1(REG,51)@2 + 1
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

    // valid_fanout_reg5(REG,55)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= in_i_valid;
        end
    end

    // i_inc57_i_zext_dijkstranaiveid_1043_10_vt_const_31(CONSTANT,17)
    assign i_inc57_i_zext_dijkstranaiveid_1043_10_vt_const_31_q = 26'b00000000000000000000000000;

    // i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr(ADD,20)@3
    assign i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_a = {1'b0, i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr_out_data_out};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_b = {5'b00000, VCC_q};
    assign i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_o = $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_a) + $unsigned(i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_b);
    assign i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_q = i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_o[5:0];

    // i_inc57_i_zext_dijkstranaiveid_1043_10_sel_x(BITSELECT,45)@3
    assign i_inc57_i_zext_dijkstranaiveid_1043_10_sel_x_b = {26'b00000000000000000000000000, i_llvm_fpga_int_add_i6_i5_i1_inc57_i_i_dijkstranaiveid_1043_9gr_q[5:0]};

    // i_inc57_i_zext_dijkstranaiveid_1043_10_vt_select_5(BITSELECT,19)@3
    assign i_inc57_i_zext_dijkstranaiveid_1043_10_vt_select_5_b = i_inc57_i_zext_dijkstranaiveid_1043_10_sel_x_b[5:0];

    // i_inc57_i_zext_dijkstranaiveid_1043_10_vt_join(BITJOIN,18)@3
    assign i_inc57_i_zext_dijkstranaiveid_1043_10_vt_join_q = {i_inc57_i_zext_dijkstranaiveid_1043_10_vt_const_31_q, i_inc57_i_zext_dijkstranaiveid_1043_10_vt_select_5_b};

    // i_unnamed_dijkstranaiveid_1043_11_sel_x(BITSELECT,46)@3
    assign i_unnamed_dijkstranaiveid_1043_11_sel_x_b = i_inc57_i_zext_dijkstranaiveid_1043_10_vt_join_q[4:0];

    // i_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13(BLACKBOX,24)@3
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    DijkstraNaiveID_i_llvm_fpga_push_i5_v_0_0000stranaiveid_1092_0gr thei_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13 (
        .in_c0_ene3106(redist2_sync_together_1043_29_aunroll_x_in_c0_eni3102_3_tpl_1_q),
        .in_data_in(i_unnamed_dijkstranaiveid_1043_11_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_0_1043_20(CONSTANT,9)
    assign c_i5_0_1043_20_q = 5'b00000;

    // i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr(BLACKBOX,22)@3
    // out out_feedback_stall_out_17@20000000
    DijkstraNaiveID_i_llvm_fpga_pop_i5_v_0_i0000stranaiveid_1048_0gr thei_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr (
        .in_data_in(c_i5_0_1043_20_q),
        .in_dir(redist0_sync_together_1043_29_aunroll_x_in_c0_eni3102_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i5_v_0_i13_narrowing_push17_dijkstranaiveid_1043_13_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_dijkstranaiveid_1043_3gr_sel_x(BITSELECT,47)@3
    assign i_unnamed_dijkstranaiveid_1043_3gr_sel_x_b = {27'b000000000000000000000000000, i_llvm_fpga_pop_i5_v_0_i13_narrowing_pop17_dijkstranaiveid_1043_2gr_out_data_out[4:0]};

    // i_unnamed_dijkstranaiveid_1043_3gr_vt_select_4(BITSELECT,33)@3
    assign i_unnamed_dijkstranaiveid_1043_3gr_vt_select_4_b = i_unnamed_dijkstranaiveid_1043_3gr_sel_x_b[4:0];

    // i_unnamed_dijkstranaiveid_1043_3gr_vt_join(BITJOIN,32)@3
    assign i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q = {i_unnamed_dijkstranaiveid_1043_3gr_vt_const_31_q, i_unnamed_dijkstranaiveid_1043_3gr_vt_select_4_b};

    // i_add_i_dijkstranaiveid_1043_5gr(ADD,10)@3
    assign i_add_i_dijkstranaiveid_1043_5gr_a = {1'b0, i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q};
    assign i_add_i_dijkstranaiveid_1043_5gr_b = {1'b0, i_llvm_fpga_pop_i32_mul_i_add3458_pop21_dijkstranaiveid_1043_4gr_out_data_out};
    assign i_add_i_dijkstranaiveid_1043_5gr_o = $unsigned(i_add_i_dijkstranaiveid_1043_5gr_a) + $unsigned(i_add_i_dijkstranaiveid_1043_5gr_b);
    assign i_add_i_dijkstranaiveid_1043_5gr_q = i_add_i_dijkstranaiveid_1043_5gr_o[32:0];

    // bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x(BITSELECT,37)@3
    assign bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b = i_add_i_dijkstranaiveid_1043_5gr_q[31:0];

    // redist4_bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b_1(DELAY,72)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b_1_q <= bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b;
        end
    end

    // i_idxprom20_i_dijkstranaiveid_1043_6gr_sel_x(BITSELECT,44)@4
    assign i_idxprom20_i_dijkstranaiveid_1043_6gr_sel_x_b = {{32{redist4_bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b_1_q[31]}}, redist4_bgTrunc_i_add_i_dijkstranaiveid_1043_5gr_sel_x_b_1_q[31:0]};

    // i_arrayidx21_i_dijkstranaiveid_1073_0gr_narrow_x(BITSELECT,40)@4
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_narrow_x_b = i_idxprom20_i_dijkstranaiveid_1043_6gr_sel_x_b[61:0];

    // i_arrayidx21_i_dijkstranaiveid_1073_0gr_shift_join_x(BITJOIN,41)@4
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_shift_join_x_q = {i_arrayidx21_i_dijkstranaiveid_1073_0gr_narrow_x_b, i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_const_1_q};

    // i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,66)@4
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx21_i_dijkstranaiveid_1073_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg3(REG,53)@3 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist3_sync_together_1043_29_aunroll_x_in_i_valid_1_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr(BLACKBOX,25)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    DijkstraNaiveID_i_llvm_fpga_sync_buffer_0000stranaiveid_1068_0gr thei_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr (
        .in_buffer_in(in_arg_g),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_select_63(BITSELECT,28)@4
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_join(BITJOIN,27)@4
    assign i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_select_63_b, i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_const_1_q};

    // i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_lhsMSBs_select(BITSELECT,63)@4
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_g_sync_buffer_dijkstranaiveid_1043_7gr_vt_join_q[63:2]);

    // i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums(ADD,64)@4
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_split_join(BITJOIN,65)@4
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_split_join_q = {i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_MSBs_sums_q, i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_const_1_q};

    // i_arrayidx21_i_dijkstranaiveid_1073_0gr_dupName_0_trunc_sel_x(BITSELECT,43)@4
    assign i_arrayidx21_i_dijkstranaiveid_1073_0gr_dupName_0_trunc_sel_x_b = i_arrayidx21_i_dijkstranaiveid_1073_0gr_add_x_split_join_q[63:0];

    // i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_select_63(BITSELECT,13)@4
    assign i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_select_63_b = i_arrayidx21_i_dijkstranaiveid_1073_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_const_1(CONSTANT,11)
    assign i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_const_1_q = 2'b00;

    // i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_join(BITJOIN,12)@4
    assign i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_join_q = {i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_select_63_b, i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_const_1_q};

    // redist5_i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q_1(DELAY,73)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q_1_q <= i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_7_aunroll_x(GPOUT,48)@4
    assign out_c0_exi2108_0_tpl = GND_q;
    assign out_c0_exi2108_1_tpl = redist5_i_unnamed_dijkstranaiveid_1043_3gr_vt_join_q_1_q;
    assign out_c0_exi2108_2_tpl = i_arrayidx21_i_dijkstranaiveid_1043_8gr_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraNaiveID0 = GND_q;

endmodule
