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

// SystemVerilog created from i_sfc_logic_s_c24_in_for_cond_cleanup4_i_dijkstraparallelids_c24_enter_dijkstraparallelid_792_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c24_in_0000raparallelid_792_0gr (
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c24_exi1_0_tpl,
    output wire [63:0] out_c24_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer198_dijkstraparallelid_795_1gr_out_buffer_out;
    wire [63:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    wire [63:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_a;
    wire [63:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_b;
    logic [63:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_o;
    wire [63:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_split_join_q;
    wire [62:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    wire [0:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_rhsMSBs_select_bit_select_merged_c;
    wire [62:0] i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_lhsMSBs_select_b_const_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,12)@2650 + 1
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

    // i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_lhsMSBs_select_b_const(CONSTANT,20)
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_lhsMSBs_select_b_const_q = 63'b000000000000000000000000000000000000000000000000000000000000101;

    // i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums(ADD,17)@2651
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_o[63:0]);

    // valid_fanout_reg1(REG,13)@2650 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer198_dijkstraparallelid_795_1gr(BLACKBOX,3)@0
    // in in_i_dependence@2651
    // in in_valid_in@2651
    // out out_buffer_out@2651
    // out out_valid_out@2651
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_799_0gr thei_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer198_dijkstraparallelid_795_1gr (
        .in_buffer_in(in_arg_visited),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer198_dijkstraparallelid_795_1gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,19)@2651
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer198_dijkstraparallelid_795_1gr_out_buffer_out[63:1]);
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_rhsMSBs_select_bit_select_merged_c = $signed(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer198_dijkstraparallelid_795_1gr_out_buffer_out[0:0]);

    // i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_split_join(BITJOIN,18)@2651
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_split_join_q = {i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_MSBs_sums_q, i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_rhsMSBs_select_bit_select_merged_c};

    // i_arrayidx26_i_10_dijkstraparallelid_804_0gr_trunc_sel_x(BITSELECT,10)@2651
    assign i_arrayidx26_i_10_dijkstraparallelid_804_0gr_trunc_sel_x_b = i_arrayidx26_i_10_dijkstraparallelid_804_0gr_add_x_split_join_q[63:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_19_aunroll_x(GPOUT,11)@2651
    assign out_c24_exi1_0_tpl = GND_q;
    assign out_c24_exi1_1_tpl = i_arrayidx26_i_10_dijkstraparallelid_804_0gr_trunc_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
