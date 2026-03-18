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

// SystemVerilog created from DijkstraNaiveID_function
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_function (
    input wire [63:0] in_arg_arg_dist,
    input wire [63:0] in_arg_arg_g,
    input wire [63:0] in_arg_arg_visited,
    input wire [63:0] in_load4_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load4_lm_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load5_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load5_lm_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load6_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load6_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load6_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load6_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load7_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load7_lm_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load7_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load7_lm_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load8_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load8_lm_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load8_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load8_lm_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load9_lm_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load9_lm_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load9_lm_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load9_lm_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_load_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_load_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_load_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_load_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_memdep_21_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_memdep_21_DijkstraNaiveID_avm_writeack,
    input wire [63:0] in_memdep_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [40:0] out_load4_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load4_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load4_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load4_lm_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load5_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load5_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load5_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load5_lm_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load6_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load6_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load6_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load6_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load7_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load7_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load7_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load7_lm_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load8_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load8_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load8_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load8_lm_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load9_lm_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load9_lm_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load9_lm_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load9_lm_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_load_DijkstraNaiveID_avm_address,
    output wire [0:0] out_load_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_load_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_load_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_load_DijkstraNaiveID_avm_read,
    output wire [0:0] out_load_DijkstraNaiveID_avm_write,
    output wire [63:0] out_load_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_memdep_21_DijkstraNaiveID_avm_address,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_memdep_21_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_read,
    output wire [0:0] out_memdep_21_DijkstraNaiveID_avm_write,
    output wire [63:0] out_memdep_21_DijkstraNaiveID_avm_writedata,
    output wire [40:0] out_memdep_DijkstraNaiveID_avm_address,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_memdep_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_read,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_write,
    output wire [63:0] out_memdep_DijkstraNaiveID_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_21,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] DijkstraNaiveID_function_i_enable;
    wire DijkstraNaiveID_function_i_enable_bitsignaltemp;
    wire [0:0] DijkstraNaiveID_function_i_end;
    wire DijkstraNaiveID_function_i_end_bitsignaltemp;
    wire [0:0] DijkstraNaiveID_function_i_start;
    wire DijkstraNaiveID_function_i_start_bitsignaltemp;
    wire [0:0] bb_DijkstraNaiveID_B0_out_stall_out_0;
    wire [0:0] bb_DijkstraNaiveID_B0_out_valid_out_0;
    wire [0:0] bb_DijkstraNaiveID_B1_out_c0_exe1;
    wire [0:0] bb_DijkstraNaiveID_B1_out_c0_exe2;
    wire [0:0] bb_DijkstraNaiveID_B1_out_feedback_stall_out_7;
    wire [0:0] bb_DijkstraNaiveID_B1_out_feedback_stall_out_8;
    wire [0:0] bb_DijkstraNaiveID_B1_out_memdep_phi22_pop8;
    wire [0:0] bb_DijkstraNaiveID_B1_out_memdep_phi_pop7;
    wire [0:0] bb_DijkstraNaiveID_B1_out_stall_out_1;
    wire [0:0] bb_DijkstraNaiveID_B1_out_valid_out_0;
    wire [63:0] bb_DijkstraNaiveID_B2_out_c0_exe283;
    wire [0:0] bb_DijkstraNaiveID_B2_out_c0_exe3931;
    wire [0:0] bb_DijkstraNaiveID_B2_out_c0_exe82;
    wire [0:0] bb_DijkstraNaiveID_B2_out_c0_exe93;
    wire [31:0] bb_DijkstraNaiveID_B2_out_c1_exe1;
    wire [0:0] bb_DijkstraNaiveID_B2_out_feedback_out_8;
    wire [0:0] bb_DijkstraNaiveID_B2_out_feedback_valid_out_8;
    wire [0:0] bb_DijkstraNaiveID_B2_out_lsu_memdep_21_o_active;
    wire [40:0] bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B2_out_stall_out_0;
    wire [0:0] bb_DijkstraNaiveID_B2_out_valid_out_0;
    wire [0:0] bb_DijkstraNaiveID_B3_out_c0_exe393;
    wire [0:0] bb_DijkstraNaiveID_B3_out_c0_exe8;
    wire [0:0] bb_DijkstraNaiveID_B3_out_c0_exe9;
    wire [31:0] bb_DijkstraNaiveID_B3_out_c2_exe1;
    wire [40:0] bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B3_out_stall_out_1;
    wire [0:0] bb_DijkstraNaiveID_B3_out_valid_out_0;
    wire [0:0] bb_DijkstraNaiveID_B4_out_feedback_out_7;
    wire [0:0] bb_DijkstraNaiveID_B4_out_feedback_valid_out_7;
    wire [0:0] bb_DijkstraNaiveID_B4_out_stall_out_0;
    wire [0:0] bb_DijkstraNaiveID_B4_out_valid_out_0;
    wire [0:0] bb_DijkstraNaiveID_B5_out_exitcond3052_pop19;
    wire [0:0] bb_DijkstraNaiveID_B5_out_exiting_stall_out;
    wire [0:0] bb_DijkstraNaiveID_B5_out_exiting_valid_out;
    wire [40:0] bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B5_out_lsu_memdep_o_active;
    wire [0:0] bb_DijkstraNaiveID_B5_out_memdep;
    wire [40:0] bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B5_out_notcmp4554_pop20;
    wire [0:0] bb_DijkstraNaiveID_B5_out_pipeline_valid_out;
    wire [0:0] bb_DijkstraNaiveID_B5_out_stall_out_0;
    wire [0:0] bb_DijkstraNaiveID_B5_out_stall_out_1;
    wire [0:0] bb_DijkstraNaiveID_B5_out_valid_out_0;
    wire [0:0] bb_DijkstraNaiveID_B6_out_stall_out_0;
    wire [0:0] bb_DijkstraNaiveID_B6_out_valid_out_0;
    wire [31:0] c_i32_undef_9_23_q;
    wire [63:0] c_ptr_addrspace_1024_undef_9_25_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr_out_o_valid;
    wire [0:0] loop_limiter_DijkstraNaiveID0_out_o_stall;
    wire [0:0] loop_limiter_DijkstraNaiveID0_out_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_DijkstraNaiveID_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_DijkstraNaiveID_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_DijkstraNaiveID_B6_sr_0_aunroll_x_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // bb_DijkstraNaiveID_B0(BLACKBOX,6)
    DijkstraNaiveID_bb_B0 thebb_DijkstraNaiveID_B0 (
        .in_arg_dist(in_arg_arg_dist),
        .in_arg_g(in_arg_arg_g),
        .in_arg_visited(in_arg_arg_visited),
        .in_stall_in_0(bb_DijkstraNaiveID_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_DijkstraNaiveID_B0_out_stall_out_0),
        .out_valid_out_0(bb_DijkstraNaiveID_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B1_sr_1_aunroll_x(BLACKBOX,41)
    DijkstraNaiveID_bb_B1_sr_1 thebb_DijkstraNaiveID_B1_sr_1_aunroll_x (
        .in_i_stall(bb_DijkstraNaiveID_B1_out_stall_out_1),
        .in_i_valid(bb_DijkstraNaiveID_B0_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_DijkstraNaiveID_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_DijkstraNaiveID_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_DijkstraNaiveID_B2_sr_0_aunroll_x(BLACKBOX,42)
    DijkstraNaiveID_bb_B2_sr_0 thebb_DijkstraNaiveID_B2_sr_0_aunroll_x (
        .in_i_stall(bb_DijkstraNaiveID_B2_out_stall_out_0),
        .in_i_valid(bb_DijkstraNaiveID_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_DijkstraNaiveID_B3_out_c0_exe393),
        .in_i_data_1_tpl(bb_DijkstraNaiveID_B3_out_c0_exe8),
        .in_i_data_2_tpl(bb_DijkstraNaiveID_B3_out_c0_exe9),
        .in_i_data_3_tpl(bb_DijkstraNaiveID_B3_out_c2_exe1),
        .out_o_stall(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_DijkstraNaiveID_B3(BLACKBOX,9)
    DijkstraNaiveID_bb_B3 thebb_DijkstraNaiveID_B3 (
        .in_arg_dist(in_arg_arg_dist),
        .in_arg_g(in_arg_arg_g),
        .in_arg_visited(in_arg_arg_visited),
        .in_exitcond3060_0(GND_q),
        .in_exitcond3060_1(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_flush(in_start),
        .in_load4_lm_DijkstraNaiveID_avm_readdata(in_load4_lm_DijkstraNaiveID_avm_readdata),
        .in_load4_lm_DijkstraNaiveID_avm_readdatavalid(in_load4_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load4_lm_DijkstraNaiveID_avm_waitrequest(in_load4_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load4_lm_DijkstraNaiveID_avm_writeack(in_load4_lm_DijkstraNaiveID_avm_writeack),
        .in_load5_lm_DijkstraNaiveID_avm_readdata(in_load5_lm_DijkstraNaiveID_avm_readdata),
        .in_load5_lm_DijkstraNaiveID_avm_readdatavalid(in_load5_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load5_lm_DijkstraNaiveID_avm_waitrequest(in_load5_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load5_lm_DijkstraNaiveID_avm_writeack(in_load5_lm_DijkstraNaiveID_avm_writeack),
        .in_load_DijkstraNaiveID_avm_readdata(in_load_DijkstraNaiveID_avm_readdata),
        .in_load_DijkstraNaiveID_avm_readdatavalid(in_load_DijkstraNaiveID_avm_readdatavalid),
        .in_load_DijkstraNaiveID_avm_waitrequest(in_load_DijkstraNaiveID_avm_waitrequest),
        .in_load_DijkstraNaiveID_avm_writeack(in_load_DijkstraNaiveID_avm_writeack),
        .in_memdep_phi22_pop863_0(GND_q),
        .in_memdep_phi22_pop863_1(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi_pop762_0(GND_q),
        .in_memdep_phi_pop762_1(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp4561_0(GND_q),
        .in_notcmp4561_1(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe393(bb_DijkstraNaiveID_B3_out_c0_exe393),
        .out_c0_exe8(bb_DijkstraNaiveID_B3_out_c0_exe8),
        .out_c0_exe9(bb_DijkstraNaiveID_B3_out_c0_exe9),
        .out_c2_exe1(bb_DijkstraNaiveID_B3_out_c2_exe1),
        .out_load4_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_address),
        .out_load4_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_burstcount),
        .out_load4_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_byteenable),
        .out_load4_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_enable),
        .out_load4_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_read),
        .out_load4_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_write),
        .out_load4_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_writedata),
        .out_load5_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_address),
        .out_load5_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_burstcount),
        .out_load5_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_byteenable),
        .out_load5_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_enable),
        .out_load5_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_read),
        .out_load5_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_write),
        .out_load5_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_writedata),
        .out_load_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_address),
        .out_load_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_burstcount),
        .out_load_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_byteenable),
        .out_load_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_enable),
        .out_load_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_read),
        .out_load_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_write),
        .out_load_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_writedata),
        .out_profile_loop_o_valid(),
        .out_stall_in_0(),
        .out_stall_out_0(),
        .out_stall_out_1(bb_DijkstraNaiveID_B3_out_stall_out_1),
        .out_valid_in_1(),
        .out_valid_out_0(bb_DijkstraNaiveID_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B3_sr_1_aunroll_x(BLACKBOX,43)
    DijkstraNaiveID_bb_B3_sr_1 thebb_DijkstraNaiveID_B3_sr_1_aunroll_x (
        .in_i_stall(bb_DijkstraNaiveID_B3_out_stall_out_1),
        .in_i_valid(bb_DijkstraNaiveID_B1_out_valid_out_0),
        .in_i_data_0_tpl(bb_DijkstraNaiveID_B1_out_c0_exe1),
        .in_i_data_1_tpl(bb_DijkstraNaiveID_B1_out_c0_exe2),
        .in_i_data_2_tpl(bb_DijkstraNaiveID_B1_out_memdep_phi_pop7),
        .in_i_data_3_tpl(bb_DijkstraNaiveID_B1_out_memdep_phi22_pop8),
        .out_o_stall(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr(BLACKBOX,39)
    DijkstraNaiveID_i_llvm_fpga_pipeline_kee0000ranaiveid_849_0gr_sr thei_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_DijkstraNaiveID_B5_out_stall_out_0),
        .in_i_valid(bb_DijkstraNaiveID_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i32_undef_9_23(CONSTANT,36)
    assign c_i32_undef_9_23_q = 32'b00000000000000000000000000000000;

    // c_ptr_addrspace_1024_undef_9_25(CONSTANT,37)
    assign c_ptr_addrspace_1024_undef_9_25_q = 64'b0000000000000000000000000000000000000000000000000000000000000000;

    // bb_DijkstraNaiveID_B5(BLACKBOX,11)
    DijkstraNaiveID_bb_B5 thebb_DijkstraNaiveID_B5 (
        .in_arg_dist(in_arg_arg_dist),
        .in_arg_g(in_arg_arg_g),
        .in_arg_visited(in_arg_arg_visited),
        .in_arrayidx31_i65_0(c_ptr_addrspace_1024_undef_9_25_q),
        .in_arrayidx31_i65_1(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_exitcond3051_pop1269_0(GND_q),
        .in_exitcond3051_pop1269_1(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_forked57_0(GND_q),
        .in_forked57_1(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_load6_DijkstraNaiveID_avm_readdata(in_load6_DijkstraNaiveID_avm_readdata),
        .in_load6_DijkstraNaiveID_avm_readdatavalid(in_load6_DijkstraNaiveID_avm_readdatavalid),
        .in_load6_DijkstraNaiveID_avm_waitrequest(in_load6_DijkstraNaiveID_avm_waitrequest),
        .in_load6_DijkstraNaiveID_avm_writeack(in_load6_DijkstraNaiveID_avm_writeack),
        .in_load7_lm_DijkstraNaiveID_avm_readdata(in_load7_lm_DijkstraNaiveID_avm_readdata),
        .in_load7_lm_DijkstraNaiveID_avm_readdatavalid(in_load7_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load7_lm_DijkstraNaiveID_avm_waitrequest(in_load7_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load7_lm_DijkstraNaiveID_avm_writeack(in_load7_lm_DijkstraNaiveID_avm_writeack),
        .in_load8_lm_DijkstraNaiveID_avm_readdata(in_load8_lm_DijkstraNaiveID_avm_readdata),
        .in_load8_lm_DijkstraNaiveID_avm_readdatavalid(in_load8_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load8_lm_DijkstraNaiveID_avm_waitrequest(in_load8_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load8_lm_DijkstraNaiveID_avm_writeack(in_load8_lm_DijkstraNaiveID_avm_writeack),
        .in_load9_lm_DijkstraNaiveID_avm_readdata(in_load9_lm_DijkstraNaiveID_avm_readdata),
        .in_load9_lm_DijkstraNaiveID_avm_readdatavalid(in_load9_lm_DijkstraNaiveID_avm_readdatavalid),
        .in_load9_lm_DijkstraNaiveID_avm_waitrequest(in_load9_lm_DijkstraNaiveID_avm_waitrequest),
        .in_load9_lm_DijkstraNaiveID_avm_writeack(in_load9_lm_DijkstraNaiveID_avm_writeack),
        .in_memdep_DijkstraNaiveID_avm_readdata(in_memdep_DijkstraNaiveID_avm_readdata),
        .in_memdep_DijkstraNaiveID_avm_readdatavalid(in_memdep_DijkstraNaiveID_avm_readdatavalid),
        .in_memdep_DijkstraNaiveID_avm_waitrequest(in_memdep_DijkstraNaiveID_avm_waitrequest),
        .in_memdep_DijkstraNaiveID_avm_writeack(in_memdep_DijkstraNaiveID_avm_writeack),
        .in_memdep_phi_pop755_pop1466_0(GND_q),
        .in_memdep_phi_pop755_pop1466_1(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_mul_i_add3464_0(c_i32_undef_9_23_q),
        .in_mul_i_add3464_1(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp4553_pop1371_0(GND_q),
        .in_notcmp4553_pop1371_1(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr_out_o_stall),
        .in_stall_in_0(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_sr_out_o_valid),
        .in_valid_in_1(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_valid),
        .out_exitcond3052_pop19(bb_DijkstraNaiveID_B5_out_exitcond3052_pop19),
        .out_exiting_stall_out(bb_DijkstraNaiveID_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_DijkstraNaiveID_B5_out_exiting_valid_out),
        .out_load6_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_address),
        .out_load6_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_burstcount),
        .out_load6_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_byteenable),
        .out_load6_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_enable),
        .out_load6_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_read),
        .out_load6_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_write),
        .out_load6_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_writedata),
        .out_load7_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_address),
        .out_load7_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_burstcount),
        .out_load7_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_byteenable),
        .out_load7_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_enable),
        .out_load7_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_read),
        .out_load7_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_write),
        .out_load7_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_writedata),
        .out_load8_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_address),
        .out_load8_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_burstcount),
        .out_load8_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_byteenable),
        .out_load8_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_enable),
        .out_load8_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_read),
        .out_load8_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_write),
        .out_load8_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_writedata),
        .out_load9_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_address),
        .out_load9_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_burstcount),
        .out_load9_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_byteenable),
        .out_load9_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_enable),
        .out_load9_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_read),
        .out_load9_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_write),
        .out_load9_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_writedata),
        .out_lsu_memdep_o_active(bb_DijkstraNaiveID_B5_out_lsu_memdep_o_active),
        .out_memdep(bb_DijkstraNaiveID_B5_out_memdep),
        .out_memdep_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_address),
        .out_memdep_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_burstcount),
        .out_memdep_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_byteenable),
        .out_memdep_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_enable),
        .out_memdep_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_read),
        .out_memdep_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_write),
        .out_memdep_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_writedata),
        .out_notcmp4554_pop20(bb_DijkstraNaiveID_B5_out_notcmp4554_pop20),
        .out_pipeline_valid_out(bb_DijkstraNaiveID_B5_out_pipeline_valid_out),
        .out_stall_in_0(),
        .out_stall_out_0(bb_DijkstraNaiveID_B5_out_stall_out_0),
        .out_stall_out_1(bb_DijkstraNaiveID_B5_out_stall_out_1),
        .out_valid_in_0(),
        .out_valid_in_1(),
        .out_valid_out_0(bb_DijkstraNaiveID_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B5_sr_1_aunroll_x(BLACKBOX,45)
    DijkstraNaiveID_bb_B5_sr_1 thebb_DijkstraNaiveID_B5_sr_1_aunroll_x (
        .in_i_stall(bb_DijkstraNaiveID_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_DijkstraNaiveID0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_DijkstraNaiveID_B2_out_c1_exe1),
        .in_i_data_2_tpl(bb_DijkstraNaiveID_B2_out_c0_exe283),
        .in_i_data_3_tpl(bb_DijkstraNaiveID_B2_out_c0_exe3931),
        .in_i_data_4_tpl(bb_DijkstraNaiveID_B2_out_c0_exe82),
        .in_i_data_5_tpl(bb_DijkstraNaiveID_B2_out_c0_exe93),
        .out_o_stall(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // loop_limiter_DijkstraNaiveID0(BLACKBOX,40)
    DijkstraNaiveID_loop_limiter_0 theloop_limiter_DijkstraNaiveID0 (
        .in_i_stall(bb_DijkstraNaiveID_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_DijkstraNaiveID_B5_out_exiting_stall_out),
        .in_i_valid(bb_DijkstraNaiveID_B2_out_valid_out_0),
        .in_i_valid_exit(bb_DijkstraNaiveID_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_DijkstraNaiveID0_out_o_stall),
        .out_o_valid(loop_limiter_DijkstraNaiveID0_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_DijkstraNaiveID_B2(BLACKBOX,8)
    DijkstraNaiveID_bb_B2 thebb_DijkstraNaiveID_B2 (
        .in_arg_dist(in_arg_arg_dist),
        .in_arg_g(in_arg_arg_g),
        .in_arg_visited(in_arg_arg_visited),
        .in_c0_exe3931_0(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe82_0(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe93_0(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c2_exe14_0(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_8(bb_DijkstraNaiveID_B1_out_feedback_stall_out_8),
        .in_flush(in_start),
        .in_memdep_21_DijkstraNaiveID_avm_readdata(in_memdep_21_DijkstraNaiveID_avm_readdata),
        .in_memdep_21_DijkstraNaiveID_avm_readdatavalid(in_memdep_21_DijkstraNaiveID_avm_readdatavalid),
        .in_memdep_21_DijkstraNaiveID_avm_waitrequest(in_memdep_21_DijkstraNaiveID_avm_waitrequest),
        .in_memdep_21_DijkstraNaiveID_avm_writeack(in_memdep_21_DijkstraNaiveID_avm_writeack),
        .in_stall_in_0(loop_limiter_DijkstraNaiveID0_out_o_stall),
        .in_valid_in_0(bb_DijkstraNaiveID_B2_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe283(bb_DijkstraNaiveID_B2_out_c0_exe283),
        .out_c0_exe3931(bb_DijkstraNaiveID_B2_out_c0_exe3931),
        .out_c0_exe82(bb_DijkstraNaiveID_B2_out_c0_exe82),
        .out_c0_exe93(bb_DijkstraNaiveID_B2_out_c0_exe93),
        .out_c1_exe1(bb_DijkstraNaiveID_B2_out_c1_exe1),
        .out_feedback_out_8(bb_DijkstraNaiveID_B2_out_feedback_out_8),
        .out_feedback_valid_out_8(bb_DijkstraNaiveID_B2_out_feedback_valid_out_8),
        .out_lsu_memdep_21_o_active(bb_DijkstraNaiveID_B2_out_lsu_memdep_21_o_active),
        .out_memdep_21_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_address),
        .out_memdep_21_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_burstcount),
        .out_memdep_21_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_byteenable),
        .out_memdep_21_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_enable),
        .out_memdep_21_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_read),
        .out_memdep_21_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_write),
        .out_memdep_21_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_writedata),
        .out_stall_out_0(bb_DijkstraNaiveID_B2_out_stall_out_0),
        .out_valid_out_0(bb_DijkstraNaiveID_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B1(BLACKBOX,7)
    DijkstraNaiveID_bb_B1 thebb_DijkstraNaiveID_B1 (
        .in_arg_dist(in_arg_arg_dist),
        .in_arg_g(in_arg_arg_g),
        .in_arg_visited(in_arg_arg_visited),
        .in_feedback_in_7(bb_DijkstraNaiveID_B4_out_feedback_out_7),
        .in_feedback_in_8(bb_DijkstraNaiveID_B2_out_feedback_out_8),
        .in_feedback_valid_in_7(bb_DijkstraNaiveID_B4_out_feedback_valid_out_7),
        .in_feedback_valid_in_8(bb_DijkstraNaiveID_B2_out_feedback_valid_out_8),
        .in_stall_in_0(bb_DijkstraNaiveID_B3_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_DijkstraNaiveID_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_DijkstraNaiveID_B1_out_c0_exe1),
        .out_c0_exe2(bb_DijkstraNaiveID_B1_out_c0_exe2),
        .out_feedback_stall_out_7(bb_DijkstraNaiveID_B1_out_feedback_stall_out_7),
        .out_feedback_stall_out_8(bb_DijkstraNaiveID_B1_out_feedback_stall_out_8),
        .out_memdep_phi22_pop8(bb_DijkstraNaiveID_B1_out_memdep_phi22_pop8),
        .out_memdep_phi_pop7(bb_DijkstraNaiveID_B1_out_memdep_phi_pop7),
        .out_profile_loop_o_valid(),
        .out_stall_out_0(),
        .out_stall_out_1(bb_DijkstraNaiveID_B1_out_stall_out_1),
        .out_valid_in_1(),
        .out_valid_out_0(bb_DijkstraNaiveID_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B4_sr_0_aunroll_x(BLACKBOX,44)
    DijkstraNaiveID_bb_B4_sr_0 thebb_DijkstraNaiveID_B4_sr_0_aunroll_x (
        .in_i_stall(bb_DijkstraNaiveID_B4_out_stall_out_0),
        .in_i_valid(bb_DijkstraNaiveID_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_DijkstraNaiveID_B5_out_exitcond3052_pop19),
        .in_i_data_1_tpl(bb_DijkstraNaiveID_B5_out_notcmp4554_pop20),
        .in_i_data_2_tpl(bb_DijkstraNaiveID_B5_out_memdep),
        .out_o_stall(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_DijkstraNaiveID_B4(BLACKBOX,10)
    DijkstraNaiveID_bb_B4 thebb_DijkstraNaiveID_B4 (
        .in_arg_dist(in_arg_arg_dist),
        .in_arg_g(in_arg_arg_g),
        .in_arg_visited(in_arg_arg_visited),
        .in_exitcond3052_pop195_0(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_7(bb_DijkstraNaiveID_B1_out_feedback_stall_out_7),
        .in_memdep_7_0(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_notcmp4554_pop206_0(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_DijkstraNaiveID_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_DijkstraNaiveID_B4_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_7(bb_DijkstraNaiveID_B4_out_feedback_out_7),
        .out_feedback_valid_out_7(bb_DijkstraNaiveID_B4_out_feedback_valid_out_7),
        .out_stall_in_0(),
        .out_stall_out_0(bb_DijkstraNaiveID_B4_out_stall_out_0),
        .out_valid_out_0(bb_DijkstraNaiveID_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B6_sr_0_aunroll_x(BLACKBOX,46)
    DijkstraNaiveID_bb_B6_sr_0 thebb_DijkstraNaiveID_B6_sr_0_aunroll_x (
        .in_i_stall(bb_DijkstraNaiveID_B6_out_stall_out_0),
        .in_i_valid(bb_DijkstraNaiveID_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_DijkstraNaiveID_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_DijkstraNaiveID_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_DijkstraNaiveID_B6(BLACKBOX,12)
    DijkstraNaiveID_bb_B6 thebb_DijkstraNaiveID_B6 (
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_DijkstraNaiveID_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_DijkstraNaiveID_B6_out_stall_out_0),
        .out_valid_out_0(bb_DijkstraNaiveID_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // DijkstraNaiveID_function(EXTIFACE,5)
    assign DijkstraNaiveID_function_i_enable = VCC_q;
    assign DijkstraNaiveID_function_i_end = bb_DijkstraNaiveID_B6_out_valid_out_0;
    assign DijkstraNaiveID_function_i_start = in_start;
    assign DijkstraNaiveID_function_i_enable_bitsignaltemp = DijkstraNaiveID_function_i_enable[0];
    assign DijkstraNaiveID_function_i_end_bitsignaltemp = DijkstraNaiveID_function_i_end[0];
    assign DijkstraNaiveID_function_i_start_bitsignaltemp = DijkstraNaiveID_function_i_start[0];
    hld_sim_latency_tracker #(
        .ADDITIONAL_START_LATENCY(9),
        .CRA_CONTROL(1),
        .IS_COMPONENT(1),
        .NAME("DijkstraNaiveID")
    ) theDijkstraNaiveID_function (
        .i_enable(DijkstraNaiveID_function_i_enable_bitsignaltemp),
        .i_end(DijkstraNaiveID_function_i_end_bitsignaltemp),
        .i_start(DijkstraNaiveID_function_i_start_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_load4_lm_DijkstraNaiveID_avm_address(GPOUT,89)
    assign out_load4_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_address;

    // out_load4_lm_DijkstraNaiveID_avm_burstcount(GPOUT,90)
    assign out_load4_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_burstcount;

    // out_load4_lm_DijkstraNaiveID_avm_byteenable(GPOUT,91)
    assign out_load4_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_byteenable;

    // out_load4_lm_DijkstraNaiveID_avm_enable(GPOUT,92)
    assign out_load4_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_enable;

    // out_load4_lm_DijkstraNaiveID_avm_read(GPOUT,93)
    assign out_load4_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_read;

    // out_load4_lm_DijkstraNaiveID_avm_write(GPOUT,94)
    assign out_load4_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_write;

    // out_load4_lm_DijkstraNaiveID_avm_writedata(GPOUT,95)
    assign out_load4_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B3_out_load4_lm_DijkstraNaiveID_avm_writedata;

    // out_load5_lm_DijkstraNaiveID_avm_address(GPOUT,96)
    assign out_load5_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_address;

    // out_load5_lm_DijkstraNaiveID_avm_burstcount(GPOUT,97)
    assign out_load5_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_burstcount;

    // out_load5_lm_DijkstraNaiveID_avm_byteenable(GPOUT,98)
    assign out_load5_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_byteenable;

    // out_load5_lm_DijkstraNaiveID_avm_enable(GPOUT,99)
    assign out_load5_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_enable;

    // out_load5_lm_DijkstraNaiveID_avm_read(GPOUT,100)
    assign out_load5_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_read;

    // out_load5_lm_DijkstraNaiveID_avm_write(GPOUT,101)
    assign out_load5_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_write;

    // out_load5_lm_DijkstraNaiveID_avm_writedata(GPOUT,102)
    assign out_load5_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B3_out_load5_lm_DijkstraNaiveID_avm_writedata;

    // out_load6_DijkstraNaiveID_avm_address(GPOUT,103)
    assign out_load6_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_address;

    // out_load6_DijkstraNaiveID_avm_burstcount(GPOUT,104)
    assign out_load6_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_burstcount;

    // out_load6_DijkstraNaiveID_avm_byteenable(GPOUT,105)
    assign out_load6_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_byteenable;

    // out_load6_DijkstraNaiveID_avm_enable(GPOUT,106)
    assign out_load6_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_enable;

    // out_load6_DijkstraNaiveID_avm_read(GPOUT,107)
    assign out_load6_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_read;

    // out_load6_DijkstraNaiveID_avm_write(GPOUT,108)
    assign out_load6_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_write;

    // out_load6_DijkstraNaiveID_avm_writedata(GPOUT,109)
    assign out_load6_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_out_load6_DijkstraNaiveID_avm_writedata;

    // out_load7_lm_DijkstraNaiveID_avm_address(GPOUT,110)
    assign out_load7_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_address;

    // out_load7_lm_DijkstraNaiveID_avm_burstcount(GPOUT,111)
    assign out_load7_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_burstcount;

    // out_load7_lm_DijkstraNaiveID_avm_byteenable(GPOUT,112)
    assign out_load7_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_byteenable;

    // out_load7_lm_DijkstraNaiveID_avm_enable(GPOUT,113)
    assign out_load7_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_enable;

    // out_load7_lm_DijkstraNaiveID_avm_read(GPOUT,114)
    assign out_load7_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_read;

    // out_load7_lm_DijkstraNaiveID_avm_write(GPOUT,115)
    assign out_load7_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_write;

    // out_load7_lm_DijkstraNaiveID_avm_writedata(GPOUT,116)
    assign out_load7_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_out_load7_lm_DijkstraNaiveID_avm_writedata;

    // out_load8_lm_DijkstraNaiveID_avm_address(GPOUT,117)
    assign out_load8_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_address;

    // out_load8_lm_DijkstraNaiveID_avm_burstcount(GPOUT,118)
    assign out_load8_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_burstcount;

    // out_load8_lm_DijkstraNaiveID_avm_byteenable(GPOUT,119)
    assign out_load8_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_byteenable;

    // out_load8_lm_DijkstraNaiveID_avm_enable(GPOUT,120)
    assign out_load8_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_enable;

    // out_load8_lm_DijkstraNaiveID_avm_read(GPOUT,121)
    assign out_load8_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_read;

    // out_load8_lm_DijkstraNaiveID_avm_write(GPOUT,122)
    assign out_load8_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_write;

    // out_load8_lm_DijkstraNaiveID_avm_writedata(GPOUT,123)
    assign out_load8_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_out_load8_lm_DijkstraNaiveID_avm_writedata;

    // out_load9_lm_DijkstraNaiveID_avm_address(GPOUT,124)
    assign out_load9_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_address;

    // out_load9_lm_DijkstraNaiveID_avm_burstcount(GPOUT,125)
    assign out_load9_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_burstcount;

    // out_load9_lm_DijkstraNaiveID_avm_byteenable(GPOUT,126)
    assign out_load9_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_byteenable;

    // out_load9_lm_DijkstraNaiveID_avm_enable(GPOUT,127)
    assign out_load9_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_enable;

    // out_load9_lm_DijkstraNaiveID_avm_read(GPOUT,128)
    assign out_load9_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_read;

    // out_load9_lm_DijkstraNaiveID_avm_write(GPOUT,129)
    assign out_load9_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_write;

    // out_load9_lm_DijkstraNaiveID_avm_writedata(GPOUT,130)
    assign out_load9_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_out_load9_lm_DijkstraNaiveID_avm_writedata;

    // out_load_DijkstraNaiveID_avm_address(GPOUT,131)
    assign out_load_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_address;

    // out_load_DijkstraNaiveID_avm_burstcount(GPOUT,132)
    assign out_load_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_burstcount;

    // out_load_DijkstraNaiveID_avm_byteenable(GPOUT,133)
    assign out_load_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_byteenable;

    // out_load_DijkstraNaiveID_avm_enable(GPOUT,134)
    assign out_load_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_enable;

    // out_load_DijkstraNaiveID_avm_read(GPOUT,135)
    assign out_load_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_read;

    // out_load_DijkstraNaiveID_avm_write(GPOUT,136)
    assign out_load_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_write;

    // out_load_DijkstraNaiveID_avm_writedata(GPOUT,137)
    assign out_load_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B3_out_load_DijkstraNaiveID_avm_writedata;

    // out_memdep_21_DijkstraNaiveID_avm_address(GPOUT,138)
    assign out_memdep_21_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_address;

    // out_memdep_21_DijkstraNaiveID_avm_burstcount(GPOUT,139)
    assign out_memdep_21_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_burstcount;

    // out_memdep_21_DijkstraNaiveID_avm_byteenable(GPOUT,140)
    assign out_memdep_21_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_byteenable;

    // out_memdep_21_DijkstraNaiveID_avm_enable(GPOUT,141)
    assign out_memdep_21_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_enable;

    // out_memdep_21_DijkstraNaiveID_avm_read(GPOUT,142)
    assign out_memdep_21_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_read;

    // out_memdep_21_DijkstraNaiveID_avm_write(GPOUT,143)
    assign out_memdep_21_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_write;

    // out_memdep_21_DijkstraNaiveID_avm_writedata(GPOUT,144)
    assign out_memdep_21_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B2_out_memdep_21_DijkstraNaiveID_avm_writedata;

    // out_memdep_DijkstraNaiveID_avm_address(GPOUT,145)
    assign out_memdep_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_address;

    // out_memdep_DijkstraNaiveID_avm_burstcount(GPOUT,146)
    assign out_memdep_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_burstcount;

    // out_memdep_DijkstraNaiveID_avm_byteenable(GPOUT,147)
    assign out_memdep_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_byteenable;

    // out_memdep_DijkstraNaiveID_avm_enable(GPOUT,148)
    assign out_memdep_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_enable;

    // out_memdep_DijkstraNaiveID_avm_read(GPOUT,149)
    assign out_memdep_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_read;

    // out_memdep_DijkstraNaiveID_avm_write(GPOUT,150)
    assign out_memdep_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_write;

    // out_memdep_DijkstraNaiveID_avm_writedata(GPOUT,151)
    assign out_memdep_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_out_memdep_DijkstraNaiveID_avm_writedata;

    // out_o_active_memdep(GPOUT,152)
    assign out_o_active_memdep = bb_DijkstraNaiveID_B5_out_lsu_memdep_o_active;

    // out_o_active_memdep_21(GPOUT,153)
    assign out_o_active_memdep_21 = bb_DijkstraNaiveID_B2_out_lsu_memdep_21_o_active;

    // out_stall_out(GPOUT,154)
    assign out_stall_out = bb_DijkstraNaiveID_B0_out_stall_out_0;

    // out_valid_out(GPOUT,155)
    assign out_valid_out = bb_DijkstraNaiveID_B6_out_valid_out_0;

    // rst_sync(RESETSYNC,156)
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
