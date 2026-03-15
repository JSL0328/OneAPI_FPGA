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

// SystemVerilog created from main_lambda_B2_merge
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_B2_merge (
    input wire [0:0] in_forked2635_0,
    input wire [0:0] in_forked2635_1,
    input wire [0:0] in_notcmp2038_0,
    input wire [0:0] in_notcmp2038_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_main_lambda0_0,
    input wire [31:0] in_unnamed_main_lambda0_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked2635,
    output wire [0:0] out_notcmp2038,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_main_lambda0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked2635_mux_s;
    reg [0:0] forked2635_mux_q;
    wire [0:0] notcmp2038_mux_s;
    reg [0:0] notcmp2038_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_main_lambda0_mux_s;
    reg [31:0] unnamed_main_lambda0_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // forked2635_mux(MUX,2)
    assign forked2635_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (forked2635_mux_s)
            1'b0 : forked2635_mux_q = in_forked2635_1;
            1'b1 : forked2635_mux_q = in_forked2635_0;
            default : forked2635_mux_q = 1'b0;
        endcase
    end

    // out_forked2635(GPOUT,17)
    assign out_forked2635 = forked2635_mux_q;

    // notcmp2038_mux(MUX,3)
    assign notcmp2038_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (notcmp2038_mux_s)
            1'b0 : notcmp2038_mux_q = in_notcmp2038_1;
            1'b1 : notcmp2038_mux_q = in_notcmp2038_0;
            default : notcmp2038_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2038(GPOUT,18)
    assign out_notcmp2038 = notcmp2038_mux_q;

    // valid_or(LOGICAL,7)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,4)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,5)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,20)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_main_lambda0_mux(MUX,6)
    assign unnamed_main_lambda0_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (unnamed_main_lambda0_mux_s)
            1'b0 : unnamed_main_lambda0_mux_q = in_unnamed_main_lambda0_1;
            1'b1 : unnamed_main_lambda0_mux_q = in_unnamed_main_lambda0_0;
            default : unnamed_main_lambda0_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_main_lambda0(GPOUT,21)
    assign out_unnamed_main_lambda0 = unnamed_main_lambda0_mux_q;

    // out_valid_out(GPOUT,22)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,23)
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
