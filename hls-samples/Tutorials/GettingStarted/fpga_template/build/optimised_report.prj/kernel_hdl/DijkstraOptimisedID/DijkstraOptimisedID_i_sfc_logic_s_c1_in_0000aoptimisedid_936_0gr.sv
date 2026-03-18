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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body5_i_dijkstraoptimisedids_c1_enter_dijkstraoptimisedid_936_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c1_in_0000aoptimisedid_936_0gr (
    input wire [31:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest,
    input wire [0:0] in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid,
    output wire [31:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write,
    output wire [31:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata,
    output wire [3:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable,
    output wire [0:0] out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraOptimisedID23_0_tpl,
    output wire [0:0] out_unnamed_DijkstraOptimisedID24,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [0:0] in_c1_eni5_2_tpl,
    input wire [31:0] in_c1_eni5_3_tpl,
    input wire [31:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_const_1_q;
    wire [63:0] i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_join_q;
    wire [61:0] i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_select_63_b;
    wire [31:0] i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_const_63_q;
    wire [63:0] i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_join_q;
    wire [31:0] i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_select_31_b;
    wire [63:0] i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_join_q;
    wire [31:0] i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_select_31_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;
    wire [63:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_append_upper_bits_x_q;
    wire [6:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_narrow_x_b;
    wire [8:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_shift_join_x_q;
    wire [17:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_extender_x_q;
    wire [2:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_multconst_x_q;
    wire [8:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom6_i_dijkstraoptimisedid_939_3gr_sel_x_b;
    wire [63:0] i_idxprom8_i_dijkstraoptimisedid_939_4gr_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_q;
    wire [0:0] i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_valid;
    wire i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_stall;
    wire i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    wire [54:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_upper_bits_x_b_const_q;
    wire [9:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_add_x_bit_select_b;
    wire [1:0] lowRangeB_uid77_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in;
    wire [1:0] lowRangeB_uid77_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b;
    wire [6:0] highBBits_uid78_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b;
    wire [9:0] addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_a;
    wire [9:0] addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b;
    logic [9:0] addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_o;
    wire [9:0] addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q;
    wire [11:0] add_uid80_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q;
    wire [0:0] lowRangeB_uid82_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in;
    wire [0:0] lowRangeB_uid82_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b;
    wire [7:0] highBBits_uid83_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b;
    wire [12:0] a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_a;
    wire [12:0] a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b;
    logic [12:0] a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_o;
    wire [12:0] a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q;
    wire [13:0] a_subconst_11_uid85_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q;
    wire [12:0] sR_bottomRange_uid89_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in;
    wire [12:0] sR_bottomRange_uid89_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b;
    wire [14:0] sR_mergedSignalTM_uid90_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q;
    wire [6:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b;
    wire [7:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_a;
    wire [7:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_b;
    logic [7:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_o;
    wire [7:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_q;
    wire [9:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_split_join_q;
    wire [6:0] i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged_b;
    reg [6:0] redist0_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged_b_1_q;
    reg [6:0] redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_q;
    reg [6:0] redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_delay_0;
    reg [6:0] redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_delay_1;
    reg [31:0] redist2_sync_together_939_16_aunroll_x_in_c1_eni5_1_tpl_1_q;
    reg [0:0] redist3_sync_together_939_16_aunroll_x_in_c1_eni5_2_tpl_1_q;
    reg [31:0] redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_q;
    reg [31:0] redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_delay_0;
    reg [31:0] redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_delay_1;
    reg [0:0] redist5_sync_together_939_16_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_together_939_16_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist6_sync_together_939_16_aunroll_x_in_i_valid_3_q;
    reg [8:0] redist7_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3(DELAY,135)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_delay_0 <= $unsigned(in_c1_eni5_4_tpl);
            redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_delay_1 <= redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_delay_0;
            redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_q <= $signed(redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_delay_1);
        end
    end

    // redist5_sync_together_939_16_aunroll_x_in_i_valid_2(DELAY,136)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together_939_16_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist5_sync_together_939_16_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together_939_16_aunroll_x_in_i_valid_2_q <= $signed(redist5_sync_together_939_16_aunroll_x_in_i_valid_2_delay_0);
        end
    end

    // valid_fanout_reg2(REG,58)@547 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= redist5_sync_together_939_16_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_upper_bits_x_b_const(CONSTANT,62)
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_upper_bits_x_b_const_q = 55'b0100000001000001000000000000000000000000000000000000000;

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_multconst_x(CONSTANT,41)
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_multconst_x_q = 3'b000;

    // i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_const_63(CONSTANT,15)
    assign i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_const_63_q = 32'b00000000000000000000000000000000;

    // redist2_sync_together_939_16_aunroll_x_in_c1_eni5_1_tpl_1(DELAY,133)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together_939_16_aunroll_x_in_c1_eni5_1_tpl_1_q <= in_c1_eni5_1_tpl;
        end
    end

    // valid_fanout_reg4(REG,60)@545 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= in_i_valid;
        end
    end

    // valid_fanout_reg3(REG,59)@545 + 1
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

    // i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x(FIFODELAY,51)@546 + 1
    // out o_data@546
    assign i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_stall = ~ (valid_fanout_reg4_q & VCC_q);
    assign i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_valid = valid_fanout_reg3_q & VCC_q;
    assign i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_data = i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_q;
    assign i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_valid[0];
    assign i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0)
    ) thei_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x (
        .i_valid(i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together_939_16_aunroll_x_in_c1_eni5_2_tpl_1(DELAY,134)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together_939_16_aunroll_x_in_c1_eni5_2_tpl_1_q <= in_c1_eni5_2_tpl;
        end
    end

    // i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x(MUX,50)@546
    assign i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_s = redist3_sync_together_939_16_aunroll_x_in_c1_eni5_2_tpl_1_q;
    always_comb 
    begin
        unique case (i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_q = i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_0gr_i_llvm_fpga_push_i32_push89_dijkstraoptimisedid_982_1gr_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_q = redist2_sync_together_939_16_aunroll_x_in_c1_eni5_1_tpl_1_q;
            default : i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom6_i_dijkstraoptimisedid_939_3gr_sel_x(BITSELECT,48)@546
    assign i_idxprom6_i_dijkstraoptimisedid_939_3gr_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_944_0gr_i_llvm_fpga_pop_i32_pop89_dijkstraoptimisedid_939_2gr_mux_x_q[31:0]};

    // i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_select_31(BITSELECT,17)@546
    assign i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_select_31_b = i_idxprom6_i_dijkstraoptimisedid_939_3gr_sel_x_b[31:0];

    // i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_join(BITJOIN,16)@546
    assign i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_join_q = {i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_const_63_q, i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_select_31_b};

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x(BITSELECT,43)@546
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b = i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_join_q[8:0];

    // redist7_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b_1(DELAY,138)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b_1_q <= i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b;
        end
    end

    // highBBits_uid83_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITSELECT,82)@547
    assign highBBits_uid83_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b = $signed(redist7_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b_1_q[8:1]);

    // highBBits_uid78_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITSELECT,77)@546
    assign highBBits_uid78_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b = $signed(i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b[8:2]);

    // addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(ADD,78)@546 + 1
    assign addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_a = {1'b0, i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b = {3'b000, highBBits_uid78_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b};
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_o <= $unsigned(addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_a) + $unsigned(addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b);
        end
    end
    assign addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q = $signed(addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_o[9:0]);

    // lowRangeB_uid77_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITSELECT,76)@547
    assign lowRangeB_uid77_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in = redist7_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b_1_q[1:0];
    assign lowRangeB_uid77_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b = $signed(lowRangeB_uid77_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in[1:0]);

    // add_uid80_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITJOIN,79)@547
    assign add_uid80_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q = {addsumAHighB_uid79_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q, lowRangeB_uid77_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b};

    // a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(ADD,83)@547
    assign a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_a = {1'b0, add_uid80_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q};
    assign a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b = {5'b00000, highBBits_uid83_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b};
    assign a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_o = $unsigned(a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_a) + $unsigned(a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b);
    assign a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q = $signed(a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_o[12:0]);

    // lowRangeB_uid82_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITSELECT,81)@547
    assign lowRangeB_uid82_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in = redist7_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_trunc_sel_x_b_1_q[0:0];
    assign lowRangeB_uid82_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b = $signed(lowRangeB_uid82_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in[0:0]);

    // a_subconst_11_uid85_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITJOIN,84)@547
    assign a_subconst_11_uid85_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q = {a_subconst_11_sumAHighB_uid84_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q, lowRangeB_uid82_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b};

    // sR_bottomRange_uid89_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITSELECT,88)@547
    assign sR_bottomRange_uid89_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in = a_subconst_11_uid85_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q[12:0];
    assign sR_bottomRange_uid89_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b = $signed(sR_bottomRange_uid89_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_in[12:0]);

    // sR_mergedSignalTM_uid90_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x(BITJOIN,89)@547
    assign sR_mergedSignalTM_uid90_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q = {sR_bottomRange_uid89_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_b, i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_const_1_q};

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_extender_x(BITJOIN,40)@547
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_extender_x_q = {i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_multconst_x_q, sR_mergedSignalTM_uid90_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_x_q};

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_1_trunc_sel_x(BITSELECT,44)@547
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_1_trunc_sel_x_b = i_arrayidx9_i_dijkstraoptimisedid_950_0gr_mult_extender_x_q[8:0];

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_add_x_bit_select(BITSELECT,67)@547
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_add_x_bit_select_b = $signed({1'b0, i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_1_trunc_sel_x_b[8:0]});

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_2_trunc_sel_x(BITSELECT,45)@547
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_2_trunc_sel_x_b = i_arrayidx9_i_dijkstraoptimisedid_950_0gr_add_x_bit_select_b[8:0];

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged(BITSELECT,129)@547
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged_b = $signed(i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_2_trunc_sel_x_b[8:2]);

    // redist0_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged_b_1(DELAY,131)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged_b_1_q <= i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged_b;
        end
    end

    // i_idxprom8_i_dijkstraoptimisedid_939_4gr_sel_x(BITSELECT,49)@545
    assign i_idxprom8_i_dijkstraoptimisedid_939_4gr_sel_x_b = {32'b00000000000000000000000000000000, in_c1_eni5_3_tpl[31:0]};

    // i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_select_31(BITSELECT,21)@545
    assign i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_select_31_b = i_idxprom8_i_dijkstraoptimisedid_939_4gr_sel_x_b[31:0];

    // i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_join(BITJOIN,20)@545
    assign i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_join_q = {i_idxprom6_i_dijkstraoptimisedid_939_3gr_vt_const_63_q, i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_select_31_b};

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_3_trunc_sel_x(BITSELECT,46)@545
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_3_trunc_sel_x_b = i_idxprom8_i_dijkstraoptimisedid_939_4gr_vt_join_q[8:0];

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_narrow_x(BITSELECT,29)@545
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_narrow_x_b = i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_shift_join_x(BITJOIN,30)@545
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_shift_join_x_q = {i_arrayidx9_i_dijkstraoptimisedid_950_0gr_narrow_x_b, i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_const_1_q};

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select(BITSELECT,126)@545
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b = $signed(i_arrayidx9_i_dijkstraoptimisedid_950_0gr_shift_join_x_q[8:2]);

    // redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3(DELAY,132)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_delay_0 <= $unsigned(i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b);
            redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_delay_1 <= redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_delay_0;
            redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_q <= $signed(redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_delay_1);
        end
    end

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums(ADD,127)@548
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_a = {1'b0, redist1_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_lhsMSBs_select_b_3_q};
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_b = {1'b0, redist0_i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_rhsMSBs_select_bit_select_merged_b_1_q};
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_o = $unsigned(i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_a) + $unsigned(i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_b);
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_q = $signed(i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_o[7:0]);

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_split_join(BITJOIN,128)@548
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_split_join_q = {i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_MSBs_sums_q, i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_const_1_q};

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_5_trunc_sel_x(BITSELECT,47)@548
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_5_trunc_sel_x_b = i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_0_add_x_split_join_q[8:0];

    // i_arrayidx9_i_dijkstraoptimisedid_950_0gr_append_upper_bits_x(BITJOIN,26)@548
    assign i_arrayidx9_i_dijkstraoptimisedid_950_0gr_append_upper_bits_x_q = {i_arrayidx9_i_dijkstraoptimisedid_950_0gr_upper_bits_x_b_const_q, i_arrayidx9_i_dijkstraoptimisedid_950_0gr_dupName_5_trunc_sel_x_b};

    // i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_select_63(BITSELECT,13)@548
    assign i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_select_63_b = i_arrayidx9_i_dijkstraoptimisedid_950_0gr_append_upper_bits_x_q[63:2];

    // i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_const_1(CONSTANT,11)
    assign i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_const_1_q = 2'b00;

    // i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_join(BITJOIN,12)@548
    assign i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_join_q = {i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_select_63_b, i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr(BLACKBOX,22)@548
    // out out_o_almost_empty@549
    // out out_o_empty@549
    // out out_o_stall@549
    // out out_o_valid@549
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write@20000000
    // out out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata@20000000
    DijkstraOptimisedID_i_llvm_fpga_mem_unna0000aoptimisedid_969_0gr thei_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx9_i_dijkstraoptimisedid_939_5gr_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_i_writedata(redist4_sync_together_939_16_aunroll_x_in_c1_eni5_4_tpl_3_q),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdata),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_readdatavalid),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_waitrequest),
        .in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack(in_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write),
        .out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata(i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_address;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_enable;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_read;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_write;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_writedata;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_byteenable;
    assign out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount = i_llvm_fpga_mem_unnamed_dijkstraoptimisedid22_dijkstraoptimisedid_939_6gr_out_unnamed_DijkstraOptimisedID22_DijkstraOptimisedID_avm_burstcount;

    // redist6_sync_together_939_16_aunroll_x_in_i_valid_3(DELAY,137)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_together_939_16_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist6_sync_together_939_16_aunroll_x_in_i_valid_3_q <= redist5_sync_together_939_16_aunroll_x_in_i_valid_2_q;
        end
    end

    // valid_fanout_reg0(REG,56)@548 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist6_sync_together_939_16_aunroll_x_in_i_valid_3_q;
        end
    end

    // sync_out_3_aunroll_x(GPOUT,54)@549
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraOptimisedID23_0_tpl = GND_q;
    assign out_unnamed_DijkstraOptimisedID24 = GND_q;

endmodule
