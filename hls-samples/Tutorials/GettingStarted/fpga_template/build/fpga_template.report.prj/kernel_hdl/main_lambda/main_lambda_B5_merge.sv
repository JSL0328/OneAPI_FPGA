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

// SystemVerilog created from main_lambda_B5_merge
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_B5_merge (
    input wire [63:0] in_arrayidx18_i44_0,
    input wire [63:0] in_arrayidx18_i44_1,
    input wire [0:0] in_forked2541_0,
    input wire [0:0] in_forked2541_1,
    input wire [0:0] in_forked2627_pop1047_0,
    input wire [0:0] in_forked2627_pop1047_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_load2_pre45_0,
    input wire [31:0] in_load2_pre45_1,
    input wire [31:0] in_mul_i43_0,
    input wire [31:0] in_mul_i43_1,
    input wire [0:0] in_notcmp1546_0,
    input wire [0:0] in_notcmp1546_1,
    input wire [0:0] in_notcmp2029_pop1248_0,
    input wire [0:0] in_notcmp2029_pop1248_1,
    input wire [31:0] in_pop1142_0,
    input wire [31:0] in_pop1142_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_main_lambda1_0,
    input wire [31:0] in_unnamed_main_lambda1_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx18_i44,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked2541,
    output wire [0:0] out_forked2627_pop1047,
    output wire [31:0] out_load2_pre45,
    output wire [31:0] out_mul_i43,
    output wire [0:0] out_notcmp1546,
    output wire [0:0] out_notcmp2029_pop1248,
    output wire [31:0] out_pop1142,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_main_lambda1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx18_i44_mux_s;
    reg [63:0] arrayidx18_i44_mux_q;
    wire [0:0] forked2541_mux_s;
    reg [0:0] forked2541_mux_q;
    wire [0:0] forked2627_pop1047_mux_s;
    reg [0:0] forked2627_pop1047_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] load2_pre45_mux_s;
    reg [31:0] load2_pre45_mux_q;
    wire [0:0] mul_i43_mux_s;
    reg [31:0] mul_i43_mux_q;
    wire [0:0] notcmp1546_mux_s;
    reg [0:0] notcmp1546_mux_q;
    wire [0:0] notcmp2029_pop1248_mux_s;
    reg [0:0] notcmp2029_pop1248_mux_q;
    wire [0:0] pop1142_mux_s;
    reg [31:0] pop1142_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_main_lambda1_mux_s;
    reg [31:0] unnamed_main_lambda1_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // arrayidx18_i44_mux(MUX,2)
    assign arrayidx18_i44_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (arrayidx18_i44_mux_s)
            1'b0 : arrayidx18_i44_mux_q = in_arrayidx18_i44_1;
            1'b1 : arrayidx18_i44_mux_q = in_arrayidx18_i44_0;
            default : arrayidx18_i44_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx18_i44(GPOUT,38)
    assign out_arrayidx18_i44 = arrayidx18_i44_mux_q;

    // forked_mux(MUX,5)
    assign forked_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,39)
    assign out_forked = forked_mux_q;

    // forked2541_mux(MUX,3)
    assign forked2541_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (forked2541_mux_s)
            1'b0 : forked2541_mux_q = in_forked2541_1;
            1'b1 : forked2541_mux_q = in_forked2541_0;
            default : forked2541_mux_q = 1'b0;
        endcase
    end

    // out_forked2541(GPOUT,40)
    assign out_forked2541 = forked2541_mux_q;

    // forked2627_pop1047_mux(MUX,4)
    assign forked2627_pop1047_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (forked2627_pop1047_mux_s)
            1'b0 : forked2627_pop1047_mux_q = in_forked2627_pop1047_1;
            1'b1 : forked2627_pop1047_mux_q = in_forked2627_pop1047_0;
            default : forked2627_pop1047_mux_q = 1'b0;
        endcase
    end

    // out_forked2627_pop1047(GPOUT,41)
    assign out_forked2627_pop1047 = forked2627_pop1047_mux_q;

    // load2_pre45_mux(MUX,6)
    assign load2_pre45_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (load2_pre45_mux_s)
            1'b0 : load2_pre45_mux_q = in_load2_pre45_1;
            1'b1 : load2_pre45_mux_q = in_load2_pre45_0;
            default : load2_pre45_mux_q = 32'b0;
        endcase
    end

    // out_load2_pre45(GPOUT,42)
    assign out_load2_pre45 = load2_pre45_mux_q;

    // mul_i43_mux(MUX,7)
    assign mul_i43_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (mul_i43_mux_s)
            1'b0 : mul_i43_mux_q = in_mul_i43_1;
            1'b1 : mul_i43_mux_q = in_mul_i43_0;
            default : mul_i43_mux_q = 32'b0;
        endcase
    end

    // out_mul_i43(GPOUT,43)
    assign out_mul_i43 = mul_i43_mux_q;

    // notcmp1546_mux(MUX,8)
    assign notcmp1546_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (notcmp1546_mux_s)
            1'b0 : notcmp1546_mux_q = in_notcmp1546_1;
            1'b1 : notcmp1546_mux_q = in_notcmp1546_0;
            default : notcmp1546_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1546(GPOUT,44)
    assign out_notcmp1546 = notcmp1546_mux_q;

    // notcmp2029_pop1248_mux(MUX,9)
    assign notcmp2029_pop1248_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (notcmp2029_pop1248_mux_s)
            1'b0 : notcmp2029_pop1248_mux_q = in_notcmp2029_pop1248_1;
            1'b1 : notcmp2029_pop1248_mux_q = in_notcmp2029_pop1248_0;
            default : notcmp2029_pop1248_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2029_pop1248(GPOUT,45)
    assign out_notcmp2029_pop1248 = notcmp2029_pop1248_mux_q;

    // pop1142_mux(MUX,10)
    assign pop1142_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (pop1142_mux_s)
            1'b0 : pop1142_mux_q = in_pop1142_1;
            1'b1 : pop1142_mux_q = in_pop1142_0;
            default : pop1142_mux_q = 32'b0;
        endcase
    end

    // out_pop1142(GPOUT,46)
    assign out_pop1142 = pop1142_mux_q;

    // valid_or(LOGICAL,14)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,11)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,12)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_main_lambda1_mux(MUX,13)
    assign unnamed_main_lambda1_mux_s = in_valid_in_0;
    always_comb 
    begin
        unique case (unnamed_main_lambda1_mux_s)
            1'b0 : unnamed_main_lambda1_mux_q = in_unnamed_main_lambda1_1;
            1'b1 : unnamed_main_lambda1_mux_q = in_unnamed_main_lambda1_0;
            default : unnamed_main_lambda1_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_main_lambda1(GPOUT,49)
    assign out_unnamed_main_lambda1 = unnamed_main_lambda1_mux_q;

    // out_valid_out(GPOUT,50)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,51)
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
