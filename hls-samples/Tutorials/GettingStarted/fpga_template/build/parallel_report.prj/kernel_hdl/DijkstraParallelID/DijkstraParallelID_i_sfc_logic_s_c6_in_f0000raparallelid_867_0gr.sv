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

// SystemVerilog created from i_sfc_logic_s_c6_in_for_cond_cleanup4_i_dijkstraparallelids_c6_enter_dijkstraparallelid_867_0gr
// Created for function/kernel DijkstraParallelID
// SystemVerilog created on Wed Mar 18 10:43:59 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraParallelID_i_sfc_logic_s_c6_in_f0000raparallelid_867_0gr (
    input wire [63:0] in_arg_dist,
    output wire [0:0] out_c6_exi2_0_tpl,
    output wire [63:0] out_c6_exi2_1_tpl,
    output wire [63:0] out_c6_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraParallelID7,
    input wire [0:0] in_c6_eni1_0_tpl,
    input wire [63:0] in_c6_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1_q;
    wire [63:0] i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_join_q;
    wire [61:0] i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_select_63_b;
    wire [61:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b;
    wire [63:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_dupName_0_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [61:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [0:0] redist0_sync_together_870_10_aunroll_x_in_i_valid_222_q;
    reg [61:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_inputreg0_q;
    reg [61:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_outputreg0_q;
    wire redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_reset0;
    wire [61:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_ia;
    wire [7:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_aa;
    wire [7:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_ab;
    wire [61:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_iq;
    wire [61:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_q;
    wire [7:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [7:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_i = 8'b11111111;
    wire [7:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_offset_q;
    wire [8:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_a;
    wire [8:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_b;
    logic [8:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_o;
    wire [8:0] redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist0_sync_together_870_10_aunroll_x_in_i_valid_222(DELAY,35)
    dspba_delay_ver #( .width(1), .depth(222), .reset_kind("SYNC"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist0_sync_together_870_10_aunroll_x_in_i_valid_222 ( .xin(in_i_valid), .xout(redist0_sync_together_870_10_aunroll_x_in_i_valid_222_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,25)@227 + 1
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= redist0_sync_together_870_10_aunroll_x_in_i_valid_222_q;
        end
    end

    // valid_fanout_reg2(REG,27)@227 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= redist0_sync_together_870_10_aunroll_x_in_i_valid_222_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr(BLACKBOX,7)@0
    // in in_i_dependence@228
    // in in_valid_in@228
    // out out_buffer_out@228
    // out out_valid_out@228
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_889_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_select_63(BITSELECT,10)@228
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_out_buffer_out[63:2];

    // i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1(CONSTANT,4)
    assign i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1_q = 2'b00;

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_join(BITJOIN,9)@228
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_select_63_b, i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1_q};

    // redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_offset(CONSTANT,41)
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_offset_q = 8'b00100110;

    // redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt(ADD,42)
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_a = {1'b0, redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_q};
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_b = {1'b0, redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_o <= $unsigned(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_a) + $unsigned(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_b);
        end
    end
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_q = redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_o[8:0];

    // i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x(BITSELECT,19)@5
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b = in_c6_eni1_1_tpl[61:0];

    // redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_inputreg0(DELAY,37)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_inputreg0_q <= i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b;
        end
    end

    // redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr(COUNTER,40)
    // low=0, high=255, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_i <= $unsigned(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_i) + $unsigned(8'd1);
        end
    end
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_q = $signed(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_i[7:0]);

    // redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem(DUALMEM,39)
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_ia = $unsigned(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_inputreg0_q);
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_aa = redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_wraddr_q;
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_ab = redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_rdcnt_q[7:0];
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(62),
        .widthad_a(8),
        .numwords_a(256),
        .width_b(62),
        .widthad_b(8),
        .numwords_b(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_aa),
        .data_a(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_ab),
        .q_b(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_q = $signed(redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_iq[61:0]);

    // redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_outputreg0(DELAY,38)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_outputreg0_q <= redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_mem_q;
        end
    end

    // i_arrayidx31_i_dijkstraparallelid_880_0gr_shift_join_x(BITJOIN,20)@228
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_shift_join_x_q = {redist1_i_arrayidx31_i_dijkstraparallelid_880_0gr_narrow_x_b_223_outputreg0_q, i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1_q};

    // i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,33)@228
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx31_i_dijkstraparallelid_880_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg1(REG,26)@227 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= redist0_sync_together_870_10_aunroll_x_in_i_valid_222_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr(BLACKBOX,11)@0
    // in in_i_dependence@228
    // in in_valid_in@228
    // out out_buffer_out@228
    // out out_valid_out@228
    DijkstraParallelID_i_llvm_fpga_sync_buff0000raparallelid_875_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_select_63(BITSELECT,14)@228
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_join(BITJOIN,13)@228
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_select_63_b, i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1_q};

    // i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_lhsMSBs_select(BITSELECT,30)@228
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer186_dijkstraparallelid_870_2gr_vt_join_q[63:2]);

    // i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums(ADD,31)@228
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_split_join(BITJOIN,32)@228
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_split_join_q = {i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_MSBs_sums_q, i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1_q};

    // i_arrayidx31_i_dijkstraparallelid_880_0gr_dupName_0_trunc_sel_x(BITSELECT,22)@228
    assign i_arrayidx31_i_dijkstraparallelid_880_0gr_dupName_0_trunc_sel_x_b = i_arrayidx31_i_dijkstraparallelid_880_0gr_add_x_split_join_q[63:0];

    // i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_select_63(BITSELECT,6)@228
    assign i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_select_63_b = i_arrayidx31_i_dijkstraparallelid_880_0gr_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_join(BITJOIN,5)@228
    assign i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_join_q = {i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_select_63_b, i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_21_aunroll_x(GPOUT,23)@228
    assign out_c6_exi2_0_tpl = GND_q;
    assign out_c6_exi2_1_tpl = i_arrayidx31_i_dijkstraparallelid_870_3gr_vt_join_q;
    assign out_c6_exi2_2_tpl = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer175_dijkstraparallelid_870_4gr_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraParallelID7 = GND_q;

endmodule
