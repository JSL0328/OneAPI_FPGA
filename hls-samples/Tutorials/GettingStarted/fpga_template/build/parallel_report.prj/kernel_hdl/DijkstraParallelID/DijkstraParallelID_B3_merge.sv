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

// SystemVerilog created from DijkstraParallelID_B3_merge
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_B3_merge (
    input wire [0:0] in_exitcond160215_0,
    input wire [0:0] in_exitcond160215_1,
    input wire [0:0] in_memdep_phi_pop5217_0,
    input wire [0:0] in_memdep_phi_pop5217_1,
    input wire [0:0] in_notcmp206216_0,
    input wire [0:0] in_notcmp206216_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond160215,
    output wire [0:0] out_memdep_phi_pop5217,
    output wire [0:0] out_notcmp206216,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond160215_mux_s;
    reg [0:0] exitcond160215_mux_q;
    wire [0:0] memdep_phi_pop5217_mux_s;
    reg [0:0] memdep_phi_pop5217_mux_q;
    wire [0:0] notcmp206216_mux_s;
    reg [0:0] notcmp206216_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // exitcond160215_mux(MUX,2)
    assign exitcond160215_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (exitcond160215_mux_s)
            1'b0 : exitcond160215_mux_q = in_exitcond160215_1;
            1'b1 : exitcond160215_mux_q = in_exitcond160215_0;
            default : exitcond160215_mux_q = 1'b0;
        endcase
    end

    // out_exitcond160215(GPOUT,17)
    assign out_exitcond160215 = exitcond160215_mux_q;

    // memdep_phi_pop5217_mux(MUX,3)
    assign memdep_phi_pop5217_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (memdep_phi_pop5217_mux_s)
            1'b0 : memdep_phi_pop5217_mux_q = in_memdep_phi_pop5217_1;
            1'b1 : memdep_phi_pop5217_mux_q = in_memdep_phi_pop5217_0;
            default : memdep_phi_pop5217_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop5217(GPOUT,18)
    assign out_memdep_phi_pop5217 = memdep_phi_pop5217_mux_q;

    // notcmp206216_mux(MUX,4)
    assign notcmp206216_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (notcmp206216_mux_s)
            1'b0 : notcmp206216_mux_q = in_notcmp206216_1;
            1'b1 : notcmp206216_mux_q = in_notcmp206216_0;
            default : notcmp206216_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206216(GPOUT,19)
    assign out_notcmp206216 = notcmp206216_mux_q;

    // valid_or(LOGICAL,7)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,5)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,6)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,21)
    assign out_stall_out_1 = stall_out_1_specific_q;

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
