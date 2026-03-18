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

// SystemVerilog created from DijkstraNaiveID_function_wrapper
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_function_wrapper (
    input wire [63:0] avm_load4_lm_DijkstraNaiveID_readdata,
    input wire [0:0] avm_load4_lm_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_load4_lm_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_load4_lm_DijkstraNaiveID_writeack,
    input wire [63:0] avm_load5_lm_DijkstraNaiveID_readdata,
    input wire [0:0] avm_load5_lm_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_load5_lm_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_load5_lm_DijkstraNaiveID_writeack,
    input wire [63:0] avm_load6_DijkstraNaiveID_readdata,
    input wire [0:0] avm_load6_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_load6_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_load6_DijkstraNaiveID_writeack,
    input wire [63:0] avm_load7_lm_DijkstraNaiveID_readdata,
    input wire [0:0] avm_load7_lm_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_load7_lm_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_load7_lm_DijkstraNaiveID_writeack,
    input wire [63:0] avm_load8_lm_DijkstraNaiveID_readdata,
    input wire [0:0] avm_load8_lm_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_load8_lm_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_load8_lm_DijkstraNaiveID_writeack,
    input wire [63:0] avm_load9_lm_DijkstraNaiveID_readdata,
    input wire [0:0] avm_load9_lm_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_load9_lm_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_load9_lm_DijkstraNaiveID_writeack,
    input wire [63:0] avm_load_DijkstraNaiveID_readdata,
    input wire [0:0] avm_load_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_load_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_load_DijkstraNaiveID_writeack,
    input wire [63:0] avm_memdep_21_DijkstraNaiveID_readdata,
    input wire [0:0] avm_memdep_21_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_memdep_21_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_memdep_21_DijkstraNaiveID_writeack,
    input wire [63:0] avm_memdep_DijkstraNaiveID_readdata,
    input wire [0:0] avm_memdep_DijkstraNaiveID_readdatavalid,
    input wire [0:0] avm_memdep_DijkstraNaiveID_waitrequest,
    input wire [0:0] avm_memdep_DijkstraNaiveID_writeack,
    input wire [191:0] kernel_arguments,
    input wire [0:0] local_router_hang,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [40:0] avm_load4_lm_DijkstraNaiveID_address,
    output wire [0:0] avm_load4_lm_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_load4_lm_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_load4_lm_DijkstraNaiveID_enable,
    output wire [0:0] avm_load4_lm_DijkstraNaiveID_read,
    output wire [0:0] avm_load4_lm_DijkstraNaiveID_write,
    output wire [63:0] avm_load4_lm_DijkstraNaiveID_writedata,
    output wire [40:0] avm_load5_lm_DijkstraNaiveID_address,
    output wire [0:0] avm_load5_lm_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_load5_lm_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_load5_lm_DijkstraNaiveID_enable,
    output wire [0:0] avm_load5_lm_DijkstraNaiveID_read,
    output wire [0:0] avm_load5_lm_DijkstraNaiveID_write,
    output wire [63:0] avm_load5_lm_DijkstraNaiveID_writedata,
    output wire [40:0] avm_load6_DijkstraNaiveID_address,
    output wire [0:0] avm_load6_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_load6_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_load6_DijkstraNaiveID_enable,
    output wire [0:0] avm_load6_DijkstraNaiveID_read,
    output wire [0:0] avm_load6_DijkstraNaiveID_write,
    output wire [63:0] avm_load6_DijkstraNaiveID_writedata,
    output wire [40:0] avm_load7_lm_DijkstraNaiveID_address,
    output wire [0:0] avm_load7_lm_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_load7_lm_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_load7_lm_DijkstraNaiveID_enable,
    output wire [0:0] avm_load7_lm_DijkstraNaiveID_read,
    output wire [0:0] avm_load7_lm_DijkstraNaiveID_write,
    output wire [63:0] avm_load7_lm_DijkstraNaiveID_writedata,
    output wire [40:0] avm_load8_lm_DijkstraNaiveID_address,
    output wire [0:0] avm_load8_lm_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_load8_lm_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_load8_lm_DijkstraNaiveID_enable,
    output wire [0:0] avm_load8_lm_DijkstraNaiveID_read,
    output wire [0:0] avm_load8_lm_DijkstraNaiveID_write,
    output wire [63:0] avm_load8_lm_DijkstraNaiveID_writedata,
    output wire [40:0] avm_load9_lm_DijkstraNaiveID_address,
    output wire [0:0] avm_load9_lm_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_load9_lm_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_load9_lm_DijkstraNaiveID_enable,
    output wire [0:0] avm_load9_lm_DijkstraNaiveID_read,
    output wire [0:0] avm_load9_lm_DijkstraNaiveID_write,
    output wire [63:0] avm_load9_lm_DijkstraNaiveID_writedata,
    output wire [40:0] avm_load_DijkstraNaiveID_address,
    output wire [0:0] avm_load_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_load_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_load_DijkstraNaiveID_enable,
    output wire [0:0] avm_load_DijkstraNaiveID_read,
    output wire [0:0] avm_load_DijkstraNaiveID_write,
    output wire [63:0] avm_load_DijkstraNaiveID_writedata,
    output wire [40:0] avm_memdep_21_DijkstraNaiveID_address,
    output wire [0:0] avm_memdep_21_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_memdep_21_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_memdep_21_DijkstraNaiveID_enable,
    output wire [0:0] avm_memdep_21_DijkstraNaiveID_read,
    output wire [0:0] avm_memdep_21_DijkstraNaiveID_write,
    output wire [63:0] avm_memdep_21_DijkstraNaiveID_writedata,
    output wire [40:0] avm_memdep_DijkstraNaiveID_address,
    output wire [0:0] avm_memdep_DijkstraNaiveID_burstcount,
    output wire [7:0] avm_memdep_DijkstraNaiveID_byteenable,
    output wire [0:0] avm_memdep_DijkstraNaiveID_enable,
    output wire [0:0] avm_memdep_DijkstraNaiveID_read,
    output wire [0:0] avm_memdep_DijkstraNaiveID_write,
    output wire [63:0] avm_memdep_DijkstraNaiveID_writedata,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_valid_in,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [40:0] DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_writedata;
    wire [40:0] DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_address;
    wire [0:0] DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_burstcount;
    wire [7:0] DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_byteenable;
    wire [0:0] DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_enable;
    wire [0:0] DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_read;
    wire [0:0] DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_write;
    wire [63:0] DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_writedata;
    wire [0:0] DijkstraNaiveID_function_out_o_active_memdep;
    wire [0:0] DijkstraNaiveID_function_out_o_active_memdep_21;
    wire [0:0] DijkstraNaiveID_function_out_valid_out;
    wire [63:0] arg_arg_dist_select_b;
    wire [63:0] arg_arg_g_select_b;
    wire [63:0] arg_arg_visited_select_b;
    wire [0:0] is_any_lsu_active_q;
    wire [0:0] valid_in_pulse_q;
    reg [0:0] valid_pulse_reg1_NO_SHIFT_REG_q;
    reg [0:0] valid_pulse_reg2_NO_SHIFT_REG_q;
    reg [0:0] rst_sync_rst_sclrn;


    // valid_pulse_reg2_NO_SHIFT_REG(REG,13)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_pulse_reg2_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_pulse_reg2_NO_SHIFT_REG_q <= valid_pulse_reg1_NO_SHIFT_REG_q;
        end
    end

    // valid_pulse_reg1_NO_SHIFT_REG(REG,12)
    always_ff @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_pulse_reg1_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_pulse_reg1_NO_SHIFT_REG_q <= start;
        end
    end

    // valid_in_pulse(LOGICAL,11)
    assign valid_in_pulse_q = valid_pulse_reg1_NO_SHIFT_REG_q & valid_pulse_reg2_NO_SHIFT_REG_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // arg_arg_visited_select(BITSELECT,5)
    assign arg_arg_visited_select_b = kernel_arguments[191:128];

    // arg_arg_g_select(BITSELECT,4)
    assign arg_arg_g_select_b = kernel_arguments[63:0];

    // arg_arg_dist_select(BITSELECT,3)
    assign arg_arg_dist_select_b = kernel_arguments[127:64];

    // DijkstraNaiveID_function(BLACKBOX,2)
    DijkstraNaiveID_function theDijkstraNaiveID_function (
        .in_arg_arg_dist(arg_arg_dist_select_b),
        .in_arg_arg_g(arg_arg_g_select_b),
        .in_arg_arg_visited(arg_arg_visited_select_b),
        .in_load4_lm_DijkstraNaiveID_avm_readdata(avm_load4_lm_DijkstraNaiveID_readdata),
        .in_load4_lm_DijkstraNaiveID_avm_readdatavalid(avm_load4_lm_DijkstraNaiveID_readdatavalid),
        .in_load4_lm_DijkstraNaiveID_avm_waitrequest(avm_load4_lm_DijkstraNaiveID_waitrequest),
        .in_load4_lm_DijkstraNaiveID_avm_writeack(avm_load4_lm_DijkstraNaiveID_writeack),
        .in_load5_lm_DijkstraNaiveID_avm_readdata(avm_load5_lm_DijkstraNaiveID_readdata),
        .in_load5_lm_DijkstraNaiveID_avm_readdatavalid(avm_load5_lm_DijkstraNaiveID_readdatavalid),
        .in_load5_lm_DijkstraNaiveID_avm_waitrequest(avm_load5_lm_DijkstraNaiveID_waitrequest),
        .in_load5_lm_DijkstraNaiveID_avm_writeack(avm_load5_lm_DijkstraNaiveID_writeack),
        .in_load6_DijkstraNaiveID_avm_readdata(avm_load6_DijkstraNaiveID_readdata),
        .in_load6_DijkstraNaiveID_avm_readdatavalid(avm_load6_DijkstraNaiveID_readdatavalid),
        .in_load6_DijkstraNaiveID_avm_waitrequest(avm_load6_DijkstraNaiveID_waitrequest),
        .in_load6_DijkstraNaiveID_avm_writeack(avm_load6_DijkstraNaiveID_writeack),
        .in_load7_lm_DijkstraNaiveID_avm_readdata(avm_load7_lm_DijkstraNaiveID_readdata),
        .in_load7_lm_DijkstraNaiveID_avm_readdatavalid(avm_load7_lm_DijkstraNaiveID_readdatavalid),
        .in_load7_lm_DijkstraNaiveID_avm_waitrequest(avm_load7_lm_DijkstraNaiveID_waitrequest),
        .in_load7_lm_DijkstraNaiveID_avm_writeack(avm_load7_lm_DijkstraNaiveID_writeack),
        .in_load8_lm_DijkstraNaiveID_avm_readdata(avm_load8_lm_DijkstraNaiveID_readdata),
        .in_load8_lm_DijkstraNaiveID_avm_readdatavalid(avm_load8_lm_DijkstraNaiveID_readdatavalid),
        .in_load8_lm_DijkstraNaiveID_avm_waitrequest(avm_load8_lm_DijkstraNaiveID_waitrequest),
        .in_load8_lm_DijkstraNaiveID_avm_writeack(avm_load8_lm_DijkstraNaiveID_writeack),
        .in_load9_lm_DijkstraNaiveID_avm_readdata(avm_load9_lm_DijkstraNaiveID_readdata),
        .in_load9_lm_DijkstraNaiveID_avm_readdatavalid(avm_load9_lm_DijkstraNaiveID_readdatavalid),
        .in_load9_lm_DijkstraNaiveID_avm_waitrequest(avm_load9_lm_DijkstraNaiveID_waitrequest),
        .in_load9_lm_DijkstraNaiveID_avm_writeack(avm_load9_lm_DijkstraNaiveID_writeack),
        .in_load_DijkstraNaiveID_avm_readdata(avm_load_DijkstraNaiveID_readdata),
        .in_load_DijkstraNaiveID_avm_readdatavalid(avm_load_DijkstraNaiveID_readdatavalid),
        .in_load_DijkstraNaiveID_avm_waitrequest(avm_load_DijkstraNaiveID_waitrequest),
        .in_load_DijkstraNaiveID_avm_writeack(avm_load_DijkstraNaiveID_writeack),
        .in_memdep_21_DijkstraNaiveID_avm_readdata(avm_memdep_21_DijkstraNaiveID_readdata),
        .in_memdep_21_DijkstraNaiveID_avm_readdatavalid(avm_memdep_21_DijkstraNaiveID_readdatavalid),
        .in_memdep_21_DijkstraNaiveID_avm_waitrequest(avm_memdep_21_DijkstraNaiveID_waitrequest),
        .in_memdep_21_DijkstraNaiveID_avm_writeack(avm_memdep_21_DijkstraNaiveID_writeack),
        .in_memdep_DijkstraNaiveID_avm_readdata(avm_memdep_DijkstraNaiveID_readdata),
        .in_memdep_DijkstraNaiveID_avm_readdatavalid(avm_memdep_DijkstraNaiveID_readdatavalid),
        .in_memdep_DijkstraNaiveID_avm_waitrequest(avm_memdep_DijkstraNaiveID_waitrequest),
        .in_memdep_DijkstraNaiveID_avm_writeack(avm_memdep_DijkstraNaiveID_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_valid_in(valid_in_pulse_q),
        .out_load4_lm_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_address),
        .out_load4_lm_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_burstcount),
        .out_load4_lm_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_byteenable),
        .out_load4_lm_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_enable),
        .out_load4_lm_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_read),
        .out_load4_lm_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_write),
        .out_load4_lm_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_writedata),
        .out_load5_lm_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_address),
        .out_load5_lm_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_burstcount),
        .out_load5_lm_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_byteenable),
        .out_load5_lm_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_enable),
        .out_load5_lm_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_read),
        .out_load5_lm_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_write),
        .out_load5_lm_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_writedata),
        .out_load6_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_address),
        .out_load6_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_burstcount),
        .out_load6_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_byteenable),
        .out_load6_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_enable),
        .out_load6_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_read),
        .out_load6_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_write),
        .out_load6_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_writedata),
        .out_load7_lm_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_address),
        .out_load7_lm_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_burstcount),
        .out_load7_lm_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_byteenable),
        .out_load7_lm_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_enable),
        .out_load7_lm_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_read),
        .out_load7_lm_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_write),
        .out_load7_lm_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_writedata),
        .out_load8_lm_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_address),
        .out_load8_lm_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_burstcount),
        .out_load8_lm_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_byteenable),
        .out_load8_lm_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_enable),
        .out_load8_lm_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_read),
        .out_load8_lm_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_write),
        .out_load8_lm_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_writedata),
        .out_load9_lm_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_address),
        .out_load9_lm_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_burstcount),
        .out_load9_lm_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_byteenable),
        .out_load9_lm_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_enable),
        .out_load9_lm_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_read),
        .out_load9_lm_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_write),
        .out_load9_lm_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_writedata),
        .out_load_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_address),
        .out_load_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_burstcount),
        .out_load_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_byteenable),
        .out_load_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_enable),
        .out_load_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_read),
        .out_load_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_write),
        .out_load_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_writedata),
        .out_memdep_21_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_address),
        .out_memdep_21_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_burstcount),
        .out_memdep_21_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_byteenable),
        .out_memdep_21_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_enable),
        .out_memdep_21_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_read),
        .out_memdep_21_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_write),
        .out_memdep_21_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_writedata),
        .out_memdep_DijkstraNaiveID_avm_address(DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_address),
        .out_memdep_DijkstraNaiveID_avm_burstcount(DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_burstcount),
        .out_memdep_DijkstraNaiveID_avm_byteenable(DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_byteenable),
        .out_memdep_DijkstraNaiveID_avm_enable(DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_enable),
        .out_memdep_DijkstraNaiveID_avm_read(DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_read),
        .out_memdep_DijkstraNaiveID_avm_write(DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_write),
        .out_memdep_DijkstraNaiveID_avm_writedata(DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_writedata),
        .out_o_active_memdep(DijkstraNaiveID_function_out_o_active_memdep),
        .out_o_active_memdep_21(DijkstraNaiveID_function_out_o_active_memdep_21),
        .out_stall_out(),
        .out_valid_out(DijkstraNaiveID_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_load4_lm_DijkstraNaiveID_address(GPOUT,56)
    assign avm_load4_lm_DijkstraNaiveID_address = DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_address;

    // avm_load4_lm_DijkstraNaiveID_burstcount(GPOUT,57)
    assign avm_load4_lm_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_burstcount;

    // avm_load4_lm_DijkstraNaiveID_byteenable(GPOUT,58)
    assign avm_load4_lm_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_byteenable;

    // avm_load4_lm_DijkstraNaiveID_enable(GPOUT,59)
    assign avm_load4_lm_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_enable;

    // avm_load4_lm_DijkstraNaiveID_read(GPOUT,60)
    assign avm_load4_lm_DijkstraNaiveID_read = DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_read;

    // avm_load4_lm_DijkstraNaiveID_write(GPOUT,61)
    assign avm_load4_lm_DijkstraNaiveID_write = DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_write;

    // avm_load4_lm_DijkstraNaiveID_writedata(GPOUT,62)
    assign avm_load4_lm_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_load4_lm_DijkstraNaiveID_avm_writedata;

    // avm_load5_lm_DijkstraNaiveID_address(GPOUT,63)
    assign avm_load5_lm_DijkstraNaiveID_address = DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_address;

    // avm_load5_lm_DijkstraNaiveID_burstcount(GPOUT,64)
    assign avm_load5_lm_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_burstcount;

    // avm_load5_lm_DijkstraNaiveID_byteenable(GPOUT,65)
    assign avm_load5_lm_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_byteenable;

    // avm_load5_lm_DijkstraNaiveID_enable(GPOUT,66)
    assign avm_load5_lm_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_enable;

    // avm_load5_lm_DijkstraNaiveID_read(GPOUT,67)
    assign avm_load5_lm_DijkstraNaiveID_read = DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_read;

    // avm_load5_lm_DijkstraNaiveID_write(GPOUT,68)
    assign avm_load5_lm_DijkstraNaiveID_write = DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_write;

    // avm_load5_lm_DijkstraNaiveID_writedata(GPOUT,69)
    assign avm_load5_lm_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_load5_lm_DijkstraNaiveID_avm_writedata;

    // avm_load6_DijkstraNaiveID_address(GPOUT,70)
    assign avm_load6_DijkstraNaiveID_address = DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_address;

    // avm_load6_DijkstraNaiveID_burstcount(GPOUT,71)
    assign avm_load6_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_burstcount;

    // avm_load6_DijkstraNaiveID_byteenable(GPOUT,72)
    assign avm_load6_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_byteenable;

    // avm_load6_DijkstraNaiveID_enable(GPOUT,73)
    assign avm_load6_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_enable;

    // avm_load6_DijkstraNaiveID_read(GPOUT,74)
    assign avm_load6_DijkstraNaiveID_read = DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_read;

    // avm_load6_DijkstraNaiveID_write(GPOUT,75)
    assign avm_load6_DijkstraNaiveID_write = DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_write;

    // avm_load6_DijkstraNaiveID_writedata(GPOUT,76)
    assign avm_load6_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_load6_DijkstraNaiveID_avm_writedata;

    // avm_load7_lm_DijkstraNaiveID_address(GPOUT,77)
    assign avm_load7_lm_DijkstraNaiveID_address = DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_address;

    // avm_load7_lm_DijkstraNaiveID_burstcount(GPOUT,78)
    assign avm_load7_lm_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_burstcount;

    // avm_load7_lm_DijkstraNaiveID_byteenable(GPOUT,79)
    assign avm_load7_lm_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_byteenable;

    // avm_load7_lm_DijkstraNaiveID_enable(GPOUT,80)
    assign avm_load7_lm_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_enable;

    // avm_load7_lm_DijkstraNaiveID_read(GPOUT,81)
    assign avm_load7_lm_DijkstraNaiveID_read = DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_read;

    // avm_load7_lm_DijkstraNaiveID_write(GPOUT,82)
    assign avm_load7_lm_DijkstraNaiveID_write = DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_write;

    // avm_load7_lm_DijkstraNaiveID_writedata(GPOUT,83)
    assign avm_load7_lm_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_load7_lm_DijkstraNaiveID_avm_writedata;

    // avm_load8_lm_DijkstraNaiveID_address(GPOUT,84)
    assign avm_load8_lm_DijkstraNaiveID_address = DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_address;

    // avm_load8_lm_DijkstraNaiveID_burstcount(GPOUT,85)
    assign avm_load8_lm_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_burstcount;

    // avm_load8_lm_DijkstraNaiveID_byteenable(GPOUT,86)
    assign avm_load8_lm_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_byteenable;

    // avm_load8_lm_DijkstraNaiveID_enable(GPOUT,87)
    assign avm_load8_lm_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_enable;

    // avm_load8_lm_DijkstraNaiveID_read(GPOUT,88)
    assign avm_load8_lm_DijkstraNaiveID_read = DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_read;

    // avm_load8_lm_DijkstraNaiveID_write(GPOUT,89)
    assign avm_load8_lm_DijkstraNaiveID_write = DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_write;

    // avm_load8_lm_DijkstraNaiveID_writedata(GPOUT,90)
    assign avm_load8_lm_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_load8_lm_DijkstraNaiveID_avm_writedata;

    // avm_load9_lm_DijkstraNaiveID_address(GPOUT,91)
    assign avm_load9_lm_DijkstraNaiveID_address = DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_address;

    // avm_load9_lm_DijkstraNaiveID_burstcount(GPOUT,92)
    assign avm_load9_lm_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_burstcount;

    // avm_load9_lm_DijkstraNaiveID_byteenable(GPOUT,93)
    assign avm_load9_lm_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_byteenable;

    // avm_load9_lm_DijkstraNaiveID_enable(GPOUT,94)
    assign avm_load9_lm_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_enable;

    // avm_load9_lm_DijkstraNaiveID_read(GPOUT,95)
    assign avm_load9_lm_DijkstraNaiveID_read = DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_read;

    // avm_load9_lm_DijkstraNaiveID_write(GPOUT,96)
    assign avm_load9_lm_DijkstraNaiveID_write = DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_write;

    // avm_load9_lm_DijkstraNaiveID_writedata(GPOUT,97)
    assign avm_load9_lm_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_load9_lm_DijkstraNaiveID_avm_writedata;

    // avm_load_DijkstraNaiveID_address(GPOUT,98)
    assign avm_load_DijkstraNaiveID_address = DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_address;

    // avm_load_DijkstraNaiveID_burstcount(GPOUT,99)
    assign avm_load_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_burstcount;

    // avm_load_DijkstraNaiveID_byteenable(GPOUT,100)
    assign avm_load_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_byteenable;

    // avm_load_DijkstraNaiveID_enable(GPOUT,101)
    assign avm_load_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_enable;

    // avm_load_DijkstraNaiveID_read(GPOUT,102)
    assign avm_load_DijkstraNaiveID_read = DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_read;

    // avm_load_DijkstraNaiveID_write(GPOUT,103)
    assign avm_load_DijkstraNaiveID_write = DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_write;

    // avm_load_DijkstraNaiveID_writedata(GPOUT,104)
    assign avm_load_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_load_DijkstraNaiveID_avm_writedata;

    // avm_memdep_21_DijkstraNaiveID_address(GPOUT,105)
    assign avm_memdep_21_DijkstraNaiveID_address = DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_address;

    // avm_memdep_21_DijkstraNaiveID_burstcount(GPOUT,106)
    assign avm_memdep_21_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_burstcount;

    // avm_memdep_21_DijkstraNaiveID_byteenable(GPOUT,107)
    assign avm_memdep_21_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_byteenable;

    // avm_memdep_21_DijkstraNaiveID_enable(GPOUT,108)
    assign avm_memdep_21_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_enable;

    // avm_memdep_21_DijkstraNaiveID_read(GPOUT,109)
    assign avm_memdep_21_DijkstraNaiveID_read = DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_read;

    // avm_memdep_21_DijkstraNaiveID_write(GPOUT,110)
    assign avm_memdep_21_DijkstraNaiveID_write = DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_write;

    // avm_memdep_21_DijkstraNaiveID_writedata(GPOUT,111)
    assign avm_memdep_21_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_memdep_21_DijkstraNaiveID_avm_writedata;

    // avm_memdep_DijkstraNaiveID_address(GPOUT,112)
    assign avm_memdep_DijkstraNaiveID_address = DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_address;

    // avm_memdep_DijkstraNaiveID_burstcount(GPOUT,113)
    assign avm_memdep_DijkstraNaiveID_burstcount = DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_burstcount;

    // avm_memdep_DijkstraNaiveID_byteenable(GPOUT,114)
    assign avm_memdep_DijkstraNaiveID_byteenable = DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_byteenable;

    // avm_memdep_DijkstraNaiveID_enable(GPOUT,115)
    assign avm_memdep_DijkstraNaiveID_enable = DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_enable;

    // avm_memdep_DijkstraNaiveID_read(GPOUT,116)
    assign avm_memdep_DijkstraNaiveID_read = DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_read;

    // avm_memdep_DijkstraNaiveID_write(GPOUT,117)
    assign avm_memdep_DijkstraNaiveID_write = DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_write;

    // avm_memdep_DijkstraNaiveID_writedata(GPOUT,118)
    assign avm_memdep_DijkstraNaiveID_writedata = DijkstraNaiveID_function_out_memdep_DijkstraNaiveID_avm_writedata;

    // is_any_lsu_active(LOGICAL,10)
    assign is_any_lsu_active_q = DijkstraNaiveID_function_out_o_active_memdep | DijkstraNaiveID_function_out_o_active_memdep_21;

    // has_a_lsu_active(GPOUT,119)
    assign has_a_lsu_active = is_any_lsu_active_q;

    // has_a_write_pending(GPOUT,120)
    assign has_a_write_pending = is_any_lsu_active_q;

    // kernel_valid_in(GPOUT,121)
    assign kernel_valid_in = valid_in_pulse_q;

    // kernel_valid_out(GPOUT,122)
    assign kernel_valid_out = DijkstraNaiveID_function_out_valid_out;

    // rst_sync(RESETSYNC,123)
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
