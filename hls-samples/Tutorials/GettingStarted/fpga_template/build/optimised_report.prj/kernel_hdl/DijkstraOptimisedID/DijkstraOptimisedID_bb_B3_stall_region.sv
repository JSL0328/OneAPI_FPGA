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

// SystemVerilog created from bb_DijkstraOptimisedID_B3_stall_region
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B3_stall_region (
    input wire [63:0] in_load_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_load_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_load_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_load_DijkstraOptimisedID_avm_readdatavalid,
    output wire [40:0] out_load_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_write,
    output wire [63:0] out_load_DijkstraOptimisedID_avm_writedata,
    output wire [7:0] out_load_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_load_DijkstraOptimisedID_avm_burstcount,
    input wire [63:0] in_arg_in_g,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe4175,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [31:0] in_mul_i_add36101,
    input wire [0:0] in_notcmp65102,
    input wire [31:0] in_unnamed_DijkstraOptimisedID21,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [40:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_write;
    wire [63:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty;
    wire [31:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;
    wire [65:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [2:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [65:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [65:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_valid;
    wire coalesced_delay_1_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_stall;
    wire coalesced_delay_1_fifo_i_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_1_fifo_i_data;
    wire [0:0] coalesced_delay_1_fifo_i_empty;
    wire coalesced_delay_1_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_almost_empty;
    wire coalesced_delay_1_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_valid;
    wire coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_stall;
    wire coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_1_fifo_o_data;
    wire [0:0] coalesced_delay_1_fifo_o_empty;
    wire coalesced_delay_1_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_almost_empty;
    wire coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp;
    wire [31:0] bubble_join_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_b;
    wire [64:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [132:0] bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_i;
    wire [65:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [65:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [2:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V6;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V7;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V8;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_backStall;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V1;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V2;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_stall_exit_backStall;
    wire [0:0] merged_in_SE_stall_exit_V0;
    wire [0:0] merged_in_SE_stall_exit_V1;
    wire [0:0] merged_in_SE_stall_exit_V2;
    wire [0:0] merged_in_SE_stall_exit_can_fast_read;
    wire can_fast_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_can_slow_read;
    wire can_slow_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_no_space_for_result;
    wire no_space_for_result_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_forced_read;
    wire forced_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_temp_back_stall;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg0_q;
    reg [31:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg1_q;
    reg [31:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [31:0] stall_entry_o4_reg1_q;
    reg [31:0] stall_entry_o4_reg0_q;
    reg [0:0] stall_entry_o5_reg1_q;
    reg [0:0] stall_entry_o5_reg0_q;
    reg [31:0] stall_entry_o6_reg1_q;
    reg [31:0] stall_entry_o6_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [65:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [65:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_valid_reg0_q;
    reg [2:0] coalesced_delay_1_fifo_o_data_reg1_q;
    reg [2:0] coalesced_delay_1_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // join_for_coalesced_delay_0(BITJOIN,35)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_c};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,173)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_backStall;
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,174)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= coalesced_delay_0_fifo_i_stall_reg0_q;
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,40)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V1;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V4;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V7;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(530),
        .WIDTH(66),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
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
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,182)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= coalesced_delay_0_fifo_o_almost_empty;
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,181)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= coalesced_delay_0_fifo_o_almost_empty_reg0_q;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg0(REG,120)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg0_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg1(REG,119)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg1_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg0_q;
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,180)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= coalesced_delay_0_fifo_o_empty;
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,179)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= coalesced_delay_0_fifo_o_empty_reg0_q;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg0(REG,122)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg0_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg1(REG,121)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg1_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg0_q;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg0(REG,124)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg0_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg1(REG,123)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg1_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg0_q;
        end
    end

    // bubble_join_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_q = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_b = bubble_join_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_q[31:0];

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg0(REG,109)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg0_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0;
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg1(REG,108)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg1_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg2(REG,107)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg2_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg3(REG,106)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg3_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg4(REG,105)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg4_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg5(REG,104)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg5_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg6(REG,103)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg6_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg5_q;
        end
    end

    // join_for_coalesced_delay_1(BITJOIN,38)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_b};

    // coalesced_delay_1_fifo_i_stall_reg0(REG,183)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_i_stall_reg0_q <= merged_in_SE_stall_exit_backStall;
        end
    end

    // coalesced_delay_1_fifo_i_stall_reg1(REG,184)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_i_stall_reg1_q <= coalesced_delay_1_fifo_i_stall_reg0_q;
        end
    end

    // coalesced_delay_1_fifo(STALLFIFO,41)
    assign coalesced_delay_1_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V0;
    assign coalesced_delay_1_fifo_i_stall = coalesced_delay_1_fifo_i_stall_reg1_q;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V3;
    assign coalesced_delay_1_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V6;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_empty[0] = coalesced_delay_1_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_almost_empty[0] = coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(565),
        .WIDTH(3),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
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
        .o_empty(coalesced_delay_1_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_1_fifo_o_almost_empty_reg0(REG,192)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_almost_empty_reg0_q <= coalesced_delay_1_fifo_o_almost_empty;
        end
    end

    // coalesced_delay_1_fifo_o_almost_empty_reg1(REG,191)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_almost_empty_reg1_q <= coalesced_delay_1_fifo_o_almost_empty_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg0(REG,168)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg0_q <= i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out;
        end
    end

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg1(REG,167)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg1_q <= i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg0_q;
        end
    end

    // coalesced_delay_1_fifo_o_empty_reg0(REG,190)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_empty_reg0_q <= coalesced_delay_1_fifo_o_empty;
        end
    end

    // coalesced_delay_1_fifo_o_empty_reg1(REG,189)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_empty_reg1_q <= coalesced_delay_1_fifo_o_empty_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg0(REG,170)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg0_q <= i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out;
        end
    end

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg1(REG,169)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg1_q <= i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg0_q;
        end
    end

    // coalesced_delay_1_fifo_o_valid_reg0(REG,186)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_valid_reg0_q <= coalesced_delay_1_fifo_o_valid;
        end
    end

    // coalesced_delay_1_fifo_o_valid_reg1(REG,185)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_valid_reg1_q <= coalesced_delay_1_fifo_o_valid_reg0_q;
        end
    end

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid_reg0(REG,172)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid_reg0_q <= i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid;
        end
    end

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid_reg1(REG,171)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid_reg1_q <= i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid_reg0_q;
        end
    end

    // merged_in_SE_stall_exit(STALLENABLE,102)
    // Sync
    assign merged_in_SE_stall_exit_temp_back_stall = in_stall_in;
    assign merged_in_SE_stall_exit_can_fast_read = ~ ((i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out_reg1_q | coalesced_delay_1_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_stall_exit_can_slow_read = ~ ((i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out_reg1_q | coalesced_delay_1_fifo_o_empty_reg1_q));
    assign merged_in_SE_stall_exit_backStall = ~ (merged_in_SE_stall_exit_forced_read);
    assign merged_in_SE_stall_exit_no_space_for_result = merged_in_SE_stall_exit_temp_back_stall;
    assign merged_in_SE_stall_exit_V0 = merged_in_SE_stall_exit_forced_read;
    assign merged_in_SE_stall_exit_V1 = $unsigned(1'b0);
    assign merged_in_SE_stall_exit_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp_dup_name_0 = merged_in_SE_stall_exit_can_fast_read[0];
    assign can_slow_read_bitsignaltemp_dup_name_0 = merged_in_SE_stall_exit_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp_dup_name_0 = merged_in_SE_stall_exit_no_space_for_result[0];
    assign merged_in_SE_stall_exit_forced_read[0] = forced_read_bitsignaltemp_dup_name_0;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_stall_exit (
        .can_fast_read(can_fast_read_bitsignaltemp_dup_name_0),
        .can_slow_read(can_slow_read_bitsignaltemp_dup_name_0),
        .no_space_for_result(no_space_for_result_bitsignaltemp_dup_name_0),
        .forced_read(forced_read_bitsignaltemp_dup_name_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg0(REG,165)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg0_q <= merged_in_SE_stall_exit_backStall;
        end
    end

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg1(REG,166)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg1_q <= i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg0_q;
        end
    end

    // coalesced_delay_0_fifo_o_data_reg0(REG,178)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= coalesced_delay_0_fifo_o_data;
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,177)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= coalesced_delay_0_fifo_o_data_reg0_q;
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,54)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,55)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[65:0];

    // sel_for_coalesced_delay_0(BITSELECT,36)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[31:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[63:32];
    assign sel_for_coalesced_delay_0_d = bubble_select_coalesced_delay_0_fifo_b[64:64];
    assign sel_for_coalesced_delay_0_e = bubble_select_coalesced_delay_0_fifo_b[65:65];

    // i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x(BLACKBOX,26)@545
    // in in_i_stall@20000000
    // out out_almost_empty_out@580
    // out out_empty_out@580
    // out out_o_stall@20000000
    // out out_o_valid@580
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata@20000000
    // out out_c1_exit_0_tpl@580
    DijkstraOptimisedID_i_sfc_s_c1_in_for_bo0000aoptimisedid_735_8gr thei_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x (
        .in_almost_empty_in(merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V2),
        .in_c0_exe3174(sel_for_coalesced_delay_0_d),
        .in_c0_exe6(sel_for_coalesced_delay_0_e),
        .in_empty_in(merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V1),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0_sync_valid_reg6_q),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack),
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni5_2_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni5_4_tpl(bubble_select_i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_b),
        .in_c1_eni5_5_tpl(sel_for_coalesced_delay_0_d),
        .out_almost_empty_out(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_valid),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata(i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_valid_reg0(REG,176)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= coalesced_delay_0_fifo_o_valid;
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,175)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= coalesced_delay_0_fifo_o_valid_reg0_q;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid_reg0(REG,126)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid_reg0_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid_reg1(REG,125)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid_reg1_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid_reg0_q;
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x(STALLENABLE,101)
    // Sync
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_temp_back_stall = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_o_stall;
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_can_fast_read = ~ ((i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty_reg1_q | coalesced_delay_0_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_can_slow_read = ~ ((i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty_reg1_q | coalesced_delay_0_fifo_o_empty_reg1_q));
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_backStall = ~ (merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_forced_read);
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_no_space_for_result = merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_temp_back_stall;
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V0 = merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_forced_read;
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V1 = $unsigned(1'b0);
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_no_space_for_result[0];
    assign merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg0(REG,117)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg0_q <= merged_in_SE_in_i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_backStall;
        end
    end

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg1(REG,118)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg1_q <= i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg0_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // stall_entry_o6_reg0(REG,140)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= in_unnamed_DijkstraOptimisedID21;
        end
    end

    // stall_entry_o6_reg1(REG,139)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg1_q <= stall_entry_o6_reg0_q;
        end
    end

    // stall_entry_o5_reg0(REG,138)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= in_notcmp65102;
        end
    end

    // stall_entry_o5_reg1(REG,137)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= stall_entry_o5_reg0_q;
        end
    end

    // stall_entry_o4_reg0(REG,136)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= in_mul_i_add36101;
        end
    end

    // stall_entry_o4_reg1(REG,135)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= stall_entry_o4_reg0_q;
        end
    end

    // bubble_join_stall_entry(BITJOIN,46)
    assign bubble_join_stall_entry_q = {stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,47)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[31:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[32:32];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[64:33];

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg0(REG,141)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg0_q <= merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_backStall;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg1(REG,142)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg0_q;
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,134)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,133)
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

    // stall_entry_frontEmpty_reg0(REG,132)
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

    // stall_entry_frontEmpty_reg1(REG,131)
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

    // stall_entry_frontValid_reg0(REG,130)
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

    // stall_entry_frontValid_reg1(REG,129)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,99)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x(BLACKBOX,25)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@33
    // out out_empty_out@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_profile_loop_o_valid@33
    // out out_c0_exit171_0_tpl@33
    // out out_c0_exit171_1_tpl@33
    // out out_c0_exit171_2_tpl@33
    // out out_c0_exit171_3_tpl@33
    // out out_c0_exit171_4_tpl@33
    // out out_c0_exit171_5_tpl@33
    // out out_c0_exit171_6_tpl@33
    // out out_c0_exit171_7_tpl@33
    DijkstraOptimisedID_i_sfc_s_c0_in_for_bo0000aoptimisedid_735_4gr thei_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_arg_in_g(in_arg_in_g),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(GND_q),
        .in_c0_eni4_2_tpl(bubble_select_stall_entry_b),
        .in_c0_eni4_3_tpl(bubble_select_stall_entry_c),
        .in_c0_eni4_4_tpl(bubble_select_stall_entry_d),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit171_0_tpl(),
        .out_c0_exit171_1_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl),
        .out_c0_exit171_2_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl),
        .out_c0_exit171_3_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl),
        .out_c0_exit171_4_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl),
        .out_c0_exit171_5_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl),
        .out_c0_exit171_6_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl),
        .out_c0_exit171_7_tpl(i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg0(REG,164)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg1(REG,163)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg0(REG,162)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg1(REG,161)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg0(REG,160)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg1(REG,159)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg0(REG,158)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg1(REG,157)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg0(REG,156)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg1(REG,155)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg0(REG,154)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg1(REG,153)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg0(REG,152)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg1(REG,151)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg0(REG,150)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg1(REG,149)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg0_q;
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x(BITJOIN,50)
    assign bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q = {i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_7_tpl_reg1_q, i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_6_tpl_reg1_q, i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_5_tpl_reg1_q, i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_4_tpl_reg1_q, i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_3_tpl_reg1_q, i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_2_tpl_reg1_q, i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_c0_exit171_1_tpl_reg1_q, i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x(BITSELECT,51)
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[32:1];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[96:33];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[97:97];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[98:98];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[99:99];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[100:100];
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_q[132:101];

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg0(REG,144)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg1(REG,143)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg0(REG,146)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg1(REG,145)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg0(REG,148)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg0_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid;
        end
    end

    // i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg1(REG,147)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg1_q <= i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x(STALLENABLE,100)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_temp_back_stall = coalesced_delay_1_fifo_o_stall | coalesced_delay_0_fifo_o_stall | i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V0 = i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V3 = i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V6 = i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V4 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V3;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V7 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V6;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V2 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V3;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V8 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V6;

    // i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr(BLACKBOX,8)@33
    // in in_i_stall@20000000
    // out out_load_DijkstraOptimisedID_avm_address@20000000
    // out out_load_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_load_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_load_DijkstraOptimisedID_avm_enable@20000000
    // out out_load_DijkstraOptimisedID_avm_read@20000000
    // out out_load_DijkstraOptimisedID_avm_write@20000000
    // out out_load_DijkstraOptimisedID_avm_writedata@20000000
    // out out_o_almost_empty@545
    // out out_o_empty@545
    // out out_o_readdata@545
    // out out_o_stall@20000000
    // out out_o_valid@545
    DijkstraOptimisedID_i_llvm_fpga_mem_load0000aoptimisedid_919_0gr thei_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V8),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V5),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_d),
        .in_i_predicate(GND_q),
        .in_i_stall(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_i_dijkstraoptimisedids_c0_enter16532_dijkstraoptimisedid_735_4gr_aunroll_x_V2),
        .in_load_DijkstraOptimisedID_avm_readdata(in_load_DijkstraOptimisedID_avm_readdata),
        .in_load_DijkstraOptimisedID_avm_readdatavalid(in_load_DijkstraOptimisedID_avm_readdatavalid),
        .in_load_DijkstraOptimisedID_avm_waitrequest(in_load_DijkstraOptimisedID_avm_waitrequest),
        .in_load_DijkstraOptimisedID_avm_writeack(in_load_DijkstraOptimisedID_avm_writeack),
        .out_load_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_address),
        .out_load_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_burstcount),
        .out_load_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_byteenable),
        .out_load_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_enable),
        .out_load_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_read),
        .out_load_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_write),
        .out_load_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_load_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_address;
    assign out_load_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_enable;
    assign out_load_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_read;
    assign out_load_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_write;
    assign out_load_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_writedata;
    assign out_load_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_byteenable;
    assign out_load_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_load_dijkstraoptimisedid_735_6gr_out_load_DijkstraOptimisedID_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,127)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= merged_in_SE_bubble_join_stall_entry_backStall;
        end
    end

    // stall_entry_frontStall_reg1(REG,128)
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

    // sync_out_97(GPOUT,20)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // merged_in_SE_stall_exit_V0_sync_valid_reg0(REG,116)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg0_q <= merged_in_SE_stall_exit_V0;
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg1(REG,115)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg1_q <= merged_in_SE_stall_exit_V0_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg2(REG,114)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg2_q <= merged_in_SE_stall_exit_V0_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg3(REG,113)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg3_q <= merged_in_SE_stall_exit_V0_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg4(REG,112)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg4_q <= merged_in_SE_stall_exit_V0_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg5(REG,111)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg5_q <= merged_in_SE_stall_exit_V0_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg6(REG,110)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg6_q <= merged_in_SE_stall_exit_V0_sync_valid_reg5_q;
        end
    end

    // coalesced_delay_1_fifo_o_data_reg0(REG,188)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_data_reg0_q <= coalesced_delay_1_fifo_o_data;
        end
    end

    // coalesced_delay_1_fifo_o_data_reg1(REG,187)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_data_reg1_q <= coalesced_delay_1_fifo_o_data_reg0_q;
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,57)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,58)
    assign bubble_select_coalesced_delay_1_fifo_b = bubble_join_coalesced_delay_1_fifo_q[2:0];

    // sel_for_coalesced_delay_1(BITSELECT,39)
    assign sel_for_coalesced_delay_1_b = bubble_select_coalesced_delay_1_fifo_b[0:0];
    assign sel_for_coalesced_delay_1_c = bubble_select_coalesced_delay_1_fifo_b[1:1];
    assign sel_for_coalesced_delay_1_d = bubble_select_coalesced_delay_1_fifo_b[2:2];

    // sync_out_98(GPOUT,21)@580
    assign out_almost_empty_out = merged_in_SE_stall_exit_V2;
    assign out_c0_exe4175 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe5 = sel_for_coalesced_delay_1_d;
    assign out_empty_out = merged_in_SE_stall_exit_V1;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_1_b;
    assign out_valid_out = merged_in_SE_stall_exit_V0_sync_valid_reg6_q;

    // dupName_0_ext_sig_sync_out_x(GPOUT,24)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_735_8gr_aunroll_x_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;

    // rst_sync(RESETSYNC,193)
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
