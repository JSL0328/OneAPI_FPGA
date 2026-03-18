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

// SystemVerilog created from bb_DijkstraOptimisedID_B1_stall_region
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B1_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_almost_empty_out,
    output wire [31:0] out_c0_exe1,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [7:0] out_intel_reserved_ffwd_10_0,
    output wire [7:0] out_intel_reserved_ffwd_11_0,
    output wire [7:0] out_intel_reserved_ffwd_12_0,
    output wire [7:0] out_intel_reserved_ffwd_13_0,
    output wire [7:0] out_intel_reserved_ffwd_14_0,
    output wire [7:0] out_intel_reserved_ffwd_15_0,
    output wire [7:0] out_intel_reserved_ffwd_16_0,
    output wire [7:0] out_intel_reserved_ffwd_17_0,
    output wire [7:0] out_intel_reserved_ffwd_18_0,
    output wire [7:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [7:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [7:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl;
    wire [64:0] bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_d;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_temp_back_stall;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg0(REG,63)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg0_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg1(REG,62)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg1_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg0(REG,65)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg0_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg1(REG,64)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg1_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg0(REG,67)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg0_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg1(REG,66)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg1_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x(STALLENABLE,51)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V1 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V2 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg0(REG,60)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg0_q <= merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_backStall;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg1(REG,61)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg1_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg0_q;
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,59)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= in_almost_empty_in;
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,58)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= stall_entry_frontAlmostEmpty_reg0_q;
        end
    end

    // stall_entry_frontEmpty_reg0(REG,57)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= in_empty_in;
        end
    end

    // stall_entry_frontEmpty_reg1(REG,56)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= stall_entry_frontEmpty_reg0_q;
        end
    end

    // stall_entry_frontValid_reg0(REG,55)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= in_valid_in;
        end
    end

    // stall_entry_frontValid_reg1(REG,54)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= stall_entry_frontValid_reg0_q;
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,50)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x(BLACKBOX,35)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@33
    // out out_empty_out@33
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_c0_exit_0_tpl@33
    // out out_c0_exit_1_tpl@33
    // out out_c0_exit_2_tpl@33
    // out out_c0_exit_3_tpl@33
    // out out_c0_exit_4_tpl@33
    DijkstraOptimisedID_i_sfc_s_c0_in_for_co0000raoptimisedid_58_1gr thei_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_empty_out),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,8)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_0_0;

    // stall_entry_frontStall_reg0(REG,52)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= merged_in_SE_stall_entry_backStall;
        end
    end

    // stall_entry_frontStall_reg1(REG,53)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= stall_entry_frontStall_reg0_q;
        end
    end

    // sync_out_67(GPOUT,12)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg0(REG,73)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg0_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg1(REG,72)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg1_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg0(REG,71)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg0_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg1(REG,70)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg1_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg0(REG,69)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg0_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg1(REG,68)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg1_q <= i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg0_q;
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x(BITJOIN,38)
    assign bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_q = {i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_4_tpl_reg1_q, i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_2_tpl_reg1_q, i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_c0_exit_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x(BITSELECT,39)
    assign bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_q[31:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_q[63:32];
    assign bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_q[64:64];

    // sync_out_68(GPOUT,13)@33
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V2;
    assign out_c0_exe1 = bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_b;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_c;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_d;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V1;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_V0;

    // dupName_0_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_10_0;

    // dupName_1_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_11_0;

    // dupName_2_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_3_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_4_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_5_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_6_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_7_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_8_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_9_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_10_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_11_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_12_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_13_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_14_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_15_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_16_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_17_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_18_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_19_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstraoptimisedids_c0_enter30_dijkstraoptimisedid_58_1gr_aunroll_x_out_intel_reserved_ffwd_9_0;

    // rst_sync(RESETSYNC,74)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
