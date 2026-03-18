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

// SystemVerilog created from bb_DijkstraNaiveID_B2_stall_region
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B2_stall_region (
    input wire [63:0] in_memdep_21_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_readdatavalid,
    output wire [40:0] out_memdep_21_DijkstraNaiveID_avm_address,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_read,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_write,
    output wire [63:0] out_memdep_21_DijkstraNaiveID_avm_writedata,
    output wire [7:0] out_memdep_21_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_burstcount,
    output wire [0:0] out_feedback_out_8,
    input wire [0:0] in_feedback_stall_in_8,
    output wire [0:0] out_feedback_valid_out_8,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_c0_exe283,
    output wire [0:0] out_c0_exe3931,
    output wire [0:0] out_c0_exe82,
    output wire [0:0] out_c0_exe93,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_c0_exe3931,
    input wire [0:0] in_c0_exe82,
    input wire [0:0] in_c0_exe93,
    input wire [31:0] in_c2_exe14,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_memdep_21_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [7:0] c_i8_1_205_12_q;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_lsu_memdep_21_o_active;
    wire [40:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_c0_exit81_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_c0_exit81_2_tpl;
    wire [0:0] i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_c1_exit_1_tpl;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [95:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_1_fifo_i_valid;
    wire coalesced_delay_1_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_stall;
    wire coalesced_delay_1_fifo_i_stall_bitsignaltemp;
    wire [95:0] coalesced_delay_1_fifo_i_data;
    wire [0:0] coalesced_delay_1_fifo_o_valid;
    wire coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_stall;
    wire coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    wire [95:0] coalesced_delay_1_fifo_o_data;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_b;
    wire [34:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [127:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_b;
    wire [2:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [95:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [95:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i8_1_205_12(CONSTANT,3)
    assign c_i8_1_205_12_q = 8'b00000001;

    // bubble_join_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x(BITJOIN,59)
    assign bubble_join_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_q = i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x(BITSELECT,60)
    assign bubble_select_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_b = bubble_join_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_q[31:0];

    // join_for_coalesced_delay_1(BITJOIN,42)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_c};

    // SE_out_i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr(STALLENABLE,70)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_wireValid = i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr(BITJOIN,47)
    assign bubble_join_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_q = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr(BITSELECT,48)
    assign bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_b = bubble_join_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_q[0:0];

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,62)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,63)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[2:0];

    // sel_for_coalesced_delay_0(BITSELECT,40)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[0:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[1:1];
    assign sel_for_coalesced_delay_0_d = bubble_select_coalesced_delay_0_fifo_b[2:2];

    // i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr(BLACKBOX,12)@23
    // in in_stall_in@20000000
    // out out_data_out@24
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@24
    DijkstraNaiveID_i_llvm_fpga_push_i1_memd0000kstranaiveid_303_0gr thei_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr (
        .in_c0_exe82(sel_for_coalesced_delay_0_c),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_b),
        .in_feedback_stall_in_8(in_feedback_stall_in_8),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr(STALLENABLE,88)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall = i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_and0 = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid = SE_out_coalesced_delay_0_fifo_V0 & SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_and0;

    // bubble_join_stall_entry(BITJOIN,51)
    assign bubble_join_stall_entry_q = {in_c2_exe14, in_c0_exe93, in_c0_exe82, in_c0_exe3931};

    // bubble_select_stall_entry(BITSELECT,52)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[1:1];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[2:2];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[34:3];

    // join_for_coalesced_delay_0(BITJOIN,39)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // SE_stall_entry(STALLENABLE,71)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // coalesced_delay_0_fifo(STALLFIFO,44)
    assign coalesced_delay_0_fifo_i_valid = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_i_stall = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(24),
        .WIDTH(3),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,82)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_o_valid;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_o_valid;
    assign SE_out_coalesced_delay_1_fifo_and1 = SE_out_coalesced_delay_0_fifo_V1 & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V0 & SE_out_coalesced_delay_1_fifo_and1;

    // coalesced_delay_1_fifo(STALLFIFO,45)
    assign coalesced_delay_1_fifo_i_valid = SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_V0;
    assign coalesced_delay_1_fifo_i_stall = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(19),
        .WIDTH(96),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_1_fifo (
        .i_valid(coalesced_delay_1_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_1_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_1_q),
        .o_valid(coalesced_delay_1_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_1_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_1_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x(BLACKBOX,32)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c1_exit_0_tpl@5
    // out out_c1_exit_1_tpl@5
    DijkstraNaiveID_i_sfc_s_c1_in_for_cond_c0000kstranaiveid_205_4gr thei_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x(STALLENABLE,76)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_backStall = coalesced_delay_1_fifo_o_stall | ~ (SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_and0 = i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_wireValid = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_V0 & SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_and0;

    // i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x(BLACKBOX,31)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c0_exit81_0_tpl@5
    // out out_c0_exit81_1_tpl@5
    // out out_c0_exit81_2_tpl@5
    DijkstraNaiveID_i_sfc_s_c0_in_for_cond_c0000kstranaiveid_205_1gr thei_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_arg_visited(in_arg_visited),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni176_0_tpl(GND_q),
        .in_c0_eni176_1_tpl(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_o_valid),
        .out_c0_exit81_0_tpl(),
        .out_c0_exit81_1_tpl(i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_c0_exit81_1_tpl),
        .out_c0_exit81_2_tpl(i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_c0_exit81_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x(STALLENABLE,74)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed0 = (~ (SE_out_i_sfc_s_c1_in_for_cond_cleanup4_i_dijkstranaiveids_c1_enter_dijkstranaiveid_205_4gr_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr(STALLENABLE,68)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed0 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid) | SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall) & SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid) | SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_StallValid = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall & SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_toReg0 = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_StallValid & SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_toReg1 = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_StallValid & SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_or0 = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_consumed1 & SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V0 = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_V1 = SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_wireValid = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x(BITJOIN,56)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_q = {i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_c0_exit81_2_tpl, i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_out_c0_exit81_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x(BITSELECT,57)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_q[127:64];

    // i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr(BLACKBOX,11)@5
    // in in_i_stall@20000000
    // out out_lsu_memdep_21_o_active@20000000
    // out out_memdep_21_DijkstraNaiveID_avm_address@20000000
    // out out_memdep_21_DijkstraNaiveID_avm_burstcount@20000000
    // out out_memdep_21_DijkstraNaiveID_avm_byteenable@20000000
    // out out_memdep_21_DijkstraNaiveID_avm_enable@20000000
    // out out_memdep_21_DijkstraNaiveID_avm_read@20000000
    // out out_memdep_21_DijkstraNaiveID_avm_write@20000000
    // out out_memdep_21_DijkstraNaiveID_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@23
    // out out_o_writeack@23
    DijkstraNaiveID_i_llvm_fpga_mem_memdep_20000kstranaiveid_290_0gr thei_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond_cleanup4_i_dijkstranaiveids_c0_enter77_dijkstranaiveid_205_1gr_aunroll_x_V1),
        .in_i_writedata(c_i8_1_205_12_q),
        .in_memdep_21_DijkstraNaiveID_avm_readdata(in_memdep_21_DijkstraNaiveID_avm_readdata),
        .in_memdep_21_DijkstraNaiveID_avm_readdatavalid(in_memdep_21_DijkstraNaiveID_avm_readdatavalid),
        .in_memdep_21_DijkstraNaiveID_avm_waitrequest(in_memdep_21_DijkstraNaiveID_avm_waitrequest),
        .in_memdep_21_DijkstraNaiveID_avm_writeack(in_memdep_21_DijkstraNaiveID_avm_writeack),
        .out_lsu_memdep_21_o_active(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_lsu_memdep_21_o_active),
        .out_memdep_21_DijkstraNaiveID_avm_address(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_address),
        .out_memdep_21_DijkstraNaiveID_avm_burstcount(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_burstcount),
        .out_memdep_21_DijkstraNaiveID_avm_byteenable(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_byteenable),
        .out_memdep_21_DijkstraNaiveID_avm_enable(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_enable),
        .out_memdep_21_DijkstraNaiveID_avm_read(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_read),
        .out_memdep_21_DijkstraNaiveID_avm_write(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_write),
        .out_memdep_21_DijkstraNaiveID_avm_writedata(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_21_DijkstraNaiveID_avm_address = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_address;
    assign out_memdep_21_DijkstraNaiveID_avm_enable = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_enable;
    assign out_memdep_21_DijkstraNaiveID_avm_read = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_read;
    assign out_memdep_21_DijkstraNaiveID_avm_write = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_write;
    assign out_memdep_21_DijkstraNaiveID_avm_writedata = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_writedata;
    assign out_memdep_21_DijkstraNaiveID_avm_byteenable = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_byteenable;
    assign out_memdep_21_DijkstraNaiveID_avm_burstcount = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_memdep_21_DijkstraNaiveID_avm_burstcount;

    // feedback_out_8_sync(GPOUT,8)
    assign out_feedback_out_8 = i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_feedback_out_8;

    // feedback_valid_out_8_sync(GPOUT,10)
    assign out_feedback_valid_out_8 = i_llvm_fpga_push_i1_memdep_phi22_push8_dijkstranaiveid_205_7gr_out_feedback_valid_out_8;

    // sync_out_64(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,65)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,66)
    assign bubble_select_coalesced_delay_1_fifo_b = bubble_join_coalesced_delay_1_fifo_q[95:0];

    // sel_for_coalesced_delay_1(BITSELECT,43)
    assign sel_for_coalesced_delay_1_b = bubble_select_coalesced_delay_1_fifo_b[63:0];
    assign sel_for_coalesced_delay_1_c = bubble_select_coalesced_delay_1_fifo_b[95:64];

    // sync_out_65(GPOUT,28)@23
    assign out_c0_exe283 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe3931 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe82 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe93 = sel_for_coalesced_delay_0_d;
    assign out_c1_exe1 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_lsu_memdep_21_o_active = i_llvm_fpga_mem_memdep_21_dijkstranaiveid_205_6gr_out_lsu_memdep_21_o_active;

    // rst_sync(RESETSYNC,115)
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
