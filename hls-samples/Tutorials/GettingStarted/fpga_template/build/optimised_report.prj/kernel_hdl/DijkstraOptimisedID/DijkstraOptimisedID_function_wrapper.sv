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

// SystemVerilog created from DijkstraOptimisedID_function_wrapper
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_function_wrapper (
    input wire [63:0] avm_load_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_load_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_load_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_load_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_writeack,
    input wire [31:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_writeack,
    input wire [63:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_readdata,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_readdatavalid,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_waitrequest,
    input wire [0:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_writeack,
    input wire [127:0] kernel_arguments,
    input wire [0:0] local_router_hang,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [40:0] avm_load_DijkstraOptimisedID_address,
    output wire [0:0] avm_load_DijkstraOptimisedID_burstcount,
    output wire [7:0] avm_load_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_load_DijkstraOptimisedID_enable,
    output wire [0:0] avm_load_DijkstraOptimisedID_read,
    output wire [0:0] avm_load_DijkstraOptimisedID_write,
    output wire [63:0] avm_load_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_writedata,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_burstcount,
    output wire [3:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_write,
    output wire [31:0] avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_writedata,
    output wire [40:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_address,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_burstcount,
    output wire [7:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_byteenable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_enable,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_read,
    output wire [0:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_write,
    output wire [63:0] avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_writedata,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_valid_in,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [40:0] DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_burstcount;
    wire [7:0] DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_write;
    wire [63:0] DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_writedata;
    wire [0:0] DijkstraOptimisedID_function_out_o_active_unnamed_DijkstraOptimisedID83;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;
    wire [31:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;
    wire [40:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_address;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_burstcount;
    wire [7:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_enable;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_read;
    wire [0:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_write;
    wire [63:0] DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_writedata;
    wire [0:0] DijkstraOptimisedID_function_out_valid_out;
    wire [63:0] arg_arg_in_g_select_b;
    wire [63:0] arg_arg_out_dist_select_b;
    wire [0:0] valid_in_pulse_q;
    reg [0:0] valid_pulse_reg1_NO_SHIFT_REG_q;
    reg [0:0] valid_pulse_reg2_NO_SHIFT_REG_q;
    reg [0:0] rst_sync_rst_sclrn;


    // valid_pulse_reg2_NO_SHIFT_REG(REG,10)
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

    // valid_pulse_reg1_NO_SHIFT_REG(REG,9)
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

    // valid_in_pulse(LOGICAL,8)
    assign valid_in_pulse_q = valid_pulse_reg1_NO_SHIFT_REG_q & valid_pulse_reg2_NO_SHIFT_REG_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // arg_arg_out_dist_select(BITSELECT,4)
    assign arg_arg_out_dist_select_b = kernel_arguments[63:0];

    // arg_arg_in_g_select(BITSELECT,3)
    assign arg_arg_in_g_select_b = kernel_arguments[127:64];

    // DijkstraOptimisedID_function(BLACKBOX,2)
    DijkstraOptimisedID_function theDijkstraOptimisedID_function (
        .in_arg_arg_in_g(arg_arg_in_g_select_b),
        .in_arg_arg_out_dist(arg_arg_out_dist_select_b),
        .in_load_DijkstraOptimisedID_avm_readdata(avm_load_DijkstraOptimisedID_readdata),
        .in_load_DijkstraOptimisedID_avm_readdatavalid(avm_load_DijkstraOptimisedID_readdatavalid),
        .in_load_DijkstraOptimisedID_avm_waitrequest(avm_load_DijkstraOptimisedID_waitrequest),
        .in_load_DijkstraOptimisedID_avm_writeack(avm_load_DijkstraOptimisedID_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_writeack),
        .in_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_readdata(avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_readdata),
        .in_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_readdatavalid(avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_readdatavalid),
        .in_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_waitrequest(avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_waitrequest),
        .in_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_writeack(avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_writeack),
        .in_valid_in(valid_in_pulse_q),
        .out_load_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_address),
        .out_load_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_burstcount),
        .out_load_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_byteenable),
        .out_load_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_enable),
        .out_load_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_read),
        .out_load_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_write),
        .out_load_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_writedata),
        .out_o_active_unnamed_DijkstraOptimisedID83(DijkstraOptimisedID_function_out_o_active_unnamed_DijkstraOptimisedID83),
        .out_stall_out(),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata),
        .out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_address(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_burstcount(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_byteenable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_enable(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_read(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_write(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_writedata(DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_writedata),
        .out_valid_out(DijkstraOptimisedID_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_load_DijkstraOptimisedID_address(GPOUT,73)
    assign avm_load_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_address;

    // avm_load_DijkstraOptimisedID_burstcount(GPOUT,74)
    assign avm_load_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_burstcount;

    // avm_load_DijkstraOptimisedID_byteenable(GPOUT,75)
    assign avm_load_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_byteenable;

    // avm_load_DijkstraOptimisedID_enable(GPOUT,76)
    assign avm_load_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_enable;

    // avm_load_DijkstraOptimisedID_read(GPOUT,77)
    assign avm_load_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_read;

    // avm_load_DijkstraOptimisedID_write(GPOUT,78)
    assign avm_load_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_write;

    // avm_load_DijkstraOptimisedID_writedata(GPOUT,79)
    assign avm_load_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_load_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_address(GPOUT,80)
    assign avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_burstcount(GPOUT,81)
    assign avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_byteenable(GPOUT,82)
    assign avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_enable(GPOUT,83)
    assign avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_read(GPOUT,84)
    assign avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_write(GPOUT,85)
    assign avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_writedata(GPOUT,86)
    assign avm_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_address(GPOUT,87)
    assign avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_burstcount(GPOUT,88)
    assign avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_byteenable(GPOUT,89)
    assign avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_enable(GPOUT,90)
    assign avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_read(GPOUT,91)
    assign avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_write(GPOUT,92)
    assign avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_writedata(GPOUT,93)
    assign avm_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID50_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_address(GPOUT,94)
    assign avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_burstcount(GPOUT,95)
    assign avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_byteenable(GPOUT,96)
    assign avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_enable(GPOUT,97)
    assign avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_read(GPOUT,98)
    assign avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_write(GPOUT,99)
    assign avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_writedata(GPOUT,100)
    assign avm_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID52_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_address(GPOUT,101)
    assign avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_burstcount(GPOUT,102)
    assign avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_byteenable(GPOUT,103)
    assign avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_enable(GPOUT,104)
    assign avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_read(GPOUT,105)
    assign avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_write(GPOUT,106)
    assign avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_writedata(GPOUT,107)
    assign avm_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID54_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_address(GPOUT,108)
    assign avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_burstcount(GPOUT,109)
    assign avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_byteenable(GPOUT,110)
    assign avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_enable(GPOUT,111)
    assign avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_read(GPOUT,112)
    assign avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_write(GPOUT,113)
    assign avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_writedata(GPOUT,114)
    assign avm_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID56_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_address(GPOUT,115)
    assign avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_burstcount(GPOUT,116)
    assign avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_byteenable(GPOUT,117)
    assign avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_enable(GPOUT,118)
    assign avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_read(GPOUT,119)
    assign avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_write(GPOUT,120)
    assign avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_writedata(GPOUT,121)
    assign avm_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID58_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_address(GPOUT,122)
    assign avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_burstcount(GPOUT,123)
    assign avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_byteenable(GPOUT,124)
    assign avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_enable(GPOUT,125)
    assign avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_read(GPOUT,126)
    assign avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_write(GPOUT,127)
    assign avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_writedata(GPOUT,128)
    assign avm_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID60_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_address(GPOUT,129)
    assign avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_burstcount(GPOUT,130)
    assign avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_byteenable(GPOUT,131)
    assign avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_enable(GPOUT,132)
    assign avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_read(GPOUT,133)
    assign avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_write(GPOUT,134)
    assign avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_writedata(GPOUT,135)
    assign avm_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID62_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_address(GPOUT,136)
    assign avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_burstcount(GPOUT,137)
    assign avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_byteenable(GPOUT,138)
    assign avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_enable(GPOUT,139)
    assign avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_read(GPOUT,140)
    assign avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_write(GPOUT,141)
    assign avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_writedata(GPOUT,142)
    assign avm_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID64_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_address(GPOUT,143)
    assign avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_burstcount(GPOUT,144)
    assign avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_byteenable(GPOUT,145)
    assign avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_enable(GPOUT,146)
    assign avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_read(GPOUT,147)
    assign avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_write(GPOUT,148)
    assign avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_writedata(GPOUT,149)
    assign avm_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID66_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_address(GPOUT,150)
    assign avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_burstcount(GPOUT,151)
    assign avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_byteenable(GPOUT,152)
    assign avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_enable(GPOUT,153)
    assign avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_read(GPOUT,154)
    assign avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_write(GPOUT,155)
    assign avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_writedata(GPOUT,156)
    assign avm_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID68_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_address(GPOUT,157)
    assign avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_burstcount(GPOUT,158)
    assign avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_byteenable(GPOUT,159)
    assign avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_enable(GPOUT,160)
    assign avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_read(GPOUT,161)
    assign avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_write(GPOUT,162)
    assign avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_writedata(GPOUT,163)
    assign avm_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID70_DijkstraOptimisedID_avm_writedata;

    // avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_address(GPOUT,164)
    assign avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_address = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_address;

    // avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_burstcount(GPOUT,165)
    assign avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_burstcount = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_burstcount;

    // avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_byteenable(GPOUT,166)
    assign avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_byteenable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_byteenable;

    // avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_enable(GPOUT,167)
    assign avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_enable = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_enable;

    // avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_read(GPOUT,168)
    assign avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_read = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_read;

    // avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_write(GPOUT,169)
    assign avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_write = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_write;

    // avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_writedata(GPOUT,170)
    assign avm_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_writedata = DijkstraOptimisedID_function_out_unnamed_DijkstraOptimisedID83_DijkstraOptimisedID_avm_writedata;

    // has_a_lsu_active(GPOUT,171)
    assign has_a_lsu_active = DijkstraOptimisedID_function_out_o_active_unnamed_DijkstraOptimisedID83;

    // has_a_write_pending(GPOUT,172)
    assign has_a_write_pending = DijkstraOptimisedID_function_out_o_active_unnamed_DijkstraOptimisedID83;

    // kernel_valid_in(GPOUT,173)
    assign kernel_valid_in = valid_in_pulse_q;

    // kernel_valid_out(GPOUT,174)
    assign kernel_valid_out = DijkstraOptimisedID_function_out_valid_out;

    // rst_sync(RESETSYNC,175)
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
