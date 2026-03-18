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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond_cleanup33_i_dijkstraoptimisedids_c0_enter204_dijkstraoptimisedid_1785_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000optimisedid_1785_0gr (
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
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
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
    output wire [0:0] out_c0_exi22_0_tpl,
    output wire [7:0] out_c0_exi22_1_tpl,
    output wire [7:0] out_c0_exi22_2_tpl,
    output wire [7:0] out_c0_exi22_3_tpl,
    output wire [7:0] out_c0_exi22_4_tpl,
    output wire [7:0] out_c0_exi22_5_tpl,
    output wire [7:0] out_c0_exi22_6_tpl,
    output wire [7:0] out_c0_exi22_7_tpl,
    output wire [7:0] out_c0_exi22_8_tpl,
    output wire [7:0] out_c0_exi22_9_tpl,
    output wire [7:0] out_c0_exi22_10_tpl,
    output wire [7:0] out_c0_exi22_11_tpl,
    output wire [31:0] out_c0_exi22_12_tpl,
    output wire [31:0] out_c0_exi22_13_tpl,
    output wire [31:0] out_c0_exi22_14_tpl,
    output wire [31:0] out_c0_exi22_15_tpl,
    output wire [31:0] out_c0_exi22_16_tpl,
    output wire [31:0] out_c0_exi22_17_tpl,
    output wire [31:0] out_c0_exi22_18_tpl,
    output wire [31:0] out_c0_exi22_19_tpl,
    output wire [31:0] out_c0_exi22_20_tpl,
    output wire [31:0] out_c0_exi22_21_tpl,
    output wire [31:0] out_c0_exi22_22_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraOptimisedID24,
    input wire [0:0] in_c0_eni25_0_tpl,
    input wire [31:0] in_c0_eni25_1_tpl,
    input wire [7:0] in_c0_eni25_2_tpl,
    input wire [7:0] in_c0_eni25_3_tpl,
    input wire [7:0] in_c0_eni25_4_tpl,
    input wire [7:0] in_c0_eni25_5_tpl,
    input wire [7:0] in_c0_eni25_6_tpl,
    input wire [7:0] in_c0_eni25_7_tpl,
    input wire [7:0] in_c0_eni25_8_tpl,
    input wire [7:0] in_c0_eni25_9_tpl,
    input wire [7:0] in_c0_eni25_10_tpl,
    input wire [7:0] in_c0_eni25_11_tpl,
    input wire [7:0] in_c0_eni25_12_tpl,
    input wire [31:0] in_c0_eni25_13_tpl,
    input wire [31:0] in_c0_eni25_14_tpl,
    input wire [31:0] in_c0_eni25_15_tpl,
    input wire [31:0] in_c0_eni25_16_tpl,
    input wire [31:0] in_c0_eni25_17_tpl,
    input wire [31:0] in_c0_eni25_18_tpl,
    input wire [31:0] in_c0_eni25_19_tpl,
    input wire [31:0] in_c0_eni25_20_tpl,
    input wire [31:0] in_c0_eni25_21_tpl,
    input wire [31:0] in_c0_eni25_22_tpl,
    input wire [31:0] in_c0_eni25_23_tpl,
    input wire [0:0] in_c0_eni25_24_tpl,
    input wire [0:0] in_c0_eni25_25_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0_1788_287_q;
    wire [31:0] c_i32_1_1788_286_q;
    wire [31:0] c_i32_2_1788_285_q;
    wire [31:0] c_i32_3_1788_284_q;
    wire [31:0] c_i32_4_1788_283_q;
    wire [31:0] c_i32_5_1788_282_q;
    wire [31:0] c_i32_6_1788_281_q;
    wire [31:0] c_i32_7_1788_280_q;
    wire [7:0] c_i8_1_1788_288_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [32:0] i_add68_i_10_dijkstraoptimisedid_1788_225_a;
    wire [32:0] i_add68_i_10_dijkstraoptimisedid_1788_225_b;
    logic [32:0] i_add68_i_10_dijkstraoptimisedid_1788_225_o;
    wire [32:0] i_add68_i_10_dijkstraoptimisedid_1788_225_q;
    wire [32:0] i_add68_i_1_dijkstraoptimisedid_1788_83_a;
    wire [32:0] i_add68_i_1_dijkstraoptimisedid_1788_83_b;
    logic [32:0] i_add68_i_1_dijkstraoptimisedid_1788_83_o;
    wire [32:0] i_add68_i_1_dijkstraoptimisedid_1788_83_q;
    wire [32:0] i_add68_i_2_dijkstraoptimisedid_1788_99_a;
    wire [32:0] i_add68_i_2_dijkstraoptimisedid_1788_99_b;
    logic [32:0] i_add68_i_2_dijkstraoptimisedid_1788_99_o;
    wire [32:0] i_add68_i_2_dijkstraoptimisedid_1788_99_q;
    wire [32:0] i_add68_i_3_dijkstraoptimisedid_1788_115_a;
    wire [32:0] i_add68_i_3_dijkstraoptimisedid_1788_115_b;
    logic [32:0] i_add68_i_3_dijkstraoptimisedid_1788_115_o;
    wire [32:0] i_add68_i_3_dijkstraoptimisedid_1788_115_q;
    wire [32:0] i_add68_i_4_dijkstraoptimisedid_1788_131_a;
    wire [32:0] i_add68_i_4_dijkstraoptimisedid_1788_131_b;
    logic [32:0] i_add68_i_4_dijkstraoptimisedid_1788_131_o;
    wire [32:0] i_add68_i_4_dijkstraoptimisedid_1788_131_q;
    wire [32:0] i_add68_i_5_dijkstraoptimisedid_1788_147_a;
    wire [32:0] i_add68_i_5_dijkstraoptimisedid_1788_147_b;
    logic [32:0] i_add68_i_5_dijkstraoptimisedid_1788_147_o;
    wire [32:0] i_add68_i_5_dijkstraoptimisedid_1788_147_q;
    wire [32:0] i_add68_i_6_dijkstraoptimisedid_1788_163_a;
    wire [32:0] i_add68_i_6_dijkstraoptimisedid_1788_163_b;
    logic [32:0] i_add68_i_6_dijkstraoptimisedid_1788_163_o;
    wire [32:0] i_add68_i_6_dijkstraoptimisedid_1788_163_q;
    wire [32:0] i_add68_i_7_dijkstraoptimisedid_1788_179_a;
    wire [32:0] i_add68_i_7_dijkstraoptimisedid_1788_179_b;
    logic [32:0] i_add68_i_7_dijkstraoptimisedid_1788_179_o;
    wire [32:0] i_add68_i_7_dijkstraoptimisedid_1788_179_q;
    wire [32:0] i_add68_i_8_dijkstraoptimisedid_1788_195_a;
    wire [32:0] i_add68_i_8_dijkstraoptimisedid_1788_195_b;
    logic [32:0] i_add68_i_8_dijkstraoptimisedid_1788_195_o;
    wire [32:0] i_add68_i_8_dijkstraoptimisedid_1788_195_q;
    wire [32:0] i_add68_i_9_dijkstraoptimisedid_1788_210_a;
    wire [32:0] i_add68_i_9_dijkstraoptimisedid_1788_210_b;
    logic [32:0] i_add68_i_9_dijkstraoptimisedid_1788_210_o;
    wire [32:0] i_add68_i_9_dijkstraoptimisedid_1788_210_q;
    wire [32:0] i_add68_i_dijkstraoptimisedid_1788_61_a;
    wire [32:0] i_add68_i_dijkstraoptimisedid_1788_61_b;
    logic [32:0] i_add68_i_dijkstraoptimisedid_1788_61_o;
    wire [32:0] i_add68_i_dijkstraoptimisedid_1788_61_q;
    wire [1:0] i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q;
    wire [63:0] i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_join_q;
    wire [61:0] i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_join_q;
    wire [61:0] i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_join_q;
    wire [61:0] i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_join_q;
    wire [61:0] i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_join_q;
    wire [61:0] i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_join_q;
    wire [61:0] i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_join_q;
    wire [61:0] i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_join_q;
    wire [61:0] i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_join_q;
    wire [61:0] i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_join_q;
    wire [61:0] i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_select_63_b;
    wire [63:0] i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_join_q;
    wire [61:0] i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_select_63_b;
    wire [33:0] i_cmp71_i_dijkstraoptimisedid_1788_63_a;
    wire [33:0] i_cmp71_i_dijkstraoptimisedid_1788_63_b;
    logic [33:0] i_cmp71_i_dijkstraoptimisedid_1788_63_o;
    wire [0:0] i_cmp71_i_dijkstraoptimisedid_1788_63_c;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt110_dijkstraoptimisedid_1788_114_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt130_dijkstraoptimisedid_1788_130_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt150_dijkstraoptimisedid_1788_146_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt170_dijkstraoptimisedid_1788_162_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt190_dijkstraoptimisedid_1788_178_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt210_dijkstraoptimisedid_1788_194_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt230_dijkstraoptimisedid_1788_209_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt250_dijkstraoptimisedid_1788_224_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt50_dijkstraoptimisedid_1788_60_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt70_dijkstraoptimisedid_1788_82_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt90_dijkstraoptimisedid_1788_98_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_28_fanout_adaptor_dijkstraoptimisedid_1788_118_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_31_fanout_adaptor_dijkstraoptimisedid_1788_166_q;
    (* preserve_syn_only *) reg [31:0] i_llvm_fpga_fanout_i32_acl_32_fanout_adaptor_dijkstraoptimisedid_1788_182_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid72_dijkstraoptimisedid_1788_228_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid73_dijkstraoptimisedid_1788_229_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid74_dijkstraoptimisedid_1788_230_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid75_dijkstraoptimisedid_1788_231_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid76_dijkstraoptimisedid_1788_232_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid77_dijkstraoptimisedid_1788_233_out_intel_reserved_ffwd_28_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid78_dijkstraoptimisedid_1788_234_out_intel_reserved_ffwd_29_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid79_dijkstraoptimisedid_1788_235_out_intel_reserved_ffwd_30_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid80_dijkstraoptimisedid_1788_236_out_intel_reserved_ffwd_31_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid81_dijkstraoptimisedid_1788_237_out_intel_reserved_ffwd_32_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid82_dijkstraoptimisedid_1788_238_out_intel_reserved_ffwd_33_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;
    wire [0:0] i_or_cond568_dijkstraoptimisedid_1788_76_s;
    reg [0:0] i_or_cond568_dijkstraoptimisedid_1788_76_q;
    wire [0:0] i_or_cond570_dijkstraoptimisedid_1788_92_s;
    reg [0:0] i_or_cond570_dijkstraoptimisedid_1788_92_q;
    wire [0:0] i_or_cond572_dijkstraoptimisedid_1788_108_s;
    reg [0:0] i_or_cond572_dijkstraoptimisedid_1788_108_q;
    wire [0:0] i_or_cond574_dijkstraoptimisedid_1788_124_s;
    reg [0:0] i_or_cond574_dijkstraoptimisedid_1788_124_q;
    wire [0:0] i_or_cond576_dijkstraoptimisedid_1788_140_s;
    reg [0:0] i_or_cond576_dijkstraoptimisedid_1788_140_q;
    wire [0:0] i_or_cond578_dijkstraoptimisedid_1788_156_s;
    reg [0:0] i_or_cond578_dijkstraoptimisedid_1788_156_q;
    wire [0:0] i_or_cond580_dijkstraoptimisedid_1788_172_s;
    reg [0:0] i_or_cond580_dijkstraoptimisedid_1788_172_q;
    wire [0:0] i_or_cond582_dijkstraoptimisedid_1788_188_s;
    reg [0:0] i_or_cond582_dijkstraoptimisedid_1788_188_q;
    wire [0:0] i_or_cond584_dijkstraoptimisedid_1788_203_s;
    reg [0:0] i_or_cond584_dijkstraoptimisedid_1788_203_q;
    wire [0:0] i_or_cond586_dijkstraoptimisedid_1788_218_s;
    reg [0:0] i_or_cond586_dijkstraoptimisedid_1788_218_q;
    wire [0:0] i_or_cond_dijkstraoptimisedid_1788_52_s;
    reg [0:0] i_or_cond_dijkstraoptimisedid_1788_52_q;
    wire [28:0] i_sel_bits_dijkstraoptimisedid_1788_53_vt_const_31_q;
    wire [31:0] i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q;
    wire [2:0] i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b;
    wire [2:0] i_sel_shr_dijkstraoptimisedid_1788_58_vt_const_31_q;
    wire [31:0] i_sel_shr_dijkstraoptimisedid_1788_58_vt_join_q;
    wire [31:0] i_sel_shr_dijkstraoptimisedid_1788_58_vt_select_28_in;
    wire [28:0] i_sel_shr_dijkstraoptimisedid_1788_58_vt_select_28_b;
    wire [0:0] i_spec_select_dijkstraoptimisedid_1788_25_s;
    reg [7:0] i_spec_select_dijkstraoptimisedid_1788_25_q;
    wire [0:0] i_tobool56_i_not_10_dijkstraoptimisedid_1788_215_qi;
    reg [0:0] i_tobool56_i_not_10_dijkstraoptimisedid_1788_215_q;
    wire [0:0] i_tobool56_i_not_1_dijkstraoptimisedid_1788_73_qi;
    reg [0:0] i_tobool56_i_not_1_dijkstraoptimisedid_1788_73_q;
    wire [0:0] i_tobool56_i_not_2_dijkstraoptimisedid_1788_89_qi;
    reg [0:0] i_tobool56_i_not_2_dijkstraoptimisedid_1788_89_q;
    wire [0:0] i_tobool56_i_not_3_dijkstraoptimisedid_1788_105_q;
    wire [0:0] i_tobool56_i_not_4_dijkstraoptimisedid_1788_121_q;
    wire [0:0] i_tobool56_i_not_5_dijkstraoptimisedid_1788_137_q;
    wire [0:0] i_tobool56_i_not_6_dijkstraoptimisedid_1788_153_q;
    wire [0:0] i_tobool56_i_not_7_dijkstraoptimisedid_1788_169_qi;
    reg [0:0] i_tobool56_i_not_7_dijkstraoptimisedid_1788_169_q;
    wire [0:0] i_tobool56_i_not_8_dijkstraoptimisedid_1788_185_q;
    wire [0:0] i_tobool56_i_not_9_dijkstraoptimisedid_1788_200_q;
    wire [0:0] i_tobool56_i_not_dijkstraoptimisedid_1788_49_qi;
    reg [0:0] i_tobool56_i_not_dijkstraoptimisedid_1788_49_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_11_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_13_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_15_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_17_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_19_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_21_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_23_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_27_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_27_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_29_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_29_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_31_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_31_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_33_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_33_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_35_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_35_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_37_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_37_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_39_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_39_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_3gr_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_41_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_41_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_43_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_43_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_45_s;
    reg [7:0] i_unnamed_dijkstraoptimisedid_1788_45_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_5gr_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_7gr_q;
    wire [0:0] i_unnamed_dijkstraoptimisedid_1788_9gr_q;
    wire [31:0] bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b;
    wire [31:0] bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b;
    wire [31:0] c_i32_10_1788_277_recast_x_q;
    wire [31:0] c_i32_8_1788_279_recast_x_q;
    wire [31:0] c_i32_9_1788_278_recast_x_q;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_qi;
    reg [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_qi;
    reg [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_qi;
    reg [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_qi;
    reg [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_9_comparator_x_qi;
    reg [0:0] dupName_9_comparator_x_q;
    wire [0:0] dupName_10_comparator_x_qi;
    reg [0:0] dupName_10_comparator_x_q;
    wire [63:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_append_upper_bits_x_q;
    wire [17:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_extender_x_q;
    wire [8:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_append_upper_bits_x_q;
    wire [8:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_3_trunc_sel_x_b;
    wire [63:0] i_arrayidx55_i_dijkstraoptimisedid_1861_0gr_append_upper_bits_x_q;
    wire [63:0] i_idxprom46_i_dijkstraoptimisedid_1788_2gr_sel_x_b;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_spec_select_struct_0_shuffle_bit0_dijkstraoptimisedid_1891_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_spec_select_struct_0_shuffle_bit0_dijkstraoptimisedid_1891_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0155_shuffle_bit0_dijkstraoptimisedid_2062_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0155_shuffle_bit0_dijkstraoptimisedid_2062_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0156_shuffle_bit0_dijkstraoptimisedid_2137_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0156_shuffle_bit0_dijkstraoptimisedid_2137_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0157_shuffle_bit0_dijkstraoptimisedid_2212_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0157_shuffle_bit0_dijkstraoptimisedid_2212_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0158_shuffle_bit0_dijkstraoptimisedid_2287_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0158_shuffle_bit0_dijkstraoptimisedid_2287_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0159_shuffle_bit0_dijkstraoptimisedid_2362_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0159_shuffle_bit0_dijkstraoptimisedid_2362_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0160_shuffle_bit0_dijkstraoptimisedid_2437_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0160_shuffle_bit0_dijkstraoptimisedid_2437_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0161_shuffle_bit0_dijkstraoptimisedid_2512_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0161_shuffle_bit0_dijkstraoptimisedid_2512_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0162_shuffle_bit0_dijkstraoptimisedid_2586_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0162_shuffle_bit0_dijkstraoptimisedid_2586_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0163_shuffle_bit0_dijkstraoptimisedid_2660_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0163_shuffle_bit0_dijkstraoptimisedid_2660_0gr_NO_NAME_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0_shuffle_bit0_dijkstraoptimisedid_1987_0gr_NO_NAME_x_a;
    wire [0:0] i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0_shuffle_bit0_dijkstraoptimisedid_1987_0gr_NO_NAME_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q;
    wire [0:0] i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_o_data;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_n;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_a;
    wire [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_b;
    logic [33:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_o;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_n;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt225_dijkstraoptimisedid_1788_207_opt_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt245_dijkstraoptimisedid_1788_222_opt_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt46_dijkstraoptimisedid_1788_57_opt_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_q;
    reg [0:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_v;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev1_id0_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt_dijkstraoptimisedid_1788_55_opt_lev1_id0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    wire [54:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q;
    wire [2:0] i_sel_bits_dijkstraoptimisedid_1788_53_BitSelect_for_a_b;
    wire [31:0] i_sel_bits_dijkstraoptimisedid_1788_53_join_q;
    wire [9:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_add_x_bit_select_b;
    wire [1:0] lowRangeB_uid916_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in;
    wire [1:0] lowRangeB_uid916_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b;
    wire [6:0] highBBits_uid917_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b;
    wire [9:0] addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_a;
    wire [9:0] addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b;
    logic [9:0] addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_o;
    wire [9:0] addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q;
    wire [11:0] add_uid919_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q;
    wire [0:0] lowRangeB_uid921_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in;
    wire [0:0] lowRangeB_uid921_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b;
    wire [7:0] highBBits_uid922_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b;
    wire [12:0] a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_a;
    wire [12:0] a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b;
    logic [12:0] a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_o;
    wire [12:0] a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q;
    wire [13:0] a_subconst_11_uid924_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q;
    wire [12:0] sR_bottomRange_uid928_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in;
    wire [12:0] sR_bottomRange_uid928_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b;
    wire [14:0] sR_mergedSignalTM_uid929_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q;
    wire [5:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b;
    wire [2:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b;
    wire [6:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [6:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [6:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [6:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_split_join_q;
    wire [6:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b;
    wire [7:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [7:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [7:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [7:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_split_join_q;
    wire [6:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [6:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [6:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [6:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_split_join_q;
    wire [7:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [7:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [7:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [7:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_split_join_q;
    wire [4:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsMSBs_select_b;
    wire [3:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsLSBs_select_b;
    wire [5:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [5:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [5:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [5:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_split_join_q;
    wire [7:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [7:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [7:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [7:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_split_join_q;
    wire [6:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [6:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [6:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [6:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_split_join_q;
    wire [7:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [7:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [7:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [7:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_split_join_q;
    wire [3:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsMSBs_select_b;
    wire [4:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsLSBs_select_b;
    wire [4:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [4:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [4:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [4:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_split_join_q;
    wire [7:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [7:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [7:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [7:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_split_join_q;
    wire [28:0] i_sel_shr_dijkstraoptimisedid_1918_0gr_shift_x_fs_q;
    wire [31:0] i_sel_shr_dijkstraoptimisedid_1918_0gr_shift_x_fs_qint;
    wire [5:0] i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [6:0] i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [5:0] i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [6:0] i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [4:0] i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [6:0] i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [5:0] i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [6:0] i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [3:0] i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [6:0] i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q;
    wire [0:0] i_spec_select566_dijkstraoptimisedid_1788_65invSel_q;
    reg [31:0] mergedMUXes0_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes1_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes2_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes3_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes4_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes5_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes6_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes7_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes8_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes9_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes10_q;
    wire [0:0] i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_mux_xinvSel_q;
    reg [31:0] mergedMUXes11_q;
    reg [31:0] redist0_mergedMUXes11_q_1_q;
    reg [31:0] redist1_mergedMUXes10_q_2_q;
    reg [31:0] redist1_mergedMUXes10_q_2_delay_0;
    reg [31:0] redist2_mergedMUXes10_q_3_q;
    reg [31:0] redist3_mergedMUXes9_q_2_q;
    reg [31:0] redist4_mergedMUXes9_q_4_q;
    reg [31:0] redist4_mergedMUXes9_q_4_delay_0;
    reg [31:0] redist5_mergedMUXes9_q_5_q;
    reg [6:0] redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_q;
    reg [6:0] redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_0;
    reg [6:0] redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_1;
    reg [6:0] redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_2;
    reg [6:0] redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_q;
    reg [6:0] redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_0;
    reg [6:0] redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_1;
    reg [6:0] redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_2;
    reg [6:0] redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_q;
    reg [6:0] redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_0;
    reg [6:0] redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_1;
    reg [6:0] redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_2;
    reg [6:0] redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_q;
    reg [6:0] redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_0;
    reg [6:0] redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_1;
    reg [6:0] redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_2;
    reg [2:0] redist18_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b_8_q;
    reg [5:0] redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_q;
    reg [0:0] redist20_valid_fanout_reg0_q_1_q;
    reg [31:0] redist21_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q_2_q;
    reg [31:0] redist21_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q_2_delay_0;
    reg [0:0] redist22_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v_2_q;
    reg [0:0] redist22_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v_2_delay_0;
    reg [31:0] redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2_q;
    reg [31:0] redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2_delay_0;
    reg [31:0] redist24_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_3_q;
    reg [31:0] redist25_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q_2_q;
    reg [31:0] redist25_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q_2_delay_0;
    reg [0:0] redist26_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v_2_q;
    reg [0:0] redist26_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v_2_delay_0;
    reg [31:0] redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2_q;
    reg [31:0] redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2_delay_0;
    reg [31:0] redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4_q;
    reg [31:0] redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4_delay_0;
    reg [31:0] redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6_q;
    reg [31:0] redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6_delay_0;
    reg [31:0] redist30_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_8_q;
    reg [31:0] redist30_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_8_delay_0;
    reg [0:0] redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2_q;
    reg [0:0] redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2_delay_0;
    reg [0:0] redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4_q;
    reg [0:0] redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4_delay_0;
    reg [0:0] redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6_q;
    reg [0:0] redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6_delay_0;
    reg [0:0] redist34_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_8_q;
    reg [0:0] redist34_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_8_delay_0;
    reg [31:0] redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2_q;
    reg [31:0] redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2_delay_0;
    reg [31:0] redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4_q;
    reg [31:0] redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4_delay_0;
    reg [31:0] redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6_q;
    reg [31:0] redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6_delay_0;
    reg [31:0] redist38_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_8_q;
    reg [31:0] redist38_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_8_delay_0;
    reg [0:0] redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2_q;
    reg [0:0] redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2_delay_0;
    reg [0:0] redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4_q;
    reg [0:0] redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4_delay_0;
    reg [0:0] redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6_q;
    reg [0:0] redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6_delay_0;
    reg [0:0] redist42_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_8_q;
    reg [0:0] redist42_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_8_delay_0;
    reg [31:0] redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2_q;
    reg [31:0] redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2_delay_0;
    reg [31:0] redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4_q;
    reg [31:0] redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4_delay_0;
    reg [31:0] redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6_q;
    reg [31:0] redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6_delay_0;
    reg [31:0] redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8_q;
    reg [31:0] redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8_delay_0;
    reg [31:0] redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10_q;
    reg [31:0] redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10_delay_0;
    reg [31:0] redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12_q;
    reg [31:0] redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12_delay_0;
    reg [31:0] redist49_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_14_q;
    reg [31:0] redist49_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_14_delay_0;
    reg [31:0] redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_q;
    reg [31:0] redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_delay_0;
    reg [31:0] redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_delay_1;
    reg [31:0] redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_q;
    reg [31:0] redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_delay_0;
    reg [31:0] redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_delay_1;
    reg [31:0] redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_q;
    reg [31:0] redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_delay_0;
    reg [31:0] redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_delay_1;
    reg [31:0] redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_q;
    reg [31:0] redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_delay_0;
    reg [31:0] redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_delay_1;
    reg [31:0] redist54_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_10_q;
    reg [31:0] redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_q;
    reg [31:0] redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_delay_0;
    reg [31:0] redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_delay_1;
    reg [31:0] redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_q;
    reg [31:0] redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_delay_0;
    reg [31:0] redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_delay_1;
    reg [31:0] redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11_q;
    reg [31:0] redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11_delay_0;
    reg [31:0] redist58_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_12_q;
    reg [31:0] redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_q;
    reg [31:0] redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_delay_0;
    reg [31:0] redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_delay_1;
    reg [31:0] redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_q;
    reg [31:0] redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_delay_0;
    reg [31:0] redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_delay_1;
    reg [31:0] redist63_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_16_q;
    reg [31:0] redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_q;
    reg [31:0] redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_delay_0;
    reg [31:0] redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_delay_1;
    reg [31:0] redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17_q;
    reg [31:0] redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17_delay_0;
    reg [31:0] redist67_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_18_q;
    reg [31:0] redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_q;
    reg [31:0] redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_delay_0;
    reg [31:0] redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_delay_1;
    reg [31:0] redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7_q;
    reg [31:0] redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7_delay_0;
    reg [31:0] redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9_q;
    reg [31:0] redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9_delay_0;
    reg [31:0] redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11_q;
    reg [31:0] redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11_delay_0;
    reg [31:0] redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13_q;
    reg [31:0] redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13_delay_0;
    reg [31:0] redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15_q;
    reg [31:0] redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15_delay_0;
    reg [31:0] redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17_q;
    reg [31:0] redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17_delay_0;
    reg [31:0] redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19_q;
    reg [31:0] redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19_delay_0;
    reg [31:0] redist76_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_20_q;
    reg [31:0] redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_q;
    reg [31:0] redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_delay_0;
    reg [31:0] redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_delay_1;
    reg [31:0] redist78_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_6_q;
    reg [31:0] redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_q;
    reg [31:0] redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_delay_0;
    reg [31:0] redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_delay_1;
    reg [31:0] redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7_q;
    reg [31:0] redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7_delay_0;
    reg [31:0] redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_q;
    reg [31:0] redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_delay_0;
    reg [31:0] redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_delay_1;
    reg [31:0] redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7_q;
    reg [31:0] redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7_delay_0;
    reg [31:0] redist85_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_24_q;
    reg [31:0] redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_q;
    reg [31:0] redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_delay_0;
    reg [31:0] redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_delay_1;
    reg [31:0] redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7_q;
    reg [31:0] redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7_delay_0;
    reg [31:0] redist89_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_24_q;
    reg [31:0] redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_q;
    reg [31:0] redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_delay_0;
    reg [0:0] redist91_sync_together_1788_297_aunroll_x_in_c0_eni25_24_tpl_6_q;
    reg [0:0] redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist94_sync_together_1788_297_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist95_sync_together_1788_297_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_delay_0;
    reg [0:0] redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_q;
    reg [0:0] redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_delay_0;
    reg [0:0] redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_delay_0;
    reg [0:0] redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_q;
    reg [0:0] redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_delay_0;
    reg [0:0] redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_q;
    reg [0:0] redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_delay_0;
    reg [0:0] redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_q;
    reg [0:0] redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_delay_0;
    reg [0:0] redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_delay_1;
    reg [0:0] redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_q;
    reg [0:0] redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_delay_0;
    reg [8:0] redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2_q;
    reg [8:0] redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2_delay_0;
    reg [8:0] redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_q;
    reg [8:0] redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_delay_0;
    reg [8:0] redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_q;
    reg [8:0] redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_0;
    reg [8:0] redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_1;
    reg [8:0] redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_2;
    reg [8:0] redist110_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b_1_q;
    reg [0:0] redist111_dupName_10_comparator_x_q_5_q;
    reg [0:0] redist111_dupName_10_comparator_x_q_5_delay_0;
    reg [0:0] redist111_dupName_10_comparator_x_q_5_delay_1;
    reg [0:0] redist111_dupName_10_comparator_x_q_5_delay_2;
    reg [0:0] redist112_dupName_10_comparator_x_q_7_q;
    reg [0:0] redist112_dupName_10_comparator_x_q_7_delay_0;
    reg [0:0] redist113_dupName_10_comparator_x_q_9_q;
    reg [0:0] redist113_dupName_10_comparator_x_q_9_delay_0;
    reg [0:0] redist114_dupName_10_comparator_x_q_11_q;
    reg [0:0] redist114_dupName_10_comparator_x_q_11_delay_0;
    reg [0:0] redist115_dupName_10_comparator_x_q_13_q;
    reg [0:0] redist115_dupName_10_comparator_x_q_13_delay_0;
    reg [0:0] redist116_dupName_10_comparator_x_q_15_q;
    reg [0:0] redist116_dupName_10_comparator_x_q_15_delay_0;
    reg [0:0] redist117_dupName_10_comparator_x_q_17_q;
    reg [0:0] redist117_dupName_10_comparator_x_q_17_delay_0;
    reg [0:0] redist118_dupName_10_comparator_x_q_19_q;
    reg [0:0] redist118_dupName_10_comparator_x_q_19_delay_0;
    reg [0:0] redist119_dupName_10_comparator_x_q_21_q;
    reg [0:0] redist119_dupName_10_comparator_x_q_21_delay_0;
    reg [0:0] redist120_dupName_10_comparator_x_q_23_q;
    reg [0:0] redist120_dupName_10_comparator_x_q_23_delay_0;
    reg [0:0] redist121_dupName_10_comparator_x_q_24_q;
    reg [0:0] redist122_dupName_9_comparator_x_q_5_q;
    reg [0:0] redist122_dupName_9_comparator_x_q_5_delay_0;
    reg [0:0] redist122_dupName_9_comparator_x_q_5_delay_1;
    reg [0:0] redist122_dupName_9_comparator_x_q_5_delay_2;
    reg [0:0] redist123_dupName_9_comparator_x_q_7_q;
    reg [0:0] redist123_dupName_9_comparator_x_q_7_delay_0;
    reg [0:0] redist124_dupName_9_comparator_x_q_9_q;
    reg [0:0] redist124_dupName_9_comparator_x_q_9_delay_0;
    reg [0:0] redist125_dupName_9_comparator_x_q_11_q;
    reg [0:0] redist125_dupName_9_comparator_x_q_11_delay_0;
    reg [0:0] redist126_dupName_9_comparator_x_q_13_q;
    reg [0:0] redist126_dupName_9_comparator_x_q_13_delay_0;
    reg [0:0] redist127_dupName_9_comparator_x_q_15_q;
    reg [0:0] redist127_dupName_9_comparator_x_q_15_delay_0;
    reg [0:0] redist128_dupName_9_comparator_x_q_17_q;
    reg [0:0] redist128_dupName_9_comparator_x_q_17_delay_0;
    reg [0:0] redist129_dupName_9_comparator_x_q_19_q;
    reg [0:0] redist129_dupName_9_comparator_x_q_19_delay_0;
    reg [0:0] redist130_dupName_9_comparator_x_q_21_q;
    reg [0:0] redist130_dupName_9_comparator_x_q_21_delay_0;
    reg [0:0] redist131_dupName_9_comparator_x_q_23_q;
    reg [0:0] redist131_dupName_9_comparator_x_q_23_delay_0;
    reg [0:0] redist132_dupName_9_comparator_x_q_24_q;
    reg [0:0] redist133_dupName_6_comparator_x_q_3_q;
    reg [0:0] redist133_dupName_6_comparator_x_q_3_delay_0;
    reg [0:0] redist134_dupName_6_comparator_x_q_19_q;
    reg [0:0] redist135_dupName_6_comparator_x_q_20_q;
    reg [0:0] redist136_dupName_5_comparator_x_q_3_q;
    reg [0:0] redist136_dupName_5_comparator_x_q_3_delay_0;
    reg [0:0] redist137_dupName_5_comparator_x_q_5_q;
    reg [0:0] redist137_dupName_5_comparator_x_q_5_delay_0;
    reg [0:0] redist138_dupName_5_comparator_x_q_7_q;
    reg [0:0] redist138_dupName_5_comparator_x_q_7_delay_0;
    reg [0:0] redist139_dupName_5_comparator_x_q_9_q;
    reg [0:0] redist139_dupName_5_comparator_x_q_9_delay_0;
    reg [0:0] redist140_dupName_5_comparator_x_q_11_q;
    reg [0:0] redist140_dupName_5_comparator_x_q_11_delay_0;
    reg [0:0] redist141_dupName_5_comparator_x_q_13_q;
    reg [0:0] redist141_dupName_5_comparator_x_q_13_delay_0;
    reg [0:0] redist142_dupName_5_comparator_x_q_15_q;
    reg [0:0] redist142_dupName_5_comparator_x_q_15_delay_0;
    reg [0:0] redist143_dupName_5_comparator_x_q_17_q;
    reg [0:0] redist143_dupName_5_comparator_x_q_17_delay_0;
    reg [0:0] redist144_dupName_4_comparator_x_q_11_q;
    reg [0:0] redist145_dupName_4_comparator_x_q_13_q;
    reg [0:0] redist145_dupName_4_comparator_x_q_13_delay_0;
    reg [0:0] redist146_dupName_4_comparator_x_q_15_q;
    reg [0:0] redist146_dupName_4_comparator_x_q_15_delay_0;
    reg [0:0] redist147_dupName_3_comparator_x_q_11_q;
    reg [0:0] redist148_dupName_3_comparator_x_q_13_q;
    reg [0:0] redist148_dupName_3_comparator_x_q_13_delay_0;
    reg [0:0] redist149_dupName_3_comparator_x_q_15_q;
    reg [0:0] redist149_dupName_3_comparator_x_q_15_delay_0;
    reg [0:0] redist150_dupName_2_comparator_x_q_11_q;
    reg [0:0] redist151_dupName_2_comparator_x_q_13_q;
    reg [0:0] redist151_dupName_2_comparator_x_q_13_delay_0;
    reg [0:0] redist152_dupName_2_comparator_x_q_15_q;
    reg [0:0] redist152_dupName_2_comparator_x_q_15_delay_0;
    reg [0:0] redist153_dupName_1_comparator_x_q_5_q;
    reg [0:0] redist153_dupName_1_comparator_x_q_5_delay_0;
    reg [0:0] redist153_dupName_1_comparator_x_q_5_delay_1;
    reg [0:0] redist153_dupName_1_comparator_x_q_5_delay_2;
    reg [0:0] redist154_dupName_1_comparator_x_q_7_q;
    reg [0:0] redist154_dupName_1_comparator_x_q_7_delay_0;
    reg [0:0] redist155_dupName_1_comparator_x_q_9_q;
    reg [0:0] redist155_dupName_1_comparator_x_q_9_delay_0;
    reg [0:0] redist156_dupName_0_comparator_x_q_3_q;
    reg [0:0] redist156_dupName_0_comparator_x_q_3_delay_0;
    reg [0:0] redist157_dupName_0_comparator_x_q_5_q;
    reg [0:0] redist157_dupName_0_comparator_x_q_5_delay_0;
    reg [0:0] redist158_dupName_0_comparator_x_q_7_q;
    reg [0:0] redist158_dupName_0_comparator_x_q_7_delay_0;
    reg [0:0] redist159_dupName_0_comparator_x_q_9_q;
    reg [0:0] redist159_dupName_0_comparator_x_q_9_delay_0;
    reg [0:0] redist160_dupName_0_comparator_x_q_19_q;
    reg [0:0] redist161_dupName_0_comparator_x_q_20_q;
    reg [31:0] redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q;
    reg [31:0] redist163_bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b_1_q;
    reg [31:0] redist164_bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b_1_q;
    reg [31:0] redist165_bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b_1_q;
    reg [31:0] redist166_bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b_1_q;
    reg [31:0] redist167_bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b_1_q;
    reg [31:0] redist168_bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b_1_q;
    reg [31:0] redist169_bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b_1_q;
    reg [31:0] redist170_bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b_1_q;
    reg [31:0] redist171_bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b_1_q;
    reg [31:0] redist172_bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b_1_q;
    reg [7:0] redist174_i_unnamed_dijkstraoptimisedid_1788_45_q_27_q;
    reg [7:0] redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_q;
    reg [7:0] redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_0;
    reg [7:0] redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_1;
    reg [7:0] redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_2;
    reg [7:0] redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_q;
    reg [7:0] redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_0;
    reg [7:0] redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_1;
    reg [7:0] redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_2;
    reg [7:0] redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_3;
    reg [7:0] redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_q;
    reg [7:0] redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_0;
    reg [7:0] redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_1;
    reg [7:0] redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_2;
    reg [7:0] redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_3;
    reg [2:0] redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_q;
    reg [2:0] redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_0;
    reg [2:0] redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_1;
    reg [2:0] redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_2;
    reg [31:0] redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2_q;
    reg [31:0] redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2_delay_0;
    reg [31:0] redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2_q;
    reg [31:0] redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2_delay_0;
    reg [31:0] redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4_q;
    reg [31:0] redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4_delay_0;
    reg [31:0] redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2_q;
    reg [31:0] redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2_delay_0;
    reg [31:0] redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2_q;
    reg [31:0] redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2_delay_0;
    reg [31:0] redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4_q;
    reg [31:0] redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4_delay_0;
    reg [31:0] redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_q;
    reg [31:0] redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_delay_0;
    reg [31:0] redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_q;
    reg [31:0] redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_delay_0;
    reg [31:0] redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_q;
    reg [31:0] redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_delay_0;
    reg [31:0] redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_q;
    reg [31:0] redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_delay_0;
    reg [31:0] redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_q;
    reg [31:0] redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_delay_0;
    reg [31:0] redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_q;
    reg [31:0] redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_delay_0;
    reg [31:0] redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_q;
    reg [31:0] redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_delay_0;
    reg [31:0] redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_q;
    reg [31:0] redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_delay_0;
    reg [31:0] redist210_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_17_q;
    reg [0:0] redist211_comparator_q_3_q;
    reg [0:0] redist211_comparator_q_3_delay_0;
    reg [0:0] redist212_comparator_q_5_q;
    reg [0:0] redist212_comparator_q_5_delay_0;
    reg [0:0] redist213_comparator_q_7_q;
    reg [0:0] redist213_comparator_q_7_delay_0;
    reg [0:0] redist214_comparator_q_9_q;
    reg [0:0] redist214_comparator_q_9_delay_0;
    reg [0:0] redist215_comparator_q_19_q;
    reg [0:0] redist216_comparator_q_20_q;
    reg [31:0] redist6_mergedMUXes8_q_7_inputreg0_q;
    reg [31:0] redist6_mergedMUXes8_q_7_outputreg0_q;
    wire redist6_mergedMUXes8_q_7_mem_reset0;
    wire [31:0] redist6_mergedMUXes8_q_7_mem_ia;
    wire [1:0] redist6_mergedMUXes8_q_7_mem_aa;
    wire [1:0] redist6_mergedMUXes8_q_7_mem_ab;
    wire [31:0] redist6_mergedMUXes8_q_7_mem_iq;
    wire [31:0] redist6_mergedMUXes8_q_7_mem_q;
    wire [1:0] redist6_mergedMUXes8_q_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist6_mergedMUXes8_q_7_wraddr_i = 2'b11;
    wire [1:0] redist6_mergedMUXes8_q_7_offset_q;
    wire [2:0] redist6_mergedMUXes8_q_7_rdcnt_a;
    wire [2:0] redist6_mergedMUXes8_q_7_rdcnt_b;
    logic [2:0] redist6_mergedMUXes8_q_7_rdcnt_o;
    wire [2:0] redist6_mergedMUXes8_q_7_rdcnt_q;
    reg [31:0] redist7_mergedMUXes7_q_9_inputreg0_q;
    reg [31:0] redist7_mergedMUXes7_q_9_outputreg0_q;
    wire redist7_mergedMUXes7_q_9_mem_reset0;
    wire [31:0] redist7_mergedMUXes7_q_9_mem_ia;
    wire [2:0] redist7_mergedMUXes7_q_9_mem_aa;
    wire [2:0] redist7_mergedMUXes7_q_9_mem_ab;
    wire [31:0] redist7_mergedMUXes7_q_9_mem_iq;
    wire [31:0] redist7_mergedMUXes7_q_9_mem_q;
    wire [2:0] redist7_mergedMUXes7_q_9_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist7_mergedMUXes7_q_9_wraddr_i = 3'b111;
    wire [2:0] redist7_mergedMUXes7_q_9_offset_q;
    wire [3:0] redist7_mergedMUXes7_q_9_rdcnt_a;
    wire [3:0] redist7_mergedMUXes7_q_9_rdcnt_b;
    logic [3:0] redist7_mergedMUXes7_q_9_rdcnt_o;
    wire [3:0] redist7_mergedMUXes7_q_9_rdcnt_q;
    reg [31:0] redist8_mergedMUXes6_q_11_inputreg0_q;
    reg [31:0] redist8_mergedMUXes6_q_11_outputreg0_q;
    wire redist8_mergedMUXes6_q_11_mem_reset0;
    wire [31:0] redist8_mergedMUXes6_q_11_mem_ia;
    wire [2:0] redist8_mergedMUXes6_q_11_mem_aa;
    wire [2:0] redist8_mergedMUXes6_q_11_mem_ab;
    wire [31:0] redist8_mergedMUXes6_q_11_mem_iq;
    wire [31:0] redist8_mergedMUXes6_q_11_mem_q;
    wire [2:0] redist8_mergedMUXes6_q_11_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist8_mergedMUXes6_q_11_wraddr_i = 3'b111;
    wire [2:0] redist8_mergedMUXes6_q_11_offset_q;
    wire [3:0] redist8_mergedMUXes6_q_11_rdcnt_a;
    wire [3:0] redist8_mergedMUXes6_q_11_rdcnt_b;
    logic [3:0] redist8_mergedMUXes6_q_11_rdcnt_o;
    wire [3:0] redist8_mergedMUXes6_q_11_rdcnt_q;
    reg [31:0] redist9_mergedMUXes5_q_13_inputreg0_q;
    reg [31:0] redist9_mergedMUXes5_q_13_outputreg0_q;
    wire redist9_mergedMUXes5_q_13_mem_reset0;
    wire [31:0] redist9_mergedMUXes5_q_13_mem_ia;
    wire [3:0] redist9_mergedMUXes5_q_13_mem_aa;
    wire [3:0] redist9_mergedMUXes5_q_13_mem_ab;
    wire [31:0] redist9_mergedMUXes5_q_13_mem_iq;
    wire [31:0] redist9_mergedMUXes5_q_13_mem_q;
    wire [3:0] redist9_mergedMUXes5_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist9_mergedMUXes5_q_13_wraddr_i = 4'b1111;
    wire [3:0] redist9_mergedMUXes5_q_13_offset_q;
    wire [4:0] redist9_mergedMUXes5_q_13_rdcnt_a;
    wire [4:0] redist9_mergedMUXes5_q_13_rdcnt_b;
    logic [4:0] redist9_mergedMUXes5_q_13_rdcnt_o;
    wire [4:0] redist9_mergedMUXes5_q_13_rdcnt_q;
    reg [31:0] redist10_mergedMUXes4_q_15_inputreg0_q;
    reg [31:0] redist10_mergedMUXes4_q_15_outputreg0_q;
    wire redist10_mergedMUXes4_q_15_mem_reset0;
    wire [31:0] redist10_mergedMUXes4_q_15_mem_ia;
    wire [3:0] redist10_mergedMUXes4_q_15_mem_aa;
    wire [3:0] redist10_mergedMUXes4_q_15_mem_ab;
    wire [31:0] redist10_mergedMUXes4_q_15_mem_iq;
    wire [31:0] redist10_mergedMUXes4_q_15_mem_q;
    wire [3:0] redist10_mergedMUXes4_q_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist10_mergedMUXes4_q_15_wraddr_i = 4'b1111;
    wire [3:0] redist10_mergedMUXes4_q_15_offset_q;
    wire [4:0] redist10_mergedMUXes4_q_15_rdcnt_a;
    wire [4:0] redist10_mergedMUXes4_q_15_rdcnt_b;
    logic [4:0] redist10_mergedMUXes4_q_15_rdcnt_o;
    wire [4:0] redist10_mergedMUXes4_q_15_rdcnt_q;
    reg [31:0] redist11_mergedMUXes3_q_17_inputreg0_q;
    reg [31:0] redist11_mergedMUXes3_q_17_outputreg0_q;
    wire redist11_mergedMUXes3_q_17_mem_reset0;
    wire [31:0] redist11_mergedMUXes3_q_17_mem_ia;
    wire [3:0] redist11_mergedMUXes3_q_17_mem_aa;
    wire [3:0] redist11_mergedMUXes3_q_17_mem_ab;
    wire [31:0] redist11_mergedMUXes3_q_17_mem_iq;
    wire [31:0] redist11_mergedMUXes3_q_17_mem_q;
    wire [3:0] redist11_mergedMUXes3_q_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist11_mergedMUXes3_q_17_wraddr_i = 4'b1111;
    wire [3:0] redist11_mergedMUXes3_q_17_offset_q;
    wire [4:0] redist11_mergedMUXes3_q_17_rdcnt_a;
    wire [4:0] redist11_mergedMUXes3_q_17_rdcnt_b;
    logic [4:0] redist11_mergedMUXes3_q_17_rdcnt_o;
    wire [4:0] redist11_mergedMUXes3_q_17_rdcnt_q;
    reg [31:0] redist12_mergedMUXes2_q_19_inputreg0_q;
    reg [31:0] redist12_mergedMUXes2_q_19_outputreg0_q;
    wire redist12_mergedMUXes2_q_19_mem_reset0;
    wire [31:0] redist12_mergedMUXes2_q_19_mem_ia;
    wire [3:0] redist12_mergedMUXes2_q_19_mem_aa;
    wire [3:0] redist12_mergedMUXes2_q_19_mem_ab;
    wire [31:0] redist12_mergedMUXes2_q_19_mem_iq;
    wire [31:0] redist12_mergedMUXes2_q_19_mem_q;
    wire [3:0] redist12_mergedMUXes2_q_19_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist12_mergedMUXes2_q_19_wraddr_i = 4'b1111;
    wire [3:0] redist12_mergedMUXes2_q_19_offset_q;
    wire [4:0] redist12_mergedMUXes2_q_19_rdcnt_a;
    wire [4:0] redist12_mergedMUXes2_q_19_rdcnt_b;
    logic [4:0] redist12_mergedMUXes2_q_19_rdcnt_o;
    wire [4:0] redist12_mergedMUXes2_q_19_rdcnt_q;
    reg [31:0] redist13_mergedMUXes0_q_21_inputreg0_q;
    reg [31:0] redist13_mergedMUXes0_q_21_outputreg0_q;
    wire redist13_mergedMUXes0_q_21_mem_reset0;
    wire [31:0] redist13_mergedMUXes0_q_21_mem_ia;
    wire [4:0] redist13_mergedMUXes0_q_21_mem_aa;
    wire [4:0] redist13_mergedMUXes0_q_21_mem_ab;
    wire [31:0] redist13_mergedMUXes0_q_21_mem_iq;
    wire [31:0] redist13_mergedMUXes0_q_21_mem_q;
    wire [4:0] redist13_mergedMUXes0_q_21_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist13_mergedMUXes0_q_21_wraddr_i = 5'b11111;
    wire [4:0] redist13_mergedMUXes0_q_21_offset_q;
    wire [5:0] redist13_mergedMUXes0_q_21_rdcnt_a;
    wire [5:0] redist13_mergedMUXes0_q_21_rdcnt_b;
    logic [5:0] redist13_mergedMUXes0_q_21_rdcnt_o;
    wire [5:0] redist13_mergedMUXes0_q_21_rdcnt_q;
    reg [5:0] redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_outputreg0_q;
    reg [31:0] redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_inputreg0_q;
    reg [31:0] redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_outputreg0_q;
    reg [31:0] redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_inputreg0_q;
    reg [31:0] redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_outputreg0_q;
    reg [31:0] redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_outputreg0_q;
    reg [31:0] redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_inputreg0_q;
    reg [31:0] redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_outputreg0_q;
    reg [31:0] redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_outputreg0_q;
    reg [31:0] redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_inputreg0_q;
    reg [31:0] redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_outputreg0_q;
    reg [31:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_outputreg0_q;
    wire redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_reset0;
    wire [31:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_ia;
    wire [2:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_aa;
    wire [2:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_ab;
    wire [31:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_iq;
    wire [31:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_q;
    wire [2:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_i = 3'b111;
    wire [2:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_offset_q;
    wire [3:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_a;
    wire [3:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_b;
    logic [3:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_o;
    wire [3:0] redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_q;
    reg [31:0] redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_inputreg0_q;
    reg [31:0] redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_outputreg0_q;
    reg [31:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_outputreg0_q;
    wire redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_reset0;
    wire [31:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_ia;
    wire [2:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_aa;
    wire [2:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_ab;
    wire [31:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_iq;
    wire [31:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_q;
    wire [2:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_i = 3'b111;
    wire [3:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_a;
    wire [3:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_b;
    logic [3:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_o;
    wire [3:0] redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_q;
    reg [31:0] redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_inputreg0_q;
    reg [31:0] redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_outputreg0_q;
    reg [31:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_outputreg0_q;
    wire redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_reset0;
    wire [31:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_ia;
    wire [2:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_aa;
    wire [2:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_ab;
    wire [31:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_iq;
    wire [31:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_q;
    wire [2:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_i = 3'b111;
    wire [3:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_a;
    wire [3:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_b;
    logic [3:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_o;
    wire [3:0] redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_q;
    reg [31:0] redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_inputreg0_q;
    reg [31:0] redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_outputreg0_q;
    reg [31:0] redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_inputreg0_q;
    reg [31:0] redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_outputreg0_q;
    reg [31:0] redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_inputreg0_q;
    reg [31:0] redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_outputreg0_q;
    reg [31:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_outputreg0_q;
    wire redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_reset0;
    wire [31:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_ia;
    wire [3:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_aa;
    wire [3:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_ab;
    wire [31:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_iq;
    wire [31:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_q;
    wire [3:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_i = 4'b1111;
    wire [3:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_offset_q;
    wire [4:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_a;
    wire [4:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_b;
    logic [4:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_o;
    wire [4:0] redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_q;
    reg [31:0] redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_inputreg0_q;
    reg [31:0] redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_outputreg0_q;
    reg [31:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_outputreg0_q;
    wire redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_reset0;
    wire [31:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_ia;
    wire [3:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_aa;
    wire [3:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_ab;
    wire [31:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_iq;
    wire [31:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_q;
    wire [3:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_i = 4'b1111;
    wire [4:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_a;
    wire [4:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_b;
    logic [4:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_o;
    wire [4:0] redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_q;
    reg [31:0] redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_inputreg0_q;
    reg [31:0] redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_outputreg0_q;
    reg [31:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_outputreg0_q;
    wire redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_reset0;
    wire [31:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_ia;
    wire [3:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_aa;
    wire [3:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_ab;
    wire [31:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_iq;
    wire [31:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_q;
    wire [3:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_i = 4'b1111;
    wire [4:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_a;
    wire [4:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_b;
    logic [4:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_o;
    wire [4:0] redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_q;
    reg [8:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_outputreg0_q;
    wire redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_reset0;
    wire [8:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_ia;
    wire [2:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_aa;
    wire [2:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_ab;
    wire [8:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_iq;
    wire [8:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_q;
    wire [2:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i = 3'b111;
    wire [3:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_a;
    wire [3:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_b;
    logic [3:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_o;
    wire [3:0] redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_q;
    reg [8:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_outputreg0_q;
    wire redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_reset0;
    wire [8:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_ia;
    wire [2:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_aa;
    wire [2:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_ab;
    wire [8:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_iq;
    wire [8:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_q;
    wire [2:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i = 3'b111;
    wire [3:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_a;
    wire [3:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_b;
    logic [3:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_o;
    wire [3:0] redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_q;
    reg [7:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_outputreg0_q;
    wire redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_reset0;
    wire [7:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_ia;
    wire [4:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_aa;
    wire [4:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_ab;
    wire [7:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_iq;
    wire [7:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_q;
    wire [4:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_i = 5'b11111;
    wire [4:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_offset_q;
    wire [5:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_a;
    wire [5:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_b;
    logic [5:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_o;
    wire [5:0] redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_q;
    wire redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_reset0;
    wire [7:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_ia;
    wire [4:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_aa;
    wire [4:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_ab;
    wire [7:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_iq;
    wire [7:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_q;
    wire [4:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_i = 5'b11111;
    wire [4:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_offset_q;
    wire [5:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_a;
    wire [5:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_b;
    logic [5:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_o;
    wire [5:0] redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_q;
    wire redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_reset0;
    wire [7:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_ia;
    wire [4:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_aa;
    wire [4:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_ab;
    wire [7:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_iq;
    wire [7:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_q;
    wire [4:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_i = 5'b11111;
    wire [4:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_offset_q;
    wire [5:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_a;
    wire [5:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_b;
    logic [5:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_o;
    wire [5:0] redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_q;
    reg [7:0] redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_outputreg0_q;
    reg [7:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_outputreg0_q;
    wire redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_reset0;
    wire [7:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_ia;
    wire [4:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_aa;
    wire [4:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_ab;
    wire [7:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_iq;
    wire [7:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_q;
    wire [4:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_i = 5'b11111;
    wire [4:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_offset_q;
    wire [5:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_a;
    wire [5:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_b;
    logic [5:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_o;
    wire [5:0] redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_q;
    reg [7:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_outputreg0_q;
    wire redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_reset0;
    wire [7:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_ia;
    wire [2:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_aa;
    wire [2:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_ab;
    wire [7:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_iq;
    wire [7:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_q;
    wire [2:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_i = 3'b111;
    wire [2:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_offset_q;
    wire [3:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_a;
    wire [3:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_b;
    logic [3:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_o;
    wire [3:0] redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_q;
    wire redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_reset0;
    wire [7:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_ia;
    wire [3:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_aa;
    wire [3:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_ab;
    wire [7:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_iq;
    wire [7:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_q;
    wire [3:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_i = 4'b1111;
    wire [3:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_offset_q;
    wire [4:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_a;
    wire [4:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_b;
    logic [4:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_o;
    wire [4:0] redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_q;
    reg [7:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_outputreg0_q;
    wire redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_reset0;
    wire [7:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_ia;
    wire [2:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_aa;
    wire [2:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_ab;
    wire [7:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_iq;
    wire [7:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_q;
    wire [2:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_i = 3'b111;
    wire [3:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_a;
    wire [3:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_b;
    logic [3:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_o;
    wire [3:0] redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_q;
    wire redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_reset0;
    wire [7:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_ia;
    wire [3:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_aa;
    wire [3:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_ab;
    wire [7:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_iq;
    wire [7:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_q;
    wire [3:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_i = 4'b1111;
    wire [4:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_a;
    wire [4:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_b;
    logic [4:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_o;
    wire [4:0] redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_q;
    reg [7:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_outputreg0_q;
    wire redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_reset0;
    wire [7:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_ia;
    wire [3:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_aa;
    wire [3:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_ab;
    wire [7:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_iq;
    wire [7:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_q;
    wire [3:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_i = 4'b1111;
    wire [4:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_a;
    wire [4:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_b;
    logic [4:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_o;
    wire [4:0] redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_q;
    wire redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_reset0;
    wire [7:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_ia;
    wire [3:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_aa;
    wire [3:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_ab;
    wire [7:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_iq;
    wire [7:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_q;
    wire [3:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_i = 4'b1111;
    wire [3:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_offset_q;
    wire [4:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_a;
    wire [4:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_b;
    logic [4:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_o;
    wire [4:0] redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_q;
    reg [7:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_outputreg0_q;
    wire redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_reset0;
    wire [7:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_ia;
    wire [3:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_aa;
    wire [3:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_ab;
    wire [7:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_iq;
    wire [7:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_q;
    wire [3:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_i = 4'b1111;
    wire [4:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_a;
    wire [4:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_b;
    logic [4:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_o;
    wire [4:0] redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_q;
    wire redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_reset0;
    wire [7:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_ia;
    wire [3:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_aa;
    wire [3:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_ab;
    wire [7:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_iq;
    wire [7:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_q;
    wire [3:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_i = 4'b1111;
    wire [3:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_offset_q;
    wire [4:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_a;
    wire [4:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_b;
    logic [4:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_o;
    wire [4:0] redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_q;
    reg [7:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_outputreg0_q;
    wire redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_reset0;
    wire [7:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_ia;
    wire [3:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_aa;
    wire [3:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_ab;
    wire [7:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_iq;
    wire [7:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_q;
    wire [3:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_i = 4'b1111;
    wire [4:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_a;
    wire [4:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_b;
    logic [4:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_o;
    wire [4:0] redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_q;
    reg [7:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_outputreg0_q;
    wire redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_reset0;
    wire [7:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_ia;
    wire [2:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_aa;
    wire [2:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_ab;
    wire [7:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_iq;
    wire [7:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_q;
    wire [2:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_i = 3'b111;
    wire [3:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_a;
    wire [3:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_b;
    logic [3:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_o;
    wire [3:0] redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_q;
    reg [7:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_outputreg0_q;
    wire redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_reset0;
    wire [7:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_ia;
    wire [3:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_aa;
    wire [3:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_ab;
    wire [7:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_iq;
    wire [7:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_q;
    wire [3:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_i = 4'b1111;
    wire [4:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_a;
    wire [4:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_b;
    logic [4:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_o;
    wire [4:0] redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_q;
    reg [7:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_outputreg0_q;
    wire redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_reset0;
    wire [7:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_ia;
    wire [2:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_aa;
    wire [2:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_ab;
    wire [7:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_iq;
    wire [7:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_q;
    wire [2:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_i = 3'b111;
    wire [3:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_a;
    wire [3:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_b;
    logic [3:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_o;
    wire [3:0] redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_q;
    reg [7:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_outputreg0_q;
    wire redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_reset0;
    wire [7:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_ia;
    wire [4:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_aa;
    wire [4:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_ab;
    wire [7:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_iq;
    wire [7:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_q;
    wire [4:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_i = 5'b11111;
    wire [5:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_a;
    wire [5:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_b;
    logic [5:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_o;
    wire [5:0] redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_q;
    reg [7:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_outputreg0_q;
    wire redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_reset0;
    wire [7:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_ia;
    wire [4:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_aa;
    wire [4:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_ab;
    wire [7:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_iq;
    wire [7:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_q;
    wire [4:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_i = 5'b11111;
    wire [5:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_a;
    wire [5:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_b;
    logic [5:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_o;
    wire [5:0] redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg1(REG,820)@0 + 1
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

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const(CONSTANT,846)
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q = 55'b0100000001000001000000000000000000000000000000000000000;

    // i_sel_shr_dijkstraoptimisedid_1788_58_vt_const_31(CONSTANT,201)
    assign i_sel_shr_dijkstraoptimisedid_1788_58_vt_const_31_q = 3'b000;

    // i_idxprom46_i_dijkstraoptimisedid_1788_2gr_sel_x(BITSELECT,665)@0
    assign i_idxprom46_i_dijkstraoptimisedid_1788_2gr_sel_x_b = {{32{in_c0_eni25_1_tpl[31]}}, in_c0_eni25_1_tpl[31:0]};

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x(BITSELECT,475)@0
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b = i_idxprom46_i_dijkstraoptimisedid_1788_2gr_sel_x_b[8:0];

    // redist110_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b_1(DELAY,1729)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist110_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b_1_q <= i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b;
        end
    end

    // highBBits_uid922_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITSELECT,921)@1
    assign highBBits_uid922_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b = $signed(redist110_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b_1_q[8:1]);

    // highBBits_uid917_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITSELECT,916)@0
    assign highBBits_uid917_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b = $signed(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b[8:2]);

    // addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(ADD,917)@0 + 1
    assign addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_a = {1'b0, i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b = {3'b000, highBBits_uid917_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_o <= $unsigned(addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_a) + $unsigned(addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b);
        end
    end
    assign addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q = $signed(addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_o[9:0]);

    // lowRangeB_uid916_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITSELECT,915)@1
    assign lowRangeB_uid916_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in = redist110_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b_1_q[1:0];
    assign lowRangeB_uid916_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b = $signed(lowRangeB_uid916_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in[1:0]);

    // add_uid919_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITJOIN,918)@1
    assign add_uid919_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q = {addsumAHighB_uid918_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q, lowRangeB_uid916_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b};

    // a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(ADD,922)@1
    assign a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_a = {1'b0, add_uid919_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q};
    assign a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b = {5'b00000, highBBits_uid922_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b};
    assign a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_o = $unsigned(a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_a) + $unsigned(a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b);
    assign a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q = $signed(a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_o[12:0]);

    // lowRangeB_uid921_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITSELECT,920)@1
    assign lowRangeB_uid921_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in = redist110_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_trunc_sel_x_b_1_q[0:0];
    assign lowRangeB_uid921_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b = $signed(lowRangeB_uid921_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in[0:0]);

    // a_subconst_11_uid924_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITJOIN,923)@1
    assign a_subconst_11_uid924_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q = {a_subconst_11_sumAHighB_uid923_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q, lowRangeB_uid921_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b};

    // sR_bottomRange_uid928_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITSELECT,927)@1
    assign sR_bottomRange_uid928_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in = a_subconst_11_uid924_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q[12:0];
    assign sR_bottomRange_uid928_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b = $signed(sR_bottomRange_uid928_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_in[12:0]);

    // sR_mergedSignalTM_uid929_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x(BITJOIN,928)@1
    assign sR_mergedSignalTM_uid929_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q = {sR_bottomRange_uid928_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_extender_x(BITJOIN,472)@1
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_extender_x_q = {i_sel_shr_dijkstraoptimisedid_1788_58_vt_const_31_q, sR_mergedSignalTM_uid929_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_x_q};

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_1_trunc_sel_x(BITSELECT,476)@1
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_1_trunc_sel_x_b = i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_mult_extender_x_q[8:0];

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_add_x_bit_select(BITSELECT,906)@1
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_add_x_bit_select_b = $signed({1'b0, i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_1_trunc_sel_x_b[8:0]});

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x(BITSELECT,477)@1
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b = i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_add_x_bit_select_b[8:0];

    // i_arrayidx55_i_dijkstraoptimisedid_1861_0gr_append_upper_bits_x(BITJOIN,651)@1
    assign i_arrayidx55_i_dijkstraoptimisedid_1861_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b};

    // i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_select_63(BITSELECT,119)@1
    assign i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_select_63_b = i_arrayidx55_i_dijkstraoptimisedid_1861_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1(CONSTANT,87)
    assign i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q = 2'b00;

    // i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_join(BITJOIN,118)@1
    assign i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_join_q = {i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48(BLACKBOX,175)@1
    // out out_o_almost_empty@5
    // out out_o_empty@5
    // out out_o_readdata@5
    // out out_o_stall@5
    // out out_o_valid@5
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_1873_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_dijkstraoptimisedid_1788_47_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,63)
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;

    // redist92_sync_together_1788_297_aunroll_x_in_i_valid_2(DELAY,1711)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_q <= $signed(redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_delay_0);
        end
    end

    // redist93_sync_together_1788_297_aunroll_x_in_i_valid_4(DELAY,1712)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_delay_0 <= '0;
        end
        else
        begin
            redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_q <= $signed(redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_delay_0);
        end
    end

    // redist94_sync_together_1788_297_aunroll_x_in_i_valid_5(DELAY,1713)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist94_sync_together_1788_297_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist94_sync_together_1788_297_aunroll_x_in_i_valid_5_q <= redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_q;
        end
    end

    // redist95_sync_together_1788_297_aunroll_x_in_i_valid_6(DELAY,1714)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist95_sync_together_1788_297_aunroll_x_in_i_valid_6_q <= redist94_sync_together_1788_297_aunroll_x_in_i_valid_5_q;
        end
    end

    // redist96_sync_together_1788_297_aunroll_x_in_i_valid_8(DELAY,1715)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_delay_0 <= '0;
        end
        else
        begin
            redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist95_sync_together_1788_297_aunroll_x_in_i_valid_6_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_q <= $signed(redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_delay_0);
        end
    end

    // redist97_sync_together_1788_297_aunroll_x_in_i_valid_10(DELAY,1716)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_delay_0 <= '0;
        end
        else
        begin
            redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_delay_0 <= $unsigned(redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_q <= $signed(redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_delay_0);
        end
    end

    // redist98_sync_together_1788_297_aunroll_x_in_i_valid_12(DELAY,1717)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_delay_0 <= '0;
        end
        else
        begin
            redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_delay_0 <= $unsigned(redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_q <= $signed(redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_delay_0);
        end
    end

    // redist99_sync_together_1788_297_aunroll_x_in_i_valid_14(DELAY,1718)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_delay_0 <= '0;
        end
        else
        begin
            redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_delay_0 <= $unsigned(redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_q <= $signed(redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_delay_0);
        end
    end

    // redist100_sync_together_1788_297_aunroll_x_in_i_valid_16(DELAY,1719)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_delay_0 <= '0;
        end
        else
        begin
            redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_q <= $signed(redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_delay_0);
        end
    end

    // redist101_sync_together_1788_297_aunroll_x_in_i_valid_18(DELAY,1720)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_delay_0 <= '0;
        end
        else
        begin
            redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_delay_0 <= $unsigned(redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_q <= $signed(redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_delay_0);
        end
    end

    // redist102_sync_together_1788_297_aunroll_x_in_i_valid_20(DELAY,1721)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_delay_0 <= '0;
        end
        else
        begin
            redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_delay_0 <= $unsigned(redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_q <= $signed(redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_delay_0);
        end
    end

    // redist103_sync_together_1788_297_aunroll_x_in_i_valid_23(DELAY,1722)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_delay_0 <= '0;
        end
        else
        begin
            redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_delay_0 <= $unsigned(redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_delay_1 <= redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_delay_0;
        end
    end
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_q <= '0;
        end
        else
        begin
            redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_q <= $signed(redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_delay_1);
        end
    end

    // valid_fanout_reg15(REG,834)@23 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_q;
        end
    end

    // i_spec_select566_dijkstraoptimisedid_1788_65invSel(LOGICAL,1595)@6
    assign i_spec_select566_dijkstraoptimisedid_1788_65invSel_q = ~ (i_cmp71_i_dijkstraoptimisedid_1788_63_c);

    // redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_inputreg0(DELAY,1916)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_inputreg0_q <= in_c0_eni25_20_tpl;
        end
    end

    // redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5(DELAY,1696)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_delay_0 <= $unsigned(redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_inputreg0_q);
            redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_delay_1 <= redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_delay_0;
            redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_q <= $signed(redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_delay_1);
        end
    end

    // redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_outputreg0(DELAY,1917)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_outputreg0_q <= redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_q;
        end
    end

    // redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_inputreg0(DELAY,1932)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_inputreg0_q <= in_c0_eni25_23_tpl;
        end
    end

    // redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5(DELAY,1705)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_delay_0 <= $unsigned(redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_inputreg0_q);
            redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_delay_1 <= redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_delay_0;
            redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_q <= $signed(redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_delay_1);
        end
    end

    // redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_outputreg0(DELAY,1933)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_outputreg0_q <= redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_q;
        end
    end

    // c_i32_2_1788_285(CONSTANT,54)
    assign c_i32_2_1788_285_q = 32'b00000000000000000000000000000010;

    // i_sel_bits_dijkstraoptimisedid_1788_53_vt_const_31(CONSTANT,198)
    assign i_sel_bits_dijkstraoptimisedid_1788_53_vt_const_31_q = 29'b00000000000000000000000000000;

    // i_sel_bits_dijkstraoptimisedid_1788_53_BitSelect_for_a(BITSELECT,904)@0
    assign i_sel_bits_dijkstraoptimisedid_1788_53_BitSelect_for_a_b = $signed(in_c0_eni25_1_tpl[2:0]);

    // i_sel_bits_dijkstraoptimisedid_1788_53_join(BITJOIN,905)@0
    assign i_sel_bits_dijkstraoptimisedid_1788_53_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_sel_bits_dijkstraoptimisedid_1788_53_BitSelect_for_a_b};

    // i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2(BITSELECT,200)@0
    assign i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b = i_sel_bits_dijkstraoptimisedid_1788_53_join_q[2:0];

    // redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4(DELAY,1814)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_0 <= $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b);
            redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_1 <= redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_0;
            redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_2 <= redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_1;
            redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_q <= $signed(redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_delay_2);
        end
    end

    // i_sel_bits_dijkstraoptimisedid_1788_53_vt_join(BITJOIN,199)@4
    assign i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q = {i_sel_bits_dijkstraoptimisedid_1788_53_vt_const_31_q, redist195_i_sel_bits_dijkstraoptimisedid_1788_53_vt_select_2_b_4_q};

    // dupName_0_comparator_x(LOGICAL,288)@4 + 1
    assign dupName_0_comparator_x_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_2_1788_285_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_inputreg0(DELAY,1925)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_inputreg0_q <= in_c0_eni25_22_tpl;
        end
    end

    // redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5(DELAY,1701)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_delay_0 <= $unsigned(redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_inputreg0_q);
            redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_delay_1 <= redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_delay_0;
            redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_q <= $signed(redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_delay_1);
        end
    end

    // redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_outputreg0(DELAY,1926)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_outputreg0_q <= redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_q;
        end
    end

    // c_i32_1_1788_286(CONSTANT,53)
    assign c_i32_1_1788_286_q = 32'b00000000000000000000000000000001;

    // comparator(LOGICAL,61)@4 + 1
    assign comparator_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_1_1788_286_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_inputreg0(DELAY,1918)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_inputreg0_q <= in_c0_eni25_21_tpl;
        end
    end

    // redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5(DELAY,1698)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_delay_0 <= $unsigned(redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_inputreg0_q);
            redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_delay_1 <= redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_delay_0;
            redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_q <= $signed(redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_delay_1);
        end
    end

    // redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_outputreg0(DELAY,1919)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_outputreg0_q <= redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_q;
        end
    end

    // c_i32_0_1788_287(CONSTANT,52)
    assign c_i32_0_1788_287_q = 32'b00000000000000000000000000000000;

    // dupName_6_comparator_x(LOGICAL,318)@4 + 1
    assign dupName_6_comparator_x_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_0_1788_287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_6_comparator_x_delay ( .xin(dupName_6_comparator_x_qi), .xout(dupName_6_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt46_dijkstraoptimisedid_1788_57_opt(SELECTOR,783)@5
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt46_dijkstraoptimisedid_1788_57_opt_q = redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_outputreg0_q;
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt46_dijkstraoptimisedid_1788_57_opt_q = redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_outputreg0_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt46_dijkstraoptimisedid_1788_57_opt_q = redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_outputreg0_q;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt46_dijkstraoptimisedid_1788_57_opt_q = redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_outputreg0_q;
        end
    end

    // i_sel_shr_dijkstraoptimisedid_1918_0gr_shift_x_fs(BITSHIFT,1583)@0
    assign i_sel_shr_dijkstraoptimisedid_1918_0gr_shift_x_fs_qint = in_c0_eni25_1_tpl;
    assign i_sel_shr_dijkstraoptimisedid_1918_0gr_shift_x_fs_q = i_sel_shr_dijkstraoptimisedid_1918_0gr_shift_x_fs_qint[31:3];

    // i_sel_shr_dijkstraoptimisedid_1788_58_vt_select_28(BITSELECT,203)@0
    assign i_sel_shr_dijkstraoptimisedid_1788_58_vt_select_28_in = {3'b000, i_sel_shr_dijkstraoptimisedid_1918_0gr_shift_x_fs_q};
    assign i_sel_shr_dijkstraoptimisedid_1788_58_vt_select_28_b = i_sel_shr_dijkstraoptimisedid_1788_58_vt_select_28_in[28:0];

    // i_sel_shr_dijkstraoptimisedid_1788_58_vt_join(BITJOIN,202)@0
    assign i_sel_shr_dijkstraoptimisedid_1788_58_vt_join_q = {i_sel_shr_dijkstraoptimisedid_1788_58_vt_const_31_q, i_sel_shr_dijkstraoptimisedid_1788_58_vt_select_28_b};

    // dupName_10_comparator_x(LOGICAL,338)@0 + 1
    assign dupName_10_comparator_x_qi = $unsigned(i_sel_shr_dijkstraoptimisedid_1788_58_vt_join_q == c_i32_1_1788_286_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_10_comparator_x_delay ( .xin(dupName_10_comparator_x_qi), .xout(dupName_10_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist111_dupName_10_comparator_x_q_5(DELAY,1730)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist111_dupName_10_comparator_x_q_5_delay_0 <= $unsigned(dupName_10_comparator_x_q);
            redist111_dupName_10_comparator_x_q_5_delay_1 <= redist111_dupName_10_comparator_x_q_5_delay_0;
            redist111_dupName_10_comparator_x_q_5_delay_2 <= redist111_dupName_10_comparator_x_q_5_delay_1;
            redist111_dupName_10_comparator_x_q_5_q <= $signed(redist111_dupName_10_comparator_x_q_5_delay_2);
        end
    end

    // redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_inputreg0(DELAY,1914)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_inputreg0_q <= in_c0_eni25_19_tpl;
        end
    end

    // redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5(DELAY,1687)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_delay_0 <= $unsigned(redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_inputreg0_q);
            redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_delay_1 <= redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_delay_0;
            redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_q <= $signed(redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_delay_1);
        end
    end

    // redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_outputreg0(DELAY,1915)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_outputreg0_q <= redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_q;
        end
    end

    // c_i32_7_1788_280(CONSTANT,59)
    assign c_i32_7_1788_280_q = 32'b00000000000000000000000000000111;

    // dupName_5_comparator_x(LOGICAL,313)@4 + 1
    assign dupName_5_comparator_x_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_7_1788_280_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_5_comparator_x_delay ( .xin(dupName_5_comparator_x_qi), .xout(dupName_5_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_inputreg0(DELAY,1907)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_inputreg0_q <= in_c0_eni25_18_tpl;
        end
    end

    // redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5(DELAY,1683)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_delay_0 <= $unsigned(redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_inputreg0_q);
            redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_delay_1 <= redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_delay_0;
            redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_q <= $signed(redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_delay_1);
        end
    end

    // redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_outputreg0(DELAY,1908)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_outputreg0_q <= redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_q;
        end
    end

    // c_i32_6_1788_281(CONSTANT,58)
    assign c_i32_6_1788_281_q = 32'b00000000000000000000000000000110;

    // dupName_4_comparator_x(LOGICAL,308)@4 + 1
    assign dupName_4_comparator_x_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_6_1788_281_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_4_comparator_x_delay ( .xin(dupName_4_comparator_x_qi), .xout(dupName_4_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_inputreg0(DELAY,1900)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_inputreg0_q <= in_c0_eni25_17_tpl;
        end
    end

    // redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5(DELAY,1680)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_delay_0 <= $unsigned(redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_inputreg0_q);
            redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_delay_1 <= redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_delay_0;
            redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_q <= $signed(redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_delay_1);
        end
    end

    // redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_outputreg0(DELAY,1901)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_outputreg0_q <= redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_q;
        end
    end

    // c_i32_5_1788_282(CONSTANT,57)
    assign c_i32_5_1788_282_q = 32'b00000000000000000000000000000101;

    // dupName_3_comparator_x(LOGICAL,303)@4 + 1
    assign dupName_3_comparator_x_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_5_1788_282_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_3_comparator_x_delay ( .xin(dupName_3_comparator_x_qi), .xout(dupName_3_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_inputreg0(DELAY,1893)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_inputreg0_q <= in_c0_eni25_16_tpl;
        end
    end

    // redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5(DELAY,1678)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_delay_0 <= $unsigned(redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_inputreg0_q);
            redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_delay_1 <= redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_delay_0;
            redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_q <= $signed(redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_delay_1);
        end
    end

    // redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_outputreg0(DELAY,1894)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_outputreg0_q <= redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_q;
        end
    end

    // c_i32_4_1788_283(CONSTANT,56)
    assign c_i32_4_1788_283_q = 32'b00000000000000000000000000000100;

    // dupName_2_comparator_x(LOGICAL,298)@4 + 1
    assign dupName_2_comparator_x_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_4_1788_283_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1(SELECTOR,787)@5
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v = 1'b0;
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q = $signed(redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q = $signed(redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v = 1'b1;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q = $signed(redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v = 1'b1;
        end
    end

    // redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_inputreg0(DELAY,1890)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_inputreg0_q <= in_c0_eni25_15_tpl;
        end
    end

    // redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5(DELAY,1674)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_delay_0 <= $unsigned(redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_inputreg0_q);
            redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_delay_1 <= redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_delay_0;
            redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_q <= $signed(redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_delay_1);
        end
    end

    // redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_outputreg0(DELAY,1891)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_outputreg0_q <= redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_q;
        end
    end

    // c_i32_3_1788_284(CONSTANT,55)
    assign c_i32_3_1788_284_q = 32'b00000000000000000000000000000011;

    // dupName_1_comparator_x(LOGICAL,293)@4 + 1
    assign dupName_1_comparator_x_qi = $unsigned(i_sel_bits_dijkstraoptimisedid_1788_53_vt_join_q == c_i32_3_1788_284_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_inputreg0(DELAY,1887)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_inputreg0_q <= in_c0_eni25_14_tpl;
        end
    end

    // redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5(DELAY,1671)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_delay_0 <= $unsigned(redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_inputreg0_q);
            redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_delay_1 <= redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_delay_0;
            redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_q <= $signed(redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_delay_1);
        end
    end

    // redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_outputreg0(DELAY,1888)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_outputreg0_q <= redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_q;
        end
    end

    // redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_inputreg0(DELAY,1885)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_inputreg0_q <= in_c0_eni25_13_tpl;
        end
    end

    // redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5(DELAY,1669)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_delay_0 <= $unsigned(redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_inputreg0_q);
            redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_delay_1 <= redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_delay_0;
            redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_q <= $signed(redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_delay_1);
        end
    end

    // redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_outputreg0(DELAY,1886)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_outputreg0_q <= redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_q;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0(SELECTOR,810)@5
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v = 1'b0;
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q = $signed(redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v = 1'b1;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q = $signed(redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v = 1'b1;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q = $signed(redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt_dijkstraoptimisedid_1788_55_opt_lev1_id0(SELECTOR,818)@5
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt_dijkstraoptimisedid_1788_55_opt_lev1_id0_q = redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_outputreg0_q;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt_dijkstraoptimisedid_1788_55_opt_lev1_id0_q = redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_outputreg0_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt_dijkstraoptimisedid_1788_55_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt_dijkstraoptimisedid_1788_55_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q;
        end
    end

    // dupName_9_comparator_x(LOGICAL,333)@0 + 1
    assign dupName_9_comparator_x_qi = $unsigned(i_sel_shr_dijkstraoptimisedid_1788_58_vt_join_q == c_i32_0_1788_287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_9_comparator_x_delay ( .xin(dupName_9_comparator_x_qi), .xout(dupName_9_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist122_dupName_9_comparator_x_q_5(DELAY,1741)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist122_dupName_9_comparator_x_q_5_delay_0 <= $unsigned(dupName_9_comparator_x_q);
            redist122_dupName_9_comparator_x_q_5_delay_1 <= redist122_dupName_9_comparator_x_q_5_delay_0;
            redist122_dupName_9_comparator_x_q_5_delay_2 <= redist122_dupName_9_comparator_x_q_5_delay_1;
            redist122_dupName_9_comparator_x_q_5_q <= $signed(redist122_dupName_9_comparator_x_q_5_delay_2);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt50_dijkstraoptimisedid_1788_60(SELECTOR,131)@5
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt50_dijkstraoptimisedid_1788_60_q = redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_outputreg0_q;
        if (redist111_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt50_dijkstraoptimisedid_1788_60_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt46_dijkstraoptimisedid_1788_57_opt_q;
        end
        if (redist122_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt50_dijkstraoptimisedid_1788_60_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt_dijkstraoptimisedid_1788_55_opt_lev1_id0_q;
        end
    end

    // i_add68_i_dijkstraoptimisedid_1788_61(ADD,86)@5
    assign i_add68_i_dijkstraoptimisedid_1788_61_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt50_dijkstraoptimisedid_1788_60_q};
    assign i_add68_i_dijkstraoptimisedid_1788_61_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_o_readdata};
    assign i_add68_i_dijkstraoptimisedid_1788_61_o = $unsigned(i_add68_i_dijkstraoptimisedid_1788_61_a) + $unsigned(i_add68_i_dijkstraoptimisedid_1788_61_b);
    assign i_add68_i_dijkstraoptimisedid_1788_61_q = i_add68_i_dijkstraoptimisedid_1788_61_o[32:0];

    // bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x(BITSELECT,276)@5
    assign bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b = i_add68_i_dijkstraoptimisedid_1788_61_q[31:0];

    // redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1(DELAY,1781)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q <= bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_mux_xinvSel(LOGICAL,1597)@6
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x(COMPARE,718)@6
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_a = $unsigned({{2{redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q[31]}}, redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_b = $unsigned({{2{i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q[31]}}, i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_o[33]);

    // mergedMUXes1(SELECTOR,1598)@6
    always_comb 
    begin
        mergedMUXes1_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes1_q = redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid51_dijkstraoptimisedid_1938_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes1_q = i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q;
        end
        if (i_or_cond_dijkstraoptimisedid_1788_52_q == 1'b1)
        begin
            mergedMUXes1_q = $signed(i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q);
        end
    end

    // valid_fanout_reg4(REG,823)@5 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= redist94_sync_together_1788_297_aunroll_x_in_i_valid_5_q;
        end
    end

    // valid_fanout_reg3(REG,822)@5 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist94_sync_together_1788_297_aunroll_x_in_i_valid_5_q;
        end
    end

    // i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x(FIFODELAY,711)@6 + 1
    // out o_data@6
    assign i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_stall = ~ (valid_fanout_reg4_q & VCC_q);
    assign i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_valid = valid_fanout_reg3_q & VCC_q;
    assign i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_data = mergedMUXes1_q;
    assign i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_i_stall_bitsignaltemp),
        .i_data(mergedMUXes1_q),
        .o_data(i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist91_sync_together_1788_297_aunroll_x_in_c0_eni25_24_tpl_6(DELAY,1710)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist91_sync_together_1788_297_aunroll_x_in_c0_eni25_24_tpl_6 ( .xin(in_c0_eni25_24_tpl), .xout(redist91_sync_together_1788_297_aunroll_x_in_c0_eni25_24_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x(MUX,710)@6
    assign i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_s = redist91_sync_together_1788_297_aunroll_x_in_c0_eni25_24_tpl_6_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q = i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_0gr_i_llvm_fpga_push_i32_push35_dijkstraoptimisedid_1948_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q = c_i32_0_1788_287_q;
            default : i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q = 32'b0;
        endcase
    end

    // i_cmp71_i_dijkstraoptimisedid_1788_63(COMPARE,120)@6
    assign i_cmp71_i_dijkstraoptimisedid_1788_63_a = $unsigned({{2{redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q[31]}}, redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q});
    assign i_cmp71_i_dijkstraoptimisedid_1788_63_b = $unsigned({{2{i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q[31]}}, i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1930_0gr_i_llvm_fpga_pop_i32_pop35_dijkstraoptimisedid_1788_62_mux_x_q});
    assign i_cmp71_i_dijkstraoptimisedid_1788_63_o = $unsigned($signed(i_cmp71_i_dijkstraoptimisedid_1788_63_a) - $signed(i_cmp71_i_dijkstraoptimisedid_1788_63_b));
    assign i_cmp71_i_dijkstraoptimisedid_1788_63_c[0] = i_cmp71_i_dijkstraoptimisedid_1788_63_o[33];

    // redist78_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_6(DELAY,1697)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist78_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_6_q <= redist77_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_5_outputreg0_q;
        end
    end

    // c_i8_1_1788_288(CONSTANT,60)
    assign c_i8_1_1788_288_q = 8'b00000001;

    // i_unnamed_dijkstraoptimisedid_1788_23(LOGICAL,223)@0
    assign i_unnamed_dijkstraoptimisedid_1788_23_q = $unsigned(in_c0_eni25_1_tpl == c_i32_0_1788_287_q ? 1'b1 : 1'b0);

    // i_spec_select_dijkstraoptimisedid_1788_25(MUX,205)@0 + 1
    assign i_spec_select_dijkstraoptimisedid_1788_25_s = i_unnamed_dijkstraoptimisedid_1788_23_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_spec_select_dijkstraoptimisedid_1788_25_s)
                1'b0 : i_spec_select_dijkstraoptimisedid_1788_25_q <= in_c0_eni25_2_tpl;
                1'b1 : i_spec_select_dijkstraoptimisedid_1788_25_q <= c_i8_1_1788_288_q;
                default : i_spec_select_dijkstraoptimisedid_1788_25_q <= 8'b0;
            endcase
        end
    end

    // redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6(DELAY,1812)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_0 <= $unsigned(i_spec_select_dijkstraoptimisedid_1788_25_q);
            redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_1 <= redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_0;
            redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_2 <= redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_1;
            redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_3 <= redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_2;
            redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_q <= $signed(redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_delay_3);
        end
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_spec_select_struct_0_shuffle_bit0_dijkstraoptimisedid_1891_0gr_NO_NAME_x(CHOOSEBITS,666)@6
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_spec_select_struct_0_shuffle_bit0_dijkstraoptimisedid_1891_0gr_NO_NAME_x_a = redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_spec_select_struct_0_shuffle_bit0_dijkstraoptimisedid_1891_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_spec_select_struct_0_shuffle_bit0_dijkstraoptimisedid_1891_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_dijkstraoptimisedid_1788_49(LOGICAL,216)@5 + 1
    assign i_tobool56_i_not_dijkstraoptimisedid_1788_49_qi = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid50_dijkstraoptimisedid_1788_48_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool56_i_not_dijkstraoptimisedid_1788_49_delay ( .xin(i_tobool56_i_not_dijkstraoptimisedid_1788_49_qi), .xout(i_tobool56_i_not_dijkstraoptimisedid_1788_49_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond_dijkstraoptimisedid_1788_52(MUX,196)@6
    assign i_or_cond_dijkstraoptimisedid_1788_52_s = i_tobool56_i_not_dijkstraoptimisedid_1788_49_q;
    always_comb 
    begin
        unique case (i_or_cond_dijkstraoptimisedid_1788_52_s)
            1'b0 : i_or_cond_dijkstraoptimisedid_1788_52_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_spec_select_struct_0_shuffle_bit0_dijkstraoptimisedid_1891_0gr_NO_NAME_x_q;
            1'b1 : i_or_cond_dijkstraoptimisedid_1788_52_q = VCC_q;
            default : i_or_cond_dijkstraoptimisedid_1788_52_q = 1'b0;
        endcase
    end

    // mergedMUXes0(SELECTOR,1596)@6
    always_comb 
    begin
        mergedMUXes0_q = 32'b0;
        if (i_spec_select566_dijkstraoptimisedid_1788_65invSel_q == 1'b1)
        begin
            mergedMUXes0_q = $signed(redist78_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_6_q);
        end
        if (i_cmp71_i_dijkstraoptimisedid_1788_63_c == 1'b1)
        begin
            mergedMUXes0_q = $signed(redist162_bgTrunc_i_add68_i_dijkstraoptimisedid_1788_61_sel_x_b_1_q);
        end
        if (i_or_cond_dijkstraoptimisedid_1788_52_q == 1'b1)
        begin
            mergedMUXes0_q = $signed(redist78_sync_together_1788_297_aunroll_x_in_c0_eni25_20_tpl_6_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68(REG,156)@6 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q <= mergedMUXes0_q;
        end
    end

    // redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2(DELAY,1821)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q);
            redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_q <= $signed(redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_delay_0);
        end
    end

    // redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4(DELAY,1822)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_delay_0 <= $unsigned(redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_q);
            redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_q <= $signed(redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_delay_0);
        end
    end

    // redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6(DELAY,1823)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_delay_0 <= $unsigned(redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_q);
            redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_q <= $signed(redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_delay_0);
        end
    end

    // redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8(DELAY,1824)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_delay_0 <= $unsigned(redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_q);
            redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_q <= $signed(redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_delay_0);
        end
    end

    // redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10(DELAY,1825)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_delay_0 <= $unsigned(redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_q);
            redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_q <= $signed(redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_delay_0);
        end
    end

    // redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12(DELAY,1826)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_delay_0 <= $unsigned(redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_q);
            redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_q <= $signed(redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_delay_0);
        end
    end

    // redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14(DELAY,1827)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_delay_0 <= $unsigned(redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_q);
            redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_q <= $signed(redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_delay_0);
        end
    end

    // redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16(DELAY,1828)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_delay_0 <= $unsigned(redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_q);
            redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_q <= $signed(redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_delay_0);
        end
    end

    // redist210_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_17(DELAY,1829)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist210_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_17_q <= redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid72_dijkstraoptimisedid_1788_228(BLACKBOX,164)@24
    // out out_dependency_out@25
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_stall_out@25
    // out out_valid_out@25
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2701_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid72_dijkstraoptimisedid_1788_228 (
        .in_predicate_in(GND_q),
        .in_src_data_in_23_0(redist210_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_17_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid72_dijkstraoptimisedid_1788_228_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,263)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid72_dijkstraoptimisedid_1788_228_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg5(REG,824)@2 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= redist92_sync_together_1788_297_aunroll_x_in_i_valid_2_q;
        end
    end

    // redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2(DELAY,1726)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2_delay_0 <= $unsigned(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b);
            redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2_q <= $signed(redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2_delay_0);
        end
    end

    // i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select(BITSELECT,1025)@3
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b = $signed(redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2_q[8:2]);

    // i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1586)
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 7'b0000001;

    // i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums(ADD,1028)@3
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b};
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_o[7:0]);

    // i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_split_join(BITJOIN,1029)@3
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_3_trunc_sel_x(BITSELECT,497)@3
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_append_upper_bits_x(BITJOIN,480)@3
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_select_63(BITSELECT,92)@3
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_select_63_b = i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_join(BITJOIN,91)@3
    assign i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_join_q = {i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72(BLACKBOX,176)@3
    // out out_o_almost_empty@7
    // out out_o_empty@7
    // out out_o_readdata@7
    // out out_o_stall@7
    // out out_o_valid@7
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_1969_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_1_dijkstraoptimisedid_1788_71_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,290)
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg16(REG,835)@12 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_q;
        end
    end

    // redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7(DELAY,1706)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7_delay_0 <= $unsigned(redist86_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_5_outputreg0_q);
            redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7_q <= $signed(redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7_delay_0);
        end
    end

    // redist156_dupName_0_comparator_x_q_3(DELAY,1775)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist156_dupName_0_comparator_x_q_3_delay_0 <= $unsigned(dupName_0_comparator_x_q);
            redist156_dupName_0_comparator_x_q_3_q <= $signed(redist156_dupName_0_comparator_x_q_3_delay_0);
        end
    end

    // redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7(DELAY,1702)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7_delay_0 <= $unsigned(redist82_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_5_outputreg0_q);
            redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7_q <= $signed(redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7_delay_0);
        end
    end

    // redist211_comparator_q_3(DELAY,1830)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist211_comparator_q_3_delay_0 <= $unsigned(comparator_q);
            redist211_comparator_q_3_q <= $signed(redist211_comparator_q_3_delay_0);
        end
    end

    // redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7(DELAY,1699)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7_delay_0 <= $unsigned(redist79_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_5_outputreg0_q);
            redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7_q <= $signed(redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7_delay_0);
        end
    end

    // redist133_dupName_6_comparator_x_q_3(DELAY,1752)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist133_dupName_6_comparator_x_q_3_delay_0 <= $unsigned(dupName_6_comparator_x_q);
            redist133_dupName_6_comparator_x_q_3_q <= $signed(redist133_dupName_6_comparator_x_q_3_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt(SELECTOR,775)@7
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q = i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q;
        if (redist156_dupName_0_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q = redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7_q;
        end
        if (redist211_comparator_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q = redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7_q;
        end
        if (redist133_dupName_6_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q = redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7_q;
        end
    end

    // redist112_dupName_10_comparator_x_q_7(DELAY,1731)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist112_dupName_10_comparator_x_q_7_delay_0 <= $unsigned(redist111_dupName_10_comparator_x_q_5_q);
            redist112_dupName_10_comparator_x_q_7_q <= $signed(redist112_dupName_10_comparator_x_q_7_delay_0);
        end
    end

    // redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7(DELAY,1688)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7_delay_0 <= $unsigned(redist68_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_5_outputreg0_q);
            redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7_q <= $signed(redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7_delay_0);
        end
    end

    // redist136_dupName_5_comparator_x_q_3(DELAY,1755)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist136_dupName_5_comparator_x_q_3_delay_0 <= $unsigned(dupName_5_comparator_x_q);
            redist136_dupName_5_comparator_x_q_3_q <= $signed(redist136_dupName_5_comparator_x_q_3_delay_0);
        end
    end

    // redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2(DELAY,1654)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q);
            redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2_q <= $signed(redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2_delay_0);
        end
    end

    // redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2(DELAY,1658)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v);
            redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2_q <= $signed(redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2_delay_0);
        end
    end

    // redist21_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q_2(DELAY,1640)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q);
            redist21_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q_2_q <= $signed(redist21_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q_2_delay_0);
        end
    end

    // redist22_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v_2(DELAY,1641)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v);
            redist22_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v_2_q <= $signed(redist22_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v_2_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev1_id0(SELECTOR,812)@7
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev1_id0_q = i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q;
        if (redist136_dupName_5_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev1_id0_q = redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7_q;
        end
        if (redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev1_id0_q = redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2_q;
        end
        if (redist22_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_v_2_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev1_id0_q = redist21_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev0_id0_q_2_q;
        end
    end

    // redist123_dupName_9_comparator_x_q_7(DELAY,1742)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist123_dupName_9_comparator_x_q_7_delay_0 <= $unsigned(redist122_dupName_9_comparator_x_q_5_q);
            redist123_dupName_9_comparator_x_q_7_q <= $signed(redist123_dupName_9_comparator_x_q_7_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt70_dijkstraoptimisedid_1788_82(SELECTOR,132)@7
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt70_dijkstraoptimisedid_1788_82_q = i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q;
        if (redist112_dupName_10_comparator_x_q_7_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt70_dijkstraoptimisedid_1788_82_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q;
        end
        if (redist123_dupName_9_comparator_x_q_7_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt70_dijkstraoptimisedid_1788_82_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt60_dijkstraoptimisedid_1788_78_opt_lev1_id0_q;
        end
    end

    // i_add68_i_1_dijkstraoptimisedid_1788_83(ADD,77)@7
    assign i_add68_i_1_dijkstraoptimisedid_1788_83_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt70_dijkstraoptimisedid_1788_82_q};
    assign i_add68_i_1_dijkstraoptimisedid_1788_83_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_o_readdata};
    assign i_add68_i_1_dijkstraoptimisedid_1788_83_o = $unsigned(i_add68_i_1_dijkstraoptimisedid_1788_83_a) + $unsigned(i_add68_i_1_dijkstraoptimisedid_1788_83_b);
    assign i_add68_i_1_dijkstraoptimisedid_1788_83_q = i_add68_i_1_dijkstraoptimisedid_1788_83_o[32:0];

    // bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x(BITSELECT,267)@7
    assign bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b = i_add68_i_1_dijkstraoptimisedid_1788_83_q[31:0];

    // redist171_bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b_1(DELAY,1790)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist171_bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b_1_q <= bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_mux_xinvSel(LOGICAL,1599)@8
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x(COMPARE,723)@8
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_a = $unsigned({{2{redist171_bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b_1_q[31]}}, redist171_bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_b = $unsigned({{2{redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_q[31]}}, redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_o[33]);

    // redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8(DELAY,1670)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_delay_0 <= $unsigned(redist50_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_5_outputreg0_q);
            redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_delay_1 <= redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_delay_0;
            redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_q <= $signed(redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_delay_1);
        end
    end

    // redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_offset(CONSTANT,1971)
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_offset_q = 3'b101;

    // redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt(ADD,2023)
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_a = {1'b0, redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_q};
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_b = {1'b0, redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_o <= $unsigned(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_a) + $unsigned(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_b);
        end
    end
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_q = redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_o[3:0];

    // i_unnamed_dijkstraoptimisedid_1788_21(LOGICAL,222)@0
    assign i_unnamed_dijkstraoptimisedid_1788_21_q = $unsigned(in_c0_eni25_1_tpl == c_i32_1_1788_286_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_27(MUX,224)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_27_s = i_unnamed_dijkstraoptimisedid_1788_21_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_27_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_27_q <= in_c0_eni25_3_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_27_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_27_q <= 8'b0;
            endcase
        end
    end

    // redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr(COUNTER,2021)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_i <= $unsigned(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_q = $signed(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_i[2:0]);

    // redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem(DUALMEM,2020)
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_27_q);
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_aa = redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_wraddr_q;
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_ab = redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_aa),
        .data_a(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_ab),
        .q_b(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_q = $signed(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_iq[7:0]);

    // redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_outputreg0(DELAY,2019)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_outputreg0_q <= redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_mem_q;
        end
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0_shuffle_bit0_dijkstraoptimisedid_1987_0gr_NO_NAME_x(CHOOSEBITS,706)@8
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0_shuffle_bit0_dijkstraoptimisedid_1987_0gr_NO_NAME_x_a = redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_outputreg0_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0_shuffle_bit0_dijkstraoptimisedid_1987_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0_shuffle_bit0_dijkstraoptimisedid_1987_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_1_dijkstraoptimisedid_1788_73(LOGICAL,207)@7 + 1
    assign i_tobool56_i_not_1_dijkstraoptimisedid_1788_73_qi = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid52_dijkstraoptimisedid_1788_72_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool56_i_not_1_dijkstraoptimisedid_1788_73_delay ( .xin(i_tobool56_i_not_1_dijkstraoptimisedid_1788_73_qi), .xout(i_tobool56_i_not_1_dijkstraoptimisedid_1788_73_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond568_dijkstraoptimisedid_1788_76(MUX,186)@8
    assign i_or_cond568_dijkstraoptimisedid_1788_76_s = i_tobool56_i_not_1_dijkstraoptimisedid_1788_73_q;
    always_comb 
    begin
        unique case (i_or_cond568_dijkstraoptimisedid_1788_76_s)
            1'b0 : i_or_cond568_dijkstraoptimisedid_1788_76_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0_shuffle_bit0_dijkstraoptimisedid_1987_0gr_NO_NAME_x_q;
            1'b1 : i_or_cond568_dijkstraoptimisedid_1788_76_q = VCC_q;
            default : i_or_cond568_dijkstraoptimisedid_1788_76_q = 1'b0;
        endcase
    end

    // mergedMUXes2(SELECTOR,1600)@8
    always_comb 
    begin
        mergedMUXes2_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes2_q = redist171_bgTrunc_i_add68_i_1_dijkstraoptimisedid_1788_83_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid53_dijkstraoptimisedid_2020_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes2_q = redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_q;
        end
        if (i_or_cond568_dijkstraoptimisedid_1788_76_q == 1'b1)
        begin
            mergedMUXes2_q = $signed(redist51_sync_together_1788_297_aunroll_x_in_c0_eni25_13_tpl_8_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86(REG,157)@8 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q <= mergedMUXes2_q;
        end
    end

    // redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2(DELAY,1819)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q);
            redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2_q <= $signed(redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2_delay_0);
        end
    end

    // redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4(DELAY,1820)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4_delay_0 <= $unsigned(redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2_q);
            redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4_q <= $signed(redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4_delay_0);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid73_dijkstraoptimisedid_1788_229(BLACKBOX,165)@13
    // out out_dependency_out@14
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_stall_out@14
    // out out_valid_out@14
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2706_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid73_dijkstraoptimisedid_1788_229 (
        .in_predicate_in(GND_q),
        .in_src_data_in_24_0(redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid73_dijkstraoptimisedid_1788_229_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,291)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid73_dijkstraoptimisedid_1788_229_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg6(REG,825)@4 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= redist93_sync_together_1788_297_aunroll_x_in_i_valid_4_q;
        end
    end

    // redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4(DELAY,1727)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_delay_0 <= $unsigned(redist107_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_2_q);
            redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_q <= $signed(redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_delay_0);
        end
    end

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select(BITSELECT,963)@5
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b = $signed(redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_q[8:3]);

    // i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1587)
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 6'b000001;

    // i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums(ADD,1090)@5
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b};
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_o[6:0]);

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select(BITSELECT,964)@5
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b = $signed(redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_q[2:0]);

    // i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_split_join(BITJOIN,1091)@5
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b};

    // i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_3_trunc_sel_x(BITSELECT,516)@5
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_append_upper_bits_x(BITJOIN,499)@5
    assign i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_select_63(BITSELECT,95)@5
    assign i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_select_63_b = i_arrayidx55_i_2_dijkstraoptimisedid_2029_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_join(BITJOIN,94)@5
    assign i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_join_q = {i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88(BLACKBOX,177)@5
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2044_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_2_dijkstraoptimisedid_1788_87_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,295)
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg17(REG,836)@12 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_q;
        end
    end

    // redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2(DELAY,1662)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q);
            redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2_q <= $signed(redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2_delay_0);
        end
    end

    // redist113_dupName_10_comparator_x_q_9(DELAY,1732)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist113_dupName_10_comparator_x_q_9_delay_0 <= $unsigned(redist112_dupName_10_comparator_x_q_7_q);
            redist113_dupName_10_comparator_x_q_9_q <= $signed(redist113_dupName_10_comparator_x_q_9_delay_0);
        end
    end

    // redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9(DELAY,1689)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9_delay_0 <= $unsigned(redist69_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_7_q);
            redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9_q <= $signed(redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9_delay_0);
        end
    end

    // redist137_dupName_5_comparator_x_q_5(DELAY,1756)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist137_dupName_5_comparator_x_q_5_delay_0 <= $unsigned(redist136_dupName_5_comparator_x_q_3_q);
            redist137_dupName_5_comparator_x_q_5_q <= $signed(redist137_dupName_5_comparator_x_q_5_delay_0);
        end
    end

    // redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4(DELAY,1655)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4_delay_0 <= $unsigned(redist35_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_2_q);
            redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4_q <= $signed(redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4_delay_0);
        end
    end

    // redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4(DELAY,1659)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4_delay_0 <= $unsigned(redist39_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_2_q);
            redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4_q <= $signed(redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4_delay_0);
        end
    end

    // redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9(DELAY,1675)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_delay_0 <= $unsigned(redist55_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_5_outputreg0_q);
            redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_delay_1 <= redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_delay_0;
            redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_q <= $signed(redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_delay_1);
        end
    end

    // redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_outputreg0(DELAY,1892)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_outputreg0_q <= redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_q;
        end
    end

    // redist153_dupName_1_comparator_x_q_5(DELAY,1772)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist153_dupName_1_comparator_x_q_5_delay_0 <= $unsigned(dupName_1_comparator_x_q);
            redist153_dupName_1_comparator_x_q_5_delay_1 <= redist153_dupName_1_comparator_x_q_5_delay_0;
            redist153_dupName_1_comparator_x_q_5_delay_2 <= redist153_dupName_1_comparator_x_q_5_delay_1;
            redist153_dupName_1_comparator_x_q_5_q <= $signed(redist153_dupName_1_comparator_x_q_5_delay_2);
        end
    end

    // redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9(DELAY,1672)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_delay_0 <= $unsigned(redist52_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_5_outputreg0_q);
            redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_delay_1 <= redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_delay_0;
            redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_q <= $signed(redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_delay_1);
        end
    end

    // redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_outputreg0(DELAY,1889)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_outputreg0_q <= redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_q;
        end
    end

    // redist157_dupName_0_comparator_x_q_5(DELAY,1776)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist157_dupName_0_comparator_x_q_5_delay_0 <= $unsigned(redist156_dupName_0_comparator_x_q_3_q);
            redist157_dupName_0_comparator_x_q_5_q <= $signed(redist157_dupName_0_comparator_x_q_5_delay_0);
        end
    end

    // redist212_comparator_q_5(DELAY,1831)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist212_comparator_q_5_delay_0 <= $unsigned(redist211_comparator_q_3_q);
            redist212_comparator_q_5_q <= $signed(redist212_comparator_q_5_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0(SELECTOR,813)@9
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_v = 1'b0;
        if (redist153_dupName_1_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_q = $signed(redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_v = 1'b1;
        end
        if (redist157_dupName_0_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_q = $signed(redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_v = 1'b1;
        end
        if (redist212_comparator_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_q = $signed(i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev1_id0(SELECTOR,815)@9
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev1_id0_q = redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_q;
        if (redist137_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev1_id0_q = redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9_q;
        end
        if (redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev1_id0_q = redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev0_id0_q;
        end
    end

    // redist124_dupName_9_comparator_x_q_9(DELAY,1743)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist124_dupName_9_comparator_x_q_9_delay_0 <= $unsigned(redist123_dupName_9_comparator_x_q_7_q);
            redist124_dupName_9_comparator_x_q_9_q <= $signed(redist124_dupName_9_comparator_x_q_9_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt90_dijkstraoptimisedid_1788_98(SELECTOR,133)@9
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt90_dijkstraoptimisedid_1788_98_q = redist202_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_2_q;
        if (redist113_dupName_10_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt90_dijkstraoptimisedid_1788_98_q = redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2_q;
        end
        if (redist124_dupName_9_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt90_dijkstraoptimisedid_1788_98_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt80_dijkstraoptimisedid_1788_94_opt_lev1_id0_q;
        end
    end

    // i_add68_i_2_dijkstraoptimisedid_1788_99(ADD,78)@9
    assign i_add68_i_2_dijkstraoptimisedid_1788_99_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt90_dijkstraoptimisedid_1788_98_q};
    assign i_add68_i_2_dijkstraoptimisedid_1788_99_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_o_readdata};
    assign i_add68_i_2_dijkstraoptimisedid_1788_99_o = $unsigned(i_add68_i_2_dijkstraoptimisedid_1788_99_a) + $unsigned(i_add68_i_2_dijkstraoptimisedid_1788_99_b);
    assign i_add68_i_2_dijkstraoptimisedid_1788_99_q = i_add68_i_2_dijkstraoptimisedid_1788_99_o[32:0];

    // bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x(BITSELECT,268)@9
    assign bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b = i_add68_i_2_dijkstraoptimisedid_1788_99_q[31:0];

    // redist170_bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b_1(DELAY,1789)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist170_bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b_1_q <= bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_mux_xinvSel(LOGICAL,1601)@10
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x(COMPARE,728)@10
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_a = $unsigned({{2{redist170_bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b_1_q[31]}}, redist170_bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_b = $unsigned({{2{redist54_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_10_q[31]}}, redist54_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_10_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_o[33]);

    // redist54_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_10(DELAY,1673)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_10_q <= redist53_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_9_outputreg0_q;
        end
    end

    // redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_offset(CONSTANT,1898)
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_offset_q = 3'b011;

    // redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt(ADD,2013)
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_a = {1'b0, redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_q};
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_b = {1'b0, redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_o <= $unsigned(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_a) + $unsigned(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_b);
        end
    end
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_q = redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_o[3:0];

    // i_unnamed_dijkstraoptimisedid_1788_19(LOGICAL,221)@0
    assign i_unnamed_dijkstraoptimisedid_1788_19_q = $unsigned(in_c0_eni25_1_tpl == c_i32_2_1788_285_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_29(MUX,225)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_29_s = i_unnamed_dijkstraoptimisedid_1788_19_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_29_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_29_q <= in_c0_eni25_4_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_29_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_29_q <= 8'b0;
            endcase
        end
    end

    // redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr(COUNTER,2011)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_i <= $unsigned(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_q = $signed(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_i[2:0]);

    // redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem(DUALMEM,2010)
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_29_q);
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_aa = redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_wraddr_q;
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_ab = redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_aa),
        .data_a(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_ab),
        .q_b(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_q = $signed(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_iq[7:0]);

    // redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_outputreg0(DELAY,2009)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_outputreg0_q <= redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_mem_q;
        end
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0155_shuffle_bit0_dijkstraoptimisedid_2062_0gr_NO_NAME_x(CHOOSEBITS,670)@10
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0155_shuffle_bit0_dijkstraoptimisedid_2062_0gr_NO_NAME_x_a = redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_outputreg0_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0155_shuffle_bit0_dijkstraoptimisedid_2062_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0155_shuffle_bit0_dijkstraoptimisedid_2062_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_2_dijkstraoptimisedid_1788_89(LOGICAL,208)@9 + 1
    assign i_tobool56_i_not_2_dijkstraoptimisedid_1788_89_qi = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid54_dijkstraoptimisedid_1788_88_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool56_i_not_2_dijkstraoptimisedid_1788_89_delay ( .xin(i_tobool56_i_not_2_dijkstraoptimisedid_1788_89_qi), .xout(i_tobool56_i_not_2_dijkstraoptimisedid_1788_89_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond570_dijkstraoptimisedid_1788_92(MUX,187)@10
    assign i_or_cond570_dijkstraoptimisedid_1788_92_s = i_tobool56_i_not_2_dijkstraoptimisedid_1788_89_q;
    always_comb 
    begin
        unique case (i_or_cond570_dijkstraoptimisedid_1788_92_s)
            1'b0 : i_or_cond570_dijkstraoptimisedid_1788_92_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0155_shuffle_bit0_dijkstraoptimisedid_2062_0gr_NO_NAME_x_q;
            1'b1 : i_or_cond570_dijkstraoptimisedid_1788_92_q = VCC_q;
            default : i_or_cond570_dijkstraoptimisedid_1788_92_q = 1'b0;
        endcase
    end

    // mergedMUXes3(SELECTOR,1602)@10
    always_comb 
    begin
        mergedMUXes3_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes3_q = redist170_bgTrunc_i_add68_i_2_dijkstraoptimisedid_1788_99_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid55_dijkstraoptimisedid_2095_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes3_q = redist54_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_10_q;
        end
        if (i_or_cond570_dijkstraoptimisedid_1788_92_q == 1'b1)
        begin
            mergedMUXes3_q = $signed(redist54_sync_together_1788_297_aunroll_x_in_c0_eni25_14_tpl_10_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102(REG,158)@10 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q <= mergedMUXes3_q;
        end
    end

    // redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2(DELAY,1818)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q);
            redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2_q <= $signed(redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2_delay_0);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid74_dijkstraoptimisedid_1788_230(BLACKBOX,166)@13
    // out out_dependency_out@14
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_stall_out@14
    // out out_valid_out@14
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2711_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid74_dijkstraoptimisedid_1788_230 (
        .in_predicate_in(GND_q),
        .in_src_data_in_25_0(redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid74_dijkstraoptimisedid_1788_230_out_intel_reserved_ffwd_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,296)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid74_dijkstraoptimisedid_1788_230_out_intel_reserved_ffwd_25_0;

    // valid_fanout_reg7(REG,826)@6 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= redist95_sync_together_1788_297_aunroll_x_in_i_valid_6_q;
        end
    end

    // redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4(DELAY,1633)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_0 <= $unsigned(i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b);
            redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_1 <= redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_0;
            redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_2 <= redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_1;
            redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_q <= $signed(redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_delay_2);
        end
    end

    // i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1588)
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 7'b0000011;

    // i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums(ADD,1152)@7
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_q};
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_o[7:0]);

    // i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_split_join(BITJOIN,1153)@7
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_3_trunc_sel_x(BITSELECT,535)@7
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_append_upper_bits_x(BITJOIN,518)@7
    assign i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_select_63(BITSELECT,98)@7
    assign i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_select_63_b = i_arrayidx55_i_3_dijkstraoptimisedid_2104_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_join(BITJOIN,97)@7
    assign i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_join_q = {i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104(BLACKBOX,178)@7
    // out out_o_almost_empty@11
    // out out_o_empty@11
    // out out_o_readdata@11
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2119_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_3_dijkstraoptimisedid_1788_103_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,300)
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg18(REG,837)@12 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_q;
        end
    end

    // redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4(DELAY,1663)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4_delay_0 <= $unsigned(redist43_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_2_q);
            redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4_q <= $signed(redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4_delay_0);
        end
    end

    // redist114_dupName_10_comparator_x_q_11(DELAY,1733)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist114_dupName_10_comparator_x_q_11_delay_0 <= $unsigned(redist113_dupName_10_comparator_x_q_9_q);
            redist114_dupName_10_comparator_x_q_11_q <= $signed(redist114_dupName_10_comparator_x_q_11_delay_0);
        end
    end

    // redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11(DELAY,1690)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11_delay_0 <= $unsigned(redist70_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_9_q);
            redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11_q <= $signed(redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11_delay_0);
        end
    end

    // redist138_dupName_5_comparator_x_q_7(DELAY,1757)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist138_dupName_5_comparator_x_q_7_delay_0 <= $unsigned(redist137_dupName_5_comparator_x_q_5_q);
            redist138_dupName_5_comparator_x_q_7_q <= $signed(redist138_dupName_5_comparator_x_q_7_delay_0);
        end
    end

    // redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6(DELAY,1656)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6_delay_0 <= $unsigned(redist36_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_4_q);
            redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6_q <= $signed(redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6_delay_0);
        end
    end

    // redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6(DELAY,1660)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6_delay_0 <= $unsigned(redist40_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_4_q);
            redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6_q <= $signed(redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6_delay_0);
        end
    end

    // redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11(DELAY,1676)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11_delay_0 <= $unsigned(redist56_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_9_outputreg0_q);
            redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11_q <= $signed(redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11_delay_0);
        end
    end

    // redist154_dupName_1_comparator_x_q_7(DELAY,1773)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist154_dupName_1_comparator_x_q_7_delay_0 <= $unsigned(redist153_dupName_1_comparator_x_q_5_q);
            redist154_dupName_1_comparator_x_q_7_q <= $signed(redist154_dupName_1_comparator_x_q_7_delay_0);
        end
    end

    // redist158_dupName_0_comparator_x_q_7(DELAY,1777)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist158_dupName_0_comparator_x_q_7_delay_0 <= $unsigned(redist157_dupName_0_comparator_x_q_5_q);
            redist158_dupName_0_comparator_x_q_7_q <= $signed(redist158_dupName_0_comparator_x_q_7_delay_0);
        end
    end

    // redist213_comparator_q_7(DELAY,1832)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist213_comparator_q_7_delay_0 <= $unsigned(redist212_comparator_q_5_q);
            redist213_comparator_q_7_q <= $signed(redist213_comparator_q_7_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0(SELECTOR,786)@11
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_v = 1'b0;
        if (redist154_dupName_1_comparator_x_q_7_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_q = $signed(redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_v = 1'b1;
        end
        if (redist158_dupName_0_comparator_x_q_7_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_q = $signed(i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_v = 1'b1;
        end
        if (redist213_comparator_q_7_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_q = $signed(redist200_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_2_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev1_id0(SELECTOR,788)@11
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev1_id0_q = redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_q;
        if (redist138_dupName_5_comparator_x_q_7_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev1_id0_q = redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11_q;
        end
        if (redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev1_id0_q = redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id0_q;
        end
    end

    // redist125_dupName_9_comparator_x_q_11(DELAY,1744)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist125_dupName_9_comparator_x_q_11_delay_0 <= $unsigned(redist124_dupName_9_comparator_x_q_9_q);
            redist125_dupName_9_comparator_x_q_11_q <= $signed(redist125_dupName_9_comparator_x_q_11_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt110_dijkstraoptimisedid_1788_114(SELECTOR,123)@11
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt110_dijkstraoptimisedid_1788_114_q = redist203_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_4_q;
        if (redist114_dupName_10_comparator_x_q_11_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt110_dijkstraoptimisedid_1788_114_q = redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4_q;
        end
        if (redist125_dupName_9_comparator_x_q_11_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt110_dijkstraoptimisedid_1788_114_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev1_id0_q;
        end
    end

    // i_add68_i_3_dijkstraoptimisedid_1788_115(ADD,79)@11
    assign i_add68_i_3_dijkstraoptimisedid_1788_115_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt110_dijkstraoptimisedid_1788_114_q};
    assign i_add68_i_3_dijkstraoptimisedid_1788_115_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_o_readdata};
    assign i_add68_i_3_dijkstraoptimisedid_1788_115_o = $unsigned(i_add68_i_3_dijkstraoptimisedid_1788_115_a) + $unsigned(i_add68_i_3_dijkstraoptimisedid_1788_115_b);
    assign i_add68_i_3_dijkstraoptimisedid_1788_115_q = i_add68_i_3_dijkstraoptimisedid_1788_115_o[32:0];

    // bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x(BITSELECT,269)@11
    assign bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b = i_add68_i_3_dijkstraoptimisedid_1788_115_q[31:0];

    // redist169_bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b_1(DELAY,1788)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist169_bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b_1_q <= bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_mux_xinvSel(LOGICAL,1603)@12
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x(COMPARE,733)@12
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_a = $unsigned({{2{redist169_bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b_1_q[31]}}, redist169_bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_b = $unsigned({{2{redist58_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_12_q[31]}}, redist58_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_12_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_o[33]);

    // redist58_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_12(DELAY,1677)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist58_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_12_q <= redist57_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_11_q;
        end
    end

    // redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_offset(CONSTANT,2002)
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_offset_q = 4'b1001;

    // redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt(ADD,2003)
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_a = {1'b0, redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_q};
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_b = {1'b0, redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_o <= $unsigned(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_a) + $unsigned(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_b);
        end
    end
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_q = redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_o[4:0];

    // i_unnamed_dijkstraoptimisedid_1788_17(LOGICAL,220)@0
    assign i_unnamed_dijkstraoptimisedid_1788_17_q = $unsigned(in_c0_eni25_1_tpl == c_i32_3_1788_284_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_31(MUX,226)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_31_s = i_unnamed_dijkstraoptimisedid_1788_17_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_31_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_31_q <= in_c0_eni25_5_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_31_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_31_q <= 8'b0;
            endcase
        end
    end

    // redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr(COUNTER,2001)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_i <= $unsigned(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_q = $signed(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_i[3:0]);

    // redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem(DUALMEM,2000)
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_31_q);
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_aa = redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_wraddr_q;
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_ab = redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_aa),
        .data_a(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_ab),
        .q_b(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_q = $signed(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_iq[7:0]);

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0156_shuffle_bit0_dijkstraoptimisedid_2137_0gr_NO_NAME_x(CHOOSEBITS,674)@11
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0156_shuffle_bit0_dijkstraoptimisedid_2137_0gr_NO_NAME_x_a = redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0156_shuffle_bit0_dijkstraoptimisedid_2137_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0156_shuffle_bit0_dijkstraoptimisedid_2137_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_3_dijkstraoptimisedid_1788_105(LOGICAL,209)@11
    assign i_tobool56_i_not_3_dijkstraoptimisedid_1788_105_q = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid56_dijkstraoptimisedid_1788_104_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);

    // i_or_cond572_dijkstraoptimisedid_1788_108(MUX,188)@11 + 1
    assign i_or_cond572_dijkstraoptimisedid_1788_108_s = i_tobool56_i_not_3_dijkstraoptimisedid_1788_105_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_or_cond572_dijkstraoptimisedid_1788_108_s)
                1'b0 : i_or_cond572_dijkstraoptimisedid_1788_108_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0156_shuffle_bit0_dijkstraoptimisedid_2137_0gr_NO_NAME_x_q;
                1'b1 : i_or_cond572_dijkstraoptimisedid_1788_108_q <= VCC_q;
                default : i_or_cond572_dijkstraoptimisedid_1788_108_q <= 1'b0;
            endcase
        end
    end

    // mergedMUXes4(SELECTOR,1604)@12
    always_comb 
    begin
        mergedMUXes4_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes4_q = redist169_bgTrunc_i_add68_i_3_dijkstraoptimisedid_1788_115_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid57_dijkstraoptimisedid_2170_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes4_q = redist58_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_12_q;
        end
        if (i_or_cond572_dijkstraoptimisedid_1788_108_q == 1'b1)
        begin
            mergedMUXes4_q = $signed(redist58_sync_together_1788_297_aunroll_x_in_c0_eni25_15_tpl_12_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_28_fanout_adaptor_dijkstraoptimisedid_1788_118(REG,159)@12 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_28_fanout_adaptor_dijkstraoptimisedid_1788_118_q <= mergedMUXes4_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid75_dijkstraoptimisedid_1788_231(BLACKBOX,167)@13
    // out out_dependency_out@14
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_stall_out@14
    // out out_valid_out@14
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2716_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid75_dijkstraoptimisedid_1788_231 (
        .in_predicate_in(GND_q),
        .in_src_data_in_26_0(i_llvm_fpga_fanout_i32_acl_28_fanout_adaptor_dijkstraoptimisedid_1788_118_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid75_dijkstraoptimisedid_1788_231_out_intel_reserved_ffwd_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,301)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid75_dijkstraoptimisedid_1788_231_out_intel_reserved_ffwd_26_0;

    // valid_fanout_reg8(REG,827)@8 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= redist96_sync_together_1788_297_aunroll_x_in_i_valid_8_q;
        end
    end

    // redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8(DELAY,1728)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_0 <= $unsigned(redist108_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_4_q);
            redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_1 <= redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_0;
            redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_2 <= redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_1;
            redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_q <= $signed(redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_delay_2);
        end
    end

    // i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsMSBs_select(BITSELECT,1211)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsMSBs_select_b = $signed(redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_q[8:4]);

    // i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1589)
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 5'b00001;

    // i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums(ADD,1214)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsMSBs_select_b};
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_o[5:0]);

    // i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsLSBs_select(BITSELECT,1212)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsLSBs_select_b = $signed(redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_q[3:0]);

    // i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_split_join(BITJOIN,1215)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_rhsLSBs_select_b};

    // i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_3_trunc_sel_x(BITSELECT,554)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_append_upper_bits_x(BITJOIN,537)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_select_63(BITSELECT,101)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_select_63_b = i_arrayidx55_i_4_dijkstraoptimisedid_2179_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_join(BITJOIN,100)@9
    assign i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_join_q = {i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120(BLACKBOX,179)@9
    // out out_o_almost_empty@13
    // out out_o_empty@13
    // out out_o_readdata@13
    // out out_o_stall@13
    // out out_o_valid@13
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2194_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_4_dijkstraoptimisedid_1788_119_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,305)
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg19(REG,838)@18 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_q;
        end
    end

    // redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6(DELAY,1664)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6_delay_0 <= $unsigned(redist44_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_4_q);
            redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6_q <= $signed(redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6_delay_0);
        end
    end

    // redist115_dupName_10_comparator_x_q_13(DELAY,1734)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist115_dupName_10_comparator_x_q_13_delay_0 <= $unsigned(redist114_dupName_10_comparator_x_q_11_q);
            redist115_dupName_10_comparator_x_q_13_q <= $signed(redist115_dupName_10_comparator_x_q_13_delay_0);
        end
    end

    // redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13(DELAY,1691)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13_delay_0 <= $unsigned(redist71_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_11_q);
            redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13_q <= $signed(redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13_delay_0);
        end
    end

    // redist139_dupName_5_comparator_x_q_9(DELAY,1758)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist139_dupName_5_comparator_x_q_9_delay_0 <= $unsigned(redist138_dupName_5_comparator_x_q_7_q);
            redist139_dupName_5_comparator_x_q_9_q <= $signed(redist139_dupName_5_comparator_x_q_9_delay_0);
        end
    end

    // redist38_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_8(DELAY,1657)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_8_delay_0 <= $unsigned(redist37_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_6_q);
            redist38_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_8_q <= $signed(redist38_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_8_delay_0);
        end
    end

    // redist42_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_8(DELAY,1661)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_8_delay_0 <= $unsigned(redist41_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_6_q);
            redist42_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_8_q <= $signed(redist42_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_8_delay_0);
        end
    end

    // redist155_dupName_1_comparator_x_q_9(DELAY,1774)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist155_dupName_1_comparator_x_q_9_delay_0 <= $unsigned(redist154_dupName_1_comparator_x_q_7_q);
            redist155_dupName_1_comparator_x_q_9_q <= $signed(redist155_dupName_1_comparator_x_q_9_delay_0);
        end
    end

    // redist159_dupName_0_comparator_x_q_9(DELAY,1778)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist159_dupName_0_comparator_x_q_9_delay_0 <= $unsigned(redist158_dupName_0_comparator_x_q_7_q);
            redist159_dupName_0_comparator_x_q_9_q <= $signed(redist159_dupName_0_comparator_x_q_9_delay_0);
        end
    end

    // redist214_comparator_q_9(DELAY,1833)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist214_comparator_q_9_delay_0 <= $unsigned(redist213_comparator_q_7_q);
            redist214_comparator_q_9_q <= $signed(redist214_comparator_q_9_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0(SELECTOR,789)@13
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v = 1'b0;
        if (redist155_dupName_1_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q = $signed(i_llvm_fpga_fanout_i32_acl_28_fanout_adaptor_dijkstraoptimisedid_1788_118_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v = 1'b1;
        end
        if (redist159_dupName_0_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q = $signed(redist199_i_llvm_fpga_fanout_i32_acl_27_fanout_adaptor_dijkstraoptimisedid_1788_102_q_2_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v = 1'b1;
        end
        if (redist214_comparator_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q = $signed(redist201_i_llvm_fpga_fanout_i32_acl_26_fanout_adaptor_dijkstraoptimisedid_1788_86_q_4_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v = 1'b1;
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev1_id0(SELECTOR,791)@13
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev1_id0_q = redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_q;
        if (redist139_dupName_5_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev1_id0_q = redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13_q;
        end
        if (redist42_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_v_8_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev1_id0_q = redist38_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt100_dijkstraoptimisedid_1788_110_opt_lev0_id1_q_8_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q;
        end
    end

    // redist126_dupName_9_comparator_x_q_13(DELAY,1745)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist126_dupName_9_comparator_x_q_13_delay_0 <= $unsigned(redist125_dupName_9_comparator_x_q_11_q);
            redist126_dupName_9_comparator_x_q_13_q <= $signed(redist126_dupName_9_comparator_x_q_13_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt130_dijkstraoptimisedid_1788_130(SELECTOR,124)@13
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt130_dijkstraoptimisedid_1788_130_q = redist204_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_6_q;
        if (redist115_dupName_10_comparator_x_q_13_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt130_dijkstraoptimisedid_1788_130_q = redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6_q;
        end
        if (redist126_dupName_9_comparator_x_q_13_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt130_dijkstraoptimisedid_1788_130_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev1_id0_q;
        end
    end

    // i_add68_i_4_dijkstraoptimisedid_1788_131(ADD,80)@13
    assign i_add68_i_4_dijkstraoptimisedid_1788_131_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt130_dijkstraoptimisedid_1788_130_q};
    assign i_add68_i_4_dijkstraoptimisedid_1788_131_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_o_readdata};
    assign i_add68_i_4_dijkstraoptimisedid_1788_131_o = $unsigned(i_add68_i_4_dijkstraoptimisedid_1788_131_a) + $unsigned(i_add68_i_4_dijkstraoptimisedid_1788_131_b);
    assign i_add68_i_4_dijkstraoptimisedid_1788_131_q = i_add68_i_4_dijkstraoptimisedid_1788_131_o[32:0];

    // bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x(BITSELECT,270)@13
    assign bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b = i_add68_i_4_dijkstraoptimisedid_1788_131_q[31:0];

    // redist168_bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b_1(DELAY,1787)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist168_bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b_1_q <= bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_mux_xinvSel(LOGICAL,1605)@14
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x(COMPARE,738)@14
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_a = $unsigned({{2{redist168_bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b_1_q[31]}}, redist168_bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_b = $unsigned({{2{redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_outputreg0_q[31]}}, redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_outputreg0_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_o[33]);

    // redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt(ADD,1899)
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_a = {1'b0, redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_q};
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_b = {1'b0, redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_o <= $unsigned(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_a) + $unsigned(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_b);
        end
    end
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_q = redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_o[3:0];

    // redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr(COUNTER,1897)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_i <= $unsigned(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_q = $signed(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_i[2:0]);

    // redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem(DUALMEM,1896)
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_ia = $unsigned(redist59_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_5_outputreg0_q);
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_aa = redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_wraddr_q;
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_ab = redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_aa),
        .data_a(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_ab),
        .q_b(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_q = $signed(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_iq[31:0]);

    // redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_outputreg0(DELAY,1895)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_outputreg0_q <= redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_mem_q;
        end
    end

    // redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_offset(CONSTANT,1993)
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_offset_q = 4'b0111;

    // redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt(ADD,1994)
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_a = {1'b0, redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_q};
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_b = {1'b0, redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_o <= $unsigned(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_a) + $unsigned(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_b);
        end
    end
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_q = redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_o[4:0];

    // i_unnamed_dijkstraoptimisedid_1788_15(LOGICAL,219)@0
    assign i_unnamed_dijkstraoptimisedid_1788_15_q = $unsigned(in_c0_eni25_1_tpl == c_i32_4_1788_283_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_33(MUX,227)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_33_s = i_unnamed_dijkstraoptimisedid_1788_15_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_33_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_33_q <= in_c0_eni25_6_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_33_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_33_q <= 8'b0;
            endcase
        end
    end

    // redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr(COUNTER,1992)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_i <= $unsigned(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_q = $signed(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_i[3:0]);

    // redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem(DUALMEM,1991)
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_33_q);
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_aa = redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_wraddr_q;
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_ab = redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_aa),
        .data_a(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_ab),
        .q_b(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_q = $signed(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_iq[7:0]);

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0157_shuffle_bit0_dijkstraoptimisedid_2212_0gr_NO_NAME_x(CHOOSEBITS,678)@13
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0157_shuffle_bit0_dijkstraoptimisedid_2212_0gr_NO_NAME_x_a = redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0157_shuffle_bit0_dijkstraoptimisedid_2212_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0157_shuffle_bit0_dijkstraoptimisedid_2212_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_4_dijkstraoptimisedid_1788_121(LOGICAL,210)@13
    assign i_tobool56_i_not_4_dijkstraoptimisedid_1788_121_q = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid58_dijkstraoptimisedid_1788_120_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);

    // i_or_cond574_dijkstraoptimisedid_1788_124(MUX,189)@13 + 1
    assign i_or_cond574_dijkstraoptimisedid_1788_124_s = i_tobool56_i_not_4_dijkstraoptimisedid_1788_121_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_or_cond574_dijkstraoptimisedid_1788_124_s)
                1'b0 : i_or_cond574_dijkstraoptimisedid_1788_124_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0157_shuffle_bit0_dijkstraoptimisedid_2212_0gr_NO_NAME_x_q;
                1'b1 : i_or_cond574_dijkstraoptimisedid_1788_124_q <= VCC_q;
                default : i_or_cond574_dijkstraoptimisedid_1788_124_q <= 1'b0;
            endcase
        end
    end

    // mergedMUXes5(SELECTOR,1606)@14
    always_comb 
    begin
        mergedMUXes5_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes5_q = redist168_bgTrunc_i_add68_i_4_dijkstraoptimisedid_1788_131_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid59_dijkstraoptimisedid_2245_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes5_q = redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_outputreg0_q;
        end
        if (i_or_cond574_dijkstraoptimisedid_1788_124_q == 1'b1)
        begin
            mergedMUXes5_q = $signed(redist60_sync_together_1788_297_aunroll_x_in_c0_eni25_16_tpl_14_outputreg0_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134(REG,160)@14 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q <= mergedMUXes5_q;
        end
    end

    // redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2(DELAY,1816)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q);
            redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2_q <= $signed(redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2_delay_0);
        end
    end

    // redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4(DELAY,1817)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4_delay_0 <= $unsigned(redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2_q);
            redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4_q <= $signed(redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4_delay_0);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid76_dijkstraoptimisedid_1788_232(BLACKBOX,168)@19
    // out out_dependency_out@20
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_stall_out@20
    // out out_valid_out@20
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2721_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid76_dijkstraoptimisedid_1788_232 (
        .in_predicate_in(GND_q),
        .in_src_data_in_27_0(redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid76_dijkstraoptimisedid_1788_232_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,306)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid76_dijkstraoptimisedid_1788_232_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg9(REG,828)@10 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= redist97_sync_together_1788_297_aunroll_x_in_i_valid_10_q;
        end
    end

    // redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8(DELAY,1634)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_0 <= $unsigned(redist14_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_4_q);
            redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_1 <= redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_0;
            redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_2 <= redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_1;
            redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_q <= $signed(redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_delay_2);
        end
    end

    // i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1590)
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 7'b0000101;

    // i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums(ADD,1276)@11
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_q};
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_o[7:0]);

    // i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_split_join(BITJOIN,1277)@11
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_3_trunc_sel_x(BITSELECT,573)@11
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_append_upper_bits_x(BITJOIN,556)@11
    assign i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_select_63(BITSELECT,104)@11
    assign i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_select_63_b = i_arrayidx55_i_5_dijkstraoptimisedid_2254_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_join(BITJOIN,103)@11
    assign i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_join_q = {i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136(BLACKBOX,180)@11
    // out out_o_almost_empty@15
    // out out_o_empty@15
    // out out_o_readdata@15
    // out out_o_stall@15
    // out out_o_valid@15
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2269_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_5_dijkstraoptimisedid_1788_135_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_ext_sig_sync_out_x(GPOUT,310)
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg20(REG,839)@18 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_q;
        end
    end

    // redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8(DELAY,1665)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8_delay_0 <= $unsigned(redist45_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_6_q);
            redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8_q <= $signed(redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8_delay_0);
        end
    end

    // redist116_dupName_10_comparator_x_q_15(DELAY,1735)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist116_dupName_10_comparator_x_q_15_delay_0 <= $unsigned(redist115_dupName_10_comparator_x_q_13_q);
            redist116_dupName_10_comparator_x_q_15_q <= $signed(redist116_dupName_10_comparator_x_q_15_delay_0);
        end
    end

    // redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15(DELAY,1692)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15_delay_0 <= $unsigned(redist72_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_13_q);
            redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15_q <= $signed(redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15_delay_0);
        end
    end

    // redist140_dupName_5_comparator_x_q_11(DELAY,1759)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist140_dupName_5_comparator_x_q_11_delay_0 <= $unsigned(redist139_dupName_5_comparator_x_q_9_q);
            redist140_dupName_5_comparator_x_q_11_q <= $signed(redist140_dupName_5_comparator_x_q_11_delay_0);
        end
    end

    // redist8_mergedMUXes6_q_11_offset(CONSTANT,1852)
    assign redist8_mergedMUXes6_q_11_offset_q = 3'b010;

    // redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt(ADD,1913)
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_a = {1'b0, redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_q};
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_b = {1'b0, redist8_mergedMUXes6_q_11_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_o <= $unsigned(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_a) + $unsigned(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_b);
        end
    end
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_q = redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_o[3:0];

    // redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr(COUNTER,1911)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_i <= $unsigned(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_q = $signed(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_i[2:0]);

    // redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem(DUALMEM,1910)
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_ia = $unsigned(redist64_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_5_outputreg0_q);
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_aa = redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_wraddr_q;
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_ab = redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_aa),
        .data_a(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_ab),
        .q_b(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_q = $signed(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_iq[31:0]);

    // redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_outputreg0(DELAY,1909)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_outputreg0_q <= redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_mem_q;
        end
    end

    // redist144_dupName_4_comparator_x_q_11(DELAY,1763)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist144_dupName_4_comparator_x_q_11 ( .xin(dupName_4_comparator_x_q), .xout(redist144_dupName_4_comparator_x_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt(ADD,1906)
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_a = {1'b0, redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_q};
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_b = {1'b0, redist8_mergedMUXes6_q_11_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_o <= $unsigned(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_a) + $unsigned(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_b);
        end
    end
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_q = redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_o[3:0];

    // redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr(COUNTER,1904)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_i <= $unsigned(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_q = $signed(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_i[2:0]);

    // redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem(DUALMEM,1903)
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_ia = $unsigned(redist61_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_5_outputreg0_q);
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_aa = redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_wraddr_q;
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_ab = redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_aa),
        .data_a(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_ab),
        .q_b(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_q = $signed(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_iq[31:0]);

    // redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_outputreg0(DELAY,1902)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_outputreg0_q <= redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_mem_q;
        end
    end

    // redist147_dupName_3_comparator_x_q_11(DELAY,1766)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist147_dupName_3_comparator_x_q_11 ( .xin(dupName_3_comparator_x_q), .xout(redist147_dupName_3_comparator_x_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist150_dupName_2_comparator_x_q_11(DELAY,1769)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist150_dupName_2_comparator_x_q_11 ( .xin(dupName_2_comparator_x_q), .xout(redist150_dupName_2_comparator_x_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1(SELECTOR,793)@15
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_v = 1'b0;
        if (redist144_dupName_4_comparator_x_q_11_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_q = $signed(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_v = 1'b1;
        end
        if (redist147_dupName_3_comparator_x_q_11_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_q = $signed(redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_outputreg0_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_v = 1'b1;
        end
        if (redist150_dupName_2_comparator_x_q_11_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_q = $signed(i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_v = 1'b1;
        end
    end

    // redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2(DELAY,1646)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q);
            redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2_q <= $signed(redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2_delay_0);
        end
    end

    // redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2(DELAY,1650)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v);
            redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2_q <= $signed(redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev1_id0(SELECTOR,794)@15
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev1_id0_q = redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_q;
        if (redist140_dupName_5_comparator_x_q_11_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev1_id0_q = redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev0_id1_q;
        end
        if (redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev1_id0_q = redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2_q;
        end
    end

    // redist127_dupName_9_comparator_x_q_15(DELAY,1746)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist127_dupName_9_comparator_x_q_15_delay_0 <= $unsigned(redist126_dupName_9_comparator_x_q_13_q);
            redist127_dupName_9_comparator_x_q_15_q <= $signed(redist127_dupName_9_comparator_x_q_15_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt150_dijkstraoptimisedid_1788_146(SELECTOR,125)@15
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt150_dijkstraoptimisedid_1788_146_q = redist205_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_8_q;
        if (redist116_dupName_10_comparator_x_q_15_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt150_dijkstraoptimisedid_1788_146_q = redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8_q;
        end
        if (redist127_dupName_9_comparator_x_q_15_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt150_dijkstraoptimisedid_1788_146_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt140_dijkstraoptimisedid_1788_142_opt_lev1_id0_q;
        end
    end

    // i_add68_i_5_dijkstraoptimisedid_1788_147(ADD,81)@15
    assign i_add68_i_5_dijkstraoptimisedid_1788_147_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt150_dijkstraoptimisedid_1788_146_q};
    assign i_add68_i_5_dijkstraoptimisedid_1788_147_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_o_readdata};
    assign i_add68_i_5_dijkstraoptimisedid_1788_147_o = $unsigned(i_add68_i_5_dijkstraoptimisedid_1788_147_a) + $unsigned(i_add68_i_5_dijkstraoptimisedid_1788_147_b);
    assign i_add68_i_5_dijkstraoptimisedid_1788_147_q = i_add68_i_5_dijkstraoptimisedid_1788_147_o[32:0];

    // bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x(BITSELECT,271)@15
    assign bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b = i_add68_i_5_dijkstraoptimisedid_1788_147_q[31:0];

    // redist167_bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b_1(DELAY,1786)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist167_bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b_1_q <= bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_mux_xinvSel(LOGICAL,1607)@16
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x(COMPARE,743)@16
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_a = $unsigned({{2{redist167_bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b_1_q[31]}}, redist167_bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_b = $unsigned({{2{redist63_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_16_q[31]}}, redist63_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_16_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_o[33]);

    // redist63_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_16(DELAY,1682)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist63_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_16_q <= redist62_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_15_outputreg0_q;
        end
    end

    // redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_offset(CONSTANT,1923)
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_offset_q = 4'b0101;

    // redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt(ADD,1985)
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_a = {1'b0, redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_q};
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_b = {1'b0, redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_o <= $unsigned(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_a) + $unsigned(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_b);
        end
    end
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_q = redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_o[4:0];

    // i_unnamed_dijkstraoptimisedid_1788_13(LOGICAL,218)@0
    assign i_unnamed_dijkstraoptimisedid_1788_13_q = $unsigned(in_c0_eni25_1_tpl == c_i32_5_1788_282_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_35(MUX,228)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_35_s = i_unnamed_dijkstraoptimisedid_1788_13_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_35_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_35_q <= in_c0_eni25_7_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_35_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_35_q <= 8'b0;
            endcase
        end
    end

    // redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr(COUNTER,1983)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_i <= $unsigned(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_q = $signed(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_i[3:0]);

    // redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem(DUALMEM,1982)
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_35_q);
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_aa = redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_wraddr_q;
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_ab = redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_aa),
        .data_a(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_ab),
        .q_b(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_q = $signed(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_iq[7:0]);

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0158_shuffle_bit0_dijkstraoptimisedid_2287_0gr_NO_NAME_x(CHOOSEBITS,682)@15
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0158_shuffle_bit0_dijkstraoptimisedid_2287_0gr_NO_NAME_x_a = redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0158_shuffle_bit0_dijkstraoptimisedid_2287_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0158_shuffle_bit0_dijkstraoptimisedid_2287_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_5_dijkstraoptimisedid_1788_137(LOGICAL,211)@15
    assign i_tobool56_i_not_5_dijkstraoptimisedid_1788_137_q = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid60_dijkstraoptimisedid_1788_136_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);

    // i_or_cond576_dijkstraoptimisedid_1788_140(MUX,190)@15 + 1
    assign i_or_cond576_dijkstraoptimisedid_1788_140_s = i_tobool56_i_not_5_dijkstraoptimisedid_1788_137_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_or_cond576_dijkstraoptimisedid_1788_140_s)
                1'b0 : i_or_cond576_dijkstraoptimisedid_1788_140_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0158_shuffle_bit0_dijkstraoptimisedid_2287_0gr_NO_NAME_x_q;
                1'b1 : i_or_cond576_dijkstraoptimisedid_1788_140_q <= VCC_q;
                default : i_or_cond576_dijkstraoptimisedid_1788_140_q <= 1'b0;
            endcase
        end
    end

    // mergedMUXes6(SELECTOR,1608)@16
    always_comb 
    begin
        mergedMUXes6_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes6_q = redist167_bgTrunc_i_add68_i_5_dijkstraoptimisedid_1788_147_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid61_dijkstraoptimisedid_2320_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes6_q = redist63_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_16_q;
        end
        if (i_or_cond576_dijkstraoptimisedid_1788_140_q == 1'b1)
        begin
            mergedMUXes6_q = $signed(redist63_sync_together_1788_297_aunroll_x_in_c0_eni25_17_tpl_16_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150(REG,161)@16 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q <= mergedMUXes6_q;
        end
    end

    // redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2(DELAY,1815)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q);
            redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2_q <= $signed(redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2_delay_0);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid77_dijkstraoptimisedid_1788_233(BLACKBOX,169)@19
    // out out_dependency_out@20
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_stall_out@20
    // out out_valid_out@20
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2726_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid77_dijkstraoptimisedid_1788_233 (
        .in_predicate_in(GND_q),
        .in_src_data_in_28_0(redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid77_dijkstraoptimisedid_1788_233_out_intel_reserved_ffwd_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,311)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid77_dijkstraoptimisedid_1788_233_out_intel_reserved_ffwd_28_0;

    // valid_fanout_reg10(REG,829)@12 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= redist98_sync_together_1788_297_aunroll_x_in_i_valid_12_q;
        end
    end

    // redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8(DELAY,1638)
    dspba_delay_ver #( .width(6), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8 ( .xin(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b), .xout(redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_outputreg0(DELAY,1884)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_outputreg0_q <= redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_q;
        end
    end

    // i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1591)
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 6'b000011;

    // i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums(ADD,1338)@13
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_outputreg0_q};
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_o[6:0]);

    // redist18_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b_8(DELAY,1637)
    dspba_delay_ver #( .width(3), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist18_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b_8 ( .xin(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b), .xout(redist18_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_split_join(BITJOIN,1339)@13
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_MSBs_sums_q, redist18_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b_8_q};

    // i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_3_trunc_sel_x(BITSELECT,592)@13
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_append_upper_bits_x(BITJOIN,575)@13
    assign i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_select_63(BITSELECT,107)@13
    assign i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_select_63_b = i_arrayidx55_i_6_dijkstraoptimisedid_2329_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_join(BITJOIN,106)@13
    assign i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_join_q = {i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152(BLACKBOX,181)@13
    // out out_o_almost_empty@17
    // out out_o_empty@17
    // out out_o_readdata@17
    // out out_o_stall@17
    // out out_o_valid@17
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2344_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_6_dijkstraoptimisedid_1788_151_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_ext_sig_sync_out_x(GPOUT,315)
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg21(REG,840)@18 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_q;
        end
    end

    // redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10(DELAY,1666)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10_delay_0 <= $unsigned(redist46_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_8_q);
            redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10_q <= $signed(redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10_delay_0);
        end
    end

    // redist117_dupName_10_comparator_x_q_17(DELAY,1736)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist117_dupName_10_comparator_x_q_17_delay_0 <= $unsigned(redist116_dupName_10_comparator_x_q_15_q);
            redist117_dupName_10_comparator_x_q_17_q <= $signed(redist117_dupName_10_comparator_x_q_17_delay_0);
        end
    end

    // redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17(DELAY,1693)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17_delay_0 <= $unsigned(redist73_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_15_q);
            redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17_q <= $signed(redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17_delay_0);
        end
    end

    // redist141_dupName_5_comparator_x_q_13(DELAY,1760)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist141_dupName_5_comparator_x_q_13_delay_0 <= $unsigned(redist140_dupName_5_comparator_x_q_11_q);
            redist141_dupName_5_comparator_x_q_13_q <= $signed(redist141_dupName_5_comparator_x_q_13_delay_0);
        end
    end

    // redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17(DELAY,1685)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17_delay_0 <= $unsigned(redist65_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_15_outputreg0_q);
            redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17_q <= $signed(redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17_delay_0);
        end
    end

    // redist145_dupName_4_comparator_x_q_13(DELAY,1764)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist145_dupName_4_comparator_x_q_13_delay_0 <= $unsigned(redist144_dupName_4_comparator_x_q_11_q);
            redist145_dupName_4_comparator_x_q_13_q <= $signed(redist145_dupName_4_comparator_x_q_13_delay_0);
        end
    end

    // redist148_dupName_3_comparator_x_q_13(DELAY,1767)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist148_dupName_3_comparator_x_q_13_delay_0 <= $unsigned(redist147_dupName_3_comparator_x_q_11_q);
            redist148_dupName_3_comparator_x_q_13_q <= $signed(redist148_dupName_3_comparator_x_q_13_delay_0);
        end
    end

    // redist151_dupName_2_comparator_x_q_13(DELAY,1770)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist151_dupName_2_comparator_x_q_13_delay_0 <= $unsigned(redist150_dupName_2_comparator_x_q_11_q);
            redist151_dupName_2_comparator_x_q_13_q <= $signed(redist151_dupName_2_comparator_x_q_13_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1(SELECTOR,796)@17
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_v = 1'b0;
        if (redist145_dupName_4_comparator_x_q_13_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_q = $signed(redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_v = 1'b1;
        end
        if (redist148_dupName_3_comparator_x_q_13_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_q = $signed(i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_v = 1'b1;
        end
        if (redist151_dupName_2_comparator_x_q_13_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_q = $signed(redist197_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_2_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_v = 1'b1;
        end
    end

    // redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4(DELAY,1647)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4_delay_0 <= $unsigned(redist27_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_2_q);
            redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4_q <= $signed(redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4_delay_0);
        end
    end

    // redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4(DELAY,1651)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4_delay_0 <= $unsigned(redist31_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_2_q);
            redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4_q <= $signed(redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev1_id0(SELECTOR,797)@17
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev1_id0_q = redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_q;
        if (redist141_dupName_5_comparator_x_q_13_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev1_id0_q = redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev0_id1_q;
        end
        if (redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev1_id0_q = redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4_q;
        end
    end

    // redist128_dupName_9_comparator_x_q_17(DELAY,1747)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist128_dupName_9_comparator_x_q_17_delay_0 <= $unsigned(redist127_dupName_9_comparator_x_q_15_q);
            redist128_dupName_9_comparator_x_q_17_q <= $signed(redist128_dupName_9_comparator_x_q_17_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt170_dijkstraoptimisedid_1788_162(SELECTOR,126)@17
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt170_dijkstraoptimisedid_1788_162_q = redist206_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_10_q;
        if (redist117_dupName_10_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt170_dijkstraoptimisedid_1788_162_q = redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10_q;
        end
        if (redist128_dupName_9_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt170_dijkstraoptimisedid_1788_162_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt160_dijkstraoptimisedid_1788_158_opt_lev1_id0_q;
        end
    end

    // i_add68_i_6_dijkstraoptimisedid_1788_163(ADD,82)@17
    assign i_add68_i_6_dijkstraoptimisedid_1788_163_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt170_dijkstraoptimisedid_1788_162_q};
    assign i_add68_i_6_dijkstraoptimisedid_1788_163_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_o_readdata};
    assign i_add68_i_6_dijkstraoptimisedid_1788_163_o = $unsigned(i_add68_i_6_dijkstraoptimisedid_1788_163_a) + $unsigned(i_add68_i_6_dijkstraoptimisedid_1788_163_b);
    assign i_add68_i_6_dijkstraoptimisedid_1788_163_q = i_add68_i_6_dijkstraoptimisedid_1788_163_o[32:0];

    // bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x(BITSELECT,272)@17
    assign bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b = i_add68_i_6_dijkstraoptimisedid_1788_163_q[31:0];

    // redist166_bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b_1(DELAY,1785)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist166_bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b_1_q <= bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_mux_xinvSel(LOGICAL,1609)@18
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x(COMPARE,748)@18
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_a = $unsigned({{2{redist166_bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b_1_q[31]}}, redist166_bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_b = $unsigned({{2{redist67_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_18_q[31]}}, redist67_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_18_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_o[33]);

    // redist67_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_18(DELAY,1686)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist67_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_18_q <= redist66_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_17_q;
        end
    end

    // redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_offset(CONSTANT,1975)
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_offset_q = 4'b0011;

    // redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt(ADD,1976)
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_a = {1'b0, redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_q};
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_b = {1'b0, redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_o <= $unsigned(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_a) + $unsigned(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_b);
        end
    end
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_q = redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_o[4:0];

    // i_unnamed_dijkstraoptimisedid_1788_11(LOGICAL,217)@0
    assign i_unnamed_dijkstraoptimisedid_1788_11_q = $unsigned(in_c0_eni25_1_tpl == c_i32_6_1788_281_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_37(MUX,229)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_37_s = i_unnamed_dijkstraoptimisedid_1788_11_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_37_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_37_q <= in_c0_eni25_8_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_37_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_37_q <= 8'b0;
            endcase
        end
    end

    // redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr(COUNTER,1974)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_i <= $unsigned(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_q = $signed(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_i[3:0]);

    // redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem(DUALMEM,1973)
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_37_q);
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_aa = redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_wraddr_q;
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_ab = redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_aa),
        .data_a(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_ab),
        .q_b(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_q = $signed(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_iq[7:0]);

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0159_shuffle_bit0_dijkstraoptimisedid_2362_0gr_NO_NAME_x(CHOOSEBITS,686)@17
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0159_shuffle_bit0_dijkstraoptimisedid_2362_0gr_NO_NAME_x_a = redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0159_shuffle_bit0_dijkstraoptimisedid_2362_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0159_shuffle_bit0_dijkstraoptimisedid_2362_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_6_dijkstraoptimisedid_1788_153(LOGICAL,212)@17
    assign i_tobool56_i_not_6_dijkstraoptimisedid_1788_153_q = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid62_dijkstraoptimisedid_1788_152_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);

    // i_or_cond578_dijkstraoptimisedid_1788_156(MUX,191)@17 + 1
    assign i_or_cond578_dijkstraoptimisedid_1788_156_s = i_tobool56_i_not_6_dijkstraoptimisedid_1788_153_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_or_cond578_dijkstraoptimisedid_1788_156_s)
                1'b0 : i_or_cond578_dijkstraoptimisedid_1788_156_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0159_shuffle_bit0_dijkstraoptimisedid_2362_0gr_NO_NAME_x_q;
                1'b1 : i_or_cond578_dijkstraoptimisedid_1788_156_q <= VCC_q;
                default : i_or_cond578_dijkstraoptimisedid_1788_156_q <= 1'b0;
            endcase
        end
    end

    // mergedMUXes7(SELECTOR,1610)@18
    always_comb 
    begin
        mergedMUXes7_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes7_q = redist166_bgTrunc_i_add68_i_6_dijkstraoptimisedid_1788_163_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid63_dijkstraoptimisedid_2395_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes7_q = redist67_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_18_q;
        end
        if (i_or_cond578_dijkstraoptimisedid_1788_156_q == 1'b1)
        begin
            mergedMUXes7_q = $signed(redist67_sync_together_1788_297_aunroll_x_in_c0_eni25_18_tpl_18_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_31_fanout_adaptor_dijkstraoptimisedid_1788_166(REG,162)@18 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_31_fanout_adaptor_dijkstraoptimisedid_1788_166_q <= mergedMUXes7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid78_dijkstraoptimisedid_1788_234(BLACKBOX,170)@19
    // out out_dependency_out@20
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_stall_out@20
    // out out_valid_out@20
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2731_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid78_dijkstraoptimisedid_1788_234 (
        .in_predicate_in(GND_q),
        .in_src_data_in_29_0(i_llvm_fpga_fanout_i32_acl_31_fanout_adaptor_dijkstraoptimisedid_1788_166_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid78_dijkstraoptimisedid_1788_234_out_intel_reserved_ffwd_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,316)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid78_dijkstraoptimisedid_1788_234_out_intel_reserved_ffwd_29_0;

    // valid_fanout_reg11(REG,830)@14 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= redist99_sync_together_1788_297_aunroll_x_in_i_valid_14_q;
        end
    end

    // redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12(DELAY,1635)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_0 <= $unsigned(redist15_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_8_q);
            redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_1 <= redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_0;
            redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_2 <= redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_1;
            redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_q <= $signed(redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_delay_2);
        end
    end

    // i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1592)
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 7'b0000111;

    // i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums(ADD,1400)@15
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_q};
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_o[7:0]);

    // i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_split_join(BITJOIN,1401)@15
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_3_trunc_sel_x(BITSELECT,611)@15
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_append_upper_bits_x(BITJOIN,594)@15
    assign i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_select_63(BITSELECT,110)@15
    assign i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_select_63_b = i_arrayidx55_i_7_dijkstraoptimisedid_2404_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_join(BITJOIN,109)@15
    assign i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_join_q = {i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168(BLACKBOX,182)@15
    // out out_o_almost_empty@19
    // out out_o_empty@19
    // out out_o_readdata@19
    // out out_o_stall@19
    // out out_o_valid@19
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2419_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_7_dijkstraoptimisedid_1788_167_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_ext_sig_sync_out_x(GPOUT,320)
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg22(REG,841)@20 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_q;
        end
    end

    // redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12(DELAY,1667)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12_delay_0 <= $unsigned(redist47_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_10_q);
            redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12_q <= $signed(redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12_delay_0);
        end
    end

    // redist118_dupName_10_comparator_x_q_19(DELAY,1737)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist118_dupName_10_comparator_x_q_19_delay_0 <= $unsigned(redist117_dupName_10_comparator_x_q_17_q);
            redist118_dupName_10_comparator_x_q_19_q <= $signed(redist118_dupName_10_comparator_x_q_19_delay_0);
        end
    end

    // redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19(DELAY,1694)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19_delay_0 <= $unsigned(redist74_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_17_q);
            redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19_q <= $signed(redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19_delay_0);
        end
    end

    // redist142_dupName_5_comparator_x_q_15(DELAY,1761)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist142_dupName_5_comparator_x_q_15_delay_0 <= $unsigned(redist141_dupName_5_comparator_x_q_13_q);
            redist142_dupName_5_comparator_x_q_15_q <= $signed(redist142_dupName_5_comparator_x_q_15_delay_0);
        end
    end

    // redist146_dupName_4_comparator_x_q_15(DELAY,1765)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist146_dupName_4_comparator_x_q_15_delay_0 <= $unsigned(redist145_dupName_4_comparator_x_q_13_q);
            redist146_dupName_4_comparator_x_q_15_q <= $signed(redist146_dupName_4_comparator_x_q_15_delay_0);
        end
    end

    // redist149_dupName_3_comparator_x_q_15(DELAY,1768)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist149_dupName_3_comparator_x_q_15_delay_0 <= $unsigned(redist148_dupName_3_comparator_x_q_13_q);
            redist149_dupName_3_comparator_x_q_15_q <= $signed(redist149_dupName_3_comparator_x_q_15_delay_0);
        end
    end

    // redist152_dupName_2_comparator_x_q_15(DELAY,1771)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist152_dupName_2_comparator_x_q_15_delay_0 <= $unsigned(redist151_dupName_2_comparator_x_q_13_q);
            redist152_dupName_2_comparator_x_q_15_q <= $signed(redist152_dupName_2_comparator_x_q_15_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1(SELECTOR,799)@19
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q = 32'b0;
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v = 1'b0;
        if (redist146_dupName_4_comparator_x_q_15_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q = $signed(i_llvm_fpga_fanout_i32_acl_31_fanout_adaptor_dijkstraoptimisedid_1788_166_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v = 1'b1;
        end
        if (redist149_dupName_3_comparator_x_q_15_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q = $signed(redist196_i_llvm_fpga_fanout_i32_acl_30_fanout_adaptor_dijkstraoptimisedid_1788_150_q_2_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v = 1'b1;
        end
        if (redist152_dupName_2_comparator_x_q_15_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q = $signed(redist198_i_llvm_fpga_fanout_i32_acl_29_fanout_adaptor_dijkstraoptimisedid_1788_134_q_4_q);
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v = 1'b1;
        end
    end

    // redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6(DELAY,1648)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6_delay_0 <= $unsigned(redist28_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_4_q);
            redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6_q <= $signed(redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6_delay_0);
        end
    end

    // redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6(DELAY,1652)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6_delay_0 <= $unsigned(redist32_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_4_q);
            redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6_q <= $signed(redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev1_id0(SELECTOR,800)@19
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev1_id0_q = redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_q;
        if (redist142_dupName_5_comparator_x_q_15_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev1_id0_q = redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19_q;
        end
        if (i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev1_id0_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q;
        end
        if (redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev1_id0_q = redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6_q;
        end
    end

    // redist129_dupName_9_comparator_x_q_19(DELAY,1748)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist129_dupName_9_comparator_x_q_19_delay_0 <= $unsigned(redist128_dupName_9_comparator_x_q_17_q);
            redist129_dupName_9_comparator_x_q_19_q <= $signed(redist129_dupName_9_comparator_x_q_19_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt190_dijkstraoptimisedid_1788_178(SELECTOR,127)@19
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt190_dijkstraoptimisedid_1788_178_q = redist207_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_12_q;
        if (redist118_dupName_10_comparator_x_q_19_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt190_dijkstraoptimisedid_1788_178_q = redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12_q;
        end
        if (redist129_dupName_9_comparator_x_q_19_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt190_dijkstraoptimisedid_1788_178_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev1_id0_q;
        end
    end

    // i_add68_i_7_dijkstraoptimisedid_1788_179(ADD,83)@19
    assign i_add68_i_7_dijkstraoptimisedid_1788_179_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt190_dijkstraoptimisedid_1788_178_q};
    assign i_add68_i_7_dijkstraoptimisedid_1788_179_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_o_readdata};
    assign i_add68_i_7_dijkstraoptimisedid_1788_179_o = $unsigned(i_add68_i_7_dijkstraoptimisedid_1788_179_a) + $unsigned(i_add68_i_7_dijkstraoptimisedid_1788_179_b);
    assign i_add68_i_7_dijkstraoptimisedid_1788_179_q = i_add68_i_7_dijkstraoptimisedid_1788_179_o[32:0];

    // bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x(BITSELECT,273)@19
    assign bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b = i_add68_i_7_dijkstraoptimisedid_1788_179_q[31:0];

    // redist165_bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b_1(DELAY,1784)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist165_bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b_1_q <= bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_mux_xinvSel(LOGICAL,1611)@20
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x(COMPARE,753)@20
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_a = $unsigned({{2{redist165_bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b_1_q[31]}}, redist165_bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_b = $unsigned({{2{redist76_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_20_q[31]}}, redist76_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_20_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_o[33]);

    // redist76_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_20(DELAY,1695)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist76_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_20_q <= redist75_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_19_q;
        end
    end

    // redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_offset(CONSTANT,1966)
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_offset_q = 5'b10001;

    // redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt(ADD,1967)
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_a = {1'b0, redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_q};
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_b = {1'b0, redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_o <= $unsigned(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_a) + $unsigned(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_b);
        end
    end
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_q = redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_o[5:0];

    // i_unnamed_dijkstraoptimisedid_1788_9gr(LOGICAL,237)@0
    assign i_unnamed_dijkstraoptimisedid_1788_9gr_q = $unsigned(in_c0_eni25_1_tpl == c_i32_7_1788_280_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_39(MUX,230)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_39_s = i_unnamed_dijkstraoptimisedid_1788_9gr_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_39_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_39_q <= in_c0_eni25_9_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_39_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_39_q <= 8'b0;
            endcase
        end
    end

    // redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr(COUNTER,1965)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_i <= $unsigned(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_q = $signed(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_i[4:0]);

    // redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem(DUALMEM,1964)
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_39_q);
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_aa = redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_wraddr_q;
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_ab = redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_aa),
        .data_a(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_ab),
        .q_b(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_q = $signed(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_iq[7:0]);

    // redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_outputreg0(DELAY,1963)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_outputreg0_q <= redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_mem_q;
        end
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0160_shuffle_bit0_dijkstraoptimisedid_2437_0gr_NO_NAME_x(CHOOSEBITS,690)@20
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0160_shuffle_bit0_dijkstraoptimisedid_2437_0gr_NO_NAME_x_a = redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_outputreg0_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0160_shuffle_bit0_dijkstraoptimisedid_2437_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0160_shuffle_bit0_dijkstraoptimisedid_2437_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_7_dijkstraoptimisedid_1788_169(LOGICAL,213)@19 + 1
    assign i_tobool56_i_not_7_dijkstraoptimisedid_1788_169_qi = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid64_dijkstraoptimisedid_1788_168_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool56_i_not_7_dijkstraoptimisedid_1788_169_delay ( .xin(i_tobool56_i_not_7_dijkstraoptimisedid_1788_169_qi), .xout(i_tobool56_i_not_7_dijkstraoptimisedid_1788_169_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond580_dijkstraoptimisedid_1788_172(MUX,192)@20
    assign i_or_cond580_dijkstraoptimisedid_1788_172_s = i_tobool56_i_not_7_dijkstraoptimisedid_1788_169_q;
    always_comb 
    begin
        unique case (i_or_cond580_dijkstraoptimisedid_1788_172_s)
            1'b0 : i_or_cond580_dijkstraoptimisedid_1788_172_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0160_shuffle_bit0_dijkstraoptimisedid_2437_0gr_NO_NAME_x_q;
            1'b1 : i_or_cond580_dijkstraoptimisedid_1788_172_q = VCC_q;
            default : i_or_cond580_dijkstraoptimisedid_1788_172_q = 1'b0;
        endcase
    end

    // mergedMUXes8(SELECTOR,1612)@20
    always_comb 
    begin
        mergedMUXes8_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes8_q = redist165_bgTrunc_i_add68_i_7_dijkstraoptimisedid_1788_179_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid65_dijkstraoptimisedid_2470_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes8_q = redist76_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_20_q;
        end
        if (i_or_cond580_dijkstraoptimisedid_1788_172_q == 1'b1)
        begin
            mergedMUXes8_q = $signed(redist76_sync_together_1788_297_aunroll_x_in_c0_eni25_19_tpl_20_q);
        end
    end

    // i_llvm_fpga_fanout_i32_acl_32_fanout_adaptor_dijkstraoptimisedid_1788_182(REG,163)@20 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i32_acl_32_fanout_adaptor_dijkstraoptimisedid_1788_182_q <= mergedMUXes8_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid79_dijkstraoptimisedid_1788_235(BLACKBOX,171)@21
    // out out_dependency_out@22
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_stall_out@22
    // out out_valid_out@22
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2736_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid79_dijkstraoptimisedid_1788_235 (
        .in_predicate_in(GND_q),
        .in_src_data_in_30_0(i_llvm_fpga_fanout_i32_acl_32_fanout_adaptor_dijkstraoptimisedid_1788_182_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid79_dijkstraoptimisedid_1788_235_out_intel_reserved_ffwd_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,321)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid79_dijkstraoptimisedid_1788_235_out_intel_reserved_ffwd_30_0;

    // valid_fanout_reg12(REG,831)@16 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= redist100_sync_together_1788_297_aunroll_x_in_i_valid_16_q;
        end
    end

    // redist7_mergedMUXes7_q_9_offset(CONSTANT,1846)
    assign redist7_mergedMUXes7_q_9_offset_q = 3'b100;

    // redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt(ADD,1943)
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_a = {1'b0, redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q};
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_b = {1'b0, redist7_mergedMUXes7_q_9_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_o <= $unsigned(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_a) + $unsigned(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_b);
        end
    end
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_q = redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_o[3:0];

    // i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsMSBs_select(BITSELECT,1459)@9
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsMSBs_select_b = $signed(redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_q[8:5]);

    // i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1593)
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 4'b0001;

    // i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums(ADD,1462)@9
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsMSBs_select_b};
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_o[4:0]);

    // i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsLSBs_select(BITSELECT,1460)@9
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsLSBs_select_b = $signed(redist109_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_2_trunc_sel_x_b_8_q[4:0]);

    // i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_split_join(BITJOIN,1463)@9
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_rhsLSBs_select_b};

    // i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x(BITSELECT,630)@9
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_0_add_x_split_join_q[8:0];

    // redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr(COUNTER,1941)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i <= $unsigned(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q = $signed(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i[2:0]);

    // redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem(DUALMEM,1940)
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_ia = $unsigned(i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b);
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_aa = redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q;
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_ab = redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(9),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(9),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_aa),
        .data_a(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_ab),
        .q_b(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_q = $signed(redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_iq[8:0]);

    // redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_outputreg0(DELAY,1939)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_outputreg0_q <= redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_mem_q;
        end
    end

    // i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_append_upper_bits_x(BITJOIN,613)@17
    assign i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, redist105_i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_dupName_3_trunc_sel_x_b_8_outputreg0_q};

    // i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_select_63(BITSELECT,113)@17
    assign i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_select_63_b = i_arrayidx55_i_8_dijkstraoptimisedid_2479_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_join(BITJOIN,112)@17
    assign i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_join_q = {i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184(BLACKBOX,183)@17
    // out out_o_almost_empty@21
    // out out_o_empty@21
    // out out_o_readdata@21
    // out out_o_stall@21
    // out out_o_valid@21
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2494_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_8_dijkstraoptimisedid_1788_183_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_ext_sig_sync_out_x(GPOUT,325)
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;

    // redist104_sync_together_1788_297_aunroll_x_in_i_valid_25(DELAY,1723)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_delay_0 <= $unsigned(redist103_sync_together_1788_297_aunroll_x_in_i_valid_23_q);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_q <= '0;
        end
        else
        begin
            redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_q <= $signed(redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_delay_0);
        end
    end

    // valid_fanout_reg23(REG,842)@25 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_q;
        end
    end

    // redist49_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_14(DELAY,1668)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_14_delay_0 <= $unsigned(redist48_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_12_q);
            redist49_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_14_q <= $signed(redist49_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_14_delay_0);
        end
    end

    // redist119_dupName_10_comparator_x_q_21(DELAY,1738)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist119_dupName_10_comparator_x_q_21_delay_0 <= $unsigned(redist118_dupName_10_comparator_x_q_19_q);
            redist119_dupName_10_comparator_x_q_21_q <= $signed(redist119_dupName_10_comparator_x_q_21_delay_0);
        end
    end

    // redist143_dupName_5_comparator_x_q_17(DELAY,1762)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist143_dupName_5_comparator_x_q_17_delay_0 <= $unsigned(redist142_dupName_5_comparator_x_q_15_q);
            redist143_dupName_5_comparator_x_q_17_q <= $signed(redist143_dupName_5_comparator_x_q_17_delay_0);
        end
    end

    // redist25_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q_2(DELAY,1644)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q);
            redist25_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q_2_q <= $signed(redist25_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q_2_delay_0);
        end
    end

    // redist26_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v_2(DELAY,1645)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v);
            redist26_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v_2_q <= $signed(redist26_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v_2_delay_0);
        end
    end

    // redist30_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_8(DELAY,1649)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_8_delay_0 <= $unsigned(redist29_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_6_q);
            redist30_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_8_q <= $signed(redist30_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_8_delay_0);
        end
    end

    // redist34_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_8(DELAY,1653)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_8_delay_0 <= $unsigned(redist33_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_6_q);
            redist34_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_8_q <= $signed(redist34_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_8_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0(SELECTOR,803)@21
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q = redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_q;
        if (redist143_dupName_5_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q = i_llvm_fpga_fanout_i32_acl_32_fanout_adaptor_dijkstraoptimisedid_1788_182_q;
        end
        if (redist26_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_v_2_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q = redist25_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt180_dijkstraoptimisedid_1788_174_opt_lev0_id1_q_2_q;
        end
        if (redist34_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_v_8_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q = redist30_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt120_dijkstraoptimisedid_1788_126_opt_lev0_id0_q_8_q;
        end
    end

    // redist130_dupName_9_comparator_x_q_21(DELAY,1749)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist130_dupName_9_comparator_x_q_21_delay_0 <= $unsigned(redist129_dupName_9_comparator_x_q_19_q);
            redist130_dupName_9_comparator_x_q_21_q <= $signed(redist130_dupName_9_comparator_x_q_21_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt210_dijkstraoptimisedid_1788_194(SELECTOR,128)@21
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt210_dijkstraoptimisedid_1788_194_q = redist208_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_14_q;
        if (redist119_dupName_10_comparator_x_q_21_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt210_dijkstraoptimisedid_1788_194_q = redist49_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt105_dijkstraoptimisedid_1788_112_opt_q_14_q;
        end
        if (redist130_dupName_9_comparator_x_q_21_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt210_dijkstraoptimisedid_1788_194_q = i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q;
        end
    end

    // i_add68_i_8_dijkstraoptimisedid_1788_195(ADD,84)@21
    assign i_add68_i_8_dijkstraoptimisedid_1788_195_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt210_dijkstraoptimisedid_1788_194_q};
    assign i_add68_i_8_dijkstraoptimisedid_1788_195_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_o_readdata};
    assign i_add68_i_8_dijkstraoptimisedid_1788_195_o = $unsigned(i_add68_i_8_dijkstraoptimisedid_1788_195_a) + $unsigned(i_add68_i_8_dijkstraoptimisedid_1788_195_b);
    assign i_add68_i_8_dijkstraoptimisedid_1788_195_q = i_add68_i_8_dijkstraoptimisedid_1788_195_o[32:0];

    // bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x(BITSELECT,274)@21
    assign bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b = i_add68_i_8_dijkstraoptimisedid_1788_195_q[31:0];

    // redist164_bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b_1(DELAY,1783)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist164_bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b_1_q <= bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_mux_xinvSel(LOGICAL,1613)@22
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x(COMPARE,758)@22
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_a = $unsigned({{2{redist164_bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b_1_q[31]}}, redist164_bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_b = $unsigned({{2{redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_outputreg0_q[31]}}, redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_outputreg0_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_o[33]);

    // redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt(ADD,1924)
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_a = {1'b0, redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_q};
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_b = {1'b0, redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_o <= $unsigned(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_a) + $unsigned(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_b);
        end
    end
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_q = redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_o[4:0];

    // redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr(COUNTER,1922)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_i <= $unsigned(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_q = $signed(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_i[3:0]);

    // redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem(DUALMEM,1921)
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_ia = $unsigned(redist80_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_7_q);
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_aa = redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_wraddr_q;
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_ab = redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_aa),
        .data_a(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_ab),
        .q_b(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_q = $signed(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_iq[31:0]);

    // redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_outputreg0(DELAY,1920)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_outputreg0_q <= redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_mem_q;
        end
    end

    // redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_offset(CONSTANT,1960)
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_offset_q = 5'b01111;

    // redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt(ADD,1961)
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_a = {1'b0, redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_q};
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_b = {1'b0, redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_o <= $unsigned(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_a) + $unsigned(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_b);
        end
    end
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_q = redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_o[5:0];

    // c_i32_8_1788_279_recast_x(CONSTANT,286)
    assign c_i32_8_1788_279_recast_x_q = 32'b00000000000000000000000000001000;

    // i_unnamed_dijkstraoptimisedid_1788_7gr(LOGICAL,236)@0
    assign i_unnamed_dijkstraoptimisedid_1788_7gr_q = $unsigned(in_c0_eni25_1_tpl == c_i32_8_1788_279_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_41(MUX,232)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_41_s = i_unnamed_dijkstraoptimisedid_1788_7gr_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_41_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_41_q <= in_c0_eni25_10_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_41_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_41_q <= 8'b0;
            endcase
        end
    end

    // redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr(COUNTER,1959)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_i <= $unsigned(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_q = $signed(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_i[4:0]);

    // redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem(DUALMEM,1958)
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_41_q);
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_aa = redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_wraddr_q;
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_ab = redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_aa),
        .data_a(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_ab),
        .q_b(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_q = $signed(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_iq[7:0]);

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0161_shuffle_bit0_dijkstraoptimisedid_2512_0gr_NO_NAME_x(CHOOSEBITS,694)@21
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0161_shuffle_bit0_dijkstraoptimisedid_2512_0gr_NO_NAME_x_a = redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0161_shuffle_bit0_dijkstraoptimisedid_2512_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0161_shuffle_bit0_dijkstraoptimisedid_2512_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_8_dijkstraoptimisedid_1788_185(LOGICAL,214)@21
    assign i_tobool56_i_not_8_dijkstraoptimisedid_1788_185_q = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid66_dijkstraoptimisedid_1788_184_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);

    // i_or_cond582_dijkstraoptimisedid_1788_188(MUX,193)@21 + 1
    assign i_or_cond582_dijkstraoptimisedid_1788_188_s = i_tobool56_i_not_8_dijkstraoptimisedid_1788_185_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_or_cond582_dijkstraoptimisedid_1788_188_s)
                1'b0 : i_or_cond582_dijkstraoptimisedid_1788_188_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0161_shuffle_bit0_dijkstraoptimisedid_2512_0gr_NO_NAME_x_q;
                1'b1 : i_or_cond582_dijkstraoptimisedid_1788_188_q <= VCC_q;
                default : i_or_cond582_dijkstraoptimisedid_1788_188_q <= 1'b0;
            endcase
        end
    end

    // mergedMUXes9(SELECTOR,1614)@22 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            mergedMUXes9_q <= 32'b0;
            if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_mux_xinvSel_q == 1'b1)
            begin
                mergedMUXes9_q <= redist164_bgTrunc_i_add68_i_8_dijkstraoptimisedid_1788_195_sel_x_b_1_q;
            end
            if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid67_dijkstraoptimisedid_2545_0gr_smin_signBit_x_n == 1'b1)
            begin
                mergedMUXes9_q <= redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_outputreg0_q;
            end
            if (i_or_cond582_dijkstraoptimisedid_1788_188_q == 1'b1)
            begin
                mergedMUXes9_q <= $signed(redist81_sync_together_1788_297_aunroll_x_in_c0_eni25_21_tpl_22_outputreg0_q);
            end
        end
    end

    // redist3_mergedMUXes9_q_2(DELAY,1622)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_mergedMUXes9_q_2_q <= mergedMUXes9_q;
        end
    end

    // redist4_mergedMUXes9_q_4(DELAY,1623)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_mergedMUXes9_q_4_delay_0 <= $unsigned(redist3_mergedMUXes9_q_2_q);
            redist4_mergedMUXes9_q_4_q <= $signed(redist4_mergedMUXes9_q_4_delay_0);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid80_dijkstraoptimisedid_1788_236(BLACKBOX,172)@26
    // out out_dependency_out@27
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_stall_out@27
    // out out_valid_out@27
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2741_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid80_dijkstraoptimisedid_1788_236 (
        .in_predicate_in(GND_q),
        .in_src_data_in_31_0(redist4_mergedMUXes9_q_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid80_dijkstraoptimisedid_1788_236_out_intel_reserved_ffwd_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,326)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid80_dijkstraoptimisedid_1788_236_out_intel_reserved_ffwd_31_0;

    // valid_fanout_reg13(REG,832)@18 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= redist101_sync_together_1788_297_aunroll_x_in_i_valid_18_q;
        end
    end

    // redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16(DELAY,1636)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_0 <= $unsigned(redist16_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_12_q);
            redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_1 <= redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_0;
            redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_2 <= redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_1;
            redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_q <= $signed(redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_delay_2);
        end
    end

    // i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1594)
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 7'b0001001;

    // i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums(ADD,1524)@19
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, redist17_i_arrayidx55_i_1_dijkstraoptimisedid_1954_0gr_dupName_0_add_x_rhsMSBs_select_b_16_q};
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_o[7:0]);

    // i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_split_join(BITJOIN,1525)@19
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_3_trunc_sel_x(BITSELECT,649)@19
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_append_upper_bits_x(BITJOIN,632)@19
    assign i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_dupName_3_trunc_sel_x_b};

    // i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_select_63(BITSELECT,116)@19
    assign i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_select_63_b = i_arrayidx55_i_9_dijkstraoptimisedid_2553_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_join(BITJOIN,115)@19
    assign i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_join_q = {i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199(BLACKBOX,184)@19
    // out out_o_almost_empty@23
    // out out_o_empty@23
    // out out_o_readdata@23
    // out out_o_stall@23
    // out out_o_valid@23
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2568_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_9_dijkstraoptimisedid_1788_198_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_ext_sig_sync_out_x(GPOUT,330)
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg24(REG,843)@25 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_q;
        end
    end

    // redist11_mergedMUXes3_q_17_offset(CONSTANT,1870)
    assign redist11_mergedMUXes3_q_17_offset_q = 4'b0100;

    // redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt(ADD,1938)
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_a = {1'b0, redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_q};
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_b = {1'b0, redist11_mergedMUXes3_q_17_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_o <= $unsigned(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_a) + $unsigned(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_b);
        end
    end
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_q = redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_o[4:0];

    // redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr(COUNTER,1936)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_i <= $unsigned(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_q = $signed(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_i[3:0]);

    // redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem(DUALMEM,1935)
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_ia = $unsigned(redist87_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_7_q);
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_aa = redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_wraddr_q;
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_ab = redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_aa),
        .data_a(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_ab),
        .q_b(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_q = $signed(redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_iq[31:0]);

    // redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_outputreg0(DELAY,1934)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_outputreg0_q <= redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_mem_q;
        end
    end

    // redist160_dupName_0_comparator_x_q_19(DELAY,1779)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist160_dupName_0_comparator_x_q_19 ( .xin(redist159_dupName_0_comparator_x_q_9_q), .xout(redist160_dupName_0_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt(ADD,1931)
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_a = {1'b0, redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_q};
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_b = {1'b0, redist11_mergedMUXes3_q_17_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_o <= $unsigned(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_a) + $unsigned(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_b);
        end
    end
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_q = redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_o[4:0];

    // redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr(COUNTER,1929)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_i <= $unsigned(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_q = $signed(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_i[3:0]);

    // redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem(DUALMEM,1928)
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_ia = $unsigned(redist83_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_7_q);
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_aa = redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_wraddr_q;
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_ab = redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_aa),
        .data_a(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_ab),
        .q_b(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_q = $signed(redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_iq[31:0]);

    // redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_outputreg0(DELAY,1927)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_outputreg0_q <= redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_mem_q;
        end
    end

    // redist215_comparator_q_19(DELAY,1834)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist215_comparator_q_19 ( .xin(redist214_comparator_q_9_q), .xout(redist215_comparator_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist134_dupName_6_comparator_x_q_19(DELAY,1753)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist134_dupName_6_comparator_x_q_19 ( .xin(redist133_dupName_6_comparator_x_q_3_q), .xout(redist134_dupName_6_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt225_dijkstraoptimisedid_1788_207_opt(SELECTOR,781)@23
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt225_dijkstraoptimisedid_1788_207_opt_q = redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_q;
        if (redist160_dupName_0_comparator_x_q_19_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt225_dijkstraoptimisedid_1788_207_opt_q = redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_outputreg0_q;
        end
        if (redist215_comparator_q_19_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt225_dijkstraoptimisedid_1788_207_opt_q = redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_outputreg0_q;
        end
        if (redist134_dupName_6_comparator_x_q_19_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt225_dijkstraoptimisedid_1788_207_opt_q = mergedMUXes9_q;
        end
    end

    // redist120_dupName_10_comparator_x_q_23(DELAY,1739)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist120_dupName_10_comparator_x_q_23_delay_0 <= $unsigned(redist119_dupName_10_comparator_x_q_21_q);
            redist120_dupName_10_comparator_x_q_23_q <= $signed(redist120_dupName_10_comparator_x_q_23_delay_0);
        end
    end

    // redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2(DELAY,1642)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2_delay_0 <= $unsigned(i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q);
            redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2_q <= $signed(redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2_delay_0);
        end
    end

    // redist131_dupName_9_comparator_x_q_23(DELAY,1750)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist131_dupName_9_comparator_x_q_23_delay_0 <= $unsigned(redist130_dupName_9_comparator_x_q_21_q);
            redist131_dupName_9_comparator_x_q_23_q <= $signed(redist131_dupName_9_comparator_x_q_23_delay_0);
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt230_dijkstraoptimisedid_1788_209(SELECTOR,129)@23
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt230_dijkstraoptimisedid_1788_209_q = redist209_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_16_q;
        if (redist120_dupName_10_comparator_x_q_23_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt230_dijkstraoptimisedid_1788_209_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt225_dijkstraoptimisedid_1788_207_opt_q;
        end
        if (redist131_dupName_9_comparator_x_q_23_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt230_dijkstraoptimisedid_1788_209_q = redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2_q;
        end
    end

    // i_add68_i_9_dijkstraoptimisedid_1788_210(ADD,85)@23
    assign i_add68_i_9_dijkstraoptimisedid_1788_210_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt230_dijkstraoptimisedid_1788_209_q};
    assign i_add68_i_9_dijkstraoptimisedid_1788_210_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_o_readdata};
    assign i_add68_i_9_dijkstraoptimisedid_1788_210_o = $unsigned(i_add68_i_9_dijkstraoptimisedid_1788_210_a) + $unsigned(i_add68_i_9_dijkstraoptimisedid_1788_210_b);
    assign i_add68_i_9_dijkstraoptimisedid_1788_210_q = i_add68_i_9_dijkstraoptimisedid_1788_210_o[32:0];

    // bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x(BITSELECT,275)@23
    assign bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b = i_add68_i_9_dijkstraoptimisedid_1788_210_q[31:0];

    // redist163_bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b_1(DELAY,1782)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist163_bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b_1_q <= bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_mux_xinvSel(LOGICAL,1615)@24
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x(COMPARE,763)@24
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_a = $unsigned({{2{redist163_bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b_1_q[31]}}, redist163_bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_b = $unsigned({{2{redist85_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_24_q[31]}}, redist85_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_24_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_o[33]);

    // redist85_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_24(DELAY,1704)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist85_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_24_q <= redist84_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_23_outputreg0_q;
        end
    end

    // redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_offset(CONSTANT,1956)
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_offset_q = 5'b01101;

    // redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt(ADD,1957)
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_a = {1'b0, redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_q};
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_b = {1'b0, redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_o <= $unsigned(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_a) + $unsigned(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_b);
        end
    end
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_q = redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_o[5:0];

    // c_i32_9_1788_278_recast_x(CONSTANT,287)
    assign c_i32_9_1788_278_recast_x_q = 32'b00000000000000000000000000001001;

    // i_unnamed_dijkstraoptimisedid_1788_5gr(LOGICAL,235)@0
    assign i_unnamed_dijkstraoptimisedid_1788_5gr_q = $unsigned(in_c0_eni25_1_tpl == c_i32_9_1788_278_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_43(MUX,233)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_43_s = i_unnamed_dijkstraoptimisedid_1788_5gr_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_43_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_43_q <= in_c0_eni25_11_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_43_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_43_q <= 8'b0;
            endcase
        end
    end

    // redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr(COUNTER,1955)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_i <= $unsigned(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_q = $signed(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_i[4:0]);

    // redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem(DUALMEM,1954)
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_43_q);
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_aa = redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_wraddr_q;
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_ab = redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_aa),
        .data_a(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_ab),
        .q_b(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_q = $signed(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_iq[7:0]);

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0162_shuffle_bit0_dijkstraoptimisedid_2586_0gr_NO_NAME_x(CHOOSEBITS,698)@23
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0162_shuffle_bit0_dijkstraoptimisedid_2586_0gr_NO_NAME_x_a = redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0162_shuffle_bit0_dijkstraoptimisedid_2586_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0162_shuffle_bit0_dijkstraoptimisedid_2586_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_9_dijkstraoptimisedid_1788_200(LOGICAL,215)@23
    assign i_tobool56_i_not_9_dijkstraoptimisedid_1788_200_q = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid68_dijkstraoptimisedid_1788_199_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);

    // i_or_cond584_dijkstraoptimisedid_1788_203(MUX,194)@23 + 1
    assign i_or_cond584_dijkstraoptimisedid_1788_203_s = i_tobool56_i_not_9_dijkstraoptimisedid_1788_200_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_or_cond584_dijkstraoptimisedid_1788_203_s)
                1'b0 : i_or_cond584_dijkstraoptimisedid_1788_203_q <= i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0162_shuffle_bit0_dijkstraoptimisedid_2586_0gr_NO_NAME_x_q;
                1'b1 : i_or_cond584_dijkstraoptimisedid_1788_203_q <= VCC_q;
                default : i_or_cond584_dijkstraoptimisedid_1788_203_q <= 1'b0;
            endcase
        end
    end

    // mergedMUXes10(SELECTOR,1616)@24
    always_comb 
    begin
        mergedMUXes10_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes10_q = redist163_bgTrunc_i_add68_i_9_dijkstraoptimisedid_1788_210_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid69_dijkstraoptimisedid_2619_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes10_q = redist85_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_24_q;
        end
        if (i_or_cond584_dijkstraoptimisedid_1788_203_q == 1'b1)
        begin
            mergedMUXes10_q = $signed(redist85_sync_together_1788_297_aunroll_x_in_c0_eni25_22_tpl_24_q);
        end
    end

    // redist1_mergedMUXes10_q_2(DELAY,1620)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_mergedMUXes10_q_2_delay_0 <= $unsigned(mergedMUXes10_q);
            redist1_mergedMUXes10_q_2_q <= $signed(redist1_mergedMUXes10_q_2_delay_0);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid81_dijkstraoptimisedid_1788_237(BLACKBOX,173)@26
    // out out_dependency_out@27
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_stall_out@27
    // out out_valid_out@27
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2746_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid81_dijkstraoptimisedid_1788_237 (
        .in_predicate_in(GND_q),
        .in_src_data_in_32_0(redist1_mergedMUXes10_q_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid81_dijkstraoptimisedid_1788_237_out_intel_reserved_ffwd_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,331)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid81_dijkstraoptimisedid_1788_237_out_intel_reserved_ffwd_32_0;

    // valid_fanout_reg14(REG,833)@20 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= redist102_sync_together_1788_297_aunroll_x_in_i_valid_20_q;
        end
    end

    // redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt(ADD,1948)
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_a = {1'b0, redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q};
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_b = {1'b0, redist7_mergedMUXes7_q_9_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_o <= $unsigned(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_a) + $unsigned(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_b);
        end
    end
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_q = redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_o[3:0];

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_lhsMSBs_select_b_const(CONSTANT,1584)
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q = 6'b000101;

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums(ADD,966)@13
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_lhsMSBs_select_b_const_q};
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, redist19_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsMSBs_select_b_8_outputreg0_q};
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_o[6:0]);

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_split_join(BITJOIN,967)@13
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_split_join_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_MSBs_sums_q, redist18_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_rhsLSBs_select_b_8_q};

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x(BITSELECT,478)@13
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b = i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_0_add_x_split_join_q[8:0];

    // redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr(COUNTER,1946)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i <= $unsigned(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q = $signed(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_i[2:0]);

    // redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem(DUALMEM,1945)
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_ia = $unsigned(i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b);
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_aa = redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_wraddr_q;
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_ab = redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(9),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(9),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_aa),
        .data_a(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_ab),
        .q_b(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_q = $signed(redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_iq[8:0]);

    // redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_outputreg0(DELAY,1944)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_outputreg0_q <= redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_mem_q;
        end
    end

    // i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_append_upper_bits_x(BITJOIN,461)@21
    assign i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_append_upper_bits_x_q = {i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_upper_bits_x_b_const_q, redist106_i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_dupName_3_trunc_sel_x_b_8_outputreg0_q};

    // i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_select_63(BITSELECT,89)@21
    assign i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_select_63_b = i_arrayidx55_i_10_dijkstraoptimisedid_2627_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_join(BITJOIN,88)@21
    assign i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_join_q = {i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_select_63_b, i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214(BLACKBOX,185)@21
    // out out_o_almost_empty@25
    // out out_o_empty@25
    // out out_o_readdata@25
    // out out_o_stall@25
    // out out_o_valid@25
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000optimisedid_2642_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx55_i_10_dijkstraoptimisedid_1788_213_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_ext_sig_sync_out_x(GPOUT,335)
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;

    // valid_fanout_reg25(REG,844)@25 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_q;
        end
    end

    // redist89_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_24(DELAY,1708)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist89_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_24_q <= redist88_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_23_outputreg0_q;
        end
    end

    // redist161_dupName_0_comparator_x_q_20(DELAY,1780)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist161_dupName_0_comparator_x_q_20_q <= redist160_dupName_0_comparator_x_q_19_q;
        end
    end

    // redist216_comparator_q_20(DELAY,1835)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist216_comparator_q_20_q <= redist215_comparator_q_19_q;
        end
    end

    // redist135_dupName_6_comparator_x_q_20(DELAY,1754)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist135_dupName_6_comparator_x_q_20_q <= redist134_dupName_6_comparator_x_q_19_q;
        end
    end

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt245_dijkstraoptimisedid_1788_222_opt(SELECTOR,782)@24
    always_comb 
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt245_dijkstraoptimisedid_1788_222_opt_q = redist210_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_17_q;
        if (redist161_dupName_0_comparator_x_q_20_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt245_dijkstraoptimisedid_1788_222_opt_q = redist89_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_24_q;
        end
        if (redist216_comparator_q_20_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt245_dijkstraoptimisedid_1788_222_opt_q = mergedMUXes10_q;
        end
        if (redist135_dupName_6_comparator_x_q_20_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt245_dijkstraoptimisedid_1788_222_opt_q = redist3_mergedMUXes9_q_2_q;
        end
    end

    // redist121_dupName_10_comparator_x_q_24(DELAY,1740)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist121_dupName_10_comparator_x_q_24_q <= redist120_dupName_10_comparator_x_q_23_q;
        end
    end

    // redist24_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_3(DELAY,1643)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_3_q <= redist23_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_2_q;
        end
    end

    // redist132_dupName_9_comparator_x_q_24(DELAY,1751)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist132_dupName_9_comparator_x_q_24_q <= redist131_dupName_9_comparator_x_q_23_q;
        end
    end

    // i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt250_dijkstraoptimisedid_1788_224(SELECTOR,130)@24 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt250_dijkstraoptimisedid_1788_224_q <= redist210_i_llvm_fpga_fanout_i32_acl_24_fanout_adaptor_dijkstraoptimisedid_1788_68_q_17_q;
            if (redist121_dupName_10_comparator_x_q_24_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt250_dijkstraoptimisedid_1788_224_q <= i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_case_stmt245_dijkstraoptimisedid_1788_222_opt_q;
            end
            if (redist132_dupName_9_comparator_x_q_24_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt250_dijkstraoptimisedid_1788_224_q <= redist24_i_llvm_fpga_case_i32_i32_v7i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_case_stmt200_dijkstraoptimisedid_1788_190_opt_lev1_id0_q_3_q;
            end
        end
    end

    // i_add68_i_10_dijkstraoptimisedid_1788_225(ADD,76)@25
    assign i_add68_i_10_dijkstraoptimisedid_1788_225_a = {1'b0, i_llvm_fpga_case_i32_i32_v2i32_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_2s_case_stmt250_dijkstraoptimisedid_1788_224_q};
    assign i_add68_i_10_dijkstraoptimisedid_1788_225_b = {1'b0, i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_o_readdata};
    assign i_add68_i_10_dijkstraoptimisedid_1788_225_o = $unsigned(i_add68_i_10_dijkstraoptimisedid_1788_225_a) + $unsigned(i_add68_i_10_dijkstraoptimisedid_1788_225_b);
    assign i_add68_i_10_dijkstraoptimisedid_1788_225_q = i_add68_i_10_dijkstraoptimisedid_1788_225_o[32:0];

    // bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x(BITSELECT,266)@25
    assign bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b = i_add68_i_10_dijkstraoptimisedid_1788_225_q[31:0];

    // redist172_bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b_1(DELAY,1791)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist172_bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b_1_q <= bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b;
        end
    end

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_mux_xinvSel(LOGICAL,1617)@26
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_mux_xinvSel_q = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_n);

    // i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x(COMPARE,768)@26
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_a = $unsigned({{2{redist172_bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b_1_q[31]}}, redist172_bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b_1_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_b = $unsigned({{2{redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_q[31]}}, redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_q});
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_o = $unsigned($signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_a) - $signed(i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_b));
    assign i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_n[0] = ~ (i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_o[33]);

    // redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26(DELAY,1709)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_delay_0 <= $unsigned(redist89_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_24_q);
            redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_q <= $signed(redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_delay_0);
        end
    end

    // redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_offset(CONSTANT,1952)
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_offset_q = 5'b01011;

    // redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt(ADD,1953)
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_a = {1'b0, redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_q};
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_b = {1'b0, redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_o <= $unsigned(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_a) + $unsigned(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_b);
        end
    end
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_q = redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_o[5:0];

    // c_i32_10_1788_277_recast_x(CONSTANT,278)
    assign c_i32_10_1788_277_recast_x_q = 32'b00000000000000000000000000001010;

    // i_unnamed_dijkstraoptimisedid_1788_3gr(LOGICAL,231)@0
    assign i_unnamed_dijkstraoptimisedid_1788_3gr_q = $unsigned(in_c0_eni25_1_tpl == c_i32_10_1788_277_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstraoptimisedid_1788_45(MUX,234)@0 + 1
    assign i_unnamed_dijkstraoptimisedid_1788_45_s = i_unnamed_dijkstraoptimisedid_1788_3gr_q;
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_dijkstraoptimisedid_1788_45_s)
                1'b0 : i_unnamed_dijkstraoptimisedid_1788_45_q <= in_c0_eni25_12_tpl;
                1'b1 : i_unnamed_dijkstraoptimisedid_1788_45_q <= c_i8_1_1788_288_q;
                default : i_unnamed_dijkstraoptimisedid_1788_45_q <= 8'b0;
            endcase
        end
    end

    // redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr(COUNTER,1951)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_i <= $unsigned(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_q = $signed(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_i[4:0]);

    // redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem(DUALMEM,1950)
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_ia = $unsigned(i_unnamed_dijkstraoptimisedid_1788_45_q);
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_aa = redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_wraddr_q;
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_ab = redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_aa),
        .data_a(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_ab),
        .q_b(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_q = $signed(redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_iq[7:0]);

    // redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_outputreg0(DELAY,1949)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_outputreg0_q <= redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_mem_q;
        end
    end

    // i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0163_shuffle_bit0_dijkstraoptimisedid_2660_0gr_NO_NAME_x(CHOOSEBITS,702)@26
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0163_shuffle_bit0_dijkstraoptimisedid_2660_0gr_NO_NAME_x_a = redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_outputreg0_q;
    assign i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0163_shuffle_bit0_dijkstraoptimisedid_2660_0gr_NO_NAME_x_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0163_shuffle_bit0_dijkstraoptimisedid_2660_0gr_NO_NAME_x_a[0:0];

    // i_tobool56_i_not_10_dijkstraoptimisedid_1788_215(LOGICAL,206)@25 + 1
    assign i_tobool56_i_not_10_dijkstraoptimisedid_1788_215_qi = $unsigned(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid70_dijkstraoptimisedid_1788_214_out_o_readdata == c_i32_0_1788_287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool56_i_not_10_dijkstraoptimisedid_1788_215_delay ( .xin(i_tobool56_i_not_10_dijkstraoptimisedid_1788_215_qi), .xout(i_tobool56_i_not_10_dijkstraoptimisedid_1788_215_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond586_dijkstraoptimisedid_1788_218(MUX,195)@26
    assign i_or_cond586_dijkstraoptimisedid_1788_218_s = i_tobool56_i_not_10_dijkstraoptimisedid_1788_215_q;
    always_comb 
    begin
        unique case (i_or_cond586_dijkstraoptimisedid_1788_218_s)
            1'b0 : i_or_cond586_dijkstraoptimisedid_1788_218_q = i_llvm_fpga_bit_shuffle_i1_s_s_in_for_cond_cleanup33_i_dijkstraoptimisedid_fpgaunique_0s_v1i32_struct_0163_shuffle_bit0_dijkstraoptimisedid_2660_0gr_NO_NAME_x_q;
            1'b1 : i_or_cond586_dijkstraoptimisedid_1788_218_q = VCC_q;
            default : i_or_cond586_dijkstraoptimisedid_1788_218_q = 1'b0;
        endcase
    end

    // mergedMUXes11(SELECTOR,1618)@26
    always_comb 
    begin
        mergedMUXes11_q = 32'b0;
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_mux_xinvSel_q == 1'b1)
        begin
            mergedMUXes11_q = redist172_bgTrunc_i_add68_i_10_dijkstraoptimisedid_1788_225_sel_x_b_1_q;
        end
        if (i_llvm_smin_i32_unnamed_dijkstraoptimisedid71_dijkstraoptimisedid_2693_0gr_smin_signBit_x_n == 1'b1)
        begin
            mergedMUXes11_q = redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_q;
        end
        if (i_or_cond586_dijkstraoptimisedid_1788_218_q == 1'b1)
        begin
            mergedMUXes11_q = $signed(redist90_sync_together_1788_297_aunroll_x_in_c0_eni25_23_tpl_26_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid82_dijkstraoptimisedid_1788_238(BLACKBOX,174)@26
    // out out_dependency_out@27
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_stall_out@27
    // out out_valid_out@27
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_2751_0gr thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid82_dijkstraoptimisedid_1788_238 (
        .in_predicate_in(GND_q),
        .in_src_data_in_33_0(mergedMUXes11_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dependency_out(),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid82_dijkstraoptimisedid_1788_238_out_intel_reserved_ffwd_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,336)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstraoptimisedid82_dijkstraoptimisedid_1788_238_out_intel_reserved_ffwd_33_0;

    // valid_fanout_reg0(REG,819)@25 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist104_sync_together_1788_297_aunroll_x_in_i_valid_25_q;
        end
    end

    // redist20_valid_fanout_reg0_q_1(DELAY,1639)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist20_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist20_valid_fanout_reg0_q_1_q <= valid_fanout_reg0_q;
        end
    end

    // redist0_mergedMUXes11_q_1(DELAY,1619)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_mergedMUXes11_q_1_q <= mergedMUXes11_q;
        end
    end

    // redist2_mergedMUXes10_q_3(DELAY,1621)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_mergedMUXes10_q_3_q <= redist1_mergedMUXes10_q_2_q;
        end
    end

    // redist5_mergedMUXes9_q_5(DELAY,1624)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_mergedMUXes9_q_5_q <= redist4_mergedMUXes9_q_4_q;
        end
    end

    // redist6_mergedMUXes8_q_7_offset(CONSTANT,1840)
    assign redist6_mergedMUXes8_q_7_offset_q = 2'b10;

    // redist6_mergedMUXes8_q_7_rdcnt(ADD,1841)
    assign redist6_mergedMUXes8_q_7_rdcnt_a = {1'b0, redist6_mergedMUXes8_q_7_wraddr_q};
    assign redist6_mergedMUXes8_q_7_rdcnt_b = {1'b0, redist6_mergedMUXes8_q_7_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_mergedMUXes8_q_7_rdcnt_o <= $unsigned(redist6_mergedMUXes8_q_7_rdcnt_a) + $unsigned(redist6_mergedMUXes8_q_7_rdcnt_b);
        end
    end
    assign redist6_mergedMUXes8_q_7_rdcnt_q = redist6_mergedMUXes8_q_7_rdcnt_o[2:0];

    // redist6_mergedMUXes8_q_7_inputreg0(DELAY,1836)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_mergedMUXes8_q_7_inputreg0_q <= mergedMUXes8_q;
        end
    end

    // redist6_mergedMUXes8_q_7_wraddr(COUNTER,1839)
    // low=0, high=3, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_mergedMUXes8_q_7_wraddr_i <= $unsigned(redist6_mergedMUXes8_q_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist6_mergedMUXes8_q_7_wraddr_q = $signed(redist6_mergedMUXes8_q_7_wraddr_i[1:0]);

    // redist6_mergedMUXes8_q_7_mem(DUALMEM,1838)
    assign redist6_mergedMUXes8_q_7_mem_ia = $unsigned(redist6_mergedMUXes8_q_7_inputreg0_q);
    assign redist6_mergedMUXes8_q_7_mem_aa = redist6_mergedMUXes8_q_7_wraddr_q;
    assign redist6_mergedMUXes8_q_7_mem_ab = redist6_mergedMUXes8_q_7_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist6_mergedMUXes8_q_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist6_mergedMUXes8_q_7_mem_aa),
        .data_a(redist6_mergedMUXes8_q_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_mergedMUXes8_q_7_mem_ab),
        .q_b(redist6_mergedMUXes8_q_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist6_mergedMUXes8_q_7_mem_q = $signed(redist6_mergedMUXes8_q_7_mem_iq[31:0]);

    // redist6_mergedMUXes8_q_7_outputreg0(DELAY,1837)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_mergedMUXes8_q_7_outputreg0_q <= redist6_mergedMUXes8_q_7_mem_q;
        end
    end

    // redist7_mergedMUXes7_q_9_rdcnt(ADD,1847)
    assign redist7_mergedMUXes7_q_9_rdcnt_a = {1'b0, redist7_mergedMUXes7_q_9_wraddr_q};
    assign redist7_mergedMUXes7_q_9_rdcnt_b = {1'b0, redist7_mergedMUXes7_q_9_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_mergedMUXes7_q_9_rdcnt_o <= $unsigned(redist7_mergedMUXes7_q_9_rdcnt_a) + $unsigned(redist7_mergedMUXes7_q_9_rdcnt_b);
        end
    end
    assign redist7_mergedMUXes7_q_9_rdcnt_q = redist7_mergedMUXes7_q_9_rdcnt_o[3:0];

    // redist7_mergedMUXes7_q_9_inputreg0(DELAY,1842)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_mergedMUXes7_q_9_inputreg0_q <= mergedMUXes7_q;
        end
    end

    // redist7_mergedMUXes7_q_9_wraddr(COUNTER,1845)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_mergedMUXes7_q_9_wraddr_i <= $unsigned(redist7_mergedMUXes7_q_9_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist7_mergedMUXes7_q_9_wraddr_q = $signed(redist7_mergedMUXes7_q_9_wraddr_i[2:0]);

    // redist7_mergedMUXes7_q_9_mem(DUALMEM,1844)
    assign redist7_mergedMUXes7_q_9_mem_ia = $unsigned(redist7_mergedMUXes7_q_9_inputreg0_q);
    assign redist7_mergedMUXes7_q_9_mem_aa = redist7_mergedMUXes7_q_9_wraddr_q;
    assign redist7_mergedMUXes7_q_9_mem_ab = redist7_mergedMUXes7_q_9_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist7_mergedMUXes7_q_9_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist7_mergedMUXes7_q_9_mem_aa),
        .data_a(redist7_mergedMUXes7_q_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_mergedMUXes7_q_9_mem_ab),
        .q_b(redist7_mergedMUXes7_q_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist7_mergedMUXes7_q_9_mem_q = $signed(redist7_mergedMUXes7_q_9_mem_iq[31:0]);

    // redist7_mergedMUXes7_q_9_outputreg0(DELAY,1843)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_mergedMUXes7_q_9_outputreg0_q <= redist7_mergedMUXes7_q_9_mem_q;
        end
    end

    // redist8_mergedMUXes6_q_11_rdcnt(ADD,1853)
    assign redist8_mergedMUXes6_q_11_rdcnt_a = {1'b0, redist8_mergedMUXes6_q_11_wraddr_q};
    assign redist8_mergedMUXes6_q_11_rdcnt_b = {1'b0, redist8_mergedMUXes6_q_11_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_mergedMUXes6_q_11_rdcnt_o <= $unsigned(redist8_mergedMUXes6_q_11_rdcnt_a) + $unsigned(redist8_mergedMUXes6_q_11_rdcnt_b);
        end
    end
    assign redist8_mergedMUXes6_q_11_rdcnt_q = redist8_mergedMUXes6_q_11_rdcnt_o[3:0];

    // redist8_mergedMUXes6_q_11_inputreg0(DELAY,1848)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_mergedMUXes6_q_11_inputreg0_q <= mergedMUXes6_q;
        end
    end

    // redist8_mergedMUXes6_q_11_wraddr(COUNTER,1851)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_mergedMUXes6_q_11_wraddr_i <= $unsigned(redist8_mergedMUXes6_q_11_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist8_mergedMUXes6_q_11_wraddr_q = $signed(redist8_mergedMUXes6_q_11_wraddr_i[2:0]);

    // redist8_mergedMUXes6_q_11_mem(DUALMEM,1850)
    assign redist8_mergedMUXes6_q_11_mem_ia = $unsigned(redist8_mergedMUXes6_q_11_inputreg0_q);
    assign redist8_mergedMUXes6_q_11_mem_aa = redist8_mergedMUXes6_q_11_wraddr_q;
    assign redist8_mergedMUXes6_q_11_mem_ab = redist8_mergedMUXes6_q_11_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist8_mergedMUXes6_q_11_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist8_mergedMUXes6_q_11_mem_aa),
        .data_a(redist8_mergedMUXes6_q_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_mergedMUXes6_q_11_mem_ab),
        .q_b(redist8_mergedMUXes6_q_11_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist8_mergedMUXes6_q_11_mem_q = $signed(redist8_mergedMUXes6_q_11_mem_iq[31:0]);

    // redist8_mergedMUXes6_q_11_outputreg0(DELAY,1849)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_mergedMUXes6_q_11_outputreg0_q <= redist8_mergedMUXes6_q_11_mem_q;
        end
    end

    // redist9_mergedMUXes5_q_13_offset(CONSTANT,1858)
    assign redist9_mergedMUXes5_q_13_offset_q = 4'b1000;

    // redist9_mergedMUXes5_q_13_rdcnt(ADD,1859)
    assign redist9_mergedMUXes5_q_13_rdcnt_a = {1'b0, redist9_mergedMUXes5_q_13_wraddr_q};
    assign redist9_mergedMUXes5_q_13_rdcnt_b = {1'b0, redist9_mergedMUXes5_q_13_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_mergedMUXes5_q_13_rdcnt_o <= $unsigned(redist9_mergedMUXes5_q_13_rdcnt_a) + $unsigned(redist9_mergedMUXes5_q_13_rdcnt_b);
        end
    end
    assign redist9_mergedMUXes5_q_13_rdcnt_q = redist9_mergedMUXes5_q_13_rdcnt_o[4:0];

    // redist9_mergedMUXes5_q_13_inputreg0(DELAY,1854)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_mergedMUXes5_q_13_inputreg0_q <= mergedMUXes5_q;
        end
    end

    // redist9_mergedMUXes5_q_13_wraddr(COUNTER,1857)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_mergedMUXes5_q_13_wraddr_i <= $unsigned(redist9_mergedMUXes5_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist9_mergedMUXes5_q_13_wraddr_q = $signed(redist9_mergedMUXes5_q_13_wraddr_i[3:0]);

    // redist9_mergedMUXes5_q_13_mem(DUALMEM,1856)
    assign redist9_mergedMUXes5_q_13_mem_ia = $unsigned(redist9_mergedMUXes5_q_13_inputreg0_q);
    assign redist9_mergedMUXes5_q_13_mem_aa = redist9_mergedMUXes5_q_13_wraddr_q;
    assign redist9_mergedMUXes5_q_13_mem_ab = redist9_mergedMUXes5_q_13_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist9_mergedMUXes5_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist9_mergedMUXes5_q_13_mem_aa),
        .data_a(redist9_mergedMUXes5_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_mergedMUXes5_q_13_mem_ab),
        .q_b(redist9_mergedMUXes5_q_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist9_mergedMUXes5_q_13_mem_q = $signed(redist9_mergedMUXes5_q_13_mem_iq[31:0]);

    // redist9_mergedMUXes5_q_13_outputreg0(DELAY,1855)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_mergedMUXes5_q_13_outputreg0_q <= redist9_mergedMUXes5_q_13_mem_q;
        end
    end

    // redist10_mergedMUXes4_q_15_offset(CONSTANT,1864)
    assign redist10_mergedMUXes4_q_15_offset_q = 4'b0110;

    // redist10_mergedMUXes4_q_15_rdcnt(ADD,1865)
    assign redist10_mergedMUXes4_q_15_rdcnt_a = {1'b0, redist10_mergedMUXes4_q_15_wraddr_q};
    assign redist10_mergedMUXes4_q_15_rdcnt_b = {1'b0, redist10_mergedMUXes4_q_15_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_mergedMUXes4_q_15_rdcnt_o <= $unsigned(redist10_mergedMUXes4_q_15_rdcnt_a) + $unsigned(redist10_mergedMUXes4_q_15_rdcnt_b);
        end
    end
    assign redist10_mergedMUXes4_q_15_rdcnt_q = redist10_mergedMUXes4_q_15_rdcnt_o[4:0];

    // redist10_mergedMUXes4_q_15_inputreg0(DELAY,1860)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_mergedMUXes4_q_15_inputreg0_q <= mergedMUXes4_q;
        end
    end

    // redist10_mergedMUXes4_q_15_wraddr(COUNTER,1863)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_mergedMUXes4_q_15_wraddr_i <= $unsigned(redist10_mergedMUXes4_q_15_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist10_mergedMUXes4_q_15_wraddr_q = $signed(redist10_mergedMUXes4_q_15_wraddr_i[3:0]);

    // redist10_mergedMUXes4_q_15_mem(DUALMEM,1862)
    assign redist10_mergedMUXes4_q_15_mem_ia = $unsigned(redist10_mergedMUXes4_q_15_inputreg0_q);
    assign redist10_mergedMUXes4_q_15_mem_aa = redist10_mergedMUXes4_q_15_wraddr_q;
    assign redist10_mergedMUXes4_q_15_mem_ab = redist10_mergedMUXes4_q_15_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist10_mergedMUXes4_q_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist10_mergedMUXes4_q_15_mem_aa),
        .data_a(redist10_mergedMUXes4_q_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_mergedMUXes4_q_15_mem_ab),
        .q_b(redist10_mergedMUXes4_q_15_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist10_mergedMUXes4_q_15_mem_q = $signed(redist10_mergedMUXes4_q_15_mem_iq[31:0]);

    // redist10_mergedMUXes4_q_15_outputreg0(DELAY,1861)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_mergedMUXes4_q_15_outputreg0_q <= redist10_mergedMUXes4_q_15_mem_q;
        end
    end

    // redist11_mergedMUXes3_q_17_rdcnt(ADD,1871)
    assign redist11_mergedMUXes3_q_17_rdcnt_a = {1'b0, redist11_mergedMUXes3_q_17_wraddr_q};
    assign redist11_mergedMUXes3_q_17_rdcnt_b = {1'b0, redist11_mergedMUXes3_q_17_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_mergedMUXes3_q_17_rdcnt_o <= $unsigned(redist11_mergedMUXes3_q_17_rdcnt_a) + $unsigned(redist11_mergedMUXes3_q_17_rdcnt_b);
        end
    end
    assign redist11_mergedMUXes3_q_17_rdcnt_q = redist11_mergedMUXes3_q_17_rdcnt_o[4:0];

    // redist11_mergedMUXes3_q_17_inputreg0(DELAY,1866)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_mergedMUXes3_q_17_inputreg0_q <= mergedMUXes3_q;
        end
    end

    // redist11_mergedMUXes3_q_17_wraddr(COUNTER,1869)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_mergedMUXes3_q_17_wraddr_i <= $unsigned(redist11_mergedMUXes3_q_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist11_mergedMUXes3_q_17_wraddr_q = $signed(redist11_mergedMUXes3_q_17_wraddr_i[3:0]);

    // redist11_mergedMUXes3_q_17_mem(DUALMEM,1868)
    assign redist11_mergedMUXes3_q_17_mem_ia = $unsigned(redist11_mergedMUXes3_q_17_inputreg0_q);
    assign redist11_mergedMUXes3_q_17_mem_aa = redist11_mergedMUXes3_q_17_wraddr_q;
    assign redist11_mergedMUXes3_q_17_mem_ab = redist11_mergedMUXes3_q_17_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist11_mergedMUXes3_q_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist11_mergedMUXes3_q_17_mem_aa),
        .data_a(redist11_mergedMUXes3_q_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_mergedMUXes3_q_17_mem_ab),
        .q_b(redist11_mergedMUXes3_q_17_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist11_mergedMUXes3_q_17_mem_q = $signed(redist11_mergedMUXes3_q_17_mem_iq[31:0]);

    // redist11_mergedMUXes3_q_17_outputreg0(DELAY,1867)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_mergedMUXes3_q_17_outputreg0_q <= redist11_mergedMUXes3_q_17_mem_q;
        end
    end

    // redist12_mergedMUXes2_q_19_offset(CONSTANT,1876)
    assign redist12_mergedMUXes2_q_19_offset_q = 4'b0010;

    // redist12_mergedMUXes2_q_19_rdcnt(ADD,1877)
    assign redist12_mergedMUXes2_q_19_rdcnt_a = {1'b0, redist12_mergedMUXes2_q_19_wraddr_q};
    assign redist12_mergedMUXes2_q_19_rdcnt_b = {1'b0, redist12_mergedMUXes2_q_19_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_mergedMUXes2_q_19_rdcnt_o <= $unsigned(redist12_mergedMUXes2_q_19_rdcnt_a) + $unsigned(redist12_mergedMUXes2_q_19_rdcnt_b);
        end
    end
    assign redist12_mergedMUXes2_q_19_rdcnt_q = redist12_mergedMUXes2_q_19_rdcnt_o[4:0];

    // redist12_mergedMUXes2_q_19_inputreg0(DELAY,1872)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_mergedMUXes2_q_19_inputreg0_q <= mergedMUXes2_q;
        end
    end

    // redist12_mergedMUXes2_q_19_wraddr(COUNTER,1875)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_mergedMUXes2_q_19_wraddr_i <= $unsigned(redist12_mergedMUXes2_q_19_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist12_mergedMUXes2_q_19_wraddr_q = $signed(redist12_mergedMUXes2_q_19_wraddr_i[3:0]);

    // redist12_mergedMUXes2_q_19_mem(DUALMEM,1874)
    assign redist12_mergedMUXes2_q_19_mem_ia = $unsigned(redist12_mergedMUXes2_q_19_inputreg0_q);
    assign redist12_mergedMUXes2_q_19_mem_aa = redist12_mergedMUXes2_q_19_wraddr_q;
    assign redist12_mergedMUXes2_q_19_mem_ab = redist12_mergedMUXes2_q_19_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist12_mergedMUXes2_q_19_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist12_mergedMUXes2_q_19_mem_aa),
        .data_a(redist12_mergedMUXes2_q_19_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_mergedMUXes2_q_19_mem_ab),
        .q_b(redist12_mergedMUXes2_q_19_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist12_mergedMUXes2_q_19_mem_q = $signed(redist12_mergedMUXes2_q_19_mem_iq[31:0]);

    // redist12_mergedMUXes2_q_19_outputreg0(DELAY,1873)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_mergedMUXes2_q_19_outputreg0_q <= redist12_mergedMUXes2_q_19_mem_q;
        end
    end

    // redist13_mergedMUXes0_q_21_offset(CONSTANT,1882)
    assign redist13_mergedMUXes0_q_21_offset_q = 5'b10000;

    // redist13_mergedMUXes0_q_21_rdcnt(ADD,1883)
    assign redist13_mergedMUXes0_q_21_rdcnt_a = {1'b0, redist13_mergedMUXes0_q_21_wraddr_q};
    assign redist13_mergedMUXes0_q_21_rdcnt_b = {1'b0, redist13_mergedMUXes0_q_21_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_mergedMUXes0_q_21_rdcnt_o <= $unsigned(redist13_mergedMUXes0_q_21_rdcnt_a) + $unsigned(redist13_mergedMUXes0_q_21_rdcnt_b);
        end
    end
    assign redist13_mergedMUXes0_q_21_rdcnt_q = redist13_mergedMUXes0_q_21_rdcnt_o[5:0];

    // redist13_mergedMUXes0_q_21_inputreg0(DELAY,1878)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_mergedMUXes0_q_21_inputreg0_q <= mergedMUXes0_q;
        end
    end

    // redist13_mergedMUXes0_q_21_wraddr(COUNTER,1881)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_mergedMUXes0_q_21_wraddr_i <= $unsigned(redist13_mergedMUXes0_q_21_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist13_mergedMUXes0_q_21_wraddr_q = $signed(redist13_mergedMUXes0_q_21_wraddr_i[4:0]);

    // redist13_mergedMUXes0_q_21_mem(DUALMEM,1880)
    assign redist13_mergedMUXes0_q_21_mem_ia = $unsigned(redist13_mergedMUXes0_q_21_inputreg0_q);
    assign redist13_mergedMUXes0_q_21_mem_aa = redist13_mergedMUXes0_q_21_wraddr_q;
    assign redist13_mergedMUXes0_q_21_mem_ab = redist13_mergedMUXes0_q_21_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist13_mergedMUXes0_q_21_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist13_mergedMUXes0_q_21_mem_aa),
        .data_a(redist13_mergedMUXes0_q_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_mergedMUXes0_q_21_mem_ab),
        .q_b(redist13_mergedMUXes0_q_21_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist13_mergedMUXes0_q_21_mem_q = $signed(redist13_mergedMUXes0_q_21_mem_iq[31:0]);

    // redist13_mergedMUXes0_q_21_outputreg0(DELAY,1879)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_mergedMUXes0_q_21_outputreg0_q <= redist13_mergedMUXes0_q_21_mem_q;
        end
    end

    // redist174_i_unnamed_dijkstraoptimisedid_1788_45_q_27(DELAY,1793)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist174_i_unnamed_dijkstraoptimisedid_1788_45_q_27_q <= redist173_i_unnamed_dijkstraoptimisedid_1788_45_q_26_outputreg0_q;
        end
    end

    // redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27(DELAY,1795)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_0 <= $unsigned(redist175_i_unnamed_dijkstraoptimisedid_1788_43_q_23_mem_q);
            redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_1 <= redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_0;
            redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_2 <= redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_1;
            redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_q <= $signed(redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_delay_2);
        end
    end

    // redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27(DELAY,1797)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_0 <= $unsigned(redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_mem_q);
            redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_1 <= redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_0;
            redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_2 <= redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_1;
            redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_3 <= redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_2;
            redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_q <= $signed(redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_delay_3);
        end
    end

    // redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_outputreg0(DELAY,1962)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_outputreg0_q <= redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_q;
        end
    end

    // redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt(ADD,1972)
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_a = {1'b0, redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_q};
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_b = {1'b0, redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_o <= $unsigned(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_a) + $unsigned(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_b);
        end
    end
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_q = redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_o[3:0];

    // redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr(COUNTER,1970)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_i <= $unsigned(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_q = $signed(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_i[2:0]);

    // redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem(DUALMEM,1969)
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_ia = $unsigned(redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_outputreg0_q);
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_aa = redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_wraddr_q;
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_ab = redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_aa),
        .data_a(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_ab),
        .q_b(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_q = $signed(redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_iq[7:0]);

    // redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_outputreg0(DELAY,1968)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_outputreg0_q <= redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_mem_q;
        end
    end

    // redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt(ADD,1981)
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_a = {1'b0, redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_q};
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_b = {1'b0, redist8_mergedMUXes6_q_11_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_o <= $unsigned(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_a) + $unsigned(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_b);
        end
    end
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_q = redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_o[3:0];

    // redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr(COUNTER,1979)
    // low=0, high=7, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_i <= $unsigned(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_q = $signed(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_i[2:0]);

    // redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem(DUALMEM,1978)
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_ia = $unsigned(redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_mem_q);
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_aa = redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_wraddr_q;
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_ab = redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_aa),
        .data_a(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_ab),
        .q_b(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_q = $signed(redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_iq[7:0]);

    // redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_outputreg0(DELAY,1977)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_outputreg0_q <= redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_mem_q;
        end
    end

    // redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt(ADD,1990)
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_a = {1'b0, redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_q};
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_b = {1'b0, redist9_mergedMUXes5_q_13_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_o <= $unsigned(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_a) + $unsigned(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_b);
        end
    end
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_q = redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_o[4:0];

    // redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr(COUNTER,1988)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_i <= $unsigned(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_q = $signed(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_i[3:0]);

    // redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem(DUALMEM,1987)
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_ia = $unsigned(redist183_i_unnamed_dijkstraoptimisedid_1788_35_q_15_mem_q);
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_aa = redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_wraddr_q;
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_ab = redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_aa),
        .data_a(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_ab),
        .q_b(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_q = $signed(redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_iq[7:0]);

    // redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_outputreg0(DELAY,1986)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_outputreg0_q <= redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_mem_q;
        end
    end

    // redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt(ADD,1999)
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_a = {1'b0, redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_q};
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_b = {1'b0, redist10_mergedMUXes4_q_15_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_o <= $unsigned(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_a) + $unsigned(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_b);
        end
    end
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_q = redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_o[4:0];

    // redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr(COUNTER,1997)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_i <= $unsigned(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_q = $signed(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_i[3:0]);

    // redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem(DUALMEM,1996)
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_ia = $unsigned(redist185_i_unnamed_dijkstraoptimisedid_1788_33_q_13_mem_q);
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_aa = redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_wraddr_q;
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_ab = redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_aa),
        .data_a(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_ab),
        .q_b(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_q = $signed(redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_iq[7:0]);

    // redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_outputreg0(DELAY,1995)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_outputreg0_q <= redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_mem_q;
        end
    end

    // redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt(ADD,2008)
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_a = {1'b0, redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_q};
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_b = {1'b0, redist11_mergedMUXes3_q_17_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_o <= $unsigned(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_a) + $unsigned(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_b);
        end
    end
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_q = redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_o[4:0];

    // redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr(COUNTER,2006)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_i <= $unsigned(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_q = $signed(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_i[3:0]);

    // redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem(DUALMEM,2005)
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_ia = $unsigned(redist187_i_unnamed_dijkstraoptimisedid_1788_31_q_11_mem_q);
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_aa = redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_wraddr_q;
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_ab = redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_aa),
        .data_a(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_ab),
        .q_b(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_q = $signed(redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_iq[7:0]);

    // redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_outputreg0(DELAY,2004)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_outputreg0_q <= redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_mem_q;
        end
    end

    // redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt(ADD,2018)
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_a = {1'b0, redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_q};
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_b = {1'b0, redist181_i_unnamed_dijkstraoptimisedid_1788_37_q_17_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_o <= $unsigned(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_a) + $unsigned(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_b);
        end
    end
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_q = redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_o[4:0];

    // redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr(COUNTER,2016)
    // low=0, high=15, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_i <= $unsigned(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_q = $signed(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_i[3:0]);

    // redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem(DUALMEM,2015)
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_ia = $unsigned(redist189_i_unnamed_dijkstraoptimisedid_1788_29_q_10_outputreg0_q);
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_aa = redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_wraddr_q;
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_ab = redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_aa),
        .data_a(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_ab),
        .q_b(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_q = $signed(redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_iq[7:0]);

    // redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_outputreg0(DELAY,2014)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_outputreg0_q <= redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_mem_q;
        end
    end

    // redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt(ADD,2028)
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_a = {1'b0, redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_q};
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_b = {1'b0, redist179_i_unnamed_dijkstraoptimisedid_1788_39_q_20_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_o <= $unsigned(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_a) + $unsigned(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_b);
        end
    end
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_q = redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_o[5:0];

    // redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr(COUNTER,2026)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_i <= $unsigned(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_q = $signed(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_i[4:0]);

    // redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem(DUALMEM,2025)
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_ia = $unsigned(redist191_i_unnamed_dijkstraoptimisedid_1788_27_q_8_outputreg0_q);
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_aa = redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_wraddr_q;
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_ab = redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_aa),
        .data_a(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_ab),
        .q_b(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_q = $signed(redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_iq[7:0]);

    // redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_outputreg0(DELAY,2024)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_outputreg0_q <= redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_mem_q;
        end
    end

    // redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt(ADD,2033)
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_a = {1'b0, redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_q};
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_b = {1'b0, redist177_i_unnamed_dijkstraoptimisedid_1788_41_q_21_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_o <= $unsigned(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_a) + $unsigned(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_b);
        end
    end
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_q = redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_o[5:0];

    // redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr(COUNTER,2031)
    // low=0, high=31, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_i <= $unsigned(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_q = $signed(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_i[4:0]);

    // redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem(DUALMEM,2030)
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_ia = $unsigned(redist193_i_spec_select_dijkstraoptimisedid_1788_25_q_6_q);
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_aa = redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_wraddr_q;
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_ab = redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_aa),
        .data_a(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_ab),
        .q_b(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_q = $signed(redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_iq[7:0]);

    // redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_outputreg0(DELAY,2029)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_outputreg0_q <= redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_mem_q;
        end
    end

    // sync_out_7_aunroll_x(GPOUT,773)@27
    assign out_c0_exi22_0_tpl = GND_q;
    assign out_c0_exi22_1_tpl = redist194_i_spec_select_dijkstraoptimisedid_1788_25_q_27_outputreg0_q;
    assign out_c0_exi22_2_tpl = redist192_i_unnamed_dijkstraoptimisedid_1788_27_q_27_outputreg0_q;
    assign out_c0_exi22_3_tpl = redist190_i_unnamed_dijkstraoptimisedid_1788_29_q_27_outputreg0_q;
    assign out_c0_exi22_4_tpl = redist188_i_unnamed_dijkstraoptimisedid_1788_31_q_27_outputreg0_q;
    assign out_c0_exi22_5_tpl = redist186_i_unnamed_dijkstraoptimisedid_1788_33_q_27_outputreg0_q;
    assign out_c0_exi22_6_tpl = redist184_i_unnamed_dijkstraoptimisedid_1788_35_q_27_outputreg0_q;
    assign out_c0_exi22_7_tpl = redist182_i_unnamed_dijkstraoptimisedid_1788_37_q_27_outputreg0_q;
    assign out_c0_exi22_8_tpl = redist180_i_unnamed_dijkstraoptimisedid_1788_39_q_27_outputreg0_q;
    assign out_c0_exi22_9_tpl = redist178_i_unnamed_dijkstraoptimisedid_1788_41_q_27_outputreg0_q;
    assign out_c0_exi22_10_tpl = redist176_i_unnamed_dijkstraoptimisedid_1788_43_q_27_q;
    assign out_c0_exi22_11_tpl = redist174_i_unnamed_dijkstraoptimisedid_1788_45_q_27_q;
    assign out_c0_exi22_12_tpl = redist13_mergedMUXes0_q_21_outputreg0_q;
    assign out_c0_exi22_13_tpl = redist12_mergedMUXes2_q_19_outputreg0_q;
    assign out_c0_exi22_14_tpl = redist11_mergedMUXes3_q_17_outputreg0_q;
    assign out_c0_exi22_15_tpl = redist10_mergedMUXes4_q_15_outputreg0_q;
    assign out_c0_exi22_16_tpl = redist9_mergedMUXes5_q_13_outputreg0_q;
    assign out_c0_exi22_17_tpl = redist8_mergedMUXes6_q_11_outputreg0_q;
    assign out_c0_exi22_18_tpl = redist7_mergedMUXes7_q_9_outputreg0_q;
    assign out_c0_exi22_19_tpl = redist6_mergedMUXes8_q_7_outputreg0_q;
    assign out_c0_exi22_20_tpl = redist5_mergedMUXes9_q_5_q;
    assign out_c0_exi22_21_tpl = redist2_mergedMUXes10_q_3_q;
    assign out_c0_exi22_22_tpl = redist0_mergedMUXes11_q_1_q;
    assign out_o_valid = redist20_valid_fanout_reg0_q_1_q;
    assign out_unnamed_DijkstraOptimisedID24 = GND_q;

endmodule
