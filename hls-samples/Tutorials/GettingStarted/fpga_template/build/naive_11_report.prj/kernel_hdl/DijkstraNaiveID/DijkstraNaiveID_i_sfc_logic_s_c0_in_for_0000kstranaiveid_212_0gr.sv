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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_212_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c0_in_for_0000kstranaiveid_212_0gr (
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_visited,
    output wire [0:0] out_c0_exi280_0_tpl,
    output wire [63:0] out_c0_exi280_1_tpl,
    output wire [63:0] out_c0_exi280_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraNaiveID0,
    input wire [0:0] in_c0_eni176_0_tpl,
    input wire [31:0] in_c0_eni176_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_const_1_q;
    wire [63:0] i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_join_q;
    wire [61:0] i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstranaiveid_215_3gr_out_buffer_out;
    wire [64:0] i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_a;
    wire [64:0] i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_b;
    logic [64:0] i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_o;
    wire [64:0] i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_q;
    wire [63:0] i_arrayidx15_i_dijkstranaiveid_227_0gr_trunc_sel_x_b;
    wire [61:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_narrow_x_b;
    wire [63:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom14_i_dijkstranaiveid_215_2gr_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [61:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [31:0] redist0_sync_together_215_13_aunroll_x_in_c0_eni176_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,30)@0 + 1
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

    // redist0_sync_together_215_13_aunroll_x_in_c0_eni176_1_tpl_1(DELAY,41)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_215_13_aunroll_x_in_c0_eni176_1_tpl_1_q <= in_c0_eni176_1_tpl;
        end
    end

    // i_idxprom14_i_dijkstranaiveid_215_2gr_sel_x(BITSELECT,27)@1
    assign i_idxprom14_i_dijkstranaiveid_215_2gr_sel_x_b = {{32{redist0_sync_together_215_13_aunroll_x_in_c0_eni176_1_tpl_1_q[31]}}, redist0_sync_together_215_13_aunroll_x_in_c0_eni176_1_tpl_1_q[31:0]};

    // i_arrayidx31_i_dijkstranaiveid_237_0gr_narrow_x(BITSELECT,23)@1
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_narrow_x_b = i_idxprom14_i_dijkstranaiveid_215_2gr_sel_x_b[61:0];

    // i_arrayidx31_i_dijkstranaiveid_237_0gr_shift_join_x(BITJOIN,24)@1
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_shift_join_x_q = {i_arrayidx31_i_dijkstranaiveid_237_0gr_narrow_x_b, i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_const_1_q};

    // i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,39)@1
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx31_i_dijkstranaiveid_237_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg2(REG,32)@0 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr(BLACKBOX,9)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraNaiveID_i_llvm_fpga_sync_buffer_0000kstranaiveid_232_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_select_63(BITSELECT,12)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_join(BITJOIN,11)@1
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_select_63_b, i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_const_1_q};

    // i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_lhsMSBs_select(BITSELECT,36)@1
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer_dijkstranaiveid_215_5gr_vt_join_q[63:2]);

    // i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums(ADD,37)@1
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_split_join(BITJOIN,38)@1
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_split_join_q = {i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_MSBs_sums_q, i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_const_1_q};

    // i_arrayidx31_i_dijkstranaiveid_237_0gr_dupName_0_trunc_sel_x(BITSELECT,26)@1
    assign i_arrayidx31_i_dijkstranaiveid_237_0gr_dupName_0_trunc_sel_x_b = i_arrayidx31_i_dijkstranaiveid_237_0gr_add_x_split_join_q[63:0];

    // i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_select_63(BITSELECT,6)@1
    assign i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_select_63_b = i_arrayidx31_i_dijkstranaiveid_237_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_const_1(CONSTANT,4)
    assign i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_const_1_q = 2'b00;

    // i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_join(BITJOIN,5)@1
    assign i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_join_q = {i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_select_63_b, i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_const_1_q};

    // valid_fanout_reg1(REG,31)@0 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstranaiveid_215_3gr(BLACKBOX,13)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    DijkstraNaiveID_i_llvm_fpga_sync_buffer_0000kstranaiveid_222_0gr thei_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstranaiveid_215_3gr (
        .in_buffer_in(in_arg_visited),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstranaiveid_215_3gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x(ADD,18)@1
    assign i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024_arg_visited_sync_buffer_dijkstranaiveid_215_3gr_out_buffer_out};
    assign i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_b = {1'b0, i_idxprom14_i_dijkstranaiveid_215_2gr_sel_x_b};
    assign i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_o = $unsigned(i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_a) + $unsigned(i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_b);
    assign i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_q = i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_o[64:0];

    // i_arrayidx15_i_dijkstranaiveid_227_0gr_trunc_sel_x(BITSELECT,20)@1
    assign i_arrayidx15_i_dijkstranaiveid_227_0gr_trunc_sel_x_b = i_arrayidx15_i_dijkstranaiveid_227_0gr_add_x_q[63:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_2_aunroll_x(GPOUT,28)@1
    assign out_c0_exi280_0_tpl = GND_q;
    assign out_c0_exi280_1_tpl = i_arrayidx15_i_dijkstranaiveid_227_0gr_trunc_sel_x_b;
    assign out_c0_exi280_2_tpl = i_arrayidx31_i_dijkstranaiveid_215_6gr_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraNaiveID0 = GND_q;

endmodule
