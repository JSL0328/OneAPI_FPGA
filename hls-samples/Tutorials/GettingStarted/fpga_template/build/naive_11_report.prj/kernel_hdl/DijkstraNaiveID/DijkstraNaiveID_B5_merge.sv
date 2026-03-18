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

// SystemVerilog created from DijkstraNaiveID_B5_merge
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_B5_merge (
    input wire [63:0] in_arrayidx31_i65_0,
    input wire [63:0] in_arrayidx31_i65_1,
    input wire [0:0] in_exitcond3051_pop1269_0,
    input wire [0:0] in_exitcond3051_pop1269_1,
    input wire [0:0] in_forked57_0,
    input wire [0:0] in_forked57_1,
    input wire [0:0] in_memdep_phi_pop755_pop1466_0,
    input wire [0:0] in_memdep_phi_pop755_pop1466_1,
    input wire [31:0] in_mul_i_add3464_0,
    input wire [31:0] in_mul_i_add3464_1,
    input wire [0:0] in_notcmp4553_pop1371_0,
    input wire [0:0] in_notcmp4553_pop1371_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx31_i65,
    output wire [0:0] out_exitcond3051_pop1269,
    output wire [0:0] out_forked57,
    output wire [0:0] out_memdep_phi_pop755_pop1466,
    output wire [31:0] out_mul_i_add3464,
    output wire [0:0] out_notcmp4553_pop1371,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx31_i65_mux_s;
    reg [63:0] arrayidx31_i65_mux_q;
    wire [0:0] exitcond3051_pop1269_mux_s;
    reg [0:0] exitcond3051_pop1269_mux_q;
    wire [0:0] forked57_mux_s;
    reg [0:0] forked57_mux_q;
    wire [0:0] memdep_phi_pop755_pop1466_mux_s;
    reg [0:0] memdep_phi_pop755_pop1466_mux_q;
    wire [0:0] mul_i_add3464_mux_s;
    reg [31:0] mul_i_add3464_mux_q;
    wire [0:0] notcmp4553_pop1371_mux_s;
    reg [0:0] notcmp4553_pop1371_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // arrayidx31_i65_mux(MUX,2)
    assign arrayidx31_i65_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (arrayidx31_i65_mux_s)
            1'b0 : arrayidx31_i65_mux_q = in_arrayidx31_i65_1;
            1'b1 : arrayidx31_i65_mux_q = in_arrayidx31_i65_0;
            default : arrayidx31_i65_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx31_i65(GPOUT,26)
    assign out_arrayidx31_i65 = arrayidx31_i65_mux_q;

    // exitcond3051_pop1269_mux(MUX,3)
    assign exitcond3051_pop1269_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (exitcond3051_pop1269_mux_s)
            1'b0 : exitcond3051_pop1269_mux_q = in_exitcond3051_pop1269_1;
            1'b1 : exitcond3051_pop1269_mux_q = in_exitcond3051_pop1269_0;
            default : exitcond3051_pop1269_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3051_pop1269(GPOUT,27)
    assign out_exitcond3051_pop1269 = exitcond3051_pop1269_mux_q;

    // forked57_mux(MUX,4)
    assign forked57_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (forked57_mux_s)
            1'b0 : forked57_mux_q = in_forked57_1;
            1'b1 : forked57_mux_q = in_forked57_0;
            default : forked57_mux_q = 1'b0;
        endcase
    end

    // out_forked57(GPOUT,28)
    assign out_forked57 = forked57_mux_q;

    // memdep_phi_pop755_pop1466_mux(MUX,5)
    assign memdep_phi_pop755_pop1466_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (memdep_phi_pop755_pop1466_mux_s)
            1'b0 : memdep_phi_pop755_pop1466_mux_q = in_memdep_phi_pop755_pop1466_1;
            1'b1 : memdep_phi_pop755_pop1466_mux_q = in_memdep_phi_pop755_pop1466_0;
            default : memdep_phi_pop755_pop1466_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop755_pop1466(GPOUT,29)
    assign out_memdep_phi_pop755_pop1466 = memdep_phi_pop755_pop1466_mux_q;

    // mul_i_add3464_mux(MUX,6)
    assign mul_i_add3464_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (mul_i_add3464_mux_s)
            1'b0 : mul_i_add3464_mux_q = in_mul_i_add3464_1;
            1'b1 : mul_i_add3464_mux_q = in_mul_i_add3464_0;
            default : mul_i_add3464_mux_q = 32'b0;
        endcase
    end

    // out_mul_i_add3464(GPOUT,30)
    assign out_mul_i_add3464 = mul_i_add3464_mux_q;

    // notcmp4553_pop1371_mux(MUX,7)
    assign notcmp4553_pop1371_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (notcmp4553_pop1371_mux_s)
            1'b0 : notcmp4553_pop1371_mux_q = in_notcmp4553_pop1371_1;
            1'b1 : notcmp4553_pop1371_mux_q = in_notcmp4553_pop1371_0;
            default : notcmp4553_pop1371_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4553_pop1371(GPOUT,31)
    assign out_notcmp4553_pop1371 = notcmp4553_pop1371_mux_q;

    // valid_or(LOGICAL,10)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,8)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,9)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,33)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,35)
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
