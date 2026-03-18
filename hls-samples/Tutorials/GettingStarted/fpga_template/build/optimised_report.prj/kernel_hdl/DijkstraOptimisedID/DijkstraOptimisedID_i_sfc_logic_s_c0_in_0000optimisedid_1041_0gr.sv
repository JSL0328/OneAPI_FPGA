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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond90_i_preheader_dijkstraoptimisedids_c0_enter176_dijkstraoptimisedid_1041_0gr
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_i_sfc_logic_s_c0_in_0000optimisedid_1041_0gr (
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_21_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_21_0_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_DijkstraOptimisedID24,
    output wire [0:0] out_unnamed_DijkstraOptimisedID28_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_22_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_22_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_22_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_2640_dijkstraoptimisedid_1044_1gr_out_dest_data_out_24_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_2741_dijkstraoptimisedid_1044_2gr_out_dest_data_out_25_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_2842_dijkstraoptimisedid_1044_3gr_out_dest_data_out_26_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_2943_dijkstraoptimisedid_1044_4gr_out_dest_data_out_27_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_3044_dijkstraoptimisedid_1044_5gr_out_dest_data_out_28_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_3145_dijkstraoptimisedid_1044_6gr_out_dest_data_out_29_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_3246_dijkstraoptimisedid_1044_7gr_out_dest_data_out_30_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_3347_dijkstraoptimisedid_1044_8gr_out_dest_data_out_31_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_3448_dijkstraoptimisedid_1044_9gr_out_dest_data_out_32_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_3549_dijkstraoptimisedid_1044_10_out_dest_data_out_33_0;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_2_tpl;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    reg [0:0] redist0_sync_together_1044_42_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // valid_fanout_reg7(REG,48)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_3246_dijkstraoptimisedid_1044_7gr(BLACKBOX,20)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1078_0gr thei_llvm_fpga_ffwd_dest_i32_acl_3246_dijkstraoptimisedid_1044_7gr (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i32_acl_3246_dijkstraoptimisedid_1044_7gr_out_dest_data_out_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,47)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_3145_dijkstraoptimisedid_1044_6gr(BLACKBOX,19)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1073_0gr thei_llvm_fpga_ffwd_dest_i32_acl_3145_dijkstraoptimisedid_1044_6gr (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i32_acl_3145_dijkstraoptimisedid_1044_6gr_out_dest_data_out_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,46)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_3044_dijkstraoptimisedid_1044_5gr(BLACKBOX,18)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1068_0gr thei_llvm_fpga_ffwd_dest_i32_acl_3044_dijkstraoptimisedid_1044_5gr (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i32_acl_3044_dijkstraoptimisedid_1044_5gr_out_dest_data_out_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,45)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_acl_2943_dijkstraoptimisedid_1044_4gr(BLACKBOX,17)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1063_0gr thei_llvm_fpga_ffwd_dest_i32_acl_2943_dijkstraoptimisedid_1044_4gr (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_i32_acl_2943_dijkstraoptimisedid_1044_4gr_out_dest_data_out_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,44)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_acl_2842_dijkstraoptimisedid_1044_3gr(BLACKBOX,16)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1058_0gr thei_llvm_fpga_ffwd_dest_i32_acl_2842_dijkstraoptimisedid_1044_3gr (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i32_acl_2842_dijkstraoptimisedid_1044_3gr_out_dest_data_out_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,43)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_acl_2741_dijkstraoptimisedid_1044_2gr(BLACKBOX,15)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1053_0gr thei_llvm_fpga_ffwd_dest_i32_acl_2741_dijkstraoptimisedid_1044_2gr (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i32_acl_2741_dijkstraoptimisedid_1044_2gr_out_dest_data_out_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,42)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_acl_2640_dijkstraoptimisedid_1044_1gr(BLACKBOX,14)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1048_0gr thei_llvm_fpga_ffwd_dest_i32_acl_2640_dijkstraoptimisedid_1044_1gr (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i32_acl_2640_dijkstraoptimisedid_1044_1gr_out_dest_data_out_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,52)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= in_i_valid;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x(BLACKBOX,36)@1
    // out out_dependency_out@2
    // out out_stall_out@2
    // out out_valid_out@2
    // out out_intel_reserved_ffwd_21_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_21_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_21_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_21_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_21_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_21_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_21_0_6_tpl@20000000
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_1102_0gr thei_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .in_src_data_in_21_0_0_tpl(i_llvm_fpga_ffwd_dest_i32_acl_2640_dijkstraoptimisedid_1044_1gr_out_dest_data_out_24_0),
        .in_src_data_in_21_0_1_tpl(i_llvm_fpga_ffwd_dest_i32_acl_2741_dijkstraoptimisedid_1044_2gr_out_dest_data_out_25_0),
        .in_src_data_in_21_0_2_tpl(i_llvm_fpga_ffwd_dest_i32_acl_2842_dijkstraoptimisedid_1044_3gr_out_dest_data_out_26_0),
        .in_src_data_in_21_0_3_tpl(i_llvm_fpga_ffwd_dest_i32_acl_2943_dijkstraoptimisedid_1044_4gr_out_dest_data_out_27_0),
        .in_src_data_in_21_0_4_tpl(i_llvm_fpga_ffwd_dest_i32_acl_3044_dijkstraoptimisedid_1044_5gr_out_dest_data_out_28_0),
        .in_src_data_in_21_0_5_tpl(i_llvm_fpga_ffwd_dest_i32_acl_3145_dijkstraoptimisedid_1044_6gr_out_dest_data_out_29_0),
        .in_src_data_in_21_0_6_tpl(i_llvm_fpga_ffwd_dest_i32_acl_3246_dijkstraoptimisedid_1044_7gr_out_dest_data_out_30_0),
        .out_dependency_out(),
        .out_stall_out(),
        .out_valid_out(),
        .out_intel_reserved_ffwd_21_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_0_tpl),
        .out_intel_reserved_ffwd_21_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_1_tpl),
        .out_intel_reserved_ffwd_21_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_2_tpl),
        .out_intel_reserved_ffwd_21_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_3_tpl),
        .out_intel_reserved_ffwd_21_0_4_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_4_tpl),
        .out_intel_reserved_ffwd_21_0_5_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_5_tpl),
        .out_intel_reserved_ffwd_21_0_6_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync_aunroll_x(GPOUT,38)
    assign out_intel_reserved_ffwd_21_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_0_tpl;
    assign out_intel_reserved_ffwd_21_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_1_tpl;
    assign out_intel_reserved_ffwd_21_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_2_tpl;
    assign out_intel_reserved_ffwd_21_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_3_tpl;
    assign out_intel_reserved_ffwd_21_0_4_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_4_tpl;
    assign out_intel_reserved_ffwd_21_0_5_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_5_tpl;
    assign out_intel_reserved_ffwd_21_0_6_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_42s_unnamed_dijkstraoptimisedid26_dijkstraoptimisedid_1044_13_aunroll_x_out_intel_reserved_ffwd_21_0_6_tpl;

    // redist0_sync_together_1044_42_in_i_valid_1(DELAY,54)
    always_ff @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together_1044_42_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist0_sync_together_1044_42_in_i_valid_1_q <= in_i_valid;
        end
    end

    // valid_fanout_reg0(REG,41)@1 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist0_sync_together_1044_42_in_i_valid_1_q;
        end
    end

    // sync_out_4_aunroll_x(GPOUT,39)@2
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_DijkstraOptimisedID24 = GND_q;
    assign out_unnamed_DijkstraOptimisedID28_0_tpl = GND_q;

    // valid_fanout_reg10(REG,51)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_3549_dijkstraoptimisedid_1044_10(BLACKBOX,23)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1093_0gr thei_llvm_fpga_ffwd_dest_i32_acl_3549_dijkstraoptimisedid_1044_10 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i32_acl_3549_dijkstraoptimisedid_1044_10_out_dest_data_out_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,50)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_3448_dijkstraoptimisedid_1044_9gr(BLACKBOX,22)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1088_0gr thei_llvm_fpga_ffwd_dest_i32_acl_3448_dijkstraoptimisedid_1044_9gr (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_i32_acl_3448_dijkstraoptimisedid_1044_9gr_out_dest_data_out_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,49)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_3347_dijkstraoptimisedid_1044_8gr(BLACKBOX,21)@1
    DijkstraOptimisedID_i_llvm_fpga_ffwd_des0000optimisedid_1083_0gr thei_llvm_fpga_ffwd_dest_i32_acl_3347_dijkstraoptimisedid_1044_8gr (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i32_acl_3347_dijkstraoptimisedid_1044_8gr_out_dest_data_out_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,53)@0 + 1
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x(BLACKBOX,37)@1
    // out out_dependency_out@2
    // out out_stall_out@2
    // out out_valid_out@2
    // out out_intel_reserved_ffwd_22_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_22_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_22_0_2_tpl@20000000
    DijkstraOptimisedID_i_llvm_fpga_ffwd_sou0000optimisedid_1123_0gr thei_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .in_src_data_in_22_0_0_tpl(i_llvm_fpga_ffwd_dest_i32_acl_3347_dijkstraoptimisedid_1044_8gr_out_dest_data_out_31_0),
        .in_src_data_in_22_0_1_tpl(i_llvm_fpga_ffwd_dest_i32_acl_3448_dijkstraoptimisedid_1044_9gr_out_dest_data_out_32_0),
        .in_src_data_in_22_0_2_tpl(i_llvm_fpga_ffwd_dest_i32_acl_3549_dijkstraoptimisedid_1044_10_out_dest_data_out_33_0),
        .out_dependency_out(),
        .out_stall_out(),
        .out_valid_out(),
        .out_intel_reserved_ffwd_22_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_0_tpl),
        .out_intel_reserved_ffwd_22_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_1_tpl),
        .out_intel_reserved_ffwd_22_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_aunroll_x(GPOUT,40)
    assign out_intel_reserved_ffwd_22_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_0_tpl;
    assign out_intel_reserved_ffwd_22_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_1_tpl;
    assign out_intel_reserved_ffwd_22_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstraoptimisedid_fpgaunique_43s_unnamed_dijkstraoptimisedid27_dijkstraoptimisedid_1044_14_aunroll_x_out_intel_reserved_ffwd_22_0_2_tpl;

endmodule
