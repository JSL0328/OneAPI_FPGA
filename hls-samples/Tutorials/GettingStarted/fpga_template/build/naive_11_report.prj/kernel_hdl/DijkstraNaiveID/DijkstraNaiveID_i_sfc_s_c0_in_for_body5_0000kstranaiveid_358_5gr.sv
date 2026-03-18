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

// SystemVerilog created from i_sfc_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_358_5gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_s_c0_in_for_body5_0000kstranaiveid_358_5gr (
    input wire [63:0] in_arg_dist,
    input wire [63:0] in_arg_visited,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_c0_exit90_0_tpl,
    output wire [31:0] out_c0_exit90_1_tpl,
    output wire [63:0] out_c0_exit90_2_tpl,
    output wire [0:0] out_c0_exit90_3_tpl,
    output wire [0:0] out_c0_exit90_4_tpl,
    output wire [63:0] out_c0_exit90_5_tpl,
    output wire [0:0] out_c0_exit90_6_tpl,
    output wire [0:0] out_c0_exit90_7_tpl,
    output wire [0:0] out_c0_exit90_8_tpl,
    output wire [0:0] out_c0_exit90_9_tpl,
    output wire [0:0] out_c0_exit90_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] cluster_valid_entry_q;
    wire [0:0] exiting_q;
    wire [0:0] loop_admit_i_empty;
    wire loop_admit_i_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_exit;
    wire loop_admit_i_exit_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_dummy;
    wire loop_admit_i_exit_dummy_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_forked;
    wire loop_admit_i_exit_forked_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_valid;
    wire loop_admit_i_exit_valid_bitsignaltemp;
    wire [0:0] loop_admit_i_stall;
    wire loop_admit_i_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_dummy;
    wire loop_admit_o_dummy_bitsignaltemp;
    wire [0:0] loop_admit_o_forked;
    wire loop_admit_o_forked_bitsignaltemp;
    wire [0:0] loop_admit_o_stall;
    wire loop_admit_o_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_valid;
    wire loop_admit_o_valid_bitsignaltemp;
    wire [0:0] loop_not_stall_q;
    wire [0:0] not_valid_in_q;
    reg [0:0] stall_out_reg_0_q;
    reg [0:0] stall_out_reg_1_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_4_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_dummy_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_forked_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_1_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_4_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_10_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // loop_not_stall(LOGICAL,6)
    assign loop_not_stall_q = ~ (stall_out_reg_1_q);

    // cluster_valid_entry(LOGICAL,3)
    assign cluster_valid_entry_q = loop_not_stall_q & loop_admit_o_valid;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x(BLACKBOX,14)@1
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@5
    // out out_data_out_0_tpl@5
    // out out_data_out_1_tpl@5
    // out out_data_out_2_tpl@5
    // out out_data_out_3_tpl@5
    // out out_data_out_4_tpl@5
    // out out_data_out_5_tpl@5
    // out out_data_out_6_tpl@5
    // out out_data_out_7_tpl@5
    // out out_data_out_8_tpl@5
    // out out_data_out_9_tpl@5
    // out out_data_out_10_tpl@5
    DijkstraNaiveID_i_llvm_fpga_sfc_exit_s_c0000kstranaiveid_550_0gr thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x (
        .in_input_accepted(cluster_valid_entry_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_10_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_10_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_out_reg_0(REG,11)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_0_q <= i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_stall_entry;
        end
    end

    // stall_out_reg_1(REG,12)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_1_q <= stall_out_reg_0_q;
        end
    end

    // i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x(BLACKBOX,15)@0
    // out out_exiting_valid_out@20000000
    // out out_o_valid@1
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_profile_loop_o_valid@1
    // out out_unnamed_DijkstraNaiveID0@1
    // out out_c0_exi10_0_tpl@1
    // out out_c0_exi10_1_tpl@1
    // out out_c0_exi10_2_tpl@1
    // out out_c0_exi10_3_tpl@1
    // out out_c0_exi10_4_tpl@1
    // out out_c0_exi10_5_tpl@1
    // out out_c0_exi10_6_tpl@1
    // out out_c0_exi10_7_tpl@1
    // out out_c0_exi10_8_tpl@1
    // out out_c0_exi10_9_tpl@1
    // out out_c0_exi10_10_tpl@1
    DijkstraNaiveID_i_sfc_logic_s_c0_in_for_0000kstranaiveid_373_0gr thei_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x (
        .in_arg_dist(in_arg_dist),
        .in_arg_visited(in_arg_visited),
        .in_buffer_in(loop_admit_o_forked),
        .in_dummy_in(loop_admit_o_dummy),
        .in_i_valid(cluster_valid_entry_q),
        .in_c0_eni5_0_tpl(in_c0_eni5_0_tpl),
        .in_c0_eni5_1_tpl(in_c0_eni5_1_tpl),
        .in_c0_eni5_2_tpl(in_c0_eni5_2_tpl),
        .in_c0_eni5_3_tpl(in_c0_eni5_3_tpl),
        .in_c0_eni5_4_tpl(in_c0_eni5_4_tpl),
        .in_c0_eni5_5_tpl(in_c0_eni5_5_tpl),
        .out_exiting_valid_out(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_o_valid),
        .out_pipeline_dummy_out(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_valid_out),
        .out_profile_loop_o_valid(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_profile_loop_o_valid),
        .out_unnamed_DijkstraNaiveID0(),
        .out_c0_exi10_0_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_0_tpl),
        .out_c0_exi10_1_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_1_tpl),
        .out_c0_exi10_2_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_2_tpl),
        .out_c0_exi10_3_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_3_tpl),
        .out_c0_exi10_4_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_4_tpl),
        .out_c0_exi10_5_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_5_tpl),
        .out_c0_exi10_6_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_6_tpl),
        .out_c0_exi10_7_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_7_tpl),
        .out_c0_exi10_8_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_8_tpl),
        .out_c0_exi10_9_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_9_tpl),
        .out_c0_exi10_10_tpl(i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_c0_exi10_10_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // exiting(LOGICAL,4)
    assign exiting_q = ~ (i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_exiting_valid_out);

    // not_valid_in(LOGICAL,7)
    assign not_valid_in_q = ~ (in_i_valid);

    // loop_admit(EXTIFACE,5)
    assign loop_admit_i_empty = not_valid_in_q;
    assign loop_admit_i_exit = exiting_q;
    assign loop_admit_i_exit_dummy = i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_dummy_out;
    assign loop_admit_i_exit_forked = i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_forked_out;
    assign loop_admit_i_exit_valid = i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_pipeline_valid_out;
    assign loop_admit_i_stall = stall_out_reg_1_q;
    assign loop_admit_i_empty_bitsignaltemp = loop_admit_i_empty[0];
    assign loop_admit_i_exit_bitsignaltemp = loop_admit_i_exit[0];
    assign loop_admit_i_exit_dummy_bitsignaltemp = loop_admit_i_exit_dummy[0];
    assign loop_admit_i_exit_forked_bitsignaltemp = loop_admit_i_exit_forked[0];
    assign loop_admit_i_exit_valid_bitsignaltemp = loop_admit_i_exit_valid[0];
    assign loop_admit_i_stall_bitsignaltemp = loop_admit_i_stall[0];
    assign loop_admit_o_dummy[0] = loop_admit_o_dummy_bitsignaltemp;
    assign loop_admit_o_forked[0] = loop_admit_o_forked_bitsignaltemp;
    assign loop_admit_o_stall[0] = loop_admit_o_stall_bitsignaltemp;
    assign loop_admit_o_valid[0] = loop_admit_o_valid_bitsignaltemp;
    acl_loop_admit #(
        .COMPILER_INFERRED_REINVOCATION_DELAY(84),
        .COMPILER_INFERRED_SPECULATED_ITERATIONS(0),
        .ENABLE_INTERLEAVING(1),
        .II(84),
        .LATENCY_O_VALID_TO_I_VALID(1),
        .ASYNC_RESET(0),
        .FAST_ADMIT(1),
        .FAST_EXIT(1),
        .LATENCY_UPSTREAM_EMPTY(1),
        .LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP(0),
        .SYNCHRONIZE_RESET(0)
    ) theloop_admit (
        .i_empty(loop_admit_i_empty_bitsignaltemp),
        .i_exit(loop_admit_i_exit_bitsignaltemp),
        .i_exit_dummy(loop_admit_i_exit_dummy_bitsignaltemp),
        .i_exit_forked(loop_admit_i_exit_forked_bitsignaltemp),
        .i_exit_valid(loop_admit_i_exit_valid_bitsignaltemp),
        .i_stall(loop_admit_i_stall_bitsignaltemp),
        .o_dummy(loop_admit_o_dummy_bitsignaltemp),
        .o_forked(loop_admit_o_forked_bitsignaltemp),
        .o_stall(loop_admit_o_stall_bitsignaltemp),
        .o_valid(loop_admit_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out_81(GPOUT,13)@20000000
    assign out_o_stall = loop_admit_o_stall;

    // sync_out_82_aunroll_x(GPOUT,16)@5
    assign out_c0_exit90_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit90_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit90_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit90_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit90_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit90_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit90_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit90_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit90_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit90_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit90_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_data_out_10_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_dijkstranaiveids_c0_exit90_dijkstranaiveid_373_1gr_aunroll_x_out_valid_out;
    assign out_profile_loop_o_valid = i_sfc_logic_s_c0_in_for_body5_i_dijkstranaiveids_c0_enter859_dijkstranaiveid_373_0gr_aunroll_x_out_profile_loop_o_valid;

    // rst_sync(RESETSYNC,18)
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
