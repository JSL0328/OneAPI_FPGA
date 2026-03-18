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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body29_i_dijkstraoptimisedids_c1_enter193_dijkstraoptimisedid_1487_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c1_in_0000optimisedid_1487_0gr (
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [7:0] in_intel_reserved_ffwd_10_0,
    input wire [7:0] in_intel_reserved_ffwd_11_0,
    input wire [7:0] in_intel_reserved_ffwd_12_0,
    input wire [7:0] in_intel_reserved_ffwd_13_0,
    input wire [7:0] in_intel_reserved_ffwd_14_0,
    input wire [7:0] in_intel_reserved_ffwd_15_0,
    input wire [7:0] in_intel_reserved_ffwd_16_0,
    input wire [7:0] in_intel_reserved_ffwd_17_0,
    input wire [7:0] in_intel_reserved_ffwd_18_0,
    input wire [7:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [7:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    output wire [0:0] out_c1_exi21_0_tpl,
    output wire [7:0] out_c1_exi21_1_tpl,
    output wire [7:0] out_c1_exi21_2_tpl,
    output wire [7:0] out_c1_exi21_3_tpl,
    output wire [7:0] out_c1_exi21_4_tpl,
    output wire [7:0] out_c1_exi21_5_tpl,
    output wire [7:0] out_c1_exi21_6_tpl,
    output wire [7:0] out_c1_exi21_7_tpl,
    output wire [7:0] out_c1_exi21_8_tpl,
    output wire [7:0] out_c1_exi21_9_tpl,
    output wire [7:0] out_c1_exi21_10_tpl,
    output wire [7:0] out_c1_exi21_11_tpl,
    output wire [31:0] out_c1_exi21_12_tpl,
    output wire [31:0] out_c1_exi21_13_tpl,
    output wire [31:0] out_c1_exi21_14_tpl,
    output wire [31:0] out_c1_exi21_15_tpl,
    output wire [31:0] out_c1_exi21_16_tpl,
    output wire [31:0] out_c1_exi21_17_tpl,
    output wire [31:0] out_c1_exi21_18_tpl,
    output wire [31:0] out_c1_exi21_19_tpl,
    output wire [31:0] out_c1_exi21_20_tpl,
    output wire [31:0] out_c1_exi21_21_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraOptimisedID24,
    input wire [0:0] in_c1_eni22_0_tpl,
    input wire [0:0] in_c1_eni22_1_tpl,
    input wire [7:0] in_c1_eni22_2_tpl,
    input wire [7:0] in_c1_eni22_3_tpl,
    input wire [7:0] in_c1_eni22_4_tpl,
    input wire [7:0] in_c1_eni22_5_tpl,
    input wire [7:0] in_c1_eni22_6_tpl,
    input wire [7:0] in_c1_eni22_7_tpl,
    input wire [7:0] in_c1_eni22_8_tpl,
    input wire [7:0] in_c1_eni22_9_tpl,
    input wire [7:0] in_c1_eni22_10_tpl,
    input wire [7:0] in_c1_eni22_11_tpl,
    input wire [7:0] in_c1_eni22_12_tpl,
    input wire [31:0] in_c1_eni22_13_tpl,
    input wire [31:0] in_c1_eni22_14_tpl,
    input wire [31:0] in_c1_eni22_15_tpl,
    input wire [31:0] in_c1_eni22_16_tpl,
    input wire [31:0] in_c1_eni22_17_tpl,
    input wire [31:0] in_c1_eni22_18_tpl,
    input wire [31:0] in_c1_eni22_19_tpl,
    input wire [31:0] in_c1_eni22_20_tpl,
    input wire [31:0] in_c1_eni22_21_tpl,
    input wire [31:0] in_c1_eni22_22_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_s;
    reg [31:0] i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_q;
    wire [0:0] i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_s;
    reg [31:0] i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_q;
    wire [0:0] i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_s;
    reg [31:0] i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_q;
    wire [0:0] i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_s;
    reg [31:0] i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_q;
    wire [0:0] i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_s;
    reg [31:0] i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_q;
    wire [0:0] i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_s;
    reg [31:0] i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_q;
    wire [0:0] i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_s;
    reg [31:0] i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_q;
    wire [0:0] i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_s;
    reg [31:0] i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_q;
    wire [0:0] i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_s;
    reg [31:0] i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_q;
    wire [0:0] i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_s;
    reg [31:0] i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid29_dijkstraoptimisedid_1490_3gr_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid30_dijkstraoptimisedid_1490_4gr_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid31_dijkstraoptimisedid_1490_5gr_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid32_dijkstraoptimisedid_1490_6gr_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid33_dijkstraoptimisedid_1490_7gr_out_dest_data_out_4_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid34_dijkstraoptimisedid_1490_8gr_out_dest_data_out_5_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid35_dijkstraoptimisedid_1490_9gr_out_dest_data_out_6_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid36_dijkstraoptimisedid_1490_10_out_dest_data_out_7_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid37_dijkstraoptimisedid_1490_11_out_dest_data_out_8_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid38_dijkstraoptimisedid_1490_12_out_dest_data_out_9_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid39_dijkstraoptimisedid_1490_13_out_dest_data_out_10_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid40_dijkstraoptimisedid_1490_14_out_dest_data_out_11_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid41_dijkstraoptimisedid_1490_15_out_dest_data_out_12_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid42_dijkstraoptimisedid_1490_16_out_dest_data_out_13_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid43_dijkstraoptimisedid_1490_17_out_dest_data_out_14_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid44_dijkstraoptimisedid_1490_18_out_dest_data_out_15_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid45_dijkstraoptimisedid_1490_19_out_dest_data_out_16_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid46_dijkstraoptimisedid_1490_20_out_dest_data_out_17_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid47_dijkstraoptimisedid_1490_21_out_dest_data_out_18_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid48_dijkstraoptimisedid_1490_22_out_dest_data_out_19_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid49_dijkstraoptimisedid_1490_23_out_dest_data_out_20_0;
    wire [0:0] i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_s;
    reg [7:0] i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_q;
    wire [0:0] i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_s;
    reg [7:0] i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_q;
    wire [0:0] i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_s;
    reg [7:0] i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_q;
    wire [0:0] i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_s;
    reg [7:0] i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_q;
    wire [0:0] i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_s;
    reg [7:0] i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_q;
    wire [0:0] i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_s;
    reg [7:0] i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_q;
    wire [0:0] i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_s;
    reg [7:0] i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_q;
    wire [0:0] i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_s;
    reg [7:0] i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_q;
    wire [0:0] i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_s;
    reg [7:0] i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_q;
    wire [0:0] i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_s;
    reg [7:0] i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_q;
    wire [0:0] i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_s;
    reg [7:0] i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    reg [7:0] redist0_sync_together_1490_91_aunroll_x_in_c1_eni22_2_tpl_1_q;
    reg [7:0] redist1_sync_together_1490_91_aunroll_x_in_c1_eni22_3_tpl_1_q;
    reg [7:0] redist2_sync_together_1490_91_aunroll_x_in_c1_eni22_4_tpl_1_q;
    reg [7:0] redist3_sync_together_1490_91_aunroll_x_in_c1_eni22_5_tpl_1_q;
    reg [7:0] redist4_sync_together_1490_91_aunroll_x_in_c1_eni22_6_tpl_1_q;
    reg [7:0] redist5_sync_together_1490_91_aunroll_x_in_c1_eni22_7_tpl_1_q;
    reg [7:0] redist6_sync_together_1490_91_aunroll_x_in_c1_eni22_8_tpl_1_q;
    reg [7:0] redist7_sync_together_1490_91_aunroll_x_in_c1_eni22_9_tpl_1_q;
    reg [7:0] redist8_sync_together_1490_91_aunroll_x_in_c1_eni22_10_tpl_1_q;
    reg [7:0] redist9_sync_together_1490_91_aunroll_x_in_c1_eni22_11_tpl_1_q;
    reg [7:0] redist10_sync_together_1490_91_aunroll_x_in_c1_eni22_12_tpl_1_q;
    reg [31:0] redist11_sync_together_1490_91_aunroll_x_in_c1_eni22_13_tpl_1_q;
    reg [31:0] redist12_sync_together_1490_91_aunroll_x_in_c1_eni22_14_tpl_1_q;
    reg [31:0] redist13_sync_together_1490_91_aunroll_x_in_c1_eni22_15_tpl_1_q;
    reg [31:0] redist14_sync_together_1490_91_aunroll_x_in_c1_eni22_16_tpl_1_q;
    reg [31:0] redist15_sync_together_1490_91_aunroll_x_in_c1_eni22_17_tpl_1_q;
    reg [31:0] redist16_sync_together_1490_91_aunroll_x_in_c1_eni22_18_tpl_1_q;
    reg [31:0] redist17_sync_together_1490_91_aunroll_x_in_c1_eni22_19_tpl_1_q;
    reg [31:0] redist18_sync_together_1490_91_aunroll_x_in_c1_eni22_20_tpl_1_q;
    reg [31:0] redist19_sync_together_1490_91_aunroll_x_in_c1_eni22_21_tpl_1_q;
    reg [31:0] redist20_sync_together_1490_91_aunroll_x_in_c1_eni22_22_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg0(REG,90)@49 + 1
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

    // valid_fanout_reg1(REG,91)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid29_dijkstraoptimisedid_1490_3gr(BLACKBOX,34)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1496_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid29_dijkstraoptimisedid_1490_3gr (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid29_dijkstraoptimisedid_1490_3gr_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together_1490_91_aunroll_x_in_c1_eni22_22_tpl_1(DELAY,132)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together_1490_91_aunroll_x_in_c1_eni22_22_tpl_1_q <= in_c1_eni22_22_tpl;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr(REG,33)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q <= in_c1_eni22_1_tpl;
        end
    end

    // i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44(MUX,27)@50
    assign i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_s)
            1'b0 : i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_q = redist20_sync_together_1490_91_aunroll_x_in_c1_eni22_22_tpl_1_q;
            1'b1 : i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid29_dijkstraoptimisedid_1490_3gr_out_dest_data_out_0_0;
            default : i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_q = 32'b0;
        endcase
    end

    // valid_fanout_reg2(REG,92)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid30_dijkstraoptimisedid_1490_4gr(BLACKBOX,35)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1501_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid30_dijkstraoptimisedid_1490_4gr (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid30_dijkstraoptimisedid_1490_4gr_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together_1490_91_aunroll_x_in_c1_eni22_21_tpl_1(DELAY,131)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_sync_together_1490_91_aunroll_x_in_c1_eni22_21_tpl_1_q <= in_c1_eni22_21_tpl;
        end
    end

    // i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43(MUX,26)@50
    assign i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_s)
            1'b0 : i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_q = redist19_sync_together_1490_91_aunroll_x_in_c1_eni22_21_tpl_1_q;
            1'b1 : i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid30_dijkstraoptimisedid_1490_4gr_out_dest_data_out_1_0;
            default : i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_q = 32'b0;
        endcase
    end

    // valid_fanout_reg3(REG,93)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid31_dijkstraoptimisedid_1490_5gr(BLACKBOX,36)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1506_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid31_dijkstraoptimisedid_1490_5gr (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid31_dijkstraoptimisedid_1490_5gr_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together_1490_91_aunroll_x_in_c1_eni22_20_tpl_1(DELAY,130)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together_1490_91_aunroll_x_in_c1_eni22_20_tpl_1_q <= in_c1_eni22_20_tpl;
        end
    end

    // i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42(MUX,25)@50
    assign i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_s)
            1'b0 : i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_q = redist18_sync_together_1490_91_aunroll_x_in_c1_eni22_20_tpl_1_q;
            1'b1 : i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid31_dijkstraoptimisedid_1490_5gr_out_dest_data_out_2_0;
            default : i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_q = 32'b0;
        endcase
    end

    // valid_fanout_reg4(REG,94)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid32_dijkstraoptimisedid_1490_6gr(BLACKBOX,37)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1511_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid32_dijkstraoptimisedid_1490_6gr (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid32_dijkstraoptimisedid_1490_6gr_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together_1490_91_aunroll_x_in_c1_eni22_19_tpl_1(DELAY,129)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together_1490_91_aunroll_x_in_c1_eni22_19_tpl_1_q <= in_c1_eni22_19_tpl;
        end
    end

    // i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41(MUX,24)@50
    assign i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_s)
            1'b0 : i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_q = redist17_sync_together_1490_91_aunroll_x_in_c1_eni22_19_tpl_1_q;
            1'b1 : i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid32_dijkstraoptimisedid_1490_6gr_out_dest_data_out_3_0;
            default : i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_q = 32'b0;
        endcase
    end

    // valid_fanout_reg5(REG,95)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid33_dijkstraoptimisedid_1490_7gr(BLACKBOX,38)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1516_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid33_dijkstraoptimisedid_1490_7gr (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid33_dijkstraoptimisedid_1490_7gr_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together_1490_91_aunroll_x_in_c1_eni22_18_tpl_1(DELAY,128)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together_1490_91_aunroll_x_in_c1_eni22_18_tpl_1_q <= in_c1_eni22_18_tpl;
        end
    end

    // i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40(MUX,23)@50
    assign i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_s)
            1'b0 : i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_q = redist16_sync_together_1490_91_aunroll_x_in_c1_eni22_18_tpl_1_q;
            1'b1 : i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid33_dijkstraoptimisedid_1490_7gr_out_dest_data_out_4_0;
            default : i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_q = 32'b0;
        endcase
    end

    // valid_fanout_reg6(REG,96)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid34_dijkstraoptimisedid_1490_8gr(BLACKBOX,39)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1521_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid34_dijkstraoptimisedid_1490_8gr (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid34_dijkstraoptimisedid_1490_8gr_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together_1490_91_aunroll_x_in_c1_eni22_17_tpl_1(DELAY,127)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together_1490_91_aunroll_x_in_c1_eni22_17_tpl_1_q <= in_c1_eni22_17_tpl;
        end
    end

    // i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39(MUX,32)@50
    assign i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_s)
            1'b0 : i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_q = redist15_sync_together_1490_91_aunroll_x_in_c1_eni22_17_tpl_1_q;
            1'b1 : i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid34_dijkstraoptimisedid_1490_8gr_out_dest_data_out_5_0;
            default : i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_q = 32'b0;
        endcase
    end

    // valid_fanout_reg7(REG,97)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid35_dijkstraoptimisedid_1490_9gr(BLACKBOX,40)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1526_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid35_dijkstraoptimisedid_1490_9gr (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid35_dijkstraoptimisedid_1490_9gr_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together_1490_91_aunroll_x_in_c1_eni22_16_tpl_1(DELAY,126)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together_1490_91_aunroll_x_in_c1_eni22_16_tpl_1_q <= in_c1_eni22_16_tpl;
        end
    end

    // i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38(MUX,31)@50
    assign i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_s)
            1'b0 : i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_q = redist14_sync_together_1490_91_aunroll_x_in_c1_eni22_16_tpl_1_q;
            1'b1 : i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid35_dijkstraoptimisedid_1490_9gr_out_dest_data_out_6_0;
            default : i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_q = 32'b0;
        endcase
    end

    // valid_fanout_reg8(REG,98)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid36_dijkstraoptimisedid_1490_10(BLACKBOX,41)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1531_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid36_dijkstraoptimisedid_1490_10 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid36_dijkstraoptimisedid_1490_10_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together_1490_91_aunroll_x_in_c1_eni22_15_tpl_1(DELAY,125)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together_1490_91_aunroll_x_in_c1_eni22_15_tpl_1_q <= in_c1_eni22_15_tpl;
        end
    end

    // i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37(MUX,30)@50
    assign i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_s)
            1'b0 : i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_q = redist13_sync_together_1490_91_aunroll_x_in_c1_eni22_15_tpl_1_q;
            1'b1 : i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid36_dijkstraoptimisedid_1490_10_out_dest_data_out_7_0;
            default : i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_q = 32'b0;
        endcase
    end

    // valid_fanout_reg9(REG,99)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid37_dijkstraoptimisedid_1490_11(BLACKBOX,42)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1536_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid37_dijkstraoptimisedid_1490_11 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid37_dijkstraoptimisedid_1490_11_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together_1490_91_aunroll_x_in_c1_eni22_14_tpl_1(DELAY,124)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together_1490_91_aunroll_x_in_c1_eni22_14_tpl_1_q <= in_c1_eni22_14_tpl;
        end
    end

    // i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36(MUX,29)@50
    assign i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_s)
            1'b0 : i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_q = redist12_sync_together_1490_91_aunroll_x_in_c1_eni22_14_tpl_1_q;
            1'b1 : i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid37_dijkstraoptimisedid_1490_11_out_dest_data_out_8_0;
            default : i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_q = 32'b0;
        endcase
    end

    // valid_fanout_reg10(REG,100)@49 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid38_dijkstraoptimisedid_1490_12(BLACKBOX,43)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1541_0gr thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid38_dijkstraoptimisedid_1490_12 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid38_dijkstraoptimisedid_1490_12_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together_1490_91_aunroll_x_in_c1_eni22_13_tpl_1(DELAY,123)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together_1490_91_aunroll_x_in_c1_eni22_13_tpl_1_q <= in_c1_eni22_13_tpl;
        end
    end

    // i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35(MUX,28)@50
    assign i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_s)
            1'b0 : i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_q = redist11_sync_together_1490_91_aunroll_x_in_c1_eni22_13_tpl_1_q;
            1'b1 : i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstraoptimisedid38_dijkstraoptimisedid_1490_12_out_dest_data_out_9_0;
            default : i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_q = 32'b0;
        endcase
    end

    // valid_fanout_reg11(REG,101)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid39_dijkstraoptimisedid_1490_13(BLACKBOX,44)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1546_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid39_dijkstraoptimisedid_1490_13 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid39_dijkstraoptimisedid_1490_13_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together_1490_91_aunroll_x_in_c1_eni22_12_tpl_1(DELAY,122)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together_1490_91_aunroll_x_in_c1_eni22_12_tpl_1_q <= in_c1_eni22_12_tpl;
        end
    end

    // i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34(MUX,64)@50
    assign i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_s)
            1'b0 : i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_q = redist10_sync_together_1490_91_aunroll_x_in_c1_eni22_12_tpl_1_q;
            1'b1 : i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid39_dijkstraoptimisedid_1490_13_out_dest_data_out_10_0;
            default : i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_q = 8'b0;
        endcase
    end

    // valid_fanout_reg12(REG,102)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid40_dijkstraoptimisedid_1490_14(BLACKBOX,45)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1551_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid40_dijkstraoptimisedid_1490_14 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid40_dijkstraoptimisedid_1490_14_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together_1490_91_aunroll_x_in_c1_eni22_11_tpl_1(DELAY,121)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together_1490_91_aunroll_x_in_c1_eni22_11_tpl_1_q <= in_c1_eni22_11_tpl;
        end
    end

    // i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33(MUX,63)@50
    assign i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_s)
            1'b0 : i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_q = redist9_sync_together_1490_91_aunroll_x_in_c1_eni22_11_tpl_1_q;
            1'b1 : i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid40_dijkstraoptimisedid_1490_14_out_dest_data_out_11_0;
            default : i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_q = 8'b0;
        endcase
    end

    // valid_fanout_reg13(REG,103)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid41_dijkstraoptimisedid_1490_15(BLACKBOX,46)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1556_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid41_dijkstraoptimisedid_1490_15 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid41_dijkstraoptimisedid_1490_15_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together_1490_91_aunroll_x_in_c1_eni22_10_tpl_1(DELAY,120)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together_1490_91_aunroll_x_in_c1_eni22_10_tpl_1_q <= in_c1_eni22_10_tpl;
        end
    end

    // i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32(MUX,62)@50
    assign i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_s)
            1'b0 : i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_q = redist8_sync_together_1490_91_aunroll_x_in_c1_eni22_10_tpl_1_q;
            1'b1 : i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid41_dijkstraoptimisedid_1490_15_out_dest_data_out_12_0;
            default : i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_q = 8'b0;
        endcase
    end

    // valid_fanout_reg14(REG,104)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid42_dijkstraoptimisedid_1490_16(BLACKBOX,47)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1561_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid42_dijkstraoptimisedid_1490_16 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid42_dijkstraoptimisedid_1490_16_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together_1490_91_aunroll_x_in_c1_eni22_9_tpl_1(DELAY,119)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together_1490_91_aunroll_x_in_c1_eni22_9_tpl_1_q <= in_c1_eni22_9_tpl;
        end
    end

    // i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31(MUX,61)@50
    assign i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_s)
            1'b0 : i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_q = redist7_sync_together_1490_91_aunroll_x_in_c1_eni22_9_tpl_1_q;
            1'b1 : i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid42_dijkstraoptimisedid_1490_16_out_dest_data_out_13_0;
            default : i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_q = 8'b0;
        endcase
    end

    // valid_fanout_reg15(REG,105)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid43_dijkstraoptimisedid_1490_17(BLACKBOX,48)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1566_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid43_dijkstraoptimisedid_1490_17 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid43_dijkstraoptimisedid_1490_17_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together_1490_91_aunroll_x_in_c1_eni22_8_tpl_1(DELAY,118)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together_1490_91_aunroll_x_in_c1_eni22_8_tpl_1_q <= in_c1_eni22_8_tpl;
        end
    end

    // i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30(MUX,60)@50
    assign i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_s)
            1'b0 : i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_q = redist6_sync_together_1490_91_aunroll_x_in_c1_eni22_8_tpl_1_q;
            1'b1 : i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid43_dijkstraoptimisedid_1490_17_out_dest_data_out_14_0;
            default : i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_q = 8'b0;
        endcase
    end

    // valid_fanout_reg16(REG,106)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid44_dijkstraoptimisedid_1490_18(BLACKBOX,49)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1571_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid44_dijkstraoptimisedid_1490_18 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid44_dijkstraoptimisedid_1490_18_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together_1490_91_aunroll_x_in_c1_eni22_7_tpl_1(DELAY,117)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together_1490_91_aunroll_x_in_c1_eni22_7_tpl_1_q <= in_c1_eni22_7_tpl;
        end
    end

    // i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29(MUX,59)@50
    assign i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_s)
            1'b0 : i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_q = redist5_sync_together_1490_91_aunroll_x_in_c1_eni22_7_tpl_1_q;
            1'b1 : i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid44_dijkstraoptimisedid_1490_18_out_dest_data_out_15_0;
            default : i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_q = 8'b0;
        endcase
    end

    // valid_fanout_reg17(REG,107)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid45_dijkstraoptimisedid_1490_19(BLACKBOX,50)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1576_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid45_dijkstraoptimisedid_1490_19 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid45_dijkstraoptimisedid_1490_19_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together_1490_91_aunroll_x_in_c1_eni22_6_tpl_1(DELAY,116)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together_1490_91_aunroll_x_in_c1_eni22_6_tpl_1_q <= in_c1_eni22_6_tpl;
        end
    end

    // i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28(MUX,58)@50
    assign i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_s)
            1'b0 : i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_q = redist4_sync_together_1490_91_aunroll_x_in_c1_eni22_6_tpl_1_q;
            1'b1 : i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid45_dijkstraoptimisedid_1490_19_out_dest_data_out_16_0;
            default : i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_q = 8'b0;
        endcase
    end

    // valid_fanout_reg18(REG,108)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid46_dijkstraoptimisedid_1490_20(BLACKBOX,51)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1581_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid46_dijkstraoptimisedid_1490_20 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid46_dijkstraoptimisedid_1490_20_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together_1490_91_aunroll_x_in_c1_eni22_5_tpl_1(DELAY,115)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together_1490_91_aunroll_x_in_c1_eni22_5_tpl_1_q <= in_c1_eni22_5_tpl;
        end
    end

    // i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27(MUX,57)@50
    assign i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_s)
            1'b0 : i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_q = redist3_sync_together_1490_91_aunroll_x_in_c1_eni22_5_tpl_1_q;
            1'b1 : i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid46_dijkstraoptimisedid_1490_20_out_dest_data_out_17_0;
            default : i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_q = 8'b0;
        endcase
    end

    // valid_fanout_reg19(REG,109)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid47_dijkstraoptimisedid_1490_21(BLACKBOX,52)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1586_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid47_dijkstraoptimisedid_1490_21 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid47_dijkstraoptimisedid_1490_21_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together_1490_91_aunroll_x_in_c1_eni22_4_tpl_1(DELAY,114)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_1490_91_aunroll_x_in_c1_eni22_4_tpl_1_q <= in_c1_eni22_4_tpl;
        end
    end

    // i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26(MUX,56)@50
    assign i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_s)
            1'b0 : i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_q = redist2_sync_together_1490_91_aunroll_x_in_c1_eni22_4_tpl_1_q;
            1'b1 : i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid47_dijkstraoptimisedid_1490_21_out_dest_data_out_18_0;
            default : i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_q = 8'b0;
        endcase
    end

    // valid_fanout_reg20(REG,110)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid48_dijkstraoptimisedid_1490_22(BLACKBOX,53)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1591_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid48_dijkstraoptimisedid_1490_22 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid48_dijkstraoptimisedid_1490_22_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together_1490_91_aunroll_x_in_c1_eni22_3_tpl_1(DELAY,113)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_1490_91_aunroll_x_in_c1_eni22_3_tpl_1_q <= in_c1_eni22_3_tpl;
        end
    end

    // i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25(MUX,65)@50
    assign i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_s)
            1'b0 : i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_q = redist1_sync_together_1490_91_aunroll_x_in_c1_eni22_3_tpl_1_q;
            1'b1 : i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid48_dijkstraoptimisedid_1490_22_out_dest_data_out_19_0;
            default : i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_q = 8'b0;
        endcase
    end

    // valid_fanout_reg21(REG,111)@49 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid49_dijkstraoptimisedid_1490_23(BLACKBOX,54)@50
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1596_0gr thei_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid49_dijkstraoptimisedid_1490_23 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid49_dijkstraoptimisedid_1490_23_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together_1490_91_aunroll_x_in_c1_eni22_2_tpl_1(DELAY,112)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_1490_91_aunroll_x_in_c1_eni22_2_tpl_1_q <= in_c1_eni22_2_tpl;
        end
    end

    // i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24(MUX,55)@50
    assign i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_s = i_llvm_fpga_fanout_i1_c1_ene1194_fanout_adaptor_dijkstraoptimisedid_1490_2gr_q;
    always_comb 
    begin
        unique case (i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_s)
            1'b0 : i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_q = redist0_sync_together_1490_91_aunroll_x_in_c1_eni22_2_tpl_1_q;
            1'b1 : i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_q = i_llvm_fpga_ffwd_dest_i8_unnamed_dijkstraoptimisedid49_dijkstraoptimisedid_1490_23_out_dest_data_out_20_0;
            default : i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_q = 8'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_6_aunroll_x(GPOUT,88)@50
    assign out_c1_exi21_0_tpl = GND_q;
    assign out_c1_exi21_1_tpl = i_visited_i_sroa_0_2_replace_phi_dijkstraoptimisedid_1490_24_q;
    assign out_c1_exi21_2_tpl = i_visited_i_sroa_6_2_replace_phi_dijkstraoptimisedid_1490_25_q;
    assign out_c1_exi21_3_tpl = i_visited_i_sroa_10_2_replace_phi_dijkstraoptimisedid_1490_26_q;
    assign out_c1_exi21_4_tpl = i_visited_i_sroa_14_2_replace_phi_dijkstraoptimisedid_1490_27_q;
    assign out_c1_exi21_5_tpl = i_visited_i_sroa_18_2_replace_phi_dijkstraoptimisedid_1490_28_q;
    assign out_c1_exi21_6_tpl = i_visited_i_sroa_22_2_replace_phi_dijkstraoptimisedid_1490_29_q;
    assign out_c1_exi21_7_tpl = i_visited_i_sroa_26_2_replace_phi_dijkstraoptimisedid_1490_30_q;
    assign out_c1_exi21_8_tpl = i_visited_i_sroa_30_2_replace_phi_dijkstraoptimisedid_1490_31_q;
    assign out_c1_exi21_9_tpl = i_visited_i_sroa_34_2_replace_phi_dijkstraoptimisedid_1490_32_q;
    assign out_c1_exi21_10_tpl = i_visited_i_sroa_38_2_replace_phi_dijkstraoptimisedid_1490_33_q;
    assign out_c1_exi21_11_tpl = i_visited_i_sroa_42_2_replace_phi_dijkstraoptimisedid_1490_34_q;
    assign out_c1_exi21_12_tpl = i_dist_i_sroa_19_2_replace_phi_dijkstraoptimisedid_1490_35_q;
    assign out_c1_exi21_13_tpl = i_dist_i_sroa_36_2_replace_phi_dijkstraoptimisedid_1490_36_q;
    assign out_c1_exi21_14_tpl = i_dist_i_sroa_53_2_replace_phi_dijkstraoptimisedid_1490_37_q;
    assign out_c1_exi21_15_tpl = i_dist_i_sroa_70_2_replace_phi_dijkstraoptimisedid_1490_38_q;
    assign out_c1_exi21_16_tpl = i_dist_i_sroa_87_2_replace_phi_dijkstraoptimisedid_1490_39_q;
    assign out_c1_exi21_17_tpl = i_dist_i_sroa_104_2_replace_phi_dijkstraoptimisedid_1490_40_q;
    assign out_c1_exi21_18_tpl = i_dist_i_sroa_121_2_replace_phi_dijkstraoptimisedid_1490_41_q;
    assign out_c1_exi21_19_tpl = i_dist_i_sroa_138_2_replace_phi_dijkstraoptimisedid_1490_42_q;
    assign out_c1_exi21_20_tpl = i_dist_i_sroa_155_2_replace_phi_dijkstraoptimisedid_1490_43_q;
    assign out_c1_exi21_21_tpl = i_dist_i_sroa_172_2_replace_phi_dijkstraoptimisedid_1490_44_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraOptimisedID24 = GND_q;

endmodule
