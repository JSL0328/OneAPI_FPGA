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

// SystemVerilog created from i_sfc_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_275_4gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_s_c2_in_for_con0000raparallelid_275_4gr (
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_c2_exit_0_tpl,
    output wire [63:0] out_c2_exit_1_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_DijkstraParallelID10_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_c2_exi1_0_tpl;
    wire [63:0] i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_c2_exi1_1_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x(BLACKBOX,9)@1750
    // out out_o_valid@1751
    // out out_unnamed_DijkstraParallelID7@1751
    // out out_c2_exi1_0_tpl@1751
    // out out_c2_exi1_1_tpl@1751
    DijkstraParallelID_i_sfc_logic_s_c2_in_f0000raparallelid_338_0gr thei_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .out_o_valid(i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_o_valid),
        .out_unnamed_DijkstraParallelID7(),
        .out_c2_exi1_0_tpl(i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_c2_exi1_0_tpl),
        .out_c2_exi1_1_tpl(i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_c2_exi1_1_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x(BLACKBOX,8)@1751
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@1755
    // out out_data_out_0_tpl@1755
    // out out_data_out_1_tpl@1755
    DijkstraParallelID_i_llvm_fpga_sfc_exit_0000raparallelid_358_0gr thei_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_c2_exi1_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c2_in_for_cond_cleanup4_i_dijkstraparallelids_c2_enter_dijkstraparallelid_338_0gr_aunroll_x_out_c2_exi1_1_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out_129(GPOUT,7)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_stall_entry;

    // sync_out_130_aunroll_x(GPOUT,10)@1755
    assign out_c2_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_data_out_0_tpl;
    assign out_c2_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_data_out_1_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c2_out_for_cond_cleanup4_i_dijkstraparallelids_c2_exit_dijkstraparallelid_338_1gr_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,12)
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
