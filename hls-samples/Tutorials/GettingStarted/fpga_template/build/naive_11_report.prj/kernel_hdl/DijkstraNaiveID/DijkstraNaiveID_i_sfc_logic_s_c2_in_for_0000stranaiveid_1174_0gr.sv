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

// SystemVerilog created from i_sfc_logic_s_c2_in_for_body19_i_dijkstranaiveids_c2_enter124_dijkstranaiveid_1174_0gr
// Created for function/kernel DijkstraNaiveID
// SystemVerilog created on Wed Mar 18 09:45:29 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraNaiveID_i_sfc_logic_s_c2_in_for_0000stranaiveid_1174_0gr (
    input wire [63:0] in_arg_dist,
    output wire [0:0] out_c2_exi2_0_tpl,
    output wire [63:0] out_c2_exi2_1_tpl,
    output wire [63:0] out_c2_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraNaiveID0,
    input wire [0:0] in_c2_eni4123_0_tpl,
    input wire [63:0] in_c2_eni4123_1_tpl,
    input wire [0:0] in_c2_eni4123_2_tpl,
    input wire [63:0] in_c2_eni4123_3_tpl,
    input wire [0:0] in_c2_eni4123_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_const_1_q;
    wire [63:0] i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_join_q;
    wire [61:0] i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b;
    wire [63:0] i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_feedback_stall_out_22;
    wire [63:0] i_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr_out_feedback_valid_out_22;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_select_63_b;
    wire [61:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x_b;
    wire [63:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_dupName_0_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    wire [61:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_lhsMSBs_select_b;
    wire [62:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_a;
    wire [62:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_b;
    logic [62:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_o;
    wire [62:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_q;
    wire [64:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_split_join_q;
    wire [61:0] i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [63:0] redist0_sync_together_1177_14_aunroll_x_in_c2_eni4123_1_tpl_1_q;
    reg [0:0] redist1_sync_together_1177_14_aunroll_x_in_c2_eni4123_2_tpl_1_q;
    reg [0:0] redist2_sync_together_1177_14_aunroll_x_in_c2_eni4123_4_tpl_1_q;
    reg [0:0] redist3_sync_together_1177_14_aunroll_x_in_i_valid_70_q;
    reg [61:0] redist4_i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x_b_1_q;
    reg [63:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_inputreg0_q;
    reg [63:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_outputreg0_q;
    wire redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_reset0;
    wire [63:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_ia;
    wire [6:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_aa;
    wire [6:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_ab;
    wire [63:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_iq;
    wire [63:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_q;
    wire [6:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [6:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_i = 7'b1111111;
    wire [6:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_offset_q;
    wire [7:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_a;
    wire [7:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_b;
    logic [7:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_o;
    wire [7:0] redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_q;
    reg [61:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_inputreg0_q;
    reg [61:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_outputreg0_q;
    wire redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_reset0;
    wire [61:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_ia;
    wire [6:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_aa;
    wire [6:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_ab;
    wire [61:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_iq;
    wire [61:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_q;
    wire [6:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [6:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_i = 7'b1111111;
    wire [7:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_a;
    wire [7:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_b;
    logic [7:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_o;
    wire [7:0] redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist3_sync_together_1177_14_aunroll_x_in_i_valid_70(DELAY,38)
    dspba_delay_ver #( .width(1), .depth(70), .reset_kind("SYNC"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist3_sync_together_1177_14_aunroll_x_in_i_valid_70 ( .xin(in_i_valid), .xout(redist3_sync_together_1177_14_aunroll_x_in_i_valid_70_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,24)@156 + 1
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= redist3_sync_together_1177_14_aunroll_x_in_i_valid_70_q;
        end
    end

    // redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_offset(CONSTANT,46)
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_offset_q = 7'b0111111;

    // redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt(ADD,53)
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_a = {1'b0, redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_q};
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_b = {1'b0, redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_o <= $unsigned(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_a) + $unsigned(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_b);
        end
    end
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_q = redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_o[7:0];

    // i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x(BITSELECT,18)@86
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x_b = in_c2_eni4123_3_tpl[61:0];

    // redist4_i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x_b_1(DELAY,39)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x_b_1_q <= i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x_b;
        end
    end

    // i_arrayidx40_i_dijkstranaiveid_1194_0gr_shift_join_x(BITJOIN,19)@87
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_shift_join_x_q = {redist4_i_arrayidx40_i_dijkstranaiveid_1194_0gr_narrow_x_b_1_q, i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_const_1_q};

    // i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,33)@87
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx40_i_dijkstranaiveid_1194_0gr_shift_join_x_q[63:2]);

    // valid_fanout_reg2(REG,26)@86 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr(BLACKBOX,10)@0
    // in in_i_dependence@87
    // in in_valid_in@87
    // out out_buffer_out@87
    // out out_valid_out@87
    DijkstraNaiveID_i_llvm_fpga_sync_buffer_0000stranaiveid_1189_0gr thei_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr (
        .in_buffer_in(in_arg_dist),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_select_63(BITSELECT,13)@87
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_out_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_join(BITJOIN,12)@87
    assign i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_join_q = {i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_select_63_b, i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_const_1_q};

    // i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_lhsMSBs_select(BITSELECT,30)@87
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_lhsMSBs_select_b = $signed(i_llvm_fpga_sync_buffer_p1024_arg_dist_sync_buffer37_dijkstranaiveid_1177_3gr_vt_join_q[63:2]);

    // i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums(ADD,31)@87
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_a = {1'b0, i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_lhsMSBs_select_b};
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_b = {1'b0, i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_rhsMSBs_select_bit_select_merged_b};
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_o = $unsigned(i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_a) + $unsigned(i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_b);
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_q = $signed(i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_o[62:0]);

    // i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_split_join(BITJOIN,32)@87
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_split_join_q = {i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_MSBs_sums_q, i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_const_1_q};

    // i_arrayidx40_i_dijkstranaiveid_1194_0gr_dupName_0_trunc_sel_x(BITSELECT,21)@87
    assign i_arrayidx40_i_dijkstranaiveid_1194_0gr_dupName_0_trunc_sel_x_b = i_arrayidx40_i_dijkstranaiveid_1194_0gr_add_x_split_join_q[63:0];

    // i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63(BITSELECT,7)@87
    assign i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b = i_arrayidx40_i_dijkstranaiveid_1194_0gr_dupName_0_trunc_sel_x_b[63:2];

    // redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_inputreg0(DELAY,48)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_inputreg0_q <= i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b;
        end
    end

    // redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr(COUNTER,51)
    // low=0, high=127, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_i <= $unsigned(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_i) + $unsigned(7'd1);
        end
    end
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_q = $signed(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_i[6:0]);

    // redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem(DUALMEM,50)
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_ia = $unsigned(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_inputreg0_q);
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_aa = redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_wraddr_q;
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_ab = redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_rdcnt_q[6:0];
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(62),
        .widthad_a(7),
        .numwords_a(128),
        .width_b(62),
        .widthad_b(7),
        .numwords_b(128),
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
    ) redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_aa),
        .data_a(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_ab),
        .q_b(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_iq),
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
    assign redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_q = $signed(redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_iq[61:0]);

    // redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_outputreg0(DELAY,49)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_outputreg0_q <= redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_mem_q;
        end
    end

    // i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_const_1(CONSTANT,5)
    assign i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_const_1_q = 2'b00;

    // i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_join(BITJOIN,6)@157
    assign i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_join_q = {redist6_i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_select_63_b_70_outputreg0_q, i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_const_1_q};

    // redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt(ADD,47)
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_a = {1'b0, redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_q};
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_b = {1'b0, redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_offset_q};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_o <= $unsigned(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_a) + $unsigned(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_b);
        end
    end
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_q = redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_o[7:0];

    // valid_fanout_reg1(REG,25)@86 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg3(REG,27)@86 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= in_i_valid;
        end
    end

    // redist2_sync_together_1177_14_aunroll_x_in_c2_eni4123_4_tpl_1(DELAY,37)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_1177_14_aunroll_x_in_c2_eni4123_4_tpl_1_q <= in_c2_eni4123_4_tpl;
        end
    end

    // i_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr(BLACKBOX,9)@87
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    DijkstraNaiveID_i_llvm_fpga_push_p1024_a0000stranaiveid_1203_0gr thei_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr (
        .in_c2_ene4128(redist2_sync_together_1177_14_aunroll_x_in_c2_eni4123_4_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together_1177_14_aunroll_x_in_c2_eni4123_2_tpl_1(DELAY,36)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_1177_14_aunroll_x_in_c2_eni4123_2_tpl_1_q <= in_c2_eni4123_2_tpl;
        end
    end

    // redist0_sync_together_1177_14_aunroll_x_in_c2_eni4123_1_tpl_1(DELAY,35)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_1177_14_aunroll_x_in_c2_eni4123_1_tpl_1_q <= in_c2_eni4123_1_tpl;
        end
    end

    // i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr(BLACKBOX,8)@87
    // out out_feedback_stall_out_22@20000000
    DijkstraNaiveID_i_llvm_fpga_pop_p1024_ar0000stranaiveid_1182_0gr thei_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr (
        .in_data_in(redist0_sync_together_1177_14_aunroll_x_in_c2_eni4123_1_tpl_1_q),
        .in_dir(redist1_sync_together_1177_14_aunroll_x_in_c2_eni4123_2_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_p1024_arrayidx31_i59_push22_dijkstranaiveid_1177_5gr_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_inputreg0(DELAY,42)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_inputreg0_q <= i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out;
        end
    end

    // redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr(COUNTER,45)
    // low=0, high=127, step=1, init=0
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_i <= $unsigned(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_i) + $unsigned(7'd1);
        end
    end
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_q = $signed(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_i[6:0]);

    // redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem(DUALMEM,44)
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_ia = $unsigned(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_inputreg0_q);
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_aa = redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_wraddr_q;
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_ab = redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_rdcnt_q[6:0];
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(7),
        .numwords_a(128),
        .width_b(64),
        .widthad_b(7),
        .numwords_b(128),
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
    ) redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_aa),
        .data_a(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_ab),
        .q_b(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_iq),
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
    assign redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_q = $signed(redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_iq[63:0]);

    // redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_outputreg0(DELAY,43)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_outputreg0_q <= redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_mem_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_9_aunroll_x(GPOUT,22)@157
    assign out_c2_exi2_0_tpl = GND_q;
    assign out_c2_exi2_1_tpl = redist5_i_llvm_fpga_pop_p1024_arrayidx31_i59_pop22_dijkstranaiveid_1177_2gr_out_data_out_70_outputreg0_q;
    assign out_c2_exi2_2_tpl = i_arrayidx40_i_dijkstranaiveid_1177_4gr_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraNaiveID0 = GND_q;

endmodule
