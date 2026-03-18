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

// SystemVerilog created from bb_DijkstraOptimisedID_B7_stall_region
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B7_stall_region (
    input wire [31:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount,
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
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe2827,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_c0_exe1030711,
    input wire [7:0] in_c0_exe1130812,
    input wire [7:0] in_c0_exe1230913,
    input wire [31:0] in_c0_exe12982,
    input wire [7:0] in_c0_exe1331014,
    input wire [7:0] in_c0_exe1431115,
    input wire [7:0] in_c0_exe1531216,
    input wire [7:0] in_c0_exe1631317,
    input wire [7:0] in_c0_exe1731418,
    input wire [7:0] in_c0_exe1831519,
    input wire [7:0] in_c0_exe1931620,
    input wire [7:0] in_c0_exe2031721,
    input wire [7:0] in_c0_exe2131822,
    input wire [31:0] in_c0_exe2231923,
    input wire [31:0] in_c0_exe22993,
    input wire [31:0] in_c0_exe2324,
    input wire [0:0] in_c0_exe2625,
    input wire [0:0] in_c0_exe2726,
    input wire [0:0] in_c0_exe2827,
    input wire [31:0] in_c0_exe33004,
    input wire [31:0] in_c0_exe43015,
    input wire [31:0] in_c0_exe53026,
    input wire [31:0] in_c0_exe63037,
    input wire [31:0] in_c0_exe73048,
    input wire [31:0] in_c0_exe83059,
    input wire [31:0] in_c0_exe930610,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    input wire [31:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_almost_empty_out_23;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_data_out_23;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_empty_out_23;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_almost_empty_out_17;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_data_out_17;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_empty_out_17;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_almost_empty_out_16;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_data_out_16;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_empty_out_16;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_almost_empty_out_15;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_data_out_15;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_empty_out_15;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_almost_empty_out_14;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_data_out_14;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_empty_out_14;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_almost_empty_out_13;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_data_out_13;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_empty_out_13;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_almost_empty_out_22;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_data_out_22;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_empty_out_22;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_almost_empty_out_21;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_data_out_21;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_empty_out_21;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_almost_empty_out_20;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_data_out_20;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_empty_out_20;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_almost_empty_out_19;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_data_out_19;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_empty_out_19;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_almost_empty_out_18;
    wire [31:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_data_out_18;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_empty_out_18;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_almost_empty_out_34;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_data_out_34;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_empty_out_34;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_almost_empty_out_32;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_data_out_32;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_empty_out_32;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_almost_empty_out_31;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_data_out_31;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_empty_out_31;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_almost_empty_out_30;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_data_out_30;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_empty_out_30;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_almost_empty_out_29;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_data_out_29;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_empty_out_29;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_almost_empty_out_28;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_data_out_28;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_empty_out_28;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_almost_empty_out_27;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_data_out_27;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_empty_out_27;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_almost_empty_out_26;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_data_out_26;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_empty_out_26;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_almost_empty_out_25;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_data_out_25;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_empty_out_25;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_almost_empty_out_24;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_data_out_24;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_empty_out_24;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_almost_empty_out_33;
    wire [7:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_data_out_33;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_empty_out_33;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl;
    wire [0:0] redist0_stall_entry_o22_58_fifo_i_valid;
    wire redist0_stall_entry_o22_58_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o22_58_fifo_i_stall;
    wire redist0_stall_entry_o22_58_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o22_58_fifo_i_data;
    wire [0:0] redist0_stall_entry_o22_58_fifo_i_empty;
    wire redist0_stall_entry_o22_58_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o22_58_fifo_i_almost_empty;
    wire redist0_stall_entry_o22_58_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o22_58_fifo_o_valid;
    wire redist0_stall_entry_o22_58_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o22_58_fifo_o_stall;
    wire redist0_stall_entry_o22_58_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o22_58_fifo_o_data;
    wire [0:0] redist0_stall_entry_o22_58_fifo_o_empty;
    wire redist0_stall_entry_o22_58_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o22_58_fifo_o_almost_empty;
    wire redist0_stall_entry_o22_58_fifo_o_almost_empty_bitsignaltemp;
    wire [474:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [7:0] bubble_select_stall_entry_c;
    wire [7:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [7:0] bubble_select_stall_entry_f;
    wire [7:0] bubble_select_stall_entry_g;
    wire [7:0] bubble_select_stall_entry_h;
    wire [7:0] bubble_select_stall_entry_i;
    wire [7:0] bubble_select_stall_entry_j;
    wire [7:0] bubble_select_stall_entry_k;
    wire [7:0] bubble_select_stall_entry_l;
    wire [7:0] bubble_select_stall_entry_m;
    wire [7:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [439:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_b;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_c;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_d;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_e;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_f;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_g;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_h;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_i;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_j;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_k;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_w;
    wire [0:0] bubble_join_redist0_stall_entry_o22_58_fifo_q;
    wire [0:0] bubble_select_redist0_stall_entry_o22_58_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_temp_back_stall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V4;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V3;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V5;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_backStall;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V24;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V47;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V25;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V48;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V26;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V49;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V27;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V50;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V28;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V51;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V29;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V52;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V30;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V53;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V31;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V54;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V32;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V55;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V33;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V56;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V34;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V57;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V35;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V58;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V36;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V59;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V37;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V60;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V38;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V61;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V39;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V62;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V40;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V63;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V41;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V64;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V42;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V65;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V43;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V66;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V44;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V67;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V45;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V68;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_temp_back_stall;
    reg [0:0] stall_exit_backStall_desync_balance_reg1_q;
    reg [0:0] stall_exit_backStall_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out_reg0_q;
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
    reg [7:0] stall_entry_o5_reg1_q;
    reg [7:0] stall_entry_o5_reg0_q;
    reg [7:0] stall_entry_o6_reg1_q;
    reg [7:0] stall_entry_o6_reg0_q;
    reg [31:0] stall_entry_o7_reg1_q;
    reg [31:0] stall_entry_o7_reg0_q;
    reg [7:0] stall_entry_o8_reg1_q;
    reg [7:0] stall_entry_o8_reg0_q;
    reg [7:0] stall_entry_o9_reg1_q;
    reg [7:0] stall_entry_o9_reg0_q;
    reg [7:0] stall_entry_o10_reg1_q;
    reg [7:0] stall_entry_o10_reg0_q;
    reg [7:0] stall_entry_o11_reg1_q;
    reg [7:0] stall_entry_o11_reg0_q;
    reg [7:0] stall_entry_o12_reg1_q;
    reg [7:0] stall_entry_o12_reg0_q;
    reg [7:0] stall_entry_o13_reg1_q;
    reg [7:0] stall_entry_o13_reg0_q;
    reg [7:0] stall_entry_o14_reg1_q;
    reg [7:0] stall_entry_o14_reg0_q;
    reg [7:0] stall_entry_o15_reg1_q;
    reg [7:0] stall_entry_o15_reg0_q;
    reg [7:0] stall_entry_o16_reg1_q;
    reg [7:0] stall_entry_o16_reg0_q;
    reg [31:0] stall_entry_o17_reg1_q;
    reg [31:0] stall_entry_o17_reg0_q;
    reg [31:0] stall_entry_o18_reg1_q;
    reg [31:0] stall_entry_o18_reg0_q;
    reg [31:0] stall_entry_o19_reg1_q;
    reg [31:0] stall_entry_o19_reg0_q;
    reg [0:0] stall_entry_o20_reg1_q;
    reg [0:0] stall_entry_o20_reg0_q;
    reg [0:0] stall_entry_o21_reg1_q;
    reg [0:0] stall_entry_o21_reg0_q;
    reg [0:0] stall_entry_o22_reg1_q;
    reg [0:0] stall_entry_o22_reg0_q;
    reg [31:0] stall_entry_o23_reg1_q;
    reg [31:0] stall_entry_o23_reg0_q;
    reg [31:0] stall_entry_o24_reg1_q;
    reg [31:0] stall_entry_o24_reg0_q;
    reg [31:0] stall_entry_o25_reg1_q;
    reg [31:0] stall_entry_o25_reg0_q;
    reg [31:0] stall_entry_o26_reg1_q;
    reg [31:0] stall_entry_o26_reg0_q;
    reg [31:0] stall_entry_o27_reg1_q;
    reg [31:0] stall_entry_o27_reg0_q;
    reg [31:0] stall_entry_o28_reg1_q;
    reg [31:0] stall_entry_o28_reg0_q;
    reg [31:0] stall_entry_o29_reg1_q;
    reg [31:0] stall_entry_o29_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg0_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_i_stall_reg0_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_i_stall_reg1_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_valid_reg1_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_valid_reg0_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_data_reg1_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_data_reg0_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_empty_reg1_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_empty_reg0_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist0_stall_entry_o22_58_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o29_reg0(REG,725)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o29_reg0_q <= in_c0_exe930610;
        end
    end

    // stall_entry_o29_reg1(REG,724)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o29_reg1_q <= stall_entry_o29_reg0_q;
        end
    end

    // stall_entry_o28_reg0(REG,723)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o28_reg0_q <= in_c0_exe83059;
        end
    end

    // stall_entry_o28_reg1(REG,722)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o28_reg1_q <= stall_entry_o28_reg0_q;
        end
    end

    // stall_entry_o27_reg0(REG,721)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o27_reg0_q <= in_c0_exe73048;
        end
    end

    // stall_entry_o27_reg1(REG,720)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o27_reg1_q <= stall_entry_o27_reg0_q;
        end
    end

    // stall_entry_o26_reg0(REG,719)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o26_reg0_q <= in_c0_exe63037;
        end
    end

    // stall_entry_o26_reg1(REG,718)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o26_reg1_q <= stall_entry_o26_reg0_q;
        end
    end

    // stall_entry_o25_reg0(REG,717)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o25_reg0_q <= in_c0_exe53026;
        end
    end

    // stall_entry_o25_reg1(REG,716)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o25_reg1_q <= stall_entry_o25_reg0_q;
        end
    end

    // stall_entry_o24_reg0(REG,715)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o24_reg0_q <= in_c0_exe43015;
        end
    end

    // stall_entry_o24_reg1(REG,714)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o24_reg1_q <= stall_entry_o24_reg0_q;
        end
    end

    // stall_entry_o23_reg0(REG,713)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o23_reg0_q <= in_c0_exe33004;
        end
    end

    // stall_entry_o23_reg1(REG,712)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o23_reg1_q <= stall_entry_o23_reg0_q;
        end
    end

    // stall_entry_o22_reg0(REG,711)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o22_reg0_q <= in_c0_exe2827;
        end
    end

    // stall_entry_o22_reg1(REG,710)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o22_reg1_q <= stall_entry_o22_reg0_q;
        end
    end

    // stall_entry_o21_reg0(REG,709)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o21_reg0_q <= in_c0_exe2726;
        end
    end

    // stall_entry_o21_reg1(REG,708)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o21_reg1_q <= stall_entry_o21_reg0_q;
        end
    end

    // stall_entry_o20_reg0(REG,707)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o20_reg0_q <= in_c0_exe2625;
        end
    end

    // stall_entry_o20_reg1(REG,706)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o20_reg1_q <= stall_entry_o20_reg0_q;
        end
    end

    // stall_entry_o19_reg0(REG,705)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o19_reg0_q <= in_c0_exe2324;
        end
    end

    // stall_entry_o19_reg1(REG,704)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o19_reg1_q <= stall_entry_o19_reg0_q;
        end
    end

    // stall_entry_o18_reg0(REG,703)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o18_reg0_q <= in_c0_exe22993;
        end
    end

    // stall_entry_o18_reg1(REG,702)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o18_reg1_q <= stall_entry_o18_reg0_q;
        end
    end

    // stall_entry_o17_reg0(REG,701)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o17_reg0_q <= in_c0_exe2231923;
        end
    end

    // stall_entry_o17_reg1(REG,700)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o17_reg1_q <= stall_entry_o17_reg0_q;
        end
    end

    // stall_entry_o16_reg0(REG,699)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o16_reg0_q <= in_c0_exe2131822;
        end
    end

    // stall_entry_o16_reg1(REG,698)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o16_reg1_q <= stall_entry_o16_reg0_q;
        end
    end

    // stall_entry_o15_reg0(REG,697)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg0_q <= in_c0_exe2031721;
        end
    end

    // stall_entry_o15_reg1(REG,696)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg1_q <= stall_entry_o15_reg0_q;
        end
    end

    // stall_entry_o14_reg0(REG,695)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg0_q <= in_c0_exe1931620;
        end
    end

    // stall_entry_o14_reg1(REG,694)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg1_q <= stall_entry_o14_reg0_q;
        end
    end

    // stall_entry_o13_reg0(REG,693)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg0_q <= in_c0_exe1831519;
        end
    end

    // stall_entry_o13_reg1(REG,692)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg1_q <= stall_entry_o13_reg0_q;
        end
    end

    // stall_entry_o12_reg0(REG,691)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg0_q <= in_c0_exe1731418;
        end
    end

    // stall_entry_o12_reg1(REG,690)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg1_q <= stall_entry_o12_reg0_q;
        end
    end

    // stall_entry_o11_reg0(REG,689)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg0_q <= in_c0_exe1631317;
        end
    end

    // stall_entry_o11_reg1(REG,688)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg1_q <= stall_entry_o11_reg0_q;
        end
    end

    // stall_entry_o10_reg0(REG,687)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg0_q <= in_c0_exe1531216;
        end
    end

    // stall_entry_o10_reg1(REG,686)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg1_q <= stall_entry_o10_reg0_q;
        end
    end

    // stall_entry_o9_reg0(REG,685)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= in_c0_exe1431115;
        end
    end

    // stall_entry_o9_reg1(REG,684)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg1_q <= stall_entry_o9_reg0_q;
        end
    end

    // stall_entry_o8_reg0(REG,683)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= in_c0_exe1331014;
        end
    end

    // stall_entry_o8_reg1(REG,682)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg1_q <= stall_entry_o8_reg0_q;
        end
    end

    // stall_entry_o7_reg0(REG,681)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= in_c0_exe12982;
        end
    end

    // stall_entry_o7_reg1(REG,680)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg1_q <= stall_entry_o7_reg0_q;
        end
    end

    // stall_entry_o6_reg0(REG,679)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= in_c0_exe1230913;
        end
    end

    // stall_entry_o6_reg1(REG,678)
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

    // stall_entry_o5_reg0(REG,677)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= in_c0_exe1130812;
        end
    end

    // stall_entry_o5_reg1(REG,676)
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

    // stall_entry_o4_reg0(REG,675)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= in_c0_exe1030711;
        end
    end

    // stall_entry_o4_reg1(REG,674)
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

    // bubble_join_stall_entry(BITJOIN,205)
    assign bubble_join_stall_entry_q = {stall_entry_o29_reg1_q, stall_entry_o28_reg1_q, stall_entry_o27_reg1_q, stall_entry_o26_reg1_q, stall_entry_o25_reg1_q, stall_entry_o24_reg1_q, stall_entry_o23_reg1_q, stall_entry_o22_reg1_q, stall_entry_o21_reg1_q, stall_entry_o20_reg1_q, stall_entry_o19_reg1_q, stall_entry_o18_reg1_q, stall_entry_o17_reg1_q, stall_entry_o16_reg1_q, stall_entry_o15_reg1_q, stall_entry_o14_reg1_q, stall_entry_o13_reg1_q, stall_entry_o12_reg1_q, stall_entry_o11_reg1_q, stall_entry_o10_reg1_q, stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,206)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[31:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[39:32];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[47:40];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[79:48];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[87:80];
    assign bubble_select_stall_entry_g = bubble_join_stall_entry_q[95:88];
    assign bubble_select_stall_entry_h = bubble_join_stall_entry_q[103:96];
    assign bubble_select_stall_entry_i = bubble_join_stall_entry_q[111:104];
    assign bubble_select_stall_entry_j = bubble_join_stall_entry_q[119:112];
    assign bubble_select_stall_entry_k = bubble_join_stall_entry_q[127:120];
    assign bubble_select_stall_entry_l = bubble_join_stall_entry_q[135:128];
    assign bubble_select_stall_entry_m = bubble_join_stall_entry_q[143:136];
    assign bubble_select_stall_entry_n = bubble_join_stall_entry_q[151:144];
    assign bubble_select_stall_entry_o = bubble_join_stall_entry_q[183:152];
    assign bubble_select_stall_entry_p = bubble_join_stall_entry_q[215:184];
    assign bubble_select_stall_entry_q = bubble_join_stall_entry_q[247:216];
    assign bubble_select_stall_entry_r = bubble_join_stall_entry_q[248:248];
    assign bubble_select_stall_entry_s = bubble_join_stall_entry_q[249:249];
    assign bubble_select_stall_entry_t = bubble_join_stall_entry_q[250:250];
    assign bubble_select_stall_entry_u = bubble_join_stall_entry_q[282:251];
    assign bubble_select_stall_entry_v = bubble_join_stall_entry_q[314:283];
    assign bubble_select_stall_entry_w = bubble_join_stall_entry_q[346:315];
    assign bubble_select_stall_entry_x = bubble_join_stall_entry_q[378:347];
    assign bubble_select_stall_entry_y = bubble_join_stall_entry_q[410:379];
    assign bubble_select_stall_entry_z = bubble_join_stall_entry_q[442:411];
    assign bubble_select_stall_entry_aa = bubble_join_stall_entry_q[474:443];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg0(REG,729)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg1(REG,728)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg0_q;
        end
    end

    // redist0_stall_entry_o22_58_fifo_i_stall_reg0(REG,778)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_i_stall_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_backStall;
        end
    end

    // redist0_stall_entry_o22_58_fifo_i_stall_reg1(REG,779)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_i_stall_reg1_q <= redist0_stall_entry_o22_58_fifo_i_stall_reg0_q;
        end
    end

    // redist0_stall_entry_o22_58_fifo(STALLFIFO,203)
    assign redist0_stall_entry_o22_58_fifo_i_valid = merged_in_SE_bubble_join_stall_entry_V1;
    assign redist0_stall_entry_o22_58_fifo_i_stall = redist0_stall_entry_o22_58_fifo_i_stall_reg1_q;
    assign redist0_stall_entry_o22_58_fifo_i_data = bubble_select_stall_entry_t;
    assign redist0_stall_entry_o22_58_fifo_i_empty = merged_in_SE_bubble_join_stall_entry_V3;
    assign redist0_stall_entry_o22_58_fifo_i_almost_empty = merged_in_SE_bubble_join_stall_entry_V5;
    assign redist0_stall_entry_o22_58_fifo_i_valid_bitsignaltemp = redist0_stall_entry_o22_58_fifo_i_valid[0];
    assign redist0_stall_entry_o22_58_fifo_i_stall_bitsignaltemp = redist0_stall_entry_o22_58_fifo_i_stall[0];
    assign redist0_stall_entry_o22_58_fifo_o_valid[0] = redist0_stall_entry_o22_58_fifo_o_valid_bitsignaltemp;
    assign redist0_stall_entry_o22_58_fifo_o_stall[0] = redist0_stall_entry_o22_58_fifo_o_stall_bitsignaltemp;
    assign redist0_stall_entry_o22_58_fifo_o_empty[0] = redist0_stall_entry_o22_58_fifo_o_empty_bitsignaltemp;
    assign redist0_stall_entry_o22_58_fifo_o_almost_empty[0] = redist0_stall_entry_o22_58_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(76),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist0_stall_entry_o22_58_fifo (
        .i_valid(redist0_stall_entry_o22_58_fifo_i_valid_bitsignaltemp),
        .i_stall(redist0_stall_entry_o22_58_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_stall_entry_t),
        .o_valid(redist0_stall_entry_o22_58_fifo_o_valid_bitsignaltemp),
        .o_stall(redist0_stall_entry_o22_58_fifo_o_stall_bitsignaltemp),
        .o_data(redist0_stall_entry_o22_58_fifo_o_data),
        .o_empty(redist0_stall_entry_o22_58_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist0_stall_entry_o22_58_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_stall_entry_o22_58_fifo_o_almost_empty_reg0(REG,787)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_almost_empty_reg0_q <= redist0_stall_entry_o22_58_fifo_o_almost_empty;
        end
    end

    // redist0_stall_entry_o22_58_fifo_o_almost_empty_reg1(REG,786)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_almost_empty_reg1_q <= redist0_stall_entry_o22_58_fifo_o_almost_empty_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg0(REG,731)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg1(REG,730)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg0_q;
        end
    end

    // redist0_stall_entry_o22_58_fifo_o_empty_reg0(REG,785)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_empty_reg0_q <= redist0_stall_entry_o22_58_fifo_o_empty;
        end
    end

    // redist0_stall_entry_o22_58_fifo_o_empty_reg1(REG,784)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_empty_reg1_q <= redist0_stall_entry_o22_58_fifo_o_empty_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg0(REG,489)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg1(REG,488)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg2(REG,487)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg3(REG,486)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg4(REG,485)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg5(REG,484)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg6(REG,483)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out_reg0(REG,493)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out_reg1(REG,492)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out_reg0(REG,495)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out_reg1(REG,494)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out_reg0(REG,497)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out_reg1(REG,496)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40(STALLENABLE,216)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg0(REG,490)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg1(REG,491)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg0(REG,777)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg1(REG,776)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg0(REG,775)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg1(REG,774)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg0(REG,773)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg1(REG,772)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg0(REG,771)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg1(REG,770)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg0(REG,769)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg1(REG,768)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg0(REG,767)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg1(REG,766)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg0(REG,765)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg1(REG,764)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg0(REG,763)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg1(REG,762)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg0(REG,761)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg1(REG,760)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg0(REG,759)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg1(REG,758)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg0(REG,757)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg1(REG,756)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg0(REG,755)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg1(REG,754)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg0(REG,753)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg1(REG,752)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg0(REG,751)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg1(REG,750)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg0(REG,749)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg1(REG,748)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg0(REG,747)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg1(REG,746)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg0(REG,745)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg1(REG,744)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg0(REG,743)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg1(REG,742)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg0(REG,741)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg1(REG,740)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg0(REG,739)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg1(REG,738)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg0(REG,737)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg1(REG,736)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg0(REG,735)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg1(REG,734)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg0_q;
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x(BITJOIN,209)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q = {i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl_reg1_q, i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x(BITSELECT,210)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[7:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[15:8];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[23:16];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[31:24];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[39:32];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[47:40];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[55:48];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[63:56];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_j = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[71:64];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_k = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[79:72];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_l = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[87:80];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_m = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[119:88];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_n = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[151:120];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_o = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[183:152];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_p = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[215:184];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[247:216];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_r = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[279:248];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_s = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[311:280];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_t = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[343:312];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_u = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[375:344];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_v = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[407:376];
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_w = bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q[439:408];

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40(BLACKBOX,95)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_23@20000000
    // out out_feedback_data_out_23@20000000
    // out out_feedback_empty_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2880_0gr thei_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V68),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_m),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V45),
        .in_feedback_stall_in_23(in_feedback_stall_in_23),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_empty_out),
        .out_feedback_almost_empty_out_23(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_almost_empty_out_23),
        .out_feedback_data_out_23(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_data_out_23),
        .out_feedback_empty_out_23(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_empty_out_23),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg0(REG,328)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg1(REG,327)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg0(REG,482)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg1(REG,481)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg2(REG,480)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg3(REG,479)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg4(REG,478)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg5(REG,477)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg6(REG,476)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out_reg0(REG,501)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out_reg1(REG,500)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out_reg0(REG,503)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out_reg1(REG,502)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out_reg0(REG,505)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out_reg1(REG,504)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46(STALLENABLE,218)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg0(REG,498)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg1(REG,499)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46(BLACKBOX,96)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_17@20000000
    // out out_feedback_data_out_17@20000000
    // out out_feedback_empty_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2922_0gr thei_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V67),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_s),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V44),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_empty_out),
        .out_feedback_almost_empty_out_17(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_almost_empty_out_17),
        .out_feedback_data_out_17(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_data_out_17),
        .out_feedback_empty_out_17(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_empty_out_17),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg0(REG,326)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg1(REG,325)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg0(REG,475)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg1(REG,474)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg2(REG,473)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg3(REG,472)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg4(REG,471)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg5(REG,470)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg6(REG,469)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out_reg0(REG,509)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out_reg1(REG,508)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out_reg0(REG,511)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out_reg1(REG,510)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out_reg0(REG,513)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out_reg1(REG,512)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47(STALLENABLE,220)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg0(REG,506)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg1(REG,507)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47(BLACKBOX,97)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_16@20000000
    // out out_feedback_data_out_16@20000000
    // out out_feedback_empty_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2929_0gr thei_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V66),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_t),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V43),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_empty_out),
        .out_feedback_almost_empty_out_16(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_almost_empty_out_16),
        .out_feedback_data_out_16(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_data_out_16),
        .out_feedback_empty_out_16(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_empty_out_16),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg0(REG,324)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg1(REG,323)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg0(REG,468)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg1(REG,467)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg2(REG,466)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg3(REG,465)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg4(REG,464)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg5(REG,463)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg6(REG,462)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out_reg0(REG,517)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out_reg1(REG,516)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out_reg0(REG,519)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out_reg1(REG,518)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out_reg0(REG,521)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out_reg1(REG,520)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48(STALLENABLE,222)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg0(REG,514)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg1(REG,515)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48(BLACKBOX,98)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_15@20000000
    // out out_feedback_data_out_15@20000000
    // out out_feedback_empty_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2936_0gr thei_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V65),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_u),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V42),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_empty_out),
        .out_feedback_almost_empty_out_15(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_almost_empty_out_15),
        .out_feedback_data_out_15(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_data_out_15),
        .out_feedback_empty_out_15(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_empty_out_15),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg0(REG,322)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg1(REG,321)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg0(REG,461)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg1(REG,460)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg2(REG,459)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg3(REG,458)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg4(REG,457)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg5(REG,456)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg6(REG,455)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out_reg0(REG,525)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out_reg1(REG,524)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out_reg0(REG,527)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out_reg1(REG,526)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out_reg0(REG,529)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out_reg1(REG,528)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49(STALLENABLE,224)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg0(REG,522)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg1(REG,523)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49(BLACKBOX,99)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_14@20000000
    // out out_feedback_data_out_14@20000000
    // out out_feedback_empty_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2943_0gr thei_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V64),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_v),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V41),
        .in_feedback_stall_in_14(in_feedback_stall_in_14),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_empty_out),
        .out_feedback_almost_empty_out_14(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_almost_empty_out_14),
        .out_feedback_data_out_14(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_data_out_14),
        .out_feedback_empty_out_14(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_empty_out_14),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg0(REG,320)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg1(REG,319)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg0(REG,454)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg1(REG,453)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg2(REG,452)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg3(REG,451)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg4(REG,450)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg5(REG,449)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg6(REG,448)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out_reg0(REG,533)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out_reg1(REG,532)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out_reg0(REG,535)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out_reg1(REG,534)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out_reg0(REG,537)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out_reg1(REG,536)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50(STALLENABLE,226)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg0(REG,530)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg1(REG,531)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50(BLACKBOX,100)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_13@20000000
    // out out_feedback_data_out_13@20000000
    // out out_feedback_empty_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2950_0gr thei_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V63),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_w),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V40),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_empty_out),
        .out_feedback_almost_empty_out_13(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_almost_empty_out_13),
        .out_feedback_data_out_13(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_data_out_13),
        .out_feedback_empty_out_13(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_empty_out_13),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg0(REG,318)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg1(REG,317)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg0(REG,447)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg1(REG,446)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg2(REG,445)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg3(REG,444)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg4(REG,443)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg5(REG,442)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg6(REG,441)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out_reg0(REG,541)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out_reg1(REG,540)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out_reg0(REG,543)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out_reg1(REG,542)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out_reg0(REG,545)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out_reg1(REG,544)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41(STALLENABLE,228)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg0(REG,538)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg1(REG,539)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41(BLACKBOX,101)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_22@20000000
    // out out_feedback_data_out_22@20000000
    // out out_feedback_empty_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2887_0gr thei_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V62),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_n),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V39),
        .in_feedback_stall_in_22(in_feedback_stall_in_22),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_empty_out),
        .out_feedback_almost_empty_out_22(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_almost_empty_out_22),
        .out_feedback_data_out_22(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_data_out_22),
        .out_feedback_empty_out_22(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_empty_out_22),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg0(REG,316)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg1(REG,315)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg0(REG,440)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg1(REG,439)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg2(REG,438)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg3(REG,437)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg4(REG,436)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg5(REG,435)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg6(REG,434)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out_reg0(REG,549)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out_reg1(REG,548)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out_reg0(REG,551)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out_reg1(REG,550)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out_reg0(REG,553)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out_reg1(REG,552)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42(STALLENABLE,230)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg0(REG,546)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg1(REG,547)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42(BLACKBOX,102)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_21@20000000
    // out out_feedback_data_out_21@20000000
    // out out_feedback_empty_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2894_0gr thei_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V61),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_o),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V38),
        .in_feedback_stall_in_21(in_feedback_stall_in_21),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_empty_out),
        .out_feedback_almost_empty_out_21(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_almost_empty_out_21),
        .out_feedback_data_out_21(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_data_out_21),
        .out_feedback_empty_out_21(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_empty_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg0(REG,314)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg1(REG,313)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg0(REG,433)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg1(REG,432)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg2(REG,431)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg3(REG,430)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg4(REG,429)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg5(REG,428)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg6(REG,427)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out_reg0(REG,557)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out_reg1(REG,556)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out_reg0(REG,559)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out_reg1(REG,558)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out_reg0(REG,561)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out_reg1(REG,560)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43(STALLENABLE,232)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg0(REG,554)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg1(REG,555)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43(BLACKBOX,103)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_20@20000000
    // out out_feedback_data_out_20@20000000
    // out out_feedback_empty_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2901_0gr thei_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V60),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_p),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V37),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_empty_out),
        .out_feedback_almost_empty_out_20(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_almost_empty_out_20),
        .out_feedback_data_out_20(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_data_out_20),
        .out_feedback_empty_out_20(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_empty_out_20),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg0(REG,312)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg1(REG,311)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg0(REG,426)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg1(REG,425)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg2(REG,424)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg3(REG,423)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg4(REG,422)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg5(REG,421)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg6(REG,420)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out_reg0(REG,565)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out_reg1(REG,564)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out_reg0(REG,567)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out_reg1(REG,566)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out_reg0(REG,569)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out_reg1(REG,568)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44(STALLENABLE,234)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg0(REG,562)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg1(REG,563)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44(BLACKBOX,104)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_19@20000000
    // out out_feedback_data_out_19@20000000
    // out out_feedback_empty_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2908_0gr thei_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V59),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_q),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V36),
        .in_feedback_stall_in_19(in_feedback_stall_in_19),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_empty_out),
        .out_feedback_almost_empty_out_19(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_almost_empty_out_19),
        .out_feedback_data_out_19(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_data_out_19),
        .out_feedback_empty_out_19(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_empty_out_19),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg0(REG,310)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg1(REG,309)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg0(REG,419)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg1(REG,418)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg2(REG,417)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg3(REG,416)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg4(REG,415)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg5(REG,414)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg6(REG,413)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out_reg0(REG,573)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out_reg1(REG,572)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out_reg0(REG,575)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out_reg1(REG,574)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out_reg0(REG,577)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out_reg1(REG,576)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45(STALLENABLE,236)
    assign SE_out_i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg0(REG,570)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_backStall;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg1(REG,571)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45(BLACKBOX,105)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_18@20000000
    // out out_feedback_data_out_18@20000000
    // out out_feedback_empty_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i320000optimisedid_2915_0gr thei_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V58),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_r),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V35),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_stall_in(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_empty_out),
        .out_feedback_almost_empty_out_18(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_almost_empty_out_18),
        .out_feedback_data_out_18(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_data_out_18),
        .out_feedback_empty_out_18(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_empty_out_18),
        .out_stall_out(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg0(REG,308)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg1(REG,307)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg0(REG,412)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg1(REG,411)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg2(REG,410)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg3(REG,409)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg4(REG,408)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg5(REG,407)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg6(REG,406)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out_reg0(REG,581)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out_reg1(REG,580)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out_reg0(REG,583)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out_reg1(REG,582)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out_reg0(REG,585)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out_reg1(REG,584)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29(STALLENABLE,238)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg0(REG,578)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg1(REG,579)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29(BLACKBOX,106)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_34@20000000
    // out out_feedback_data_out_34@20000000
    // out out_feedback_empty_out_34@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2803_0gr thei_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V57),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_b),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V34),
        .in_feedback_stall_in_34(in_feedback_stall_in_34),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_empty_out),
        .out_feedback_almost_empty_out_34(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_almost_empty_out_34),
        .out_feedback_data_out_34(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_data_out_34),
        .out_feedback_empty_out_34(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_empty_out_34),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg0(REG,306)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg1(REG,305)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg0(REG,405)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg1(REG,404)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg2(REG,403)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg3(REG,402)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg4(REG,401)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg5(REG,400)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg6(REG,399)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out_reg0(REG,589)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out_reg1(REG,588)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out_reg0(REG,591)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out_reg1(REG,590)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out_reg0(REG,593)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out_reg1(REG,592)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31(STALLENABLE,240)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg0(REG,586)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg1(REG,587)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31(BLACKBOX,107)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_32@20000000
    // out out_feedback_data_out_32@20000000
    // out out_feedback_empty_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2817_0gr thei_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V56),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_d),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V33),
        .in_feedback_stall_in_32(in_feedback_stall_in_32),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_empty_out),
        .out_feedback_almost_empty_out_32(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_almost_empty_out_32),
        .out_feedback_data_out_32(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_data_out_32),
        .out_feedback_empty_out_32(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_empty_out_32),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg0(REG,304)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg1(REG,303)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg0(REG,398)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg1(REG,397)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg2(REG,396)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg3(REG,395)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg4(REG,394)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg5(REG,393)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg6(REG,392)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out_reg0(REG,597)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out_reg1(REG,596)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out_reg0(REG,599)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out_reg1(REG,598)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out_reg0(REG,601)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out_reg1(REG,600)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32(STALLENABLE,242)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg0(REG,594)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg1(REG,595)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32(BLACKBOX,108)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_31@20000000
    // out out_feedback_data_out_31@20000000
    // out out_feedback_empty_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2824_0gr thei_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V55),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_e),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V32),
        .in_feedback_stall_in_31(in_feedback_stall_in_31),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_empty_out),
        .out_feedback_almost_empty_out_31(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_almost_empty_out_31),
        .out_feedback_data_out_31(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_data_out_31),
        .out_feedback_empty_out_31(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_empty_out_31),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg0(REG,302)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg1(REG,301)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg0(REG,391)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg1(REG,390)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg2(REG,389)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg3(REG,388)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg4(REG,387)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg5(REG,386)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg6(REG,385)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out_reg0(REG,605)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out_reg1(REG,604)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out_reg0(REG,607)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out_reg1(REG,606)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out_reg0(REG,609)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out_reg1(REG,608)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33(STALLENABLE,244)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg0(REG,602)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg1(REG,603)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33(BLACKBOX,109)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_30@20000000
    // out out_feedback_data_out_30@20000000
    // out out_feedback_empty_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2831_0gr thei_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V54),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_f),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V31),
        .in_feedback_stall_in_30(in_feedback_stall_in_30),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_empty_out),
        .out_feedback_almost_empty_out_30(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_almost_empty_out_30),
        .out_feedback_data_out_30(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_data_out_30),
        .out_feedback_empty_out_30(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_empty_out_30),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg0(REG,300)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg1(REG,299)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg0(REG,384)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg1(REG,383)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg2(REG,382)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg3(REG,381)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg4(REG,380)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg5(REG,379)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg6(REG,378)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out_reg0(REG,613)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out_reg1(REG,612)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out_reg0(REG,615)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out_reg1(REG,614)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out_reg0(REG,617)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out_reg1(REG,616)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34(STALLENABLE,246)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg0(REG,610)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg1(REG,611)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34(BLACKBOX,110)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_29@20000000
    // out out_feedback_data_out_29@20000000
    // out out_feedback_empty_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2838_0gr thei_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V53),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_g),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V30),
        .in_feedback_stall_in_29(in_feedback_stall_in_29),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_empty_out),
        .out_feedback_almost_empty_out_29(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_almost_empty_out_29),
        .out_feedback_data_out_29(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_data_out_29),
        .out_feedback_empty_out_29(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_empty_out_29),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg0(REG,298)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg1(REG,297)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg0(REG,377)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg1(REG,376)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg2(REG,375)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg3(REG,374)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg4(REG,373)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg5(REG,372)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg6(REG,371)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out_reg0(REG,621)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out_reg1(REG,620)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out_reg0(REG,623)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out_reg1(REG,622)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out_reg0(REG,625)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out_reg1(REG,624)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35(STALLENABLE,248)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg0(REG,618)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg1(REG,619)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35(BLACKBOX,111)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_28@20000000
    // out out_feedback_data_out_28@20000000
    // out out_feedback_empty_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2845_0gr thei_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V52),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_h),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V29),
        .in_feedback_stall_in_28(in_feedback_stall_in_28),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_empty_out),
        .out_feedback_almost_empty_out_28(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_almost_empty_out_28),
        .out_feedback_data_out_28(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_data_out_28),
        .out_feedback_empty_out_28(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_empty_out_28),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg0(REG,296)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg1(REG,295)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg0(REG,370)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg1(REG,369)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg2(REG,368)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg3(REG,367)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg4(REG,366)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg5(REG,365)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg6(REG,364)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out_reg0(REG,629)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out_reg1(REG,628)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out_reg0(REG,631)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out_reg1(REG,630)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out_reg0(REG,633)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out_reg1(REG,632)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36(STALLENABLE,250)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg0(REG,626)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg1(REG,627)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36(BLACKBOX,112)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_27@20000000
    // out out_feedback_data_out_27@20000000
    // out out_feedback_empty_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2852_0gr thei_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V51),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_i),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V28),
        .in_feedback_stall_in_27(in_feedback_stall_in_27),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_empty_out),
        .out_feedback_almost_empty_out_27(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_almost_empty_out_27),
        .out_feedback_data_out_27(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_data_out_27),
        .out_feedback_empty_out_27(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_empty_out_27),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg0(REG,294)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg1(REG,293)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg0(REG,363)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg1(REG,362)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg2(REG,361)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg3(REG,360)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg4(REG,359)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg5(REG,358)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg6(REG,357)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out_reg0(REG,637)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out_reg1(REG,636)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out_reg0(REG,639)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out_reg1(REG,638)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out_reg0(REG,641)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out_reg1(REG,640)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37(STALLENABLE,252)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg0(REG,634)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg1(REG,635)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37(BLACKBOX,113)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_26@20000000
    // out out_feedback_data_out_26@20000000
    // out out_feedback_empty_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2859_0gr thei_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V50),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_j),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V27),
        .in_feedback_stall_in_26(in_feedback_stall_in_26),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_empty_out),
        .out_feedback_almost_empty_out_26(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_almost_empty_out_26),
        .out_feedback_data_out_26(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_data_out_26),
        .out_feedback_empty_out_26(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_empty_out_26),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg0(REG,292)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg1(REG,291)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg0(REG,356)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg1(REG,355)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg2(REG,354)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg3(REG,353)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg4(REG,352)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg5(REG,351)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg6(REG,350)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out_reg0(REG,645)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out_reg1(REG,644)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out_reg0(REG,647)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out_reg1(REG,646)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out_reg0(REG,649)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out_reg1(REG,648)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38(STALLENABLE,254)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg0(REG,642)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg1(REG,643)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38(BLACKBOX,114)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_25@20000000
    // out out_feedback_data_out_25@20000000
    // out out_feedback_empty_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2866_0gr thei_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V49),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_k),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V26),
        .in_feedback_stall_in_25(in_feedback_stall_in_25),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_empty_out),
        .out_feedback_almost_empty_out_25(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_almost_empty_out_25),
        .out_feedback_data_out_25(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_data_out_25),
        .out_feedback_empty_out_25(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_empty_out_25),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg0(REG,290)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg1(REG,289)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg0(REG,349)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg1(REG,348)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg2(REG,347)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg3(REG,346)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg4(REG,345)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg5(REG,344)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg6(REG,343)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out_reg0(REG,653)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out_reg1(REG,652)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out_reg0(REG,655)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out_reg1(REG,654)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out_reg0(REG,657)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out_reg1(REG,656)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39(STALLENABLE,256)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg0(REG,650)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg1(REG,651)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39(BLACKBOX,115)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_24@20000000
    // out out_feedback_data_out_24@20000000
    // out out_feedback_empty_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2873_0gr thei_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V48),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_l),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V25),
        .in_feedback_stall_in_24(in_feedback_stall_in_24),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_empty_out),
        .out_feedback_almost_empty_out_24(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_almost_empty_out_24),
        .out_feedback_data_out_24(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_data_out_24),
        .out_feedback_empty_out_24(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_empty_out_24),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg0(REG,288)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg1(REG,287)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg0(REG,342)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg1(REG,341)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg2(REG,340)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg3(REG,339)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg4(REG,338)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg5(REG,337)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg6(REG,336)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg5_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out_reg0(REG,661)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out_reg1(REG,660)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out_reg0(REG,663)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out_reg1(REG,662)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out_reg0(REG,665)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out_reg1(REG,664)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out_reg0_q;
        end
    end

    // SE_out_i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30(STALLENABLE,258)
    assign SE_out_i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg0(REG,658)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg0_q <= SE_out_i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_backStall;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg1(REG,659)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg0_q;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30(BLACKBOX,116)@58
    // in in_stall_in@20000000
    // out out_almost_empty_out@75
    // out out_data_out@75
    // out out_empty_out@75
    // out out_feedback_almost_empty_out_33@20000000
    // out out_feedback_data_out_33@20000000
    // out out_feedback_empty_out_33@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    DijkstraOptimisedID_i_llvm_fpga_push_i8_0000optimisedid_2810_0gr thei_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V47),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_c),
        .in_empty_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V24),
        .in_feedback_stall_in_33(in_feedback_stall_in_33),
        .in_stall_in(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_empty_out),
        .out_feedback_almost_empty_out_33(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_almost_empty_out_33),
        .out_feedback_data_out_33(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_data_out_33),
        .out_feedback_empty_out_33(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_empty_out_33),
        .out_stall_out(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg0(REG,286)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg0_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out;
        end
    end

    // i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg1(REG,285)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg1_q <= i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg0_q;
        end
    end

    // stall_exit_backStall_desync_balance_reg0(REG,284)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_exit_backStall_desync_balance_reg0_q <= in_stall_in;
        end
    end

    // stall_exit_backStall_desync_balance_reg1(REG,283)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_exit_backStall_desync_balance_reg1_q <= stall_exit_backStall_desync_balance_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid_reg0(REG,733)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid_reg0_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid_reg1(REG,732)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid_reg0_q;
        end
    end

    // redist0_stall_entry_o22_58_fifo_o_valid_reg0(REG,781)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_valid_reg0_q <= redist0_stall_entry_o22_58_fifo_o_valid;
        end
    end

    // redist0_stall_entry_o22_58_fifo_o_valid_reg1(REG,780)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_valid_reg1_q <= redist0_stall_entry_o22_58_fifo_o_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo(STALLENABLE,282)
    // Sync - desync
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_temp_back_stall = stall_exit_backStall_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_stall_out_desync_balance_reg1_q | i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_stall_out_desync_balance_reg1_q;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_can_fast_read = ~ ((redist0_stall_entry_o22_58_fifo_o_almost_empty_reg1_q | i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_can_slow_read = ~ ((redist0_stall_entry_o22_58_fifo_o_empty_reg1_q | i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_backStall = ~ (merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_forced_read);
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_no_space_for_result = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_temp_back_stall;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_forced_read;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23 = $unsigned(1'b0);
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_no_space_for_result[0];
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V1 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V24 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V47 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V2 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V25 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V48 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V3 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V26 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V49 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V4 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V27 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V50 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V5 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V28 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V51 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V6 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V29 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V52 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V7 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V30 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V53 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V8 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V31 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V54 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V9 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V32 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V55 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V10 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V33 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V56 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V11 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V34 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V57 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V12 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V35 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V58 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V13 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V36 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V59 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V14 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V37 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V60 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V15 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V38 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V61 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V16 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V39 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V62 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V17 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V40 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V63 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V18 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V41 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V64 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V19 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V42 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V65 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V20 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V43 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V66 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V21 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V44 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V67 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V22 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V45 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V68 = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg0(REG,726)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_backStall;
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg1(REG,727)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg1_q <= i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg0_q;
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,673)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,672)
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

    // stall_entry_frontEmpty_reg0(REG,671)
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

    // stall_entry_frontEmpty_reg1(REG,670)
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

    // stall_entry_frontValid_reg0(REG,669)
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

    // stall_entry_frontValid_reg1(REG,668)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,281)
    // Desync
    assign merged_in_SE_bubble_join_stall_entry_temp_back_stall = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_stall | redist0_stall_entry_o22_58_fifo_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_backStall = merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V4 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V3 = merged_in_SE_bubble_join_stall_entry_V2;
    assign merged_in_SE_bubble_join_stall_entry_V5 = merged_in_SE_bubble_join_stall_entry_V4;

    // i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x(BLACKBOX,201)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@58
    // out out_empty_out@58
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@58
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata@20000000
    // out out_c0_exit216_0_tpl@58
    // out out_c0_exit216_1_tpl@58
    // out out_c0_exit216_2_tpl@58
    // out out_c0_exit216_3_tpl@58
    // out out_c0_exit216_4_tpl@58
    // out out_c0_exit216_5_tpl@58
    // out out_c0_exit216_6_tpl@58
    // out out_c0_exit216_7_tpl@58
    // out out_c0_exit216_8_tpl@58
    // out out_c0_exit216_9_tpl@58
    // out out_c0_exit216_10_tpl@58
    // out out_c0_exit216_11_tpl@58
    // out out_c0_exit216_12_tpl@58
    // out out_c0_exit216_13_tpl@58
    // out out_c0_exit216_14_tpl@58
    // out out_c0_exit216_15_tpl@58
    // out out_c0_exit216_16_tpl@58
    // out out_c0_exit216_17_tpl@58
    // out out_c0_exit216_18_tpl@58
    // out out_c0_exit216_19_tpl@58
    // out out_c0_exit216_20_tpl@58
    // out out_c0_exit216_21_tpl@58
    // out out_c0_exit216_22_tpl@58
    DijkstraOptimisedID_i_sfc_s_c0_in_for_co0000aoptimisedid_1728_27 thei_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V4),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
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
        .in_c0_eni25_0_tpl(GND_q),
        .in_c0_eni25_1_tpl(bubble_select_stall_entry_q),
        .in_c0_eni25_2_tpl(bubble_select_stall_entry_n),
        .in_c0_eni25_3_tpl(bubble_select_stall_entry_g),
        .in_c0_eni25_4_tpl(bubble_select_stall_entry_h),
        .in_c0_eni25_5_tpl(bubble_select_stall_entry_i),
        .in_c0_eni25_6_tpl(bubble_select_stall_entry_j),
        .in_c0_eni25_7_tpl(bubble_select_stall_entry_k),
        .in_c0_eni25_8_tpl(bubble_select_stall_entry_l),
        .in_c0_eni25_9_tpl(bubble_select_stall_entry_m),
        .in_c0_eni25_10_tpl(bubble_select_stall_entry_c),
        .in_c0_eni25_11_tpl(bubble_select_stall_entry_d),
        .in_c0_eni25_12_tpl(bubble_select_stall_entry_f),
        .in_c0_eni25_13_tpl(bubble_select_stall_entry_v),
        .in_c0_eni25_14_tpl(bubble_select_stall_entry_w),
        .in_c0_eni25_15_tpl(bubble_select_stall_entry_x),
        .in_c0_eni25_16_tpl(bubble_select_stall_entry_y),
        .in_c0_eni25_17_tpl(bubble_select_stall_entry_z),
        .in_c0_eni25_18_tpl(bubble_select_stall_entry_aa),
        .in_c0_eni25_19_tpl(bubble_select_stall_entry_b),
        .in_c0_eni25_20_tpl(bubble_select_stall_entry_o),
        .in_c0_eni25_21_tpl(bubble_select_stall_entry_e),
        .in_c0_eni25_22_tpl(bubble_select_stall_entry_p),
        .in_c0_eni25_23_tpl(bubble_select_stall_entry_u),
        .in_c0_eni25_24_tpl(bubble_select_stall_entry_r),
        .in_c0_eni25_25_tpl(bubble_select_stall_entry_s),
        .out_almost_empty_out(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_empty_out),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_o_valid),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata),
        .out_c0_exit216_0_tpl(),
        .out_c0_exit216_1_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_1_tpl),
        .out_c0_exit216_2_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_2_tpl),
        .out_c0_exit216_3_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_3_tpl),
        .out_c0_exit216_4_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_4_tpl),
        .out_c0_exit216_5_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_5_tpl),
        .out_c0_exit216_6_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_6_tpl),
        .out_c0_exit216_7_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_7_tpl),
        .out_c0_exit216_8_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_8_tpl),
        .out_c0_exit216_9_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_9_tpl),
        .out_c0_exit216_10_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_10_tpl),
        .out_c0_exit216_11_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_11_tpl),
        .out_c0_exit216_12_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_12_tpl),
        .out_c0_exit216_13_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_13_tpl),
        .out_c0_exit216_14_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_14_tpl),
        .out_c0_exit216_15_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_15_tpl),
        .out_c0_exit216_16_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_16_tpl),
        .out_c0_exit216_17_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_17_tpl),
        .out_c0_exit216_18_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_18_tpl),
        .out_c0_exit216_19_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_19_tpl),
        .out_c0_exit216_20_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_20_tpl),
        .out_c0_exit216_21_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_21_tpl),
        .out_c0_exit216_22_tpl(i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_c0_exit216_22_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;

    // feedback_almost_empty_out_13_sync(GPOUT,7)
    assign out_feedback_almost_empty_out_13 = i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_almost_empty_out_13;

    // feedback_almost_empty_out_14_sync(GPOUT,8)
    assign out_feedback_almost_empty_out_14 = i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_almost_empty_out_14;

    // feedback_almost_empty_out_15_sync(GPOUT,9)
    assign out_feedback_almost_empty_out_15 = i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_almost_empty_out_15;

    // feedback_almost_empty_out_16_sync(GPOUT,10)
    assign out_feedback_almost_empty_out_16 = i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_almost_empty_out_16;

    // feedback_almost_empty_out_17_sync(GPOUT,11)
    assign out_feedback_almost_empty_out_17 = i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_almost_empty_out_17;

    // feedback_almost_empty_out_18_sync(GPOUT,12)
    assign out_feedback_almost_empty_out_18 = i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_almost_empty_out_18;

    // feedback_almost_empty_out_19_sync(GPOUT,13)
    assign out_feedback_almost_empty_out_19 = i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_almost_empty_out_19;

    // feedback_almost_empty_out_20_sync(GPOUT,14)
    assign out_feedback_almost_empty_out_20 = i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_almost_empty_out_20;

    // feedback_almost_empty_out_21_sync(GPOUT,15)
    assign out_feedback_almost_empty_out_21 = i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_almost_empty_out_21;

    // feedback_almost_empty_out_22_sync(GPOUT,16)
    assign out_feedback_almost_empty_out_22 = i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_almost_empty_out_22;

    // feedback_almost_empty_out_23_sync(GPOUT,17)
    assign out_feedback_almost_empty_out_23 = i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_almost_empty_out_23;

    // feedback_almost_empty_out_24_sync(GPOUT,18)
    assign out_feedback_almost_empty_out_24 = i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_almost_empty_out_24;

    // feedback_almost_empty_out_25_sync(GPOUT,19)
    assign out_feedback_almost_empty_out_25 = i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_almost_empty_out_25;

    // feedback_almost_empty_out_26_sync(GPOUT,20)
    assign out_feedback_almost_empty_out_26 = i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_almost_empty_out_26;

    // feedback_almost_empty_out_27_sync(GPOUT,21)
    assign out_feedback_almost_empty_out_27 = i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_almost_empty_out_27;

    // feedback_almost_empty_out_28_sync(GPOUT,22)
    assign out_feedback_almost_empty_out_28 = i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_almost_empty_out_28;

    // feedback_almost_empty_out_29_sync(GPOUT,23)
    assign out_feedback_almost_empty_out_29 = i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_almost_empty_out_29;

    // feedback_almost_empty_out_30_sync(GPOUT,24)
    assign out_feedback_almost_empty_out_30 = i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_almost_empty_out_30;

    // feedback_almost_empty_out_31_sync(GPOUT,25)
    assign out_feedback_almost_empty_out_31 = i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_almost_empty_out_31;

    // feedback_almost_empty_out_32_sync(GPOUT,26)
    assign out_feedback_almost_empty_out_32 = i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_almost_empty_out_32;

    // feedback_almost_empty_out_33_sync(GPOUT,27)
    assign out_feedback_almost_empty_out_33 = i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_almost_empty_out_33;

    // feedback_almost_empty_out_34_sync(GPOUT,28)
    assign out_feedback_almost_empty_out_34 = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_almost_empty_out_34;

    // feedback_data_out_13_sync(GPOUT,29)
    assign out_feedback_data_out_13 = i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_data_out_13;

    // feedback_data_out_14_sync(GPOUT,30)
    assign out_feedback_data_out_14 = i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_data_out_14;

    // feedback_data_out_15_sync(GPOUT,31)
    assign out_feedback_data_out_15 = i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_data_out_15;

    // feedback_data_out_16_sync(GPOUT,32)
    assign out_feedback_data_out_16 = i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_data_out_16;

    // feedback_data_out_17_sync(GPOUT,33)
    assign out_feedback_data_out_17 = i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_data_out_17;

    // feedback_data_out_18_sync(GPOUT,34)
    assign out_feedback_data_out_18 = i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_data_out_18;

    // feedback_data_out_19_sync(GPOUT,35)
    assign out_feedback_data_out_19 = i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_data_out_19;

    // feedback_data_out_20_sync(GPOUT,36)
    assign out_feedback_data_out_20 = i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_data_out_20;

    // feedback_data_out_21_sync(GPOUT,37)
    assign out_feedback_data_out_21 = i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_data_out_21;

    // feedback_data_out_22_sync(GPOUT,38)
    assign out_feedback_data_out_22 = i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_data_out_22;

    // feedback_data_out_23_sync(GPOUT,39)
    assign out_feedback_data_out_23 = i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_data_out_23;

    // feedback_data_out_24_sync(GPOUT,40)
    assign out_feedback_data_out_24 = i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_data_out_24;

    // feedback_data_out_25_sync(GPOUT,41)
    assign out_feedback_data_out_25 = i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_data_out_25;

    // feedback_data_out_26_sync(GPOUT,42)
    assign out_feedback_data_out_26 = i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_data_out_26;

    // feedback_data_out_27_sync(GPOUT,43)
    assign out_feedback_data_out_27 = i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_data_out_27;

    // feedback_data_out_28_sync(GPOUT,44)
    assign out_feedback_data_out_28 = i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_data_out_28;

    // feedback_data_out_29_sync(GPOUT,45)
    assign out_feedback_data_out_29 = i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_data_out_29;

    // feedback_data_out_30_sync(GPOUT,46)
    assign out_feedback_data_out_30 = i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_data_out_30;

    // feedback_data_out_31_sync(GPOUT,47)
    assign out_feedback_data_out_31 = i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_data_out_31;

    // feedback_data_out_32_sync(GPOUT,48)
    assign out_feedback_data_out_32 = i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_data_out_32;

    // feedback_data_out_33_sync(GPOUT,49)
    assign out_feedback_data_out_33 = i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_data_out_33;

    // feedback_data_out_34_sync(GPOUT,50)
    assign out_feedback_data_out_34 = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_data_out_34;

    // feedback_empty_out_13_sync(GPOUT,51)
    assign out_feedback_empty_out_13 = i_llvm_fpga_push_i32_dist_i_sroa_172_2_push13_dijkstraoptimisedid_1728_50_out_feedback_empty_out_13;

    // feedback_empty_out_14_sync(GPOUT,52)
    assign out_feedback_empty_out_14 = i_llvm_fpga_push_i32_dist_i_sroa_155_2_push14_dijkstraoptimisedid_1728_49_out_feedback_empty_out_14;

    // feedback_empty_out_15_sync(GPOUT,53)
    assign out_feedback_empty_out_15 = i_llvm_fpga_push_i32_dist_i_sroa_138_2_push15_dijkstraoptimisedid_1728_48_out_feedback_empty_out_15;

    // feedback_empty_out_16_sync(GPOUT,54)
    assign out_feedback_empty_out_16 = i_llvm_fpga_push_i32_dist_i_sroa_121_2_push16_dijkstraoptimisedid_1728_47_out_feedback_empty_out_16;

    // feedback_empty_out_17_sync(GPOUT,55)
    assign out_feedback_empty_out_17 = i_llvm_fpga_push_i32_dist_i_sroa_104_2_push17_dijkstraoptimisedid_1728_46_out_feedback_empty_out_17;

    // feedback_empty_out_18_sync(GPOUT,56)
    assign out_feedback_empty_out_18 = i_llvm_fpga_push_i32_dist_i_sroa_87_2_push18_dijkstraoptimisedid_1728_45_out_feedback_empty_out_18;

    // feedback_empty_out_19_sync(GPOUT,57)
    assign out_feedback_empty_out_19 = i_llvm_fpga_push_i32_dist_i_sroa_70_2_push19_dijkstraoptimisedid_1728_44_out_feedback_empty_out_19;

    // feedback_empty_out_20_sync(GPOUT,58)
    assign out_feedback_empty_out_20 = i_llvm_fpga_push_i32_dist_i_sroa_53_2_push20_dijkstraoptimisedid_1728_43_out_feedback_empty_out_20;

    // feedback_empty_out_21_sync(GPOUT,59)
    assign out_feedback_empty_out_21 = i_llvm_fpga_push_i32_dist_i_sroa_36_2_push21_dijkstraoptimisedid_1728_42_out_feedback_empty_out_21;

    // feedback_empty_out_22_sync(GPOUT,60)
    assign out_feedback_empty_out_22 = i_llvm_fpga_push_i32_dist_i_sroa_19_2_push22_dijkstraoptimisedid_1728_41_out_feedback_empty_out_22;

    // feedback_empty_out_23_sync(GPOUT,61)
    assign out_feedback_empty_out_23 = i_llvm_fpga_push_i32_dist_i_sroa_0_0_push23_dijkstraoptimisedid_1728_40_out_feedback_empty_out_23;

    // feedback_empty_out_24_sync(GPOUT,62)
    assign out_feedback_empty_out_24 = i_llvm_fpga_push_i8_visited_i_sroa_42_2_push24_dijkstraoptimisedid_1728_39_out_feedback_empty_out_24;

    // feedback_empty_out_25_sync(GPOUT,63)
    assign out_feedback_empty_out_25 = i_llvm_fpga_push_i8_visited_i_sroa_38_2_push25_dijkstraoptimisedid_1728_38_out_feedback_empty_out_25;

    // feedback_empty_out_26_sync(GPOUT,64)
    assign out_feedback_empty_out_26 = i_llvm_fpga_push_i8_visited_i_sroa_34_2_push26_dijkstraoptimisedid_1728_37_out_feedback_empty_out_26;

    // feedback_empty_out_27_sync(GPOUT,65)
    assign out_feedback_empty_out_27 = i_llvm_fpga_push_i8_visited_i_sroa_30_2_push27_dijkstraoptimisedid_1728_36_out_feedback_empty_out_27;

    // feedback_empty_out_28_sync(GPOUT,66)
    assign out_feedback_empty_out_28 = i_llvm_fpga_push_i8_visited_i_sroa_26_2_push28_dijkstraoptimisedid_1728_35_out_feedback_empty_out_28;

    // feedback_empty_out_29_sync(GPOUT,67)
    assign out_feedback_empty_out_29 = i_llvm_fpga_push_i8_visited_i_sroa_22_2_push29_dijkstraoptimisedid_1728_34_out_feedback_empty_out_29;

    // feedback_empty_out_30_sync(GPOUT,68)
    assign out_feedback_empty_out_30 = i_llvm_fpga_push_i8_visited_i_sroa_18_2_push30_dijkstraoptimisedid_1728_33_out_feedback_empty_out_30;

    // feedback_empty_out_31_sync(GPOUT,69)
    assign out_feedback_empty_out_31 = i_llvm_fpga_push_i8_visited_i_sroa_14_2_push31_dijkstraoptimisedid_1728_32_out_feedback_empty_out_31;

    // feedback_empty_out_32_sync(GPOUT,70)
    assign out_feedback_empty_out_32 = i_llvm_fpga_push_i8_visited_i_sroa_10_2_push32_dijkstraoptimisedid_1728_31_out_feedback_empty_out_32;

    // feedback_empty_out_33_sync(GPOUT,71)
    assign out_feedback_empty_out_33 = i_llvm_fpga_push_i8_visited_i_sroa_6_2_push33_dijkstraoptimisedid_1728_30_out_feedback_empty_out_33;

    // feedback_empty_out_34_sync(GPOUT,72)
    assign out_feedback_empty_out_34 = i_llvm_fpga_push_i8_visited_i_sroa_0_2_push34_dijkstraoptimisedid_1728_29_out_feedback_empty_out_34;

    // regfree_osync(GPOUT,164)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_23_0;

    // stall_entry_frontStall_reg0(REG,666)
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

    // stall_entry_frontStall_reg1(REG,667)
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

    // sync_out_337(GPOUT,168)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg0(REG,335)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg0_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg1(REG,334)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg1_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg2(REG,333)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg2_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg1_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg3(REG,332)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg3_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg2_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg4(REG,331)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg4_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg3_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg5(REG,330)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg5_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg4_q;
        end
    end

    // merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg6(REG,329)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg6_q <= merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg5_q;
        end
    end

    // redist0_stall_entry_o22_58_fifo_o_data_reg0(REG,783)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_data_reg0_q <= redist0_stall_entry_o22_58_fifo_o_data;
        end
    end

    // redist0_stall_entry_o22_58_fifo_o_data_reg1(REG,782)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o22_58_fifo_o_data_reg1_q <= redist0_stall_entry_o22_58_fifo_o_data_reg0_q;
        end
    end

    // bubble_join_redist0_stall_entry_o22_58_fifo(BITJOIN,213)
    assign bubble_join_redist0_stall_entry_o22_58_fifo_q = redist0_stall_entry_o22_58_fifo_o_data_reg1_q;

    // bubble_select_redist0_stall_entry_o22_58_fifo(BITSELECT,214)
    assign bubble_select_redist0_stall_entry_o22_58_fifo_b = bubble_join_redist0_stall_entry_o22_58_fifo_q[0:0];

    // sync_out_338(GPOUT,169)@58
    assign out_almost_empty_out = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V46;
    assign out_c0_exe2827 = bubble_select_redist0_stall_entry_o22_58_fifo_b;
    assign out_empty_out = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V23;
    assign out_valid_out = merged_in_SE_bubble_select_redist0_stall_entry_o22_58_fifo_V0_sync_valid_reg6_q;

    // dupName_0_ext_sig_sync_out_x(GPOUT,172)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,173)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,175)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,176)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,178)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,179)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,181)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,182)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_4_ext_sig_sync_out_x(GPOUT,184)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;

    // dupName_4_regfree_osync_x(GPOUT,185)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_5_ext_sig_sync_out_x(GPOUT,187)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;

    // dupName_5_regfree_osync_x(GPOUT,188)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_6_ext_sig_sync_out_x(GPOUT,190)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;

    // dupName_6_regfree_osync_x(GPOUT,191)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_7_ext_sig_sync_out_x(GPOUT,193)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;

    // dupName_7_regfree_osync_x(GPOUT,194)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_8_ext_sig_sync_out_x(GPOUT,196)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,197)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_9_ext_sig_sync_out_x(GPOUT,199)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;

    // dupName_9_regfree_osync_x(GPOUT,200)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1728_27_aunroll_x_out_intel_reserved_ffwd_33_0;

    // rst_sync(RESETSYNC,788)
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
