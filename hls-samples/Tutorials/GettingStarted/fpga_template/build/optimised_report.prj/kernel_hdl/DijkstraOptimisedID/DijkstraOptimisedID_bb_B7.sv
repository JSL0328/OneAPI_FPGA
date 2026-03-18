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

// SystemVerilog created from bb_DijkstraOptimisedID_B7
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B7 (
    output wire [0:0] out_feedback_almost_empty_out_13,
    output wire [0:0] out_feedback_almost_empty_out_14,
    output wire [0:0] out_feedback_almost_empty_out_15,
    output wire [0:0] out_feedback_almost_empty_out_16,
    output wire [0:0] out_feedback_almost_empty_out_17,
    output wire [0:0] out_feedback_almost_empty_out_18,
    output wire [0:0] out_feedback_almost_empty_out_19,
    output wire [0:0] out_feedback_almost_empty_out_20,
    output wire [0:0] out_feedback_almost_empty_out_21,
    output wire [0:0] out_feedback_almost_empty_out_22,
    output wire [0:0] out_feedback_almost_empty_out_23,
    output wire [0:0] out_feedback_almost_empty_out_24,
    output wire [0:0] out_feedback_almost_empty_out_25,
    output wire [0:0] out_feedback_almost_empty_out_26,
    output wire [0:0] out_feedback_almost_empty_out_27,
    output wire [0:0] out_feedback_almost_empty_out_28,
    output wire [0:0] out_feedback_almost_empty_out_29,
    output wire [0:0] out_feedback_almost_empty_out_30,
    output wire [0:0] out_feedback_almost_empty_out_31,
    output wire [0:0] out_feedback_almost_empty_out_32,
    output wire [0:0] out_feedback_almost_empty_out_33,
    output wire [0:0] out_feedback_almost_empty_out_34,
    output wire [31:0] out_feedback_data_out_13,
    output wire [31:0] out_feedback_data_out_14,
    output wire [31:0] out_feedback_data_out_15,
    output wire [31:0] out_feedback_data_out_16,
    output wire [31:0] out_feedback_data_out_17,
    output wire [31:0] out_feedback_data_out_18,
    output wire [31:0] out_feedback_data_out_19,
    output wire [31:0] out_feedback_data_out_20,
    output wire [31:0] out_feedback_data_out_21,
    output wire [31:0] out_feedback_data_out_22,
    output wire [31:0] out_feedback_data_out_23,
    output wire [7:0] out_feedback_data_out_24,
    output wire [7:0] out_feedback_data_out_25,
    output wire [7:0] out_feedback_data_out_26,
    output wire [7:0] out_feedback_data_out_27,
    output wire [7:0] out_feedback_data_out_28,
    output wire [7:0] out_feedback_data_out_29,
    output wire [7:0] out_feedback_data_out_30,
    output wire [7:0] out_feedback_data_out_31,
    output wire [7:0] out_feedback_data_out_32,
    output wire [7:0] out_feedback_data_out_33,
    output wire [7:0] out_feedback_data_out_34,
    output wire [0:0] out_feedback_empty_out_13,
    output wire [0:0] out_feedback_empty_out_14,
    output wire [0:0] out_feedback_empty_out_15,
    output wire [0:0] out_feedback_empty_out_16,
    output wire [0:0] out_feedback_empty_out_17,
    output wire [0:0] out_feedback_empty_out_18,
    output wire [0:0] out_feedback_empty_out_19,
    output wire [0:0] out_feedback_empty_out_20,
    output wire [0:0] out_feedback_empty_out_21,
    output wire [0:0] out_feedback_empty_out_22,
    output wire [0:0] out_feedback_empty_out_23,
    output wire [0:0] out_feedback_empty_out_24,
    output wire [0:0] out_feedback_empty_out_25,
    output wire [0:0] out_feedback_empty_out_26,
    output wire [0:0] out_feedback_empty_out_27,
    output wire [0:0] out_feedback_empty_out_28,
    output wire [0:0] out_feedback_empty_out_29,
    output wire [0:0] out_feedback_empty_out_30,
    output wire [0:0] out_feedback_empty_out_31,
    output wire [0:0] out_feedback_empty_out_32,
    output wire [0:0] out_feedback_empty_out_33,
    output wire [0:0] out_feedback_empty_out_34,
    input wire [0:0] in_feedback_stall_in_13,
    input wire [0:0] in_feedback_stall_in_14,
    input wire [0:0] in_feedback_stall_in_15,
    input wire [0:0] in_feedback_stall_in_16,
    input wire [0:0] in_feedback_stall_in_17,
    input wire [0:0] in_feedback_stall_in_18,
    input wire [0:0] in_feedback_stall_in_19,
    input wire [0:0] in_feedback_stall_in_20,
    input wire [0:0] in_feedback_stall_in_21,
    input wire [0:0] in_feedback_stall_in_22,
    input wire [0:0] in_feedback_stall_in_23,
    input wire [0:0] in_feedback_stall_in_24,
    input wire [0:0] in_feedback_stall_in_25,
    input wire [0:0] in_feedback_stall_in_26,
    input wire [0:0] in_feedback_stall_in_27,
    input wire [0:0] in_feedback_stall_in_28,
    input wire [0:0] in_feedback_stall_in_29,
    input wire [0:0] in_feedback_stall_in_30,
    input wire [0:0] in_feedback_stall_in_31,
    input wire [0:0] in_feedback_stall_in_32,
    input wire [0:0] in_feedback_stall_in_33,
    input wire [0:0] in_feedback_stall_in_34,
    input wire [63:0] in_arg_out_dist,
    input wire [31:0] in_c0_exe1030711_0,
    input wire [7:0] in_c0_exe1130812_0,
    input wire [7:0] in_c0_exe1230913_0,
    input wire [31:0] in_c0_exe12982_0,
    input wire [7:0] in_c0_exe1331014_0,
    input wire [7:0] in_c0_exe1431115_0,
    input wire [7:0] in_c0_exe1531216_0,
    input wire [7:0] in_c0_exe1631317_0,
    input wire [7:0] in_c0_exe1731418_0,
    input wire [7:0] in_c0_exe1831519_0,
    input wire [7:0] in_c0_exe1931620_0,
    input wire [7:0] in_c0_exe2031721_0,
    input wire [7:0] in_c0_exe2131822_0,
    input wire [31:0] in_c0_exe2231923_0,
    input wire [31:0] in_c0_exe22993_0,
    input wire [31:0] in_c0_exe2324_0,
    input wire [0:0] in_c0_exe2625_0,
    input wire [0:0] in_c0_exe2726_0,
    input wire [0:0] in_c0_exe2827_0,
    input wire [31:0] in_c0_exe33004_0,
    input wire [31:0] in_c0_exe43015_0,
    input wire [31:0] in_c0_exe53026_0,
    input wire [31:0] in_c0_exe63037_0,
    input wire [31:0] in_c0_exe73048_0,
    input wire [31:0] in_c0_exe83059_0,
    input wire [31:0] in_c0_exe930610_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack,
    input wire [31:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata,
    output wire [31:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount,
    output wire [3:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraOptimisedID_B7_branch_out_stall_out;
    wire [0:0] DijkstraOptimisedID_B7_branch_out_valid_out_0;
    wire [0:0] DijkstraOptimisedID_B7_merge_out_almost_empty_out;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe1030711;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1130812;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1230913;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe12982;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1331014;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1431115;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1531216;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1631317;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1731418;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1831519;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe1931620;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe2031721;
    wire [7:0] DijkstraOptimisedID_B7_merge_out_c0_exe2131822;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe2231923;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe22993;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe2324;
    wire [0:0] DijkstraOptimisedID_B7_merge_out_c0_exe2625;
    wire [0:0] DijkstraOptimisedID_B7_merge_out_c0_exe2726;
    wire [0:0] DijkstraOptimisedID_B7_merge_out_c0_exe2827;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe33004;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe43015;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe53026;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe63037;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe73048;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe83059;
    wire [31:0] DijkstraOptimisedID_B7_merge_out_c0_exe930610;
    wire [0:0] DijkstraOptimisedID_B7_merge_out_empty_out;
    wire [0:0] DijkstraOptimisedID_B7_merge_out_stall_out_0;
    wire [0:0] DijkstraOptimisedID_B7_merge_out_valid_out;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_almost_empty_out;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_c0_exe2827;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_empty_out;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_13;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_14;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_15;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_16;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_17;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_18;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_19;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_20;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_21;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_22;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_23;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_24;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_25;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_26;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_27;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_28;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_29;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_30;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_31;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_32;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_33;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_34;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_13;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_14;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_15;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_16;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_17;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_18;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_19;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_20;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_21;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_22;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_23;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_24;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_25;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_26;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_27;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_28;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_29;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_30;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_31;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_32;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_33;
    wire [7:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_34;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_13;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_14;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_15;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_16;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_17;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_18;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_19;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_20;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_21;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_22;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_23;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_24;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_25;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_26;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_27;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_28;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_29;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_30;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_31;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_32;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_33;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_34;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_24_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_25_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_27_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_28_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_29_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_31_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_33_0;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_stall_out;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;
    wire [31:0] bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;
    wire [0:0] bb_DijkstraOptimisedID_B7_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraOptimisedID_B7_branch(BLACKBOX,2)
    DijkstraOptimisedID_B7_branch theDijkstraOptimisedID_B7_branch (
        .in_almost_empty_in(bb_DijkstraOptimisedID_B7_stall_region_out_almost_empty_out),
        .in_c0_exe2827(bb_DijkstraOptimisedID_B7_stall_region_out_c0_exe2827),
        .in_empty_in(bb_DijkstraOptimisedID_B7_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraOptimisedID_B7_stall_region_out_valid_out),
        .out_stall_out(DijkstraOptimisedID_B7_branch_out_stall_out),
        .out_valid_out_0(DijkstraOptimisedID_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraOptimisedID_B7_merge(BLACKBOX,3)
    DijkstraOptimisedID_B7_merge theDijkstraOptimisedID_B7_merge (
        .in_c0_exe1030711_0(in_c0_exe1030711_0),
        .in_c0_exe1130812_0(in_c0_exe1130812_0),
        .in_c0_exe1230913_0(in_c0_exe1230913_0),
        .in_c0_exe12982_0(in_c0_exe12982_0),
        .in_c0_exe1331014_0(in_c0_exe1331014_0),
        .in_c0_exe1431115_0(in_c0_exe1431115_0),
        .in_c0_exe1531216_0(in_c0_exe1531216_0),
        .in_c0_exe1631317_0(in_c0_exe1631317_0),
        .in_c0_exe1731418_0(in_c0_exe1731418_0),
        .in_c0_exe1831519_0(in_c0_exe1831519_0),
        .in_c0_exe1931620_0(in_c0_exe1931620_0),
        .in_c0_exe2031721_0(in_c0_exe2031721_0),
        .in_c0_exe2131822_0(in_c0_exe2131822_0),
        .in_c0_exe2231923_0(in_c0_exe2231923_0),
        .in_c0_exe22993_0(in_c0_exe22993_0),
        .in_c0_exe2324_0(in_c0_exe2324_0),
        .in_c0_exe2625_0(in_c0_exe2625_0),
        .in_c0_exe2726_0(in_c0_exe2726_0),
        .in_c0_exe2827_0(in_c0_exe2827_0),
        .in_c0_exe33004_0(in_c0_exe33004_0),
        .in_c0_exe43015_0(in_c0_exe43015_0),
        .in_c0_exe53026_0(in_c0_exe53026_0),
        .in_c0_exe63037_0(in_c0_exe63037_0),
        .in_c0_exe73048_0(in_c0_exe73048_0),
        .in_c0_exe83059_0(in_c0_exe83059_0),
        .in_c0_exe930610_0(in_c0_exe930610_0),
        .in_stall_in(bb_DijkstraOptimisedID_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(DijkstraOptimisedID_B7_merge_out_almost_empty_out),
        .out_c0_exe1030711(DijkstraOptimisedID_B7_merge_out_c0_exe1030711),
        .out_c0_exe1130812(DijkstraOptimisedID_B7_merge_out_c0_exe1130812),
        .out_c0_exe1230913(DijkstraOptimisedID_B7_merge_out_c0_exe1230913),
        .out_c0_exe12982(DijkstraOptimisedID_B7_merge_out_c0_exe12982),
        .out_c0_exe1331014(DijkstraOptimisedID_B7_merge_out_c0_exe1331014),
        .out_c0_exe1431115(DijkstraOptimisedID_B7_merge_out_c0_exe1431115),
        .out_c0_exe1531216(DijkstraOptimisedID_B7_merge_out_c0_exe1531216),
        .out_c0_exe1631317(DijkstraOptimisedID_B7_merge_out_c0_exe1631317),
        .out_c0_exe1731418(DijkstraOptimisedID_B7_merge_out_c0_exe1731418),
        .out_c0_exe1831519(DijkstraOptimisedID_B7_merge_out_c0_exe1831519),
        .out_c0_exe1931620(DijkstraOptimisedID_B7_merge_out_c0_exe1931620),
        .out_c0_exe2031721(DijkstraOptimisedID_B7_merge_out_c0_exe2031721),
        .out_c0_exe2131822(DijkstraOptimisedID_B7_merge_out_c0_exe2131822),
        .out_c0_exe2231923(DijkstraOptimisedID_B7_merge_out_c0_exe2231923),
        .out_c0_exe22993(DijkstraOptimisedID_B7_merge_out_c0_exe22993),
        .out_c0_exe2324(DijkstraOptimisedID_B7_merge_out_c0_exe2324),
        .out_c0_exe2625(DijkstraOptimisedID_B7_merge_out_c0_exe2625),
        .out_c0_exe2726(DijkstraOptimisedID_B7_merge_out_c0_exe2726),
        .out_c0_exe2827(DijkstraOptimisedID_B7_merge_out_c0_exe2827),
        .out_c0_exe33004(DijkstraOptimisedID_B7_merge_out_c0_exe33004),
        .out_c0_exe43015(DijkstraOptimisedID_B7_merge_out_c0_exe43015),
        .out_c0_exe53026(DijkstraOptimisedID_B7_merge_out_c0_exe53026),
        .out_c0_exe63037(DijkstraOptimisedID_B7_merge_out_c0_exe63037),
        .out_c0_exe73048(DijkstraOptimisedID_B7_merge_out_c0_exe73048),
        .out_c0_exe83059(DijkstraOptimisedID_B7_merge_out_c0_exe83059),
        .out_c0_exe930610(DijkstraOptimisedID_B7_merge_out_c0_exe930610),
        .out_empty_out(DijkstraOptimisedID_B7_merge_out_empty_out),
        .out_stall_out_0(DijkstraOptimisedID_B7_merge_out_stall_out_0),
        .out_valid_out(DijkstraOptimisedID_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraOptimisedID_B7_stall_region(BLACKBOX,4)
    DijkstraOptimisedID_bb_B7_stall_region thebb_DijkstraOptimisedID_B7_stall_region (
        .in_almost_empty_in(DijkstraOptimisedID_B7_merge_out_almost_empty_out),
        .in_c0_exe1030711(DijkstraOptimisedID_B7_merge_out_c0_exe1030711),
        .in_c0_exe1130812(DijkstraOptimisedID_B7_merge_out_c0_exe1130812),
        .in_c0_exe1230913(DijkstraOptimisedID_B7_merge_out_c0_exe1230913),
        .in_c0_exe12982(DijkstraOptimisedID_B7_merge_out_c0_exe12982),
        .in_c0_exe1331014(DijkstraOptimisedID_B7_merge_out_c0_exe1331014),
        .in_c0_exe1431115(DijkstraOptimisedID_B7_merge_out_c0_exe1431115),
        .in_c0_exe1531216(DijkstraOptimisedID_B7_merge_out_c0_exe1531216),
        .in_c0_exe1631317(DijkstraOptimisedID_B7_merge_out_c0_exe1631317),
        .in_c0_exe1731418(DijkstraOptimisedID_B7_merge_out_c0_exe1731418),
        .in_c0_exe1831519(DijkstraOptimisedID_B7_merge_out_c0_exe1831519),
        .in_c0_exe1931620(DijkstraOptimisedID_B7_merge_out_c0_exe1931620),
        .in_c0_exe2031721(DijkstraOptimisedID_B7_merge_out_c0_exe2031721),
        .in_c0_exe2131822(DijkstraOptimisedID_B7_merge_out_c0_exe2131822),
        .in_c0_exe2231923(DijkstraOptimisedID_B7_merge_out_c0_exe2231923),
        .in_c0_exe22993(DijkstraOptimisedID_B7_merge_out_c0_exe22993),
        .in_c0_exe2324(DijkstraOptimisedID_B7_merge_out_c0_exe2324),
        .in_c0_exe2625(DijkstraOptimisedID_B7_merge_out_c0_exe2625),
        .in_c0_exe2726(DijkstraOptimisedID_B7_merge_out_c0_exe2726),
        .in_c0_exe2827(DijkstraOptimisedID_B7_merge_out_c0_exe2827),
        .in_c0_exe33004(DijkstraOptimisedID_B7_merge_out_c0_exe33004),
        .in_c0_exe43015(DijkstraOptimisedID_B7_merge_out_c0_exe43015),
        .in_c0_exe53026(DijkstraOptimisedID_B7_merge_out_c0_exe53026),
        .in_c0_exe63037(DijkstraOptimisedID_B7_merge_out_c0_exe63037),
        .in_c0_exe73048(DijkstraOptimisedID_B7_merge_out_c0_exe73048),
        .in_c0_exe83059(DijkstraOptimisedID_B7_merge_out_c0_exe83059),
        .in_c0_exe930610(DijkstraOptimisedID_B7_merge_out_c0_exe930610),
        .in_empty_in(DijkstraOptimisedID_B7_merge_out_empty_out),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_feedback_stall_in_14(in_feedback_stall_in_14),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_feedback_stall_in_19(in_feedback_stall_in_19),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_feedback_stall_in_21(in_feedback_stall_in_21),
        .in_feedback_stall_in_22(in_feedback_stall_in_22),
        .in_feedback_stall_in_23(in_feedback_stall_in_23),
        .in_feedback_stall_in_24(in_feedback_stall_in_24),
        .in_feedback_stall_in_25(in_feedback_stall_in_25),
        .in_feedback_stall_in_26(in_feedback_stall_in_26),
        .in_feedback_stall_in_27(in_feedback_stall_in_27),
        .in_feedback_stall_in_28(in_feedback_stall_in_28),
        .in_feedback_stall_in_29(in_feedback_stall_in_29),
        .in_feedback_stall_in_30(in_feedback_stall_in_30),
        .in_feedback_stall_in_31(in_feedback_stall_in_31),
        .in_feedback_stall_in_32(in_feedback_stall_in_32),
        .in_feedback_stall_in_33(in_feedback_stall_in_33),
        .in_feedback_stall_in_34(in_feedback_stall_in_34),
        .in_flush(in_flush),
        .in_stall_in(DijkstraOptimisedID_B7_branch_out_stall_out),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack),
        .in_valid_in(DijkstraOptimisedID_B7_merge_out_valid_out),
        .out_almost_empty_out(bb_DijkstraOptimisedID_B7_stall_region_out_almost_empty_out),
        .out_c0_exe2827(bb_DijkstraOptimisedID_B7_stall_region_out_c0_exe2827),
        .out_empty_out(bb_DijkstraOptimisedID_B7_stall_region_out_empty_out),
        .out_feedback_almost_empty_out_13(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_13),
        .out_feedback_almost_empty_out_14(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_14),
        .out_feedback_almost_empty_out_15(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_15),
        .out_feedback_almost_empty_out_16(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_16),
        .out_feedback_almost_empty_out_17(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_17),
        .out_feedback_almost_empty_out_18(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_18),
        .out_feedback_almost_empty_out_19(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_19),
        .out_feedback_almost_empty_out_20(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_20),
        .out_feedback_almost_empty_out_21(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_21),
        .out_feedback_almost_empty_out_22(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_22),
        .out_feedback_almost_empty_out_23(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_23),
        .out_feedback_almost_empty_out_24(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_24),
        .out_feedback_almost_empty_out_25(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_25),
        .out_feedback_almost_empty_out_26(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_26),
        .out_feedback_almost_empty_out_27(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_27),
        .out_feedback_almost_empty_out_28(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_28),
        .out_feedback_almost_empty_out_29(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_29),
        .out_feedback_almost_empty_out_30(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_30),
        .out_feedback_almost_empty_out_31(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_31),
        .out_feedback_almost_empty_out_32(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_32),
        .out_feedback_almost_empty_out_33(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_33),
        .out_feedback_almost_empty_out_34(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_34),
        .out_feedback_data_out_13(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_13),
        .out_feedback_data_out_14(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_14),
        .out_feedback_data_out_15(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_15),
        .out_feedback_data_out_16(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_16),
        .out_feedback_data_out_17(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_17),
        .out_feedback_data_out_18(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_18),
        .out_feedback_data_out_19(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_19),
        .out_feedback_data_out_20(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_20),
        .out_feedback_data_out_21(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_21),
        .out_feedback_data_out_22(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_22),
        .out_feedback_data_out_23(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_23),
        .out_feedback_data_out_24(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_24),
        .out_feedback_data_out_25(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_25),
        .out_feedback_data_out_26(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_26),
        .out_feedback_data_out_27(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_27),
        .out_feedback_data_out_28(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_28),
        .out_feedback_data_out_29(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_29),
        .out_feedback_data_out_30(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_30),
        .out_feedback_data_out_31(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_31),
        .out_feedback_data_out_32(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_32),
        .out_feedback_data_out_33(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_33),
        .out_feedback_data_out_34(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_34),
        .out_feedback_empty_out_13(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_13),
        .out_feedback_empty_out_14(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_14),
        .out_feedback_empty_out_15(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_15),
        .out_feedback_empty_out_16(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_16),
        .out_feedback_empty_out_17(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_17),
        .out_feedback_empty_out_18(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_18),
        .out_feedback_empty_out_19(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_19),
        .out_feedback_empty_out_20(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_20),
        .out_feedback_empty_out_21(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_21),
        .out_feedback_empty_out_22(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_22),
        .out_feedback_empty_out_23(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_23),
        .out_feedback_empty_out_24(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_24),
        .out_feedback_empty_out_25(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_25),
        .out_feedback_empty_out_26(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_26),
        .out_feedback_empty_out_27(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_27),
        .out_feedback_empty_out_28(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_28),
        .out_feedback_empty_out_29(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_29),
        .out_feedback_empty_out_30(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_30),
        .out_feedback_empty_out_31(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_31),
        .out_feedback_empty_out_32(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_32),
        .out_feedback_empty_out_33(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_33),
        .out_feedback_empty_out_34(bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_34),
        .out_intel_reserved_ffwd_23_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_33_0),
        .out_stall_out(bb_DijkstraOptimisedID_B7_stall_region_out_stall_out),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata(bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata),
        .out_valid_out(bb_DijkstraOptimisedID_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_almost_empty_out_13_sync(GPOUT,5)
    assign out_feedback_almost_empty_out_13 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_13;

    // feedback_almost_empty_out_14_sync(GPOUT,6)
    assign out_feedback_almost_empty_out_14 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_14;

    // feedback_almost_empty_out_15_sync(GPOUT,7)
    assign out_feedback_almost_empty_out_15 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_15;

    // feedback_almost_empty_out_16_sync(GPOUT,8)
    assign out_feedback_almost_empty_out_16 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_16;

    // feedback_almost_empty_out_17_sync(GPOUT,9)
    assign out_feedback_almost_empty_out_17 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_17;

    // feedback_almost_empty_out_18_sync(GPOUT,10)
    assign out_feedback_almost_empty_out_18 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_18;

    // feedback_almost_empty_out_19_sync(GPOUT,11)
    assign out_feedback_almost_empty_out_19 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_19;

    // feedback_almost_empty_out_20_sync(GPOUT,12)
    assign out_feedback_almost_empty_out_20 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_20;

    // feedback_almost_empty_out_21_sync(GPOUT,13)
    assign out_feedback_almost_empty_out_21 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_21;

    // feedback_almost_empty_out_22_sync(GPOUT,14)
    assign out_feedback_almost_empty_out_22 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_22;

    // feedback_almost_empty_out_23_sync(GPOUT,15)
    assign out_feedback_almost_empty_out_23 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_23;

    // feedback_almost_empty_out_24_sync(GPOUT,16)
    assign out_feedback_almost_empty_out_24 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_24;

    // feedback_almost_empty_out_25_sync(GPOUT,17)
    assign out_feedback_almost_empty_out_25 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_25;

    // feedback_almost_empty_out_26_sync(GPOUT,18)
    assign out_feedback_almost_empty_out_26 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_26;

    // feedback_almost_empty_out_27_sync(GPOUT,19)
    assign out_feedback_almost_empty_out_27 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_27;

    // feedback_almost_empty_out_28_sync(GPOUT,20)
    assign out_feedback_almost_empty_out_28 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_28;

    // feedback_almost_empty_out_29_sync(GPOUT,21)
    assign out_feedback_almost_empty_out_29 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_29;

    // feedback_almost_empty_out_30_sync(GPOUT,22)
    assign out_feedback_almost_empty_out_30 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_30;

    // feedback_almost_empty_out_31_sync(GPOUT,23)
    assign out_feedback_almost_empty_out_31 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_31;

    // feedback_almost_empty_out_32_sync(GPOUT,24)
    assign out_feedback_almost_empty_out_32 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_32;

    // feedback_almost_empty_out_33_sync(GPOUT,25)
    assign out_feedback_almost_empty_out_33 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_33;

    // feedback_almost_empty_out_34_sync(GPOUT,26)
    assign out_feedback_almost_empty_out_34 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_almost_empty_out_34;

    // feedback_data_out_13_sync(GPOUT,27)
    assign out_feedback_data_out_13 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_13;

    // feedback_data_out_14_sync(GPOUT,28)
    assign out_feedback_data_out_14 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_14;

    // feedback_data_out_15_sync(GPOUT,29)
    assign out_feedback_data_out_15 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_15;

    // feedback_data_out_16_sync(GPOUT,30)
    assign out_feedback_data_out_16 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_16;

    // feedback_data_out_17_sync(GPOUT,31)
    assign out_feedback_data_out_17 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_17;

    // feedback_data_out_18_sync(GPOUT,32)
    assign out_feedback_data_out_18 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_18;

    // feedback_data_out_19_sync(GPOUT,33)
    assign out_feedback_data_out_19 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_19;

    // feedback_data_out_20_sync(GPOUT,34)
    assign out_feedback_data_out_20 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_20;

    // feedback_data_out_21_sync(GPOUT,35)
    assign out_feedback_data_out_21 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_21;

    // feedback_data_out_22_sync(GPOUT,36)
    assign out_feedback_data_out_22 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_22;

    // feedback_data_out_23_sync(GPOUT,37)
    assign out_feedback_data_out_23 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_23;

    // feedback_data_out_24_sync(GPOUT,38)
    assign out_feedback_data_out_24 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_24;

    // feedback_data_out_25_sync(GPOUT,39)
    assign out_feedback_data_out_25 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_25;

    // feedback_data_out_26_sync(GPOUT,40)
    assign out_feedback_data_out_26 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_26;

    // feedback_data_out_27_sync(GPOUT,41)
    assign out_feedback_data_out_27 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_27;

    // feedback_data_out_28_sync(GPOUT,42)
    assign out_feedback_data_out_28 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_28;

    // feedback_data_out_29_sync(GPOUT,43)
    assign out_feedback_data_out_29 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_29;

    // feedback_data_out_30_sync(GPOUT,44)
    assign out_feedback_data_out_30 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_30;

    // feedback_data_out_31_sync(GPOUT,45)
    assign out_feedback_data_out_31 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_31;

    // feedback_data_out_32_sync(GPOUT,46)
    assign out_feedback_data_out_32 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_32;

    // feedback_data_out_33_sync(GPOUT,47)
    assign out_feedback_data_out_33 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_33;

    // feedback_data_out_34_sync(GPOUT,48)
    assign out_feedback_data_out_34 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_data_out_34;

    // feedback_empty_out_13_sync(GPOUT,49)
    assign out_feedback_empty_out_13 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_13;

    // feedback_empty_out_14_sync(GPOUT,50)
    assign out_feedback_empty_out_14 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_14;

    // feedback_empty_out_15_sync(GPOUT,51)
    assign out_feedback_empty_out_15 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_15;

    // feedback_empty_out_16_sync(GPOUT,52)
    assign out_feedback_empty_out_16 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_16;

    // feedback_empty_out_17_sync(GPOUT,53)
    assign out_feedback_empty_out_17 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_17;

    // feedback_empty_out_18_sync(GPOUT,54)
    assign out_feedback_empty_out_18 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_18;

    // feedback_empty_out_19_sync(GPOUT,55)
    assign out_feedback_empty_out_19 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_19;

    // feedback_empty_out_20_sync(GPOUT,56)
    assign out_feedback_empty_out_20 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_20;

    // feedback_empty_out_21_sync(GPOUT,57)
    assign out_feedback_empty_out_21 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_21;

    // feedback_empty_out_22_sync(GPOUT,58)
    assign out_feedback_empty_out_22 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_22;

    // feedback_empty_out_23_sync(GPOUT,59)
    assign out_feedback_empty_out_23 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_23;

    // feedback_empty_out_24_sync(GPOUT,60)
    assign out_feedback_empty_out_24 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_24;

    // feedback_empty_out_25_sync(GPOUT,61)
    assign out_feedback_empty_out_25 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_25;

    // feedback_empty_out_26_sync(GPOUT,62)
    assign out_feedback_empty_out_26 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_26;

    // feedback_empty_out_27_sync(GPOUT,63)
    assign out_feedback_empty_out_27 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_27;

    // feedback_empty_out_28_sync(GPOUT,64)
    assign out_feedback_empty_out_28 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_28;

    // feedback_empty_out_29_sync(GPOUT,65)
    assign out_feedback_empty_out_29 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_29;

    // feedback_empty_out_30_sync(GPOUT,66)
    assign out_feedback_empty_out_30 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_30;

    // feedback_empty_out_31_sync(GPOUT,67)
    assign out_feedback_empty_out_31 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_31;

    // feedback_empty_out_32_sync(GPOUT,68)
    assign out_feedback_empty_out_32 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_32;

    // feedback_empty_out_33_sync(GPOUT,69)
    assign out_feedback_empty_out_33 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_33;

    // feedback_empty_out_34_sync(GPOUT,70)
    assign out_feedback_empty_out_34 = bb_DijkstraOptimisedID_B7_stall_region_out_feedback_empty_out_34;

    // out_intel_reserved_ffwd_23_0(GPOUT,167)
    assign out_intel_reserved_ffwd_23_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,168)
    assign out_intel_reserved_ffwd_24_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,169)
    assign out_intel_reserved_ffwd_25_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,170)
    assign out_intel_reserved_ffwd_26_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,171)
    assign out_intel_reserved_ffwd_27_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,172)
    assign out_intel_reserved_ffwd_28_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,173)
    assign out_intel_reserved_ffwd_29_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,174)
    assign out_intel_reserved_ffwd_30_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,175)
    assign out_intel_reserved_ffwd_31_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,176)
    assign out_intel_reserved_ffwd_32_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,177)
    assign out_intel_reserved_ffwd_33_0 = bb_DijkstraOptimisedID_B7_stall_region_out_intel_reserved_ffwd_33_0;

    // out_stall_in_0(GPOUT,178)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,179)
    assign out_stall_out_0 = DijkstraOptimisedID_B7_merge_out_stall_out_0;

    // out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address(GPOUT,180)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount(GPOUT,181)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable(GPOUT,182)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable(GPOUT,183)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read(GPOUT,184)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write(GPOUT,185)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata(GPOUT,186)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address(GPOUT,187)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount(GPOUT,188)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable(GPOUT,189)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable(GPOUT,190)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read(GPOUT,191)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write(GPOUT,192)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata(GPOUT,193)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address(GPOUT,194)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount(GPOUT,195)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable(GPOUT,196)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable(GPOUT,197)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read(GPOUT,198)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write(GPOUT,199)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata(GPOUT,200)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address(GPOUT,201)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount(GPOUT,202)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable(GPOUT,203)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable(GPOUT,204)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read(GPOUT,205)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write(GPOUT,206)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata(GPOUT,207)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address(GPOUT,208)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount(GPOUT,209)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable(GPOUT,210)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable(GPOUT,211)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read(GPOUT,212)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write(GPOUT,213)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata(GPOUT,214)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address(GPOUT,215)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount(GPOUT,216)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable(GPOUT,217)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable(GPOUT,218)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read(GPOUT,219)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write(GPOUT,220)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata(GPOUT,221)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address(GPOUT,222)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount(GPOUT,223)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable(GPOUT,224)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable(GPOUT,225)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read(GPOUT,226)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write(GPOUT,227)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata(GPOUT,228)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address(GPOUT,229)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount(GPOUT,230)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable(GPOUT,231)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable(GPOUT,232)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read(GPOUT,233)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write(GPOUT,234)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata(GPOUT,235)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address(GPOUT,236)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount(GPOUT,237)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable(GPOUT,238)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable(GPOUT,239)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read(GPOUT,240)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write(GPOUT,241)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata(GPOUT,242)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address(GPOUT,243)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount(GPOUT,244)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable(GPOUT,245)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable(GPOUT,246)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read(GPOUT,247)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write(GPOUT,248)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata(GPOUT,249)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;

    // out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address(GPOUT,250)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;

    // out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount(GPOUT,251)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;

    // out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable(GPOUT,252)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;

    // out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable(GPOUT,253)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;

    // out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read(GPOUT,254)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;

    // out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write(GPOUT,255)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;

    // out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata(GPOUT,256)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata = bb_DijkstraOptimisedID_B7_stall_region_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;

    // out_valid_in_0(GPOUT,257)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,258)
    assign out_valid_out_0 = DijkstraOptimisedID_B7_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,259)
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
