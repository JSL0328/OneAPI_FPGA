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

// SystemVerilog created from i_sfc_logic_s_c8_in_for_cond_cleanup4_i_dijkstraparallelids_c8_enter_dijkstraparallelid_425_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c8_in_f0000raparallelid_425_0gr (
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c8_exi2_0_tpl,
    output wire [63:0] out_c8_exi2_1_tpl,
    output wire [63:0] out_c8_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer189_dijkstraparallelid_428_2gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstraparallelid_428_1gr_out_buffer_out;
    wire [64:0] i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_a;
    wire [64:0] i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_b;
    logic [64:0] i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_o;
    wire [64:0] i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_q;
    wire [63:0] i_arrayidx26_i_1_dijkstraparallelid_442_0gr_c_i64_1_442_1gr_x_q;
    wire [63:0] i_arrayidx26_i_1_dijkstraparallelid_442_0gr_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,14)@145 + 1
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

    // i_arrayidx26_i_1_dijkstraparallelid_442_0gr_c_i64_1_442_1gr_x(CONSTANT,10)
    assign i_arrayidx26_i_1_dijkstraparallelid_442_0gr_c_i64_1_442_1gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // valid_fanout_reg2(REG,16)@145 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer189_dijkstraparallelid_428_2gr(BLACKBOX,4)@0
    // in in_i_dependence@146
    // in in_valid_in@146
    // out out_buffer_out@146
    // out out_valid_out@146
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_437_0gr thei_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer189_dijkstraparallelid_428_2gr (
        .in_buffer_in(in_arg_visited),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer189_dijkstraparallelid_428_2gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x(ADD,9)@146
    assign i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer189_dijkstraparallelid_428_2gr_out_buffer_out};
    assign i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_b = {1'b0, i_arrayidx26_i_1_dijkstraparallelid_442_0gr_c_i64_1_442_1gr_x_q};
    assign i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_o = $unsigned(i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_a) + $unsigned(i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_b);
    assign i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_q = i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_o[64:0];

    // i_arrayidx26_i_1_dijkstraparallelid_442_0gr_trunc_sel_x(BITSELECT,12)@146
    assign i_arrayidx26_i_1_dijkstraparallelid_442_0gr_trunc_sel_x_b = i_arrayidx26_i_1_dijkstraparallelid_442_0gr_add_x_q[63:0];

    // valid_fanout_reg1(REG,15)@145 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstraparallelid_428_1gr(BLACKBOX,5)@0
    // in in_i_dependence@146
    // in in_valid_in@146
    // out out_buffer_out@146
    // out out_valid_out@146
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_432_0gr thei_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstraparallelid_428_1gr (
        .in_buffer_in(in_arg_visited),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstraparallelid_428_1gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_8_aunroll_x(GPOUT,13)@146
    assign out_c8_exi2_0_tpl = GND_q;
    assign out_c8_exi2_1_tpl = i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstraparallelid_428_1gr_out_buffer_out;
    assign out_c8_exi2_2_tpl = i_arrayidx26_i_1_dijkstraparallelid_442_0gr_trunc_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
