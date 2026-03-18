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

// SystemVerilog created from bb_DijkstraOptimisedID_B8
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B8 (
    input wire [63:0] in_arg_out_dist,
    input wire [31:0] in_dist_i_sroa_0_0_pop23128_0,
    input wire [31:0] in_dist_i_sroa_104_2_replace_phi121_0,
    input wire [31:0] in_dist_i_sroa_121_2_replace_phi122_0,
    input wire [31:0] in_dist_i_sroa_138_2_replace_phi123_0,
    input wire [31:0] in_dist_i_sroa_155_2_replace_phi124_0,
    input wire [31:0] in_dist_i_sroa_172_2_replace_phi125_0,
    input wire [31:0] in_dist_i_sroa_19_2_replace_phi116_0,
    input wire [31:0] in_dist_i_sroa_36_2_replace_phi117_0,
    input wire [31:0] in_dist_i_sroa_53_2_replace_phi118_0,
    input wire [31:0] in_dist_i_sroa_70_2_replace_phi119_0,
    input wire [31:0] in_dist_i_sroa_87_2_replace_phi120_0,
    input wire [0:0] in_exitcond26126_0,
    input wire [0:0] in_forked104_0,
    input wire [0:0] in_notcmp56127_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [7:0] in_visited_i_sroa_0_2_replace_phi105_0,
    input wire [7:0] in_visited_i_sroa_10_2_replace_phi107_0,
    input wire [7:0] in_visited_i_sroa_14_2_replace_phi108_0,
    input wire [7:0] in_visited_i_sroa_18_2_replace_phi109_0,
    input wire [7:0] in_visited_i_sroa_22_2_replace_phi110_0,
    input wire [7:0] in_visited_i_sroa_26_2_replace_phi111_0,
    input wire [7:0] in_visited_i_sroa_30_2_replace_phi112_0,
    input wire [7:0] in_visited_i_sroa_34_2_replace_phi113_0,
    input wire [7:0] in_visited_i_sroa_38_2_replace_phi114_0,
    input wire [7:0] in_visited_i_sroa_42_2_replace_phi115_0,
    input wire [7:0] in_visited_i_sroa_6_2_replace_phi106_0,
    output wire [31:0] out_c0_exe10307,
    output wire [7:0] out_c0_exe11308,
    output wire [7:0] out_c0_exe12309,
    output wire [31:0] out_c0_exe1298,
    output wire [7:0] out_c0_exe13310,
    output wire [7:0] out_c0_exe14311,
    output wire [7:0] out_c0_exe15312,
    output wire [7:0] out_c0_exe16313,
    output wire [7:0] out_c0_exe17314,
    output wire [7:0] out_c0_exe18315,
    output wire [7:0] out_c0_exe19316,
    output wire [7:0] out_c0_exe20317,
    output wire [7:0] out_c0_exe21318,
    output wire [31:0] out_c0_exe22319,
    output wire [31:0] out_c0_exe2299,
    output wire [31:0] out_c0_exe23,
    output wire [0:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe3300,
    output wire [31:0] out_c0_exe4301,
    output wire [31:0] out_c0_exe5302,
    output wire [31:0] out_c0_exe6303,
    output wire [31:0] out_c0_exe7304,
    output wire [31:0] out_c0_exe8305,
    output wire [31:0] out_c0_exe9306,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe10307;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe11308;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe12309;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe1298;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe13310;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe14311;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe15312;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe16313;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe17314;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe18315;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe19316;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe20317;
    wire [7:0] DijkstraOptimisedID_B8_branch_out_c0_exe21318;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe22319;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe2299;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe23;
    wire [0:0] DijkstraOptimisedID_B8_branch_out_c0_exe26;
    wire [0:0] DijkstraOptimisedID_B8_branch_out_c0_exe27;
    wire [0:0] DijkstraOptimisedID_B8_branch_out_c0_exe28;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe3300;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe4301;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe5302;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe6303;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe7304;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe8305;
    wire [31:0] DijkstraOptimisedID_B8_branch_out_c0_exe9306;
    wire [0:0] DijkstraOptimisedID_B8_branch_out_stall_out;
    wire [0:0] DijkstraOptimisedID_B8_branch_out_valid_out_0;
    wire [0:0] DijkstraOptimisedID_B8_merge_out_almost_empty_out;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_0_0_pop23128;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_104_2_replace_phi121;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_121_2_replace_phi122;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_138_2_replace_phi123;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_155_2_replace_phi124;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_172_2_replace_phi125;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_19_2_replace_phi116;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_36_2_replace_phi117;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_53_2_replace_phi118;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_70_2_replace_phi119;
    wire [31:0] DijkstraOptimisedID_B8_merge_out_dist_i_sroa_87_2_replace_phi120;
    wire [0:0] DijkstraOptimisedID_B8_merge_out_empty_out;
    wire [0:0] DijkstraOptimisedID_B8_merge_out_exitcond26126;
    wire [0:0] DijkstraOptimisedID_B8_merge_out_forked104;
    wire [0:0] DijkstraOptimisedID_B8_merge_out_notcmp56127;
    wire [0:0] DijkstraOptimisedID_B8_merge_out_stall_out_0;
    wire [0:0] DijkstraOptimisedID_B8_merge_out_valid_out;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_0_2_replace_phi105;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_10_2_replace_phi107;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_14_2_replace_phi108;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_18_2_replace_phi109;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_22_2_replace_phi110;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_26_2_replace_phi111;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_30_2_replace_phi112;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_34_2_replace_phi113;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_38_2_replace_phi114;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_42_2_replace_phi115;
    wire [7:0] DijkstraOptimisedID_B8_merge_out_visited_i_sroa_6_2_replace_phi106;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_almost_empty_out;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe10307;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe11308;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe12309;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe1298;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe13310;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe14311;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe15312;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe16313;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe17314;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe18315;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe19316;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe20317;
    wire [7:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe21318;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe22319;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe2299;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe23;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe25;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe26;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe27;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe28;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe3300;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe4301;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe5302;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe6303;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe7304;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe8305;
    wire [31:0] bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe9306;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_empty_out;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_stall_out;
    wire [0:0] bb_DijkstraOptimisedID_B8_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // DijkstraOptimisedID_B8_merge(BLACKBOX,3)
    DijkstraOptimisedID_B8_merge theDijkstraOptimisedID_B8_merge (
        .in_dist_i_sroa_0_0_pop23128_0(in_dist_i_sroa_0_0_pop23128_0),
        .in_dist_i_sroa_104_2_replace_phi121_0(in_dist_i_sroa_104_2_replace_phi121_0),
        .in_dist_i_sroa_121_2_replace_phi122_0(in_dist_i_sroa_121_2_replace_phi122_0),
        .in_dist_i_sroa_138_2_replace_phi123_0(in_dist_i_sroa_138_2_replace_phi123_0),
        .in_dist_i_sroa_155_2_replace_phi124_0(in_dist_i_sroa_155_2_replace_phi124_0),
        .in_dist_i_sroa_172_2_replace_phi125_0(in_dist_i_sroa_172_2_replace_phi125_0),
        .in_dist_i_sroa_19_2_replace_phi116_0(in_dist_i_sroa_19_2_replace_phi116_0),
        .in_dist_i_sroa_36_2_replace_phi117_0(in_dist_i_sroa_36_2_replace_phi117_0),
        .in_dist_i_sroa_53_2_replace_phi118_0(in_dist_i_sroa_53_2_replace_phi118_0),
        .in_dist_i_sroa_70_2_replace_phi119_0(in_dist_i_sroa_70_2_replace_phi119_0),
        .in_dist_i_sroa_87_2_replace_phi120_0(in_dist_i_sroa_87_2_replace_phi120_0),
        .in_exitcond26126_0(in_exitcond26126_0),
        .in_forked104_0(in_forked104_0),
        .in_notcmp56127_0(in_notcmp56127_0),
        .in_stall_in(bb_DijkstraOptimisedID_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_visited_i_sroa_0_2_replace_phi105_0(in_visited_i_sroa_0_2_replace_phi105_0),
        .in_visited_i_sroa_10_2_replace_phi107_0(in_visited_i_sroa_10_2_replace_phi107_0),
        .in_visited_i_sroa_14_2_replace_phi108_0(in_visited_i_sroa_14_2_replace_phi108_0),
        .in_visited_i_sroa_18_2_replace_phi109_0(in_visited_i_sroa_18_2_replace_phi109_0),
        .in_visited_i_sroa_22_2_replace_phi110_0(in_visited_i_sroa_22_2_replace_phi110_0),
        .in_visited_i_sroa_26_2_replace_phi111_0(in_visited_i_sroa_26_2_replace_phi111_0),
        .in_visited_i_sroa_30_2_replace_phi112_0(in_visited_i_sroa_30_2_replace_phi112_0),
        .in_visited_i_sroa_34_2_replace_phi113_0(in_visited_i_sroa_34_2_replace_phi113_0),
        .in_visited_i_sroa_38_2_replace_phi114_0(in_visited_i_sroa_38_2_replace_phi114_0),
        .in_visited_i_sroa_42_2_replace_phi115_0(in_visited_i_sroa_42_2_replace_phi115_0),
        .in_visited_i_sroa_6_2_replace_phi106_0(in_visited_i_sroa_6_2_replace_phi106_0),
        .out_almost_empty_out(DijkstraOptimisedID_B8_merge_out_almost_empty_out),
        .out_dist_i_sroa_0_0_pop23128(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_0_0_pop23128),
        .out_dist_i_sroa_104_2_replace_phi121(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_104_2_replace_phi121),
        .out_dist_i_sroa_121_2_replace_phi122(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_121_2_replace_phi122),
        .out_dist_i_sroa_138_2_replace_phi123(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_138_2_replace_phi123),
        .out_dist_i_sroa_155_2_replace_phi124(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_155_2_replace_phi124),
        .out_dist_i_sroa_172_2_replace_phi125(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_172_2_replace_phi125),
        .out_dist_i_sroa_19_2_replace_phi116(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_19_2_replace_phi116),
        .out_dist_i_sroa_36_2_replace_phi117(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_36_2_replace_phi117),
        .out_dist_i_sroa_53_2_replace_phi118(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_53_2_replace_phi118),
        .out_dist_i_sroa_70_2_replace_phi119(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_70_2_replace_phi119),
        .out_dist_i_sroa_87_2_replace_phi120(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_87_2_replace_phi120),
        .out_empty_out(DijkstraOptimisedID_B8_merge_out_empty_out),
        .out_exitcond26126(DijkstraOptimisedID_B8_merge_out_exitcond26126),
        .out_forked104(DijkstraOptimisedID_B8_merge_out_forked104),
        .out_notcmp56127(DijkstraOptimisedID_B8_merge_out_notcmp56127),
        .out_stall_out_0(DijkstraOptimisedID_B8_merge_out_stall_out_0),
        .out_valid_out(DijkstraOptimisedID_B8_merge_out_valid_out),
        .out_visited_i_sroa_0_2_replace_phi105(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_0_2_replace_phi105),
        .out_visited_i_sroa_10_2_replace_phi107(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_10_2_replace_phi107),
        .out_visited_i_sroa_14_2_replace_phi108(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_14_2_replace_phi108),
        .out_visited_i_sroa_18_2_replace_phi109(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_18_2_replace_phi109),
        .out_visited_i_sroa_22_2_replace_phi110(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_22_2_replace_phi110),
        .out_visited_i_sroa_26_2_replace_phi111(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_26_2_replace_phi111),
        .out_visited_i_sroa_30_2_replace_phi112(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_30_2_replace_phi112),
        .out_visited_i_sroa_34_2_replace_phi113(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_34_2_replace_phi113),
        .out_visited_i_sroa_38_2_replace_phi114(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_38_2_replace_phi114),
        .out_visited_i_sroa_42_2_replace_phi115(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_42_2_replace_phi115),
        .out_visited_i_sroa_6_2_replace_phi106(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_6_2_replace_phi106),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_DijkstraOptimisedID_B8_stall_region(BLACKBOX,4)
    DijkstraOptimisedID_bb_B8_stall_region thebb_DijkstraOptimisedID_B8_stall_region (
        .in_almost_empty_in(DijkstraOptimisedID_B8_merge_out_almost_empty_out),
        .in_dist_i_sroa_0_0_pop23128(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_0_0_pop23128),
        .in_dist_i_sroa_104_2_replace_phi121(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_104_2_replace_phi121),
        .in_dist_i_sroa_121_2_replace_phi122(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_121_2_replace_phi122),
        .in_dist_i_sroa_138_2_replace_phi123(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_138_2_replace_phi123),
        .in_dist_i_sroa_155_2_replace_phi124(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_155_2_replace_phi124),
        .in_dist_i_sroa_172_2_replace_phi125(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_172_2_replace_phi125),
        .in_dist_i_sroa_19_2_replace_phi116(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_19_2_replace_phi116),
        .in_dist_i_sroa_36_2_replace_phi117(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_36_2_replace_phi117),
        .in_dist_i_sroa_53_2_replace_phi118(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_53_2_replace_phi118),
        .in_dist_i_sroa_70_2_replace_phi119(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_70_2_replace_phi119),
        .in_dist_i_sroa_87_2_replace_phi120(DijkstraOptimisedID_B8_merge_out_dist_i_sroa_87_2_replace_phi120),
        .in_empty_in(DijkstraOptimisedID_B8_merge_out_empty_out),
        .in_exitcond26126(DijkstraOptimisedID_B8_merge_out_exitcond26126),
        .in_forked104(DijkstraOptimisedID_B8_merge_out_forked104),
        .in_notcmp56127(DijkstraOptimisedID_B8_merge_out_notcmp56127),
        .in_stall_in(DijkstraOptimisedID_B8_branch_out_stall_out),
        .in_valid_in(DijkstraOptimisedID_B8_merge_out_valid_out),
        .in_visited_i_sroa_0_2_replace_phi105(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_0_2_replace_phi105),
        .in_visited_i_sroa_10_2_replace_phi107(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_10_2_replace_phi107),
        .in_visited_i_sroa_14_2_replace_phi108(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_14_2_replace_phi108),
        .in_visited_i_sroa_18_2_replace_phi109(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_18_2_replace_phi109),
        .in_visited_i_sroa_22_2_replace_phi110(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_22_2_replace_phi110),
        .in_visited_i_sroa_26_2_replace_phi111(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_26_2_replace_phi111),
        .in_visited_i_sroa_30_2_replace_phi112(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_30_2_replace_phi112),
        .in_visited_i_sroa_34_2_replace_phi113(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_34_2_replace_phi113),
        .in_visited_i_sroa_38_2_replace_phi114(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_38_2_replace_phi114),
        .in_visited_i_sroa_42_2_replace_phi115(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_42_2_replace_phi115),
        .in_visited_i_sroa_6_2_replace_phi106(DijkstraOptimisedID_B8_merge_out_visited_i_sroa_6_2_replace_phi106),
        .out_almost_empty_out(bb_DijkstraOptimisedID_B8_stall_region_out_almost_empty_out),
        .out_c0_exe10307(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe10307),
        .out_c0_exe11308(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe11308),
        .out_c0_exe12309(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe12309),
        .out_c0_exe1298(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe1298),
        .out_c0_exe13310(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe13310),
        .out_c0_exe14311(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe14311),
        .out_c0_exe15312(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe15312),
        .out_c0_exe16313(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe16313),
        .out_c0_exe17314(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe17314),
        .out_c0_exe18315(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe18315),
        .out_c0_exe19316(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe19316),
        .out_c0_exe20317(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe20317),
        .out_c0_exe21318(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe21318),
        .out_c0_exe22319(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe22319),
        .out_c0_exe2299(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe2299),
        .out_c0_exe23(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe23),
        .out_c0_exe25(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe25),
        .out_c0_exe26(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe26),
        .out_c0_exe27(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe27),
        .out_c0_exe28(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe28),
        .out_c0_exe3300(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe3300),
        .out_c0_exe4301(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe4301),
        .out_c0_exe5302(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe5302),
        .out_c0_exe6303(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe6303),
        .out_c0_exe7304(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe7304),
        .out_c0_exe8305(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe8305),
        .out_c0_exe9306(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe9306),
        .out_empty_out(bb_DijkstraOptimisedID_B8_stall_region_out_empty_out),
        .out_profile_loop_o_valid(bb_DijkstraOptimisedID_B8_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_DijkstraOptimisedID_B8_stall_region_out_stall_out),
        .out_valid_out(bb_DijkstraOptimisedID_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // DijkstraOptimisedID_B8_branch(BLACKBOX,2)
    DijkstraOptimisedID_B8_branch theDijkstraOptimisedID_B8_branch (
        .in_almost_empty_in(bb_DijkstraOptimisedID_B8_stall_region_out_almost_empty_out),
        .in_c0_exe10307(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe10307),
        .in_c0_exe11308(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe11308),
        .in_c0_exe12309(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe12309),
        .in_c0_exe1298(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe1298),
        .in_c0_exe13310(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe13310),
        .in_c0_exe14311(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe14311),
        .in_c0_exe15312(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe15312),
        .in_c0_exe16313(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe16313),
        .in_c0_exe17314(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe17314),
        .in_c0_exe18315(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe18315),
        .in_c0_exe19316(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe19316),
        .in_c0_exe20317(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe20317),
        .in_c0_exe21318(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe21318),
        .in_c0_exe22319(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe22319),
        .in_c0_exe2299(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe2299),
        .in_c0_exe23(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe23),
        .in_c0_exe25(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe25),
        .in_c0_exe26(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe26),
        .in_c0_exe27(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe27),
        .in_c0_exe28(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe28),
        .in_c0_exe3300(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe3300),
        .in_c0_exe4301(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe4301),
        .in_c0_exe5302(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe5302),
        .in_c0_exe6303(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe6303),
        .in_c0_exe7304(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe7304),
        .in_c0_exe8305(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe8305),
        .in_c0_exe9306(bb_DijkstraOptimisedID_B8_stall_region_out_c0_exe9306),
        .in_empty_in(bb_DijkstraOptimisedID_B8_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_DijkstraOptimisedID_B8_stall_region_out_valid_out),
        .out_c0_exe10307(DijkstraOptimisedID_B8_branch_out_c0_exe10307),
        .out_c0_exe11308(DijkstraOptimisedID_B8_branch_out_c0_exe11308),
        .out_c0_exe12309(DijkstraOptimisedID_B8_branch_out_c0_exe12309),
        .out_c0_exe1298(DijkstraOptimisedID_B8_branch_out_c0_exe1298),
        .out_c0_exe13310(DijkstraOptimisedID_B8_branch_out_c0_exe13310),
        .out_c0_exe14311(DijkstraOptimisedID_B8_branch_out_c0_exe14311),
        .out_c0_exe15312(DijkstraOptimisedID_B8_branch_out_c0_exe15312),
        .out_c0_exe16313(DijkstraOptimisedID_B8_branch_out_c0_exe16313),
        .out_c0_exe17314(DijkstraOptimisedID_B8_branch_out_c0_exe17314),
        .out_c0_exe18315(DijkstraOptimisedID_B8_branch_out_c0_exe18315),
        .out_c0_exe19316(DijkstraOptimisedID_B8_branch_out_c0_exe19316),
        .out_c0_exe20317(DijkstraOptimisedID_B8_branch_out_c0_exe20317),
        .out_c0_exe21318(DijkstraOptimisedID_B8_branch_out_c0_exe21318),
        .out_c0_exe22319(DijkstraOptimisedID_B8_branch_out_c0_exe22319),
        .out_c0_exe2299(DijkstraOptimisedID_B8_branch_out_c0_exe2299),
        .out_c0_exe23(DijkstraOptimisedID_B8_branch_out_c0_exe23),
        .out_c0_exe26(DijkstraOptimisedID_B8_branch_out_c0_exe26),
        .out_c0_exe27(DijkstraOptimisedID_B8_branch_out_c0_exe27),
        .out_c0_exe28(DijkstraOptimisedID_B8_branch_out_c0_exe28),
        .out_c0_exe3300(DijkstraOptimisedID_B8_branch_out_c0_exe3300),
        .out_c0_exe4301(DijkstraOptimisedID_B8_branch_out_c0_exe4301),
        .out_c0_exe5302(DijkstraOptimisedID_B8_branch_out_c0_exe5302),
        .out_c0_exe6303(DijkstraOptimisedID_B8_branch_out_c0_exe6303),
        .out_c0_exe7304(DijkstraOptimisedID_B8_branch_out_c0_exe7304),
        .out_c0_exe8305(DijkstraOptimisedID_B8_branch_out_c0_exe8305),
        .out_c0_exe9306(DijkstraOptimisedID_B8_branch_out_c0_exe9306),
        .out_stall_out(DijkstraOptimisedID_B8_branch_out_stall_out),
        .out_valid_out_0(DijkstraOptimisedID_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10307(GPOUT,33)
    assign out_c0_exe10307 = DijkstraOptimisedID_B8_branch_out_c0_exe10307;

    // out_c0_exe11308(GPOUT,34)
    assign out_c0_exe11308 = DijkstraOptimisedID_B8_branch_out_c0_exe11308;

    // out_c0_exe12309(GPOUT,35)
    assign out_c0_exe12309 = DijkstraOptimisedID_B8_branch_out_c0_exe12309;

    // out_c0_exe1298(GPOUT,36)
    assign out_c0_exe1298 = DijkstraOptimisedID_B8_branch_out_c0_exe1298;

    // out_c0_exe13310(GPOUT,37)
    assign out_c0_exe13310 = DijkstraOptimisedID_B8_branch_out_c0_exe13310;

    // out_c0_exe14311(GPOUT,38)
    assign out_c0_exe14311 = DijkstraOptimisedID_B8_branch_out_c0_exe14311;

    // out_c0_exe15312(GPOUT,39)
    assign out_c0_exe15312 = DijkstraOptimisedID_B8_branch_out_c0_exe15312;

    // out_c0_exe16313(GPOUT,40)
    assign out_c0_exe16313 = DijkstraOptimisedID_B8_branch_out_c0_exe16313;

    // out_c0_exe17314(GPOUT,41)
    assign out_c0_exe17314 = DijkstraOptimisedID_B8_branch_out_c0_exe17314;

    // out_c0_exe18315(GPOUT,42)
    assign out_c0_exe18315 = DijkstraOptimisedID_B8_branch_out_c0_exe18315;

    // out_c0_exe19316(GPOUT,43)
    assign out_c0_exe19316 = DijkstraOptimisedID_B8_branch_out_c0_exe19316;

    // out_c0_exe20317(GPOUT,44)
    assign out_c0_exe20317 = DijkstraOptimisedID_B8_branch_out_c0_exe20317;

    // out_c0_exe21318(GPOUT,45)
    assign out_c0_exe21318 = DijkstraOptimisedID_B8_branch_out_c0_exe21318;

    // out_c0_exe22319(GPOUT,46)
    assign out_c0_exe22319 = DijkstraOptimisedID_B8_branch_out_c0_exe22319;

    // out_c0_exe2299(GPOUT,47)
    assign out_c0_exe2299 = DijkstraOptimisedID_B8_branch_out_c0_exe2299;

    // out_c0_exe23(GPOUT,48)
    assign out_c0_exe23 = DijkstraOptimisedID_B8_branch_out_c0_exe23;

    // out_c0_exe26(GPOUT,49)
    assign out_c0_exe26 = DijkstraOptimisedID_B8_branch_out_c0_exe26;

    // out_c0_exe27(GPOUT,50)
    assign out_c0_exe27 = DijkstraOptimisedID_B8_branch_out_c0_exe27;

    // out_c0_exe28(GPOUT,51)
    assign out_c0_exe28 = DijkstraOptimisedID_B8_branch_out_c0_exe28;

    // out_c0_exe3300(GPOUT,52)
    assign out_c0_exe3300 = DijkstraOptimisedID_B8_branch_out_c0_exe3300;

    // out_c0_exe4301(GPOUT,53)
    assign out_c0_exe4301 = DijkstraOptimisedID_B8_branch_out_c0_exe4301;

    // out_c0_exe5302(GPOUT,54)
    assign out_c0_exe5302 = DijkstraOptimisedID_B8_branch_out_c0_exe5302;

    // out_c0_exe6303(GPOUT,55)
    assign out_c0_exe6303 = DijkstraOptimisedID_B8_branch_out_c0_exe6303;

    // out_c0_exe7304(GPOUT,56)
    assign out_c0_exe7304 = DijkstraOptimisedID_B8_branch_out_c0_exe7304;

    // out_c0_exe8305(GPOUT,57)
    assign out_c0_exe8305 = DijkstraOptimisedID_B8_branch_out_c0_exe8305;

    // out_c0_exe9306(GPOUT,58)
    assign out_c0_exe9306 = DijkstraOptimisedID_B8_branch_out_c0_exe9306;

    // out_profile_loop_o_valid(GPOUT,59)
    assign out_profile_loop_o_valid = bb_DijkstraOptimisedID_B8_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,60)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,61)
    assign out_stall_out_0 = DijkstraOptimisedID_B8_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,62)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = DijkstraOptimisedID_B8_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,64)
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
