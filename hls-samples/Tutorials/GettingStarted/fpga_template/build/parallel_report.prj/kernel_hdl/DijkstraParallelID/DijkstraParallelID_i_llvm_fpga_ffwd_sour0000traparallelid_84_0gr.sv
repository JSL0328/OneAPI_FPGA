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

// SystemVerilog created from i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_llvm_fpga_ffwd_sour0000traparallelid_84_0gr (
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_dependency_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_predicate_in,
    input wire [63:0] in_src_data_in_2_0,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_predicate_in;
    wire i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_predicate_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_in;
    wire i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_in;
    wire i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_source_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_out;
    wire i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_out;
    wire i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_out_bitsignaltemp;
    reg [0:0] redist0_sync_together_84_4_in_valid_in_1_q;


    // i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr(EXTIFACE,2)@2 + 1
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_source_in = in_src_data_in_2_0;
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_in[0];
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_in[0];
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_out[0] = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_out[0] = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_out_bitsignaltemp;
    acl_ffwdsrc #(
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(64)
    ) thei_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr (
        .predicate_in(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_predicate_in_bitsignaltemp),
        .source_in(in_src_data_in_2_0),
        .stall_in(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_source_out),
        .stall_out(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,4)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_source_out;

    // sync_out_70(GPOUT,6)@3
    assign out_stall_out = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_stall_out;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist0_sync_together_84_4_in_valid_in_1(DELAY,9)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together_84_4_in_valid_in_1_q <= '0;
        end
        else
        begin
            redist0_sync_together_84_4_in_valid_in_1_q <= in_valid_in;
        end
    end

    // sync_out_71(GPOUT,7)@3
    assign out_dependency_out = redist0_sync_together_84_4_in_valid_in_1_q;
    assign out_valid_out = i_llvm_fpga_ffwd_source_p1024_unnamed_dijkstraparallelid3_dijkstraparallelid_84_1gr_valid_out;

endmodule
