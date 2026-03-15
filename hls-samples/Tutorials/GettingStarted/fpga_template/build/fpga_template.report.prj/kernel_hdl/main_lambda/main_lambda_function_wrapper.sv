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

// SystemVerilog created from main_lambda_function_wrapper
// Created for function/kernel main_lambda
// SystemVerilog created on Fri Mar 13 12:05:55 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_lambda_function_wrapper (
    input wire [63:0] avm_load1_main_lambda_readdata,
    input wire [0:0] avm_load1_main_lambda_readdatavalid,
    input wire [0:0] avm_load1_main_lambda_waitrequest,
    input wire [0:0] avm_load1_main_lambda_writeack,
    input wire [63:0] avm_load2_pre_main_lambda_readdata,
    input wire [0:0] avm_load2_pre_main_lambda_readdatavalid,
    input wire [0:0] avm_load2_pre_main_lambda_waitrequest,
    input wire [0:0] avm_load2_pre_main_lambda_writeack,
    input wire [63:0] avm_load_main_lambda_readdata,
    input wire [0:0] avm_load_main_lambda_readdatavalid,
    input wire [0:0] avm_load_main_lambda_waitrequest,
    input wire [0:0] avm_load_main_lambda_writeack,
    input wire [63:0] avm_memdep_main_lambda_readdata,
    input wire [0:0] avm_memdep_main_lambda_readdatavalid,
    input wire [0:0] avm_memdep_main_lambda_waitrequest,
    input wire [0:0] avm_memdep_main_lambda_writeack,
    input wire [191:0] kernel_arguments,
    input wire [0:0] local_router_hang,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [40:0] avm_load1_main_lambda_address,
    output wire [0:0] avm_load1_main_lambda_burstcount,
    output wire [7:0] avm_load1_main_lambda_byteenable,
    output wire [0:0] avm_load1_main_lambda_enable,
    output wire [0:0] avm_load1_main_lambda_read,
    output wire [0:0] avm_load1_main_lambda_write,
    output wire [63:0] avm_load1_main_lambda_writedata,
    output wire [40:0] avm_load2_pre_main_lambda_address,
    output wire [0:0] avm_load2_pre_main_lambda_burstcount,
    output wire [7:0] avm_load2_pre_main_lambda_byteenable,
    output wire [0:0] avm_load2_pre_main_lambda_enable,
    output wire [0:0] avm_load2_pre_main_lambda_read,
    output wire [0:0] avm_load2_pre_main_lambda_write,
    output wire [63:0] avm_load2_pre_main_lambda_writedata,
    output wire [40:0] avm_load_main_lambda_address,
    output wire [0:0] avm_load_main_lambda_burstcount,
    output wire [7:0] avm_load_main_lambda_byteenable,
    output wire [0:0] avm_load_main_lambda_enable,
    output wire [0:0] avm_load_main_lambda_read,
    output wire [0:0] avm_load_main_lambda_write,
    output wire [63:0] avm_load_main_lambda_writedata,
    output wire [40:0] avm_memdep_main_lambda_address,
    output wire [0:0] avm_memdep_main_lambda_burstcount,
    output wire [7:0] avm_memdep_main_lambda_byteenable,
    output wire [0:0] avm_memdep_main_lambda_enable,
    output wire [0:0] avm_memdep_main_lambda_read,
    output wire [0:0] avm_memdep_main_lambda_write,
    output wire [63:0] avm_memdep_main_lambda_writedata,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_valid_in,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] arg_arg_a_select_b;
    wire [63:0] arg_arg_b_select_b;
    wire [63:0] arg_arg_c_select_b;
    wire [40:0] main_lambda_function_out_load1_main_lambda_avm_address;
    wire [0:0] main_lambda_function_out_load1_main_lambda_avm_burstcount;
    wire [7:0] main_lambda_function_out_load1_main_lambda_avm_byteenable;
    wire [0:0] main_lambda_function_out_load1_main_lambda_avm_enable;
    wire [0:0] main_lambda_function_out_load1_main_lambda_avm_read;
    wire [0:0] main_lambda_function_out_load1_main_lambda_avm_write;
    wire [63:0] main_lambda_function_out_load1_main_lambda_avm_writedata;
    wire [40:0] main_lambda_function_out_load2_pre_main_lambda_avm_address;
    wire [0:0] main_lambda_function_out_load2_pre_main_lambda_avm_burstcount;
    wire [7:0] main_lambda_function_out_load2_pre_main_lambda_avm_byteenable;
    wire [0:0] main_lambda_function_out_load2_pre_main_lambda_avm_enable;
    wire [0:0] main_lambda_function_out_load2_pre_main_lambda_avm_read;
    wire [0:0] main_lambda_function_out_load2_pre_main_lambda_avm_write;
    wire [63:0] main_lambda_function_out_load2_pre_main_lambda_avm_writedata;
    wire [40:0] main_lambda_function_out_load_main_lambda_avm_address;
    wire [0:0] main_lambda_function_out_load_main_lambda_avm_burstcount;
    wire [7:0] main_lambda_function_out_load_main_lambda_avm_byteenable;
    wire [0:0] main_lambda_function_out_load_main_lambda_avm_enable;
    wire [0:0] main_lambda_function_out_load_main_lambda_avm_read;
    wire [0:0] main_lambda_function_out_load_main_lambda_avm_write;
    wire [63:0] main_lambda_function_out_load_main_lambda_avm_writedata;
    wire [40:0] main_lambda_function_out_memdep_main_lambda_avm_address;
    wire [0:0] main_lambda_function_out_memdep_main_lambda_avm_burstcount;
    wire [7:0] main_lambda_function_out_memdep_main_lambda_avm_byteenable;
    wire [0:0] main_lambda_function_out_memdep_main_lambda_avm_enable;
    wire [0:0] main_lambda_function_out_memdep_main_lambda_avm_read;
    wire [0:0] main_lambda_function_out_memdep_main_lambda_avm_write;
    wire [63:0] main_lambda_function_out_memdep_main_lambda_avm_writedata;
    wire [0:0] main_lambda_function_out_o_active_memdep;
    wire [0:0] main_lambda_function_out_valid_out;
    wire [0:0] valid_in_pulse_q;
    reg [0:0] valid_pulse_reg1_NO_SHIFT_REG_q;
    reg [0:0] valid_pulse_reg2_NO_SHIFT_REG_q;
    reg [0:0] rst_sync_rst_sclrn;


    // valid_pulse_reg2_NO_SHIFT_REG(REG,12)
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

    // valid_pulse_reg1_NO_SHIFT_REG(REG,11)
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

    // valid_in_pulse(LOGICAL,10)
    assign valid_in_pulse_q = valid_pulse_reg1_NO_SHIFT_REG_q & valid_pulse_reg2_NO_SHIFT_REG_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // arg_arg_c_select(BITSELECT,4)
    assign arg_arg_c_select_b = kernel_arguments[63:0];

    // arg_arg_b_select(BITSELECT,3)
    assign arg_arg_b_select_b = kernel_arguments[191:128];

    // arg_arg_a_select(BITSELECT,2)
    assign arg_arg_a_select_b = kernel_arguments[127:64];

    // main_lambda_function(BLACKBOX,9)
    main_lambda_function themain_lambda_function (
        .in_arg_arg_a(arg_arg_a_select_b),
        .in_arg_arg_b(arg_arg_b_select_b),
        .in_arg_arg_c(arg_arg_c_select_b),
        .in_load1_main_lambda_avm_readdata(avm_load1_main_lambda_readdata),
        .in_load1_main_lambda_avm_readdatavalid(avm_load1_main_lambda_readdatavalid),
        .in_load1_main_lambda_avm_waitrequest(avm_load1_main_lambda_waitrequest),
        .in_load1_main_lambda_avm_writeack(avm_load1_main_lambda_writeack),
        .in_load2_pre_main_lambda_avm_readdata(avm_load2_pre_main_lambda_readdata),
        .in_load2_pre_main_lambda_avm_readdatavalid(avm_load2_pre_main_lambda_readdatavalid),
        .in_load2_pre_main_lambda_avm_waitrequest(avm_load2_pre_main_lambda_waitrequest),
        .in_load2_pre_main_lambda_avm_writeack(avm_load2_pre_main_lambda_writeack),
        .in_load_main_lambda_avm_readdata(avm_load_main_lambda_readdata),
        .in_load_main_lambda_avm_readdatavalid(avm_load_main_lambda_readdatavalid),
        .in_load_main_lambda_avm_waitrequest(avm_load_main_lambda_waitrequest),
        .in_load_main_lambda_avm_writeack(avm_load_main_lambda_writeack),
        .in_memdep_main_lambda_avm_readdata(avm_memdep_main_lambda_readdata),
        .in_memdep_main_lambda_avm_readdatavalid(avm_memdep_main_lambda_readdatavalid),
        .in_memdep_main_lambda_avm_waitrequest(avm_memdep_main_lambda_waitrequest),
        .in_memdep_main_lambda_avm_writeack(avm_memdep_main_lambda_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_valid_in(valid_in_pulse_q),
        .out_load1_main_lambda_avm_address(main_lambda_function_out_load1_main_lambda_avm_address),
        .out_load1_main_lambda_avm_burstcount(main_lambda_function_out_load1_main_lambda_avm_burstcount),
        .out_load1_main_lambda_avm_byteenable(main_lambda_function_out_load1_main_lambda_avm_byteenable),
        .out_load1_main_lambda_avm_enable(main_lambda_function_out_load1_main_lambda_avm_enable),
        .out_load1_main_lambda_avm_read(main_lambda_function_out_load1_main_lambda_avm_read),
        .out_load1_main_lambda_avm_write(main_lambda_function_out_load1_main_lambda_avm_write),
        .out_load1_main_lambda_avm_writedata(main_lambda_function_out_load1_main_lambda_avm_writedata),
        .out_load2_pre_main_lambda_avm_address(main_lambda_function_out_load2_pre_main_lambda_avm_address),
        .out_load2_pre_main_lambda_avm_burstcount(main_lambda_function_out_load2_pre_main_lambda_avm_burstcount),
        .out_load2_pre_main_lambda_avm_byteenable(main_lambda_function_out_load2_pre_main_lambda_avm_byteenable),
        .out_load2_pre_main_lambda_avm_enable(main_lambda_function_out_load2_pre_main_lambda_avm_enable),
        .out_load2_pre_main_lambda_avm_read(main_lambda_function_out_load2_pre_main_lambda_avm_read),
        .out_load2_pre_main_lambda_avm_write(main_lambda_function_out_load2_pre_main_lambda_avm_write),
        .out_load2_pre_main_lambda_avm_writedata(main_lambda_function_out_load2_pre_main_lambda_avm_writedata),
        .out_load_main_lambda_avm_address(main_lambda_function_out_load_main_lambda_avm_address),
        .out_load_main_lambda_avm_burstcount(main_lambda_function_out_load_main_lambda_avm_burstcount),
        .out_load_main_lambda_avm_byteenable(main_lambda_function_out_load_main_lambda_avm_byteenable),
        .out_load_main_lambda_avm_enable(main_lambda_function_out_load_main_lambda_avm_enable),
        .out_load_main_lambda_avm_read(main_lambda_function_out_load_main_lambda_avm_read),
        .out_load_main_lambda_avm_write(main_lambda_function_out_load_main_lambda_avm_write),
        .out_load_main_lambda_avm_writedata(main_lambda_function_out_load_main_lambda_avm_writedata),
        .out_memdep_main_lambda_avm_address(main_lambda_function_out_memdep_main_lambda_avm_address),
        .out_memdep_main_lambda_avm_burstcount(main_lambda_function_out_memdep_main_lambda_avm_burstcount),
        .out_memdep_main_lambda_avm_byteenable(main_lambda_function_out_memdep_main_lambda_avm_byteenable),
        .out_memdep_main_lambda_avm_enable(main_lambda_function_out_memdep_main_lambda_avm_enable),
        .out_memdep_main_lambda_avm_read(main_lambda_function_out_memdep_main_lambda_avm_read),
        .out_memdep_main_lambda_avm_write(main_lambda_function_out_memdep_main_lambda_avm_write),
        .out_memdep_main_lambda_avm_writedata(main_lambda_function_out_memdep_main_lambda_avm_writedata),
        .out_o_active_memdep(main_lambda_function_out_o_active_memdep),
        .out_stall_out(),
        .out_valid_out(main_lambda_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_load1_main_lambda_address(GPOUT,35)
    assign avm_load1_main_lambda_address = main_lambda_function_out_load1_main_lambda_avm_address;

    // avm_load1_main_lambda_burstcount(GPOUT,36)
    assign avm_load1_main_lambda_burstcount = main_lambda_function_out_load1_main_lambda_avm_burstcount;

    // avm_load1_main_lambda_byteenable(GPOUT,37)
    assign avm_load1_main_lambda_byteenable = main_lambda_function_out_load1_main_lambda_avm_byteenable;

    // avm_load1_main_lambda_enable(GPOUT,38)
    assign avm_load1_main_lambda_enable = main_lambda_function_out_load1_main_lambda_avm_enable;

    // avm_load1_main_lambda_read(GPOUT,39)
    assign avm_load1_main_lambda_read = main_lambda_function_out_load1_main_lambda_avm_read;

    // avm_load1_main_lambda_write(GPOUT,40)
    assign avm_load1_main_lambda_write = main_lambda_function_out_load1_main_lambda_avm_write;

    // avm_load1_main_lambda_writedata(GPOUT,41)
    assign avm_load1_main_lambda_writedata = main_lambda_function_out_load1_main_lambda_avm_writedata;

    // avm_load2_pre_main_lambda_address(GPOUT,42)
    assign avm_load2_pre_main_lambda_address = main_lambda_function_out_load2_pre_main_lambda_avm_address;

    // avm_load2_pre_main_lambda_burstcount(GPOUT,43)
    assign avm_load2_pre_main_lambda_burstcount = main_lambda_function_out_load2_pre_main_lambda_avm_burstcount;

    // avm_load2_pre_main_lambda_byteenable(GPOUT,44)
    assign avm_load2_pre_main_lambda_byteenable = main_lambda_function_out_load2_pre_main_lambda_avm_byteenable;

    // avm_load2_pre_main_lambda_enable(GPOUT,45)
    assign avm_load2_pre_main_lambda_enable = main_lambda_function_out_load2_pre_main_lambda_avm_enable;

    // avm_load2_pre_main_lambda_read(GPOUT,46)
    assign avm_load2_pre_main_lambda_read = main_lambda_function_out_load2_pre_main_lambda_avm_read;

    // avm_load2_pre_main_lambda_write(GPOUT,47)
    assign avm_load2_pre_main_lambda_write = main_lambda_function_out_load2_pre_main_lambda_avm_write;

    // avm_load2_pre_main_lambda_writedata(GPOUT,48)
    assign avm_load2_pre_main_lambda_writedata = main_lambda_function_out_load2_pre_main_lambda_avm_writedata;

    // avm_load_main_lambda_address(GPOUT,49)
    assign avm_load_main_lambda_address = main_lambda_function_out_load_main_lambda_avm_address;

    // avm_load_main_lambda_burstcount(GPOUT,50)
    assign avm_load_main_lambda_burstcount = main_lambda_function_out_load_main_lambda_avm_burstcount;

    // avm_load_main_lambda_byteenable(GPOUT,51)
    assign avm_load_main_lambda_byteenable = main_lambda_function_out_load_main_lambda_avm_byteenable;

    // avm_load_main_lambda_enable(GPOUT,52)
    assign avm_load_main_lambda_enable = main_lambda_function_out_load_main_lambda_avm_enable;

    // avm_load_main_lambda_read(GPOUT,53)
    assign avm_load_main_lambda_read = main_lambda_function_out_load_main_lambda_avm_read;

    // avm_load_main_lambda_write(GPOUT,54)
    assign avm_load_main_lambda_write = main_lambda_function_out_load_main_lambda_avm_write;

    // avm_load_main_lambda_writedata(GPOUT,55)
    assign avm_load_main_lambda_writedata = main_lambda_function_out_load_main_lambda_avm_writedata;

    // avm_memdep_main_lambda_address(GPOUT,56)
    assign avm_memdep_main_lambda_address = main_lambda_function_out_memdep_main_lambda_avm_address;

    // avm_memdep_main_lambda_burstcount(GPOUT,57)
    assign avm_memdep_main_lambda_burstcount = main_lambda_function_out_memdep_main_lambda_avm_burstcount;

    // avm_memdep_main_lambda_byteenable(GPOUT,58)
    assign avm_memdep_main_lambda_byteenable = main_lambda_function_out_memdep_main_lambda_avm_byteenable;

    // avm_memdep_main_lambda_enable(GPOUT,59)
    assign avm_memdep_main_lambda_enable = main_lambda_function_out_memdep_main_lambda_avm_enable;

    // avm_memdep_main_lambda_read(GPOUT,60)
    assign avm_memdep_main_lambda_read = main_lambda_function_out_memdep_main_lambda_avm_read;

    // avm_memdep_main_lambda_write(GPOUT,61)
    assign avm_memdep_main_lambda_write = main_lambda_function_out_memdep_main_lambda_avm_write;

    // avm_memdep_main_lambda_writedata(GPOUT,62)
    assign avm_memdep_main_lambda_writedata = main_lambda_function_out_memdep_main_lambda_avm_writedata;

    // has_a_lsu_active(GPOUT,63)
    assign has_a_lsu_active = main_lambda_function_out_o_active_memdep;

    // has_a_write_pending(GPOUT,64)
    assign has_a_write_pending = main_lambda_function_out_o_active_memdep;

    // kernel_valid_in(GPOUT,65)
    assign kernel_valid_in = valid_in_pulse_q;

    // kernel_valid_out(GPOUT,66)
    assign kernel_valid_out = main_lambda_function_out_valid_out;

    // rst_sync(RESETSYNC,67)
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
