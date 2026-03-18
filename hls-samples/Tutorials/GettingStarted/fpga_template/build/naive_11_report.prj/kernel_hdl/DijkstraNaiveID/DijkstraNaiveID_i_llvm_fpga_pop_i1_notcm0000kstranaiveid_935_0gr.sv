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

// SystemVerilog created from i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_llvm_fpga_pop_i1_notcm0000kstranaiveid_935_0gr (
    input wire [0:0] in_feedback_in_20,
    input wire [0:0] in_feedback_valid_in_20,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_935_4_in;
    wire [0:0] adapt_scalar_trunc_935_4_q;
    wire [6:0] c_i7_0_935_3gr_q;
    wire [7:0] element_extension_935_2_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_in;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_dir;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_dir_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_in;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_valid_in;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_predicate;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_in;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_in;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_out;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_stall_out;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_out;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_out;
    wire i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_out_bitsignaltemp;


    // adapt_scalar_trunc_935_4(ROUND,2)
    assign adapt_scalar_trunc_935_4_in = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_out;
    assign adapt_scalar_trunc_935_4_q = adapt_scalar_trunc_935_4_in[0:0];

    // i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg(BLACKBOX,7)@19999999
    // in in_stall_in@20000000
    // out out_data_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@20000000
    DijkstraNaiveID_i_llvm_fpga_pop_i1_notcm0000anaiveid_849_4gr_reg thei_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg (
        .in_data_in(adapt_scalar_trunc_935_4_q),
        .in_stall_in(in_stall_in),
        .in_valid_in(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_out),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_data_out),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_0_935_3gr(CONSTANT,3)
    assign c_i7_0_935_3gr_q = 7'b0000000;

    // element_extension_935_2(BITJOIN,4)
    assign element_extension_935_2_q = {c_i7_0_935_3gr_q, in_data_in};

    // i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr(EXTIFACE,8)
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_in = element_extension_935_2_q[0:0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_dir = in_dir;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_in = in_feedback_in_20;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_valid_in = in_feedback_valid_in_20;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_predicate = in_predicate;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_in = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_stall_out;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_in_bitsignaltemp = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_in[0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_dir_bitsignaltemp = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_dir[0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_in_bitsignaltemp = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_in[0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_valid_in[0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_predicate_bitsignaltemp = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_predicate[0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_in_bitsignaltemp = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_in[0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_in_bitsignaltemp = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_in[0];
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_out[0] = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_stall_out[0] = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_out[0] = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_out[0] = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(0),
        .STYLE("REGULAR"),
        .ASYNC_RESET(0),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr (
        .data_in(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_in_bitsignaltemp),
        .dir(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_dir_bitsignaltemp),
        .feedback_in(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_in_bitsignaltemp),
        .feedback_valid_in(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_data_out_bitsignaltemp),
        .feedback_stall_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,6)
    assign out_feedback_stall_out_20 = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_feedback_stall_out;

    // sync_out_147(GPOUT,10)@20000000
    assign out_stall_out = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_935_1gr_stall_out;

    // sync_out_148(GPOUT,11)@255
    assign out_data_out = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_data_out;
    assign out_valid_out = i_llvm_fpga_pop_i1_notcmp4554_pop20_dijkstranaiveid_849_4gr_reg_out_valid_out;

endmodule
