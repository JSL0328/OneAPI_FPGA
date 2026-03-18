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

// SystemVerilog created from i_sfc_logic_s_c0_in_entry_dijkstraparallelids_c0_enter_dijkstraparallelid_42_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c0_in_e0000traparallelid_42_0gr (
    input wire [63:0] in_arg_dist,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_valid,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID6_0_tpl,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid1_dijkstraparallelid_45_6gr_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid2_dijkstraparallelid_45_7gr_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_45_8gr_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid4_dijkstraparallelid_45_9gr_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid5_dijkstraparallelid_45_10_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_out_buffer_out;
    wire [1:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_select_63_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    reg [0:0] redist0_sync_together_45_24_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg6(REG,52)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= in_i_valid;
        end
    end

    // valid_fanout_reg1(REG,47)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr(BLACKBOX,17)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    DijkstraParallelID_i_llvm_fpga_sync_buff0000traparallelid_49_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_select_63(BITSELECT,20)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1(CONSTANT,18)
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1_q = 2'b00;

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_join(BITJOIN,19)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid1_dijkstraparallelid_45_6gr(BLACKBOX,12)@2
    // out out_dependency_out@3
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@3
    // out out_valid_out@3
    DijkstraParallelID_i_llvm_fpga_ffwd_sour0000traparallelid_74_0gr thei_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid1_dijkstraparallelid_45_6gr (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid1_dijkstraparallelid_45_6gr_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,38)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid1_dijkstraparallelid_45_6gr_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg7(REG,53)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= in_i_valid;
        end
    end

    // valid_fanout_reg2(REG,48)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr(BLACKBOX,21)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    DijkstraParallelID_i_llvm_fpga_sync_buff0000traparallelid_54_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_select_63(BITSELECT,24)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_join(BITJOIN,23)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1_q};

    // i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid2_dijkstraparallelid_45_7gr(BLACKBOX,13)@2
    // out out_dependency_out@3
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@3
    // out out_valid_out@3
    DijkstraParallelID_i_llvm_fpga_ffwd_sour0000traparallelid_79_0gr thei_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid2_dijkstraparallelid_45_7gr (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer179_dijkstraparallelid_45_2gr_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid2_dijkstraparallelid_45_7gr_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid2_dijkstraparallelid_45_7gr_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg8(REG,54)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= in_i_valid;
        end
    end

    // valid_fanout_reg3(REG,49)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr(BLACKBOX,25)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    DijkstraParallelID_i_llvm_fpga_sync_buff0000traparallelid_59_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_select_63(BITSELECT,28)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_join(BITJOIN,27)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1_q};

    // i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_45_8gr(BLACKBOX,14)@2
    // out out_dependency_out@3
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@3
    // out out_valid_out@3
    DijkstraParallelID_i_llvm_fpga_ffwd_sour0000traparallelid_84_0gr thei_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_45_8gr (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer181_dijkstraparallelid_45_3gr_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_45_8gr_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_45_8gr_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg9(REG,55)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= in_i_valid;
        end
    end

    // valid_fanout_reg4(REG,50)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr(BLACKBOX,29)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    DijkstraParallelID_i_llvm_fpga_sync_buff0000traparallelid_64_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_select_63(BITSELECT,32)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_join(BITJOIN,31)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1_q};

    // i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid4_dijkstraparallelid_45_9gr(BLACKBOX,15)@2
    // out out_dependency_out@3
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@3
    // out out_valid_out@3
    DijkstraParallelID_i_llvm_fpga_ffwd_sour0000traparallelid_89_0gr thei_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid4_dijkstraparallelid_45_9gr (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer183_dijkstraparallelid_45_4gr_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid4_dijkstraparallelid_45_9gr_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid4_dijkstraparallelid_45_9gr_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg10(REG,56)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= in_i_valid;
        end
    end

    // valid_fanout_reg5(REG,51)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr(BLACKBOX,33)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    DijkstraParallelID_i_llvm_fpga_sync_buff0000traparallelid_69_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_select_63(BITSELECT,36)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_join(BITJOIN,35)@2
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer177_dijkstraparallelid_45_1gr_vt_const_1_q};

    // i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid5_dijkstraparallelid_45_10(BLACKBOX,16)@2
    // out out_dependency_out@3
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@3
    // out out_valid_out@3
    DijkstraParallelID_i_llvm_fpga_ffwd_sour0000traparallelid_94_0gr thei_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid5_dijkstraparallelid_45_10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer185_dijkstraparallelid_45_5gr_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid5_dijkstraparallelid_45_10_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid5_dijkstraparallelid_45_10_out_intel_reserved_ffwd_4_0;

    // redist0_sync_together_45_24_in_i_valid_1(DELAY,57)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together_45_24_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist0_sync_together_45_24_in_i_valid_1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg0(REG,46)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist0_sync_together_45_24_in_i_valid_1_q;
        end
    end

    // sync_out_1_aunroll_x(GPOUT,45)@3
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID6_0_tpl = GND_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
