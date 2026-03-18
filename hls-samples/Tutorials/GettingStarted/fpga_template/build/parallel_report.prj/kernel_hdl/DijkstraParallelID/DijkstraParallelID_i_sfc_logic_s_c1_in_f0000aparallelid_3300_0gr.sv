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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body5_i_dijkstraparallelids_c1_enter237_dijkstraparallelid_3300_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c1_in_f0000aparallelid_3300_0gr (
    input wire [63:0] in_arg_dist,
    output wire [0:0] out_c1_exi4_0_tpl,
    output wire [0:0] out_c1_exi4_1_tpl,
    output wire [0:0] out_c1_exi4_2_tpl,
    output wire [63:0] out_c1_exi4_3_tpl,
    output wire [0:0] out_c1_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [7:0] in_c1_eni2_1_tpl,
    input wire [31:0] in_c1_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_arrayidx11_i_dijkstraparallelid_3303_10_vt_const_1_q;
    wire [63:0] i_arrayidx11_i_dijkstraparallelid_3303_10_vt_join_q;
    wire [61:0] i_arrayidx11_i_dijkstraparallelid_3303_10_vt_select_63_b;
    wire [0:0] i_cmp6_i_dijkstraparallelid_3303_5gr_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_select_63_b;
    wire [0:0] i_load_struct_0_shuffle_bit0_not_dijkstraparallelid_3303_4gr_q;
    wire [0:0] i_selcond_dijkstraparallelid_1_dijkstraparallelid_3303_11_q;
    wire [0:0] i_unnamed_dijkstraparallelid_3303_7gr_s;
    reg [0:0] i_unnamed_dijkstraparallelid_3303_7gr_q;
    wire [31:0] c_i32_1_3303_17_recast_x_q;
    wire [61:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_narrow_x_b;
    wire [63:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom10_i_dijkstraparallelid_3303_8gr_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    wire [61:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [0:0] redist0_sync_together_3303_20_aunroll_x_in_c1_eni2_0_tpl_1_q;
    reg [31:0] redist1_sync_together_3303_20_aunroll_x_in_c1_eni2_2_tpl_1_q;
    reg [0:0] redist2_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q_1_q;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,35)@83 + 1
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

    // c_i32_1_3303_17_recast_x(CONSTANT,21)
    assign c_i32_1_3303_17_recast_x_q = 32'b11111111111111111111111111111111;

    // redist1_sync_together_3303_20_aunroll_x_in_c1_eni2_2_tpl_1(DELAY,47)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_3303_20_aunroll_x_in_c1_eni2_2_tpl_1_q <= in_c1_eni2_2_tpl;
        end
    end

    // i_cmp6_i_dijkstraparallelid_3303_5gr(LOGICAL,7)@84
    assign i_cmp6_i_dijkstraparallelid_3303_5gr_q = $unsigned(redist1_sync_together_3303_20_aunroll_x_in_c1_eni2_2_tpl_1_q == c_i32_1_3303_17_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x(CHOOSEBITS,29)@83
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_a = in_c1_eni2_1_tpl;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_a[0:0];

    // redist2_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q_1(DELAY,48)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q_1_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q;
        end
    end

    // i_selcond_dijkstraparallelid_1_dijkstraparallelid_3303_11(LOGICAL,15)@84
    assign i_selcond_dijkstraparallelid_1_dijkstraparallelid_3303_11_q = redist2_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q_1_q | i_cmp6_i_dijkstraparallelid_3303_5gr_q;

    // i_idxprom10_i_dijkstraparallelid_3303_8gr_sel_x(BITSELECT,28)@84
    assign i_idxprom10_i_dijkstraparallelid_3303_8gr_sel_x_b = {{32{redist1_sync_together_3303_20_aunroll_x_in_c1_eni2_2_tpl_1_q[31]}}, redist1_sync_together_3303_20_aunroll_x_in_c1_eni2_2_tpl_1_q[31:0]};

    // i_arrayidx11_i_dijkstraparallelid_3329_0gr_narrow_x(BITSELECT,24)@84
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_narrow_x_b = i_idxprom10_i_dijkstraparallelid_3303_8gr_sel_x_b[61:0];

    // i_arrayidx11_i_dijkstraparallelid_3329_0gr_shift_join_x(BITJOIN,25)@84
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_shift_join_x_q = {i_arrayidx11_i_dijkstraparallelid_3329_0gr_narrow_x_b, i_arrayidx11_i_dijkstraparallelid_3303_10_vt_const_1_q};

    // i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,44)@84
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx11_i_dijkstraparallelid_3329_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg1(REG,36)@83 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr(BLACKBOX,10)@0
    // in in_i_dependence@84
    // in in_valid_in@84
    // out out_buffer_out@84
    // out out_valid_out@84
    DijkstraParallelID_i_llvm_fpga_sync_buff0000aparallelid_3324_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_select_63(BITSELECT,13)@84
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_join(BITJOIN,12)@84
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_select_63_b, i_arrayidx11_i_dijkstraparallelid_3303_10_vt_const_1_q};

    // i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_lhsMSBs_select(BITSELECT,41)@84
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer188_dijkstraparallelid_3303_9gr_vt_join_q[63:2]);

    // i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums(ADD,42)@84
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_split_join(BITJOIN,43)@84
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_split_join_q = {i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_MSBs_sums_q, i_arrayidx11_i_dijkstraparallelid_3303_10_vt_const_1_q};

    // i_arrayidx11_i_dijkstraparallelid_3329_0gr_dupName_0_trunc_sel_x(BITSELECT,27)@84
    assign i_arrayidx11_i_dijkstraparallelid_3329_0gr_dupName_0_trunc_sel_x_b = i_arrayidx11_i_dijkstraparallelid_3329_0gr_add_x_split_join_q[63:0];

    // i_arrayidx11_i_dijkstraparallelid_3303_10_vt_select_63(BITSELECT,6)@84
    assign i_arrayidx11_i_dijkstraparallelid_3303_10_vt_select_63_b = i_arrayidx11_i_dijkstraparallelid_3329_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx11_i_dijkstraparallelid_3303_10_vt_const_1(CONSTANT,4)
    assign i_arrayidx11_i_dijkstraparallelid_3303_10_vt_const_1_q = 2'b00;

    // i_arrayidx11_i_dijkstraparallelid_3303_10_vt_join(BITJOIN,5)@84
    assign i_arrayidx11_i_dijkstraparallelid_3303_10_vt_join_q = {i_arrayidx11_i_dijkstraparallelid_3303_10_vt_select_63_b, i_arrayidx11_i_dijkstraparallelid_3303_10_vt_const_1_q};

    // i_unnamed_dijkstraparallelid_3303_7gr(MUX,16)@84
    assign i_unnamed_dijkstraparallelid_3303_7gr_s = redist2_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q_1_q;
    always_comb 
    begin
        unique case (i_unnamed_dijkstraparallelid_3303_7gr_s)
            1'b0 : i_unnamed_dijkstraparallelid_3303_7gr_q = i_cmp6_i_dijkstraparallelid_3303_5gr_q;
            1'b1 : i_unnamed_dijkstraparallelid_3303_7gr_q = VCC_q;
            default : i_unnamed_dijkstraparallelid_3303_7gr_q = 1'b0;
        endcase
    end

    // i_load_struct_0_shuffle_bit0_not_dijkstraparallelid_3303_4gr(LOGICAL,14)@84
    assign i_load_struct_0_shuffle_bit0_not_dijkstraparallelid_3303_4gr_q = redist2_i_llvm_fpga_bit_shuffle_i1_s_s_in_for_body5_i_dijkstraparallelid_fpgaunique_0s_v1i32_load_struct_0_shuffle_bit0_dijkstraparallelid_3310_0gr_NO_NAME_x_q_1_q ^ VCC_q;

    // redist0_sync_together_3303_20_aunroll_x_in_c1_eni2_0_tpl_1(DELAY,46)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_3303_20_aunroll_x_in_c1_eni2_0_tpl_1_q <= in_c1_eni2_0_tpl;
        end
    end

    // sync_out_52_aunroll_x(GPOUT,33)@84
    assign out_c1_exi4_0_tpl = redist0_sync_together_3303_20_aunroll_x_in_c1_eni2_0_tpl_1_q;
    assign out_c1_exi4_1_tpl = i_load_struct_0_shuffle_bit0_not_dijkstraparallelid_3303_4gr_q;
    assign out_c1_exi4_2_tpl = i_unnamed_dijkstraparallelid_3303_7gr_q;
    assign out_c1_exi4_3_tpl = i_arrayidx11_i_dijkstraparallelid_3303_10_vt_join_q;
    assign out_c1_exi4_4_tpl = i_selcond_dijkstraparallelid_1_dijkstraparallelid_3303_11_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
