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

// SystemVerilog created from i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_1102_0gr (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_dependency_out,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_21_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_6_tpl,
    input wire [0:0] in_predicate_in,
    input wire [31:0] in_src_data_in_21_0_0_tpl,
    input wire [31:0] in_src_data_in_21_0_1_tpl,
    input wire [31:0] in_src_data_in_21_0_2_tpl,
    input wire [31:0] in_src_data_in_21_0_3_tpl,
    input wire [31:0] in_src_data_in_21_0_4_tpl,
    input wire [31:0] in_src_data_in_21_0_5_tpl,
    input wire [31:0] in_src_data_in_21_0_6_tpl,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [223:0] dsdk_ip_adapt_bitjoin_1102_2_q;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_predicate_in;
    wire i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_predicate_in_bitsignaltemp;
    wire [223:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_in;
    wire i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_in;
    wire i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_in_bitsignaltemp;
    wire [223:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_out;
    wire i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_out;
    wire i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_out_bitsignaltemp;
    wire [31:0] ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_b;
    wire [31:0] ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_c;
    wire [31:0] ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_d;
    wire [31:0] ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_e;
    wire [31:0] ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_f;
    wire [31:0] ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_g;
    wire [31:0] ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_h;
    reg [0:0] redist0_sync_together_1102_20_aunroll_x_in_valid_in_1_q;


    // dsdk_ip_adapt_bitjoin_1102_2(BITJOIN,2)@1
    assign dsdk_ip_adapt_bitjoin_1102_2_q = {in_src_data_in_21_0_6_tpl, in_src_data_in_21_0_5_tpl, in_src_data_in_21_0_4_tpl, in_src_data_in_21_0_3_tpl, in_src_data_in_21_0_2_tpl, in_src_data_in_21_0_1_tpl, in_src_data_in_21_0_0_tpl};

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr(EXTIFACE,3)@1 + 1
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_in = dsdk_ip_adapt_bitjoin_1102_2_q;
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_in[0];
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_in[0];
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_out[0] = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_out[0] = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_out_bitsignaltemp;
    acl_ffwdsrc #(
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(224)
    ) thei_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr (
        .predicate_in(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_predicate_in_bitsignaltemp),
        .source_in(dsdk_ip_adapt_bitjoin_1102_2_q),
        .stall_in(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out),
        .stall_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_121(GPOUT,19)@2
    assign out_stall_out = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_stall_out;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist0_sync_together_1102_20_aunroll_x_in_valid_in_1(DELAY,24)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together_1102_20_aunroll_x_in_valid_in_1_q <= '0;
        end
        else
        begin
            redist0_sync_together_1102_20_aunroll_x_in_valid_in_1_q <= in_valid_in;
        end
    end

    // sync_out_122(GPOUT,20)@2
    assign out_dependency_out = redist0_sync_together_1102_20_aunroll_x_in_valid_in_1_q;
    assign out_valid_out = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_valid_out;

    // ip_dsdk_adapt_bitselect_1102_11_bit_select_merged(BITSELECT,23)@20000000
    assign ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_b = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out[127:96];
    assign ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_c = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out[159:128];
    assign ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_d = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out[191:160];
    assign ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_e = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out[223:192];
    assign ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_f = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out[31:0];
    assign ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_g = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out[63:32];
    assign ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_h = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1102_1gr_source_out[95:64];

    // regfree_osync_aunroll_x(GPOUT,21)
    assign out_intel_reserved_ffwd_21_0_0_tpl = ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_f;
    assign out_intel_reserved_ffwd_21_0_1_tpl = ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_g;
    assign out_intel_reserved_ffwd_21_0_2_tpl = ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_h;
    assign out_intel_reserved_ffwd_21_0_3_tpl = ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_b;
    assign out_intel_reserved_ffwd_21_0_4_tpl = ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_c;
    assign out_intel_reserved_ffwd_21_0_5_tpl = ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_d;
    assign out_intel_reserved_ffwd_21_0_6_tpl = ip_dsdk_adapt_bitselect_1102_11_bit_select_merged_e;

endmodule
