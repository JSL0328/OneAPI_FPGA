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

// SystemVerilog created from bb_DijkstraNaiveID_B1_stall_region
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B1_stall_region (
    input wire [0:0] in_feedback_in_7,
    input wire [0:0] in_feedback_in_8,
    output wire [0:0] out_feedback_stall_out_7,
    output wire [0:0] out_feedback_stall_out_8,
    input wire [0:0] in_feedback_valid_in_7,
    input wire [0:0] in_feedback_valid_in_8,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_c0_exe1,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_memdep_phi22_pop8,
    output wire [0:0] out_memdep_phi_pop7,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_3_tpl;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    reg [2:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_b;
    wire [3:0] bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_e;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V2;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_coalesced_delay_0_0(STALLENABLE,56)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V2;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr(BLACKBOX,12)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    DijkstraNaiveID_i_llvm_fpga_pop_i1_memde0000kstranaiveid_175_0gr thei_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_e),
        .in_feedback_in_8(in_feedback_in_8),
        .in_feedback_valid_in_8(in_feedback_valid_in_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_stall_entry(STALLENABLE,50)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x(BLACKBOX,26)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_profile_loop_o_valid@5
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    // out out_c0_exit_3_tpl@5
    DijkstraNaiveID_i_sfc_s_c0_in_for_cond2_0000jkstranaiveid_57_1gr thei_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x(STALLENABLE,53)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_and1 = i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_valid_out & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_and1;

    // bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x(BITJOIN,44)
    assign bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_q = {i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_c0_exit_1_tpl, i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x(BITSELECT,45)
    assign bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_q[1:1];
    assign bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_q[2:2];
    assign bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_q[3:3];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr(BLACKBOX,13)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    DijkstraNaiveID_i_llvm_fpga_pop_i1_memde0000kstranaiveid_157_0gr thei_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_e),
        .in_feedback_in_7(in_feedback_in_7),
        .in_feedback_valid_in_7(in_feedback_valid_in_7),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_feedback_stall_out_7),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_stall_out_7_sync(GPOUT,8)
    assign out_feedback_stall_out_7 = i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_feedback_stall_out_7;

    // feedback_stall_out_8_sync(GPOUT,9)
    assign out_feedback_stall_out_8 = i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_feedback_stall_out_8;

    // sync_out_38(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_q = i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_b = bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_q[0:0];

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr(BITJOIN,35)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_q = i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr(BITSELECT,36)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_b = bubble_join_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_q[0:0];

    // join_for_coalesced_delay_0(BITJOIN,31)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond2_i_preheader_dijkstranaiveids_c0_enter8_dijkstranaiveid_57_1gr_aunroll_x_b};

    // coalesced_delay_0_0(REG,33)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= 3'b000;
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= join_for_coalesced_delay_0_q;
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,32)
    assign sel_for_coalesced_delay_0_b = coalesced_delay_0_0_q[0:0];
    assign sel_for_coalesced_delay_0_c = coalesced_delay_0_0_q[1:1];
    assign sel_for_coalesced_delay_0_d = coalesced_delay_0_0_q[2:2];

    // sync_out_39(GPOUT,24)@6
    assign out_c0_exe1 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_d;
    assign out_memdep_phi22_pop8 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi22_pop8_dijkstranaiveid_57_4gr_b;
    assign out_memdep_phi_pop7 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_b;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_dijkstranaiveid_57_3gr_V0;

    // rst_sync(RESETSYNC,75)
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
