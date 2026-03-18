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

// SystemVerilog created from bb_DijkstraNaiveID_B5
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_bb_B5 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_g,
    input wire [63:0] in_arg_visited,
    input wire [63:0] in_arrayidx31_i65_0,
    input wire [63:0] in_arrayidx31_i65_1,
    input wire [0:0] in_exitcond3051_pop1269_0,
    input wire [0:0] in_exitcond3051_pop1269_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked57_0,
    input wire [0:0] in_forked57_1,
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
    input wire [63:0] in_memdep_DijkstraNaiveID_avm_readdata,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_readdatavalid,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_waitrequest,
    input wire [0:0] in_memdep_DijkstraNaiveID_avm_writeack,
    input wire [0:0] in_memdep_phi_pop755_pop1466_0,
    input wire [0:0] in_memdep_phi_pop755_pop1466_1,
    input wire [31:0] in_mul_i_add3464_0,
    input wire [31:0] in_mul_i_add3464_1,
    input wire [0:0] in_notcmp4553_pop1371_0,
    input wire [0:0] in_notcmp4553_pop1371_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond3052_pop19,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
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
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [40:0] out_memdep_DijkstraNaiveID_avm_address,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_burstcount,
    output wire [7:0] out_memdep_DijkstraNaiveID_avm_byteenable,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_enable,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_read,
    output wire [0:0] out_memdep_DijkstraNaiveID_avm_write,
    output wire [63:0] out_memdep_DijkstraNaiveID_avm_writedata,
    output wire [0:0] out_notcmp4554_pop20,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] DijkstraNaiveID_B5_branch_out_exitcond3052_pop19;
    wire [0:0] DijkstraNaiveID_B5_branch_out_memdep;
    wire [0:0] DijkstraNaiveID_B5_branch_out_notcmp4554_pop20;
    wire [0:0] DijkstraNaiveID_B5_branch_out_stall_out;
    wire [0:0] DijkstraNaiveID_B5_branch_out_valid_out_0;
    wire [0:0] DijkstraNaiveID_B5_branch_out_valid_out_1;
    wire [63:0] DijkstraNaiveID_B5_merge_out_arrayidx31_i65;
    wire [0:0] DijkstraNaiveID_B5_merge_out_exitcond3051_pop1269;
    wire [0:0] DijkstraNaiveID_B5_merge_out_forked57;
    wire [0:0] DijkstraNaiveID_B5_merge_out_memdep_phi_pop755_pop1466;
    wire [31:0] DijkstraNaiveID_B5_merge_out_mul_i_add3464;
    wire [0:0] DijkstraNaiveID_B5_merge_out_notcmp4553_pop1371;
    wire [0:0] DijkstraNaiveID_B5_merge_out_stall_out_0;
    wire [0:0] DijkstraNaiveID_B5_merge_out_stall_out_1;
    wire [0:0] DijkstraNaiveID_B5_merge_out_valid_out;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_stall_out;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_valid_out;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_exitcond3052_pop19;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4;
    wire [40:0] bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep;
    wire [40:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_address;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_burstcount;
    wire [7:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_byteenable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_enable;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_read;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_write;
    wire [63:0] bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_writedata;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_notcmp4554_pop20;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraNaiveID_B5_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraNaiveID_B5_branch(BLACKBOX,2)
    DijkstraNaiveID_B5_branch theDijkstraNaiveID_B5_branch (
        .in_exitcond3052_pop19(bb_DijkstraNaiveID_B5_stall_region_out_exitcond3052_pop19),
        .in_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4(bb_DijkstraNaiveID_B5_stall_region_out_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4),
        .in_memdep(bb_DijkstraNaiveID_B5_stall_region_out_memdep),
        .in_notcmp4554_pop20(bb_DijkstraNaiveID_B5_stall_region_out_notcmp4554_pop20),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_DijkstraNaiveID_B5_stall_region_out_valid_out),
        .out_exitcond3052_pop19(DijkstraNaiveID_B5_branch_out_exitcond3052_pop19),
        .out_memdep(DijkstraNaiveID_B5_branch_out_memdep),
        .out_notcmp4554_pop20(DijkstraNaiveID_B5_branch_out_notcmp4554_pop20),
        .out_stall_out(DijkstraNaiveID_B5_branch_out_stall_out),
        .out_valid_out_0(DijkstraNaiveID_B5_branch_out_valid_out_0),
        .out_valid_out_1(DijkstraNaiveID_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraNaiveID_B5_merge(BLACKBOX,3)
    DijkstraNaiveID_B5_merge theDijkstraNaiveID_B5_merge (
        .in_arrayidx31_i65_0(in_arrayidx31_i65_0),
        .in_arrayidx31_i65_1(in_arrayidx31_i65_1),
        .in_exitcond3051_pop1269_0(in_exitcond3051_pop1269_0),
        .in_exitcond3051_pop1269_1(in_exitcond3051_pop1269_1),
        .in_forked57_0(in_forked57_0),
        .in_forked57_1(in_forked57_1),
        .in_memdep_phi_pop755_pop1466_0(in_memdep_phi_pop755_pop1466_0),
        .in_memdep_phi_pop755_pop1466_1(in_memdep_phi_pop755_pop1466_1),
        .in_mul_i_add3464_0(in_mul_i_add3464_0),
        .in_mul_i_add3464_1(in_mul_i_add3464_1),
        .in_notcmp4553_pop1371_0(in_notcmp4553_pop1371_0),
        .in_notcmp4553_pop1371_1(in_notcmp4553_pop1371_1),
        .in_stall_in(bb_DijkstraNaiveID_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx31_i65(DijkstraNaiveID_B5_merge_out_arrayidx31_i65),
        .out_exitcond3051_pop1269(DijkstraNaiveID_B5_merge_out_exitcond3051_pop1269),
        .out_forked57(DijkstraNaiveID_B5_merge_out_forked57),
        .out_memdep_phi_pop755_pop1466(DijkstraNaiveID_B5_merge_out_memdep_phi_pop755_pop1466),
        .out_mul_i_add3464(DijkstraNaiveID_B5_merge_out_mul_i_add3464),
        .out_notcmp4553_pop1371(DijkstraNaiveID_B5_merge_out_notcmp4553_pop1371),
        .out_stall_out_0(DijkstraNaiveID_B5_merge_out_stall_out_0),
        .out_stall_out_1(DijkstraNaiveID_B5_merge_out_stall_out_1),
        .out_valid_out(DijkstraNaiveID_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraNaiveID_B5_stall_region(BLACKBOX,4)
    DijkstraNaiveID_bb_B5_stall_region thebb_DijkstraNaiveID_B5_stall_region (
        .in_arg_dist(in_arg_dist),
        .in_arg_g(in_arg_g),
        .in_arg_visited(in_arg_visited),
        .in_arrayidx31_i65(DijkstraNaiveID_B5_merge_out_arrayidx31_i65),
        .in_exitcond3051_pop1269(DijkstraNaiveID_B5_merge_out_exitcond3051_pop1269),
        .in_flush(in_flush),
        .in_forked57(DijkstraNaiveID_B5_merge_out_forked57),
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
        .in_memdep_phi_pop755_pop1466(DijkstraNaiveID_B5_merge_out_memdep_phi_pop755_pop1466),
        .in_mul_i_add3464(DijkstraNaiveID_B5_merge_out_mul_i_add3464),
        .in_notcmp4553_pop1371(DijkstraNaiveID_B5_merge_out_notcmp4553_pop1371),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(DijkstraNaiveID_B5_branch_out_stall_out),
        .in_valid_in(DijkstraNaiveID_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_stall_out(bb_DijkstraNaiveID_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_valid_out(bb_DijkstraNaiveID_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_valid_out),
        .out_exitcond3052_pop19(bb_DijkstraNaiveID_B5_stall_region_out_exitcond3052_pop19),
        .out_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4(bb_DijkstraNaiveID_B5_stall_region_out_fpga_indvars_iv25_pop16_struct_0_shuffle_bit4),
        .out_load6_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_address),
        .out_load6_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_burstcount),
        .out_load6_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_byteenable),
        .out_load6_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_enable),
        .out_load6_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_read),
        .out_load6_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_write),
        .out_load6_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_writedata),
        .out_load7_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_address),
        .out_load7_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_burstcount),
        .out_load7_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_byteenable),
        .out_load7_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_enable),
        .out_load7_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_read),
        .out_load7_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_write),
        .out_load7_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_writedata),
        .out_load8_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_address),
        .out_load8_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_burstcount),
        .out_load8_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_byteenable),
        .out_load8_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_enable),
        .out_load8_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_read),
        .out_load8_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_write),
        .out_load8_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_writedata),
        .out_load9_lm_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_address),
        .out_load9_lm_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_burstcount),
        .out_load9_lm_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_byteenable),
        .out_load9_lm_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_enable),
        .out_load9_lm_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_read),
        .out_load9_lm_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_write),
        .out_load9_lm_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_writedata),
        .out_lsu_memdep_o_active(bb_DijkstraNaiveID_B5_stall_region_out_lsu_memdep_o_active),
        .out_memdep(bb_DijkstraNaiveID_B5_stall_region_out_memdep),
        .out_memdep_DijkstraNaiveID_avm_address(bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_address),
        .out_memdep_DijkstraNaiveID_avm_burstcount(bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_burstcount),
        .out_memdep_DijkstraNaiveID_avm_byteenable(bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_byteenable),
        .out_memdep_DijkstraNaiveID_avm_enable(bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_enable),
        .out_memdep_DijkstraNaiveID_avm_read(bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_read),
        .out_memdep_DijkstraNaiveID_avm_write(bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_write),
        .out_memdep_DijkstraNaiveID_avm_writedata(bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_writedata),
        .out_notcmp4554_pop20(bb_DijkstraNaiveID_B5_stall_region_out_notcmp4554_pop20),
        .out_pipeline_valid_out(bb_DijkstraNaiveID_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_DijkstraNaiveID_B5_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraNaiveID_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = bb_DijkstraNaiveID_B5_stall_region_out_pipeline_valid_out;

    // out_exitcond3052_pop19(GPOUT,47)
    assign out_exitcond3052_pop19 = DijkstraNaiveID_B5_branch_out_exitcond3052_pop19;

    // out_exiting_stall_out(GPOUT,48)
    assign out_exiting_stall_out = bb_DijkstraNaiveID_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,49)
    assign out_exiting_valid_out = bb_DijkstraNaiveID_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstranaiveid_849_0gr_exiting_valid_out;

    // out_load6_DijkstraNaiveID_avm_address(GPOUT,50)
    assign out_load6_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_address;

    // out_load6_DijkstraNaiveID_avm_burstcount(GPOUT,51)
    assign out_load6_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_burstcount;

    // out_load6_DijkstraNaiveID_avm_byteenable(GPOUT,52)
    assign out_load6_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_byteenable;

    // out_load6_DijkstraNaiveID_avm_enable(GPOUT,53)
    assign out_load6_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_enable;

    // out_load6_DijkstraNaiveID_avm_read(GPOUT,54)
    assign out_load6_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_read;

    // out_load6_DijkstraNaiveID_avm_write(GPOUT,55)
    assign out_load6_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_write;

    // out_load6_DijkstraNaiveID_avm_writedata(GPOUT,56)
    assign out_load6_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_stall_region_out_load6_DijkstraNaiveID_avm_writedata;

    // out_load7_lm_DijkstraNaiveID_avm_address(GPOUT,57)
    assign out_load7_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_address;

    // out_load7_lm_DijkstraNaiveID_avm_burstcount(GPOUT,58)
    assign out_load7_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_burstcount;

    // out_load7_lm_DijkstraNaiveID_avm_byteenable(GPOUT,59)
    assign out_load7_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_byteenable;

    // out_load7_lm_DijkstraNaiveID_avm_enable(GPOUT,60)
    assign out_load7_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_enable;

    // out_load7_lm_DijkstraNaiveID_avm_read(GPOUT,61)
    assign out_load7_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_read;

    // out_load7_lm_DijkstraNaiveID_avm_write(GPOUT,62)
    assign out_load7_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_write;

    // out_load7_lm_DijkstraNaiveID_avm_writedata(GPOUT,63)
    assign out_load7_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_stall_region_out_load7_lm_DijkstraNaiveID_avm_writedata;

    // out_load8_lm_DijkstraNaiveID_avm_address(GPOUT,64)
    assign out_load8_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_address;

    // out_load8_lm_DijkstraNaiveID_avm_burstcount(GPOUT,65)
    assign out_load8_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_burstcount;

    // out_load8_lm_DijkstraNaiveID_avm_byteenable(GPOUT,66)
    assign out_load8_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_byteenable;

    // out_load8_lm_DijkstraNaiveID_avm_enable(GPOUT,67)
    assign out_load8_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_enable;

    // out_load8_lm_DijkstraNaiveID_avm_read(GPOUT,68)
    assign out_load8_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_read;

    // out_load8_lm_DijkstraNaiveID_avm_write(GPOUT,69)
    assign out_load8_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_write;

    // out_load8_lm_DijkstraNaiveID_avm_writedata(GPOUT,70)
    assign out_load8_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_stall_region_out_load8_lm_DijkstraNaiveID_avm_writedata;

    // out_load9_lm_DijkstraNaiveID_avm_address(GPOUT,71)
    assign out_load9_lm_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_address;

    // out_load9_lm_DijkstraNaiveID_avm_burstcount(GPOUT,72)
    assign out_load9_lm_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_burstcount;

    // out_load9_lm_DijkstraNaiveID_avm_byteenable(GPOUT,73)
    assign out_load9_lm_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_byteenable;

    // out_load9_lm_DijkstraNaiveID_avm_enable(GPOUT,74)
    assign out_load9_lm_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_enable;

    // out_load9_lm_DijkstraNaiveID_avm_read(GPOUT,75)
    assign out_load9_lm_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_read;

    // out_load9_lm_DijkstraNaiveID_avm_write(GPOUT,76)
    assign out_load9_lm_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_write;

    // out_load9_lm_DijkstraNaiveID_avm_writedata(GPOUT,77)
    assign out_load9_lm_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_stall_region_out_load9_lm_DijkstraNaiveID_avm_writedata;

    // out_lsu_memdep_o_active(GPOUT,78)
    assign out_lsu_memdep_o_active = bb_DijkstraNaiveID_B5_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,79)
    assign out_memdep = DijkstraNaiveID_B5_branch_out_memdep;

    // out_memdep_DijkstraNaiveID_avm_address(GPOUT,80)
    assign out_memdep_DijkstraNaiveID_avm_address = bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_address;

    // out_memdep_DijkstraNaiveID_avm_burstcount(GPOUT,81)
    assign out_memdep_DijkstraNaiveID_avm_burstcount = bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_burstcount;

    // out_memdep_DijkstraNaiveID_avm_byteenable(GPOUT,82)
    assign out_memdep_DijkstraNaiveID_avm_byteenable = bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_byteenable;

    // out_memdep_DijkstraNaiveID_avm_enable(GPOUT,83)
    assign out_memdep_DijkstraNaiveID_avm_enable = bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_enable;

    // out_memdep_DijkstraNaiveID_avm_read(GPOUT,84)
    assign out_memdep_DijkstraNaiveID_avm_read = bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_read;

    // out_memdep_DijkstraNaiveID_avm_write(GPOUT,85)
    assign out_memdep_DijkstraNaiveID_avm_write = bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_write;

    // out_memdep_DijkstraNaiveID_avm_writedata(GPOUT,86)
    assign out_memdep_DijkstraNaiveID_avm_writedata = bb_DijkstraNaiveID_B5_stall_region_out_memdep_DijkstraNaiveID_avm_writedata;

    // out_notcmp4554_pop20(GPOUT,87)
    assign out_notcmp4554_pop20 = DijkstraNaiveID_B5_branch_out_notcmp4554_pop20;

    // out_stall_in_0(GPOUT,88)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,89)
    assign out_stall_out_0 = DijkstraNaiveID_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,90)
    assign out_stall_out_1 = DijkstraNaiveID_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,91)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,92)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,93)
    assign out_valid_out_0 = DijkstraNaiveID_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,94)
    assign out_valid_out_1 = DijkstraNaiveID_B5_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,95)
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
