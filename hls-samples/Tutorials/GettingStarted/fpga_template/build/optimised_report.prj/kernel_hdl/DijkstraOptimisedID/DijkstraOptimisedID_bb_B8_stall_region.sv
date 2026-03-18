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

// SystemVerilog created from bb_DijkstraOptimisedID_B8_stall_region
// Created for function/kernel DijkstraOptimisedID
// SystemVerilog created on Wed Mar 18 15:46:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module DijkstraOptimisedID_bb_B8_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_almost_empty_out,
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
    output wire [0:0] out_c0_exe25,
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
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_dist_i_sroa_0_0_pop23128,
    input wire [31:0] in_dist_i_sroa_104_2_replace_phi121,
    input wire [31:0] in_dist_i_sroa_121_2_replace_phi122,
    input wire [31:0] in_dist_i_sroa_138_2_replace_phi123,
    input wire [31:0] in_dist_i_sroa_155_2_replace_phi124,
    input wire [31:0] in_dist_i_sroa_172_2_replace_phi125,
    input wire [31:0] in_dist_i_sroa_19_2_replace_phi116,
    input wire [31:0] in_dist_i_sroa_36_2_replace_phi117,
    input wire [31:0] in_dist_i_sroa_53_2_replace_phi118,
    input wire [31:0] in_dist_i_sroa_70_2_replace_phi119,
    input wire [31:0] in_dist_i_sroa_87_2_replace_phi120,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_exitcond26126,
    input wire [0:0] in_forked104,
    input wire [0:0] in_notcmp56127,
    input wire [0:0] in_valid_in,
    input wire [7:0] in_visited_i_sroa_0_2_replace_phi105,
    input wire [7:0] in_visited_i_sroa_10_2_replace_phi107,
    input wire [7:0] in_visited_i_sroa_14_2_replace_phi108,
    input wire [7:0] in_visited_i_sroa_18_2_replace_phi109,
    input wire [7:0] in_visited_i_sroa_22_2_replace_phi110,
    input wire [7:0] in_visited_i_sroa_26_2_replace_phi111,
    input wire [7:0] in_visited_i_sroa_30_2_replace_phi112,
    input wire [7:0] in_visited_i_sroa_34_2_replace_phi113,
    input wire [7:0] in_visited_i_sroa_38_2_replace_phi114,
    input wire [7:0] in_visited_i_sroa_42_2_replace_phi115,
    input wire [7:0] in_visited_i_sroa_6_2_replace_phi106,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl;
    wire [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl;
    wire [442:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [7:0] bubble_select_stall_entry_p;
    wire [7:0] bubble_select_stall_entry_q;
    wire [7:0] bubble_select_stall_entry_r;
    wire [7:0] bubble_select_stall_entry_s;
    wire [7:0] bubble_select_stall_entry_t;
    wire [7:0] bubble_select_stall_entry_u;
    wire [7:0] bubble_select_stall_entry_v;
    wire [7:0] bubble_select_stall_entry_w;
    wire [7:0] bubble_select_stall_entry_x;
    wire [7:0] bubble_select_stall_entry_y;
    wire [7:0] bubble_select_stall_entry_z;
    wire [476:0] bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_l;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_m;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_n;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_o;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_p;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_r;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_s;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_t;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_u;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_v;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_y;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_bb;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_cc;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_temp_back_stall;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [31:0] stall_entry_o4_reg1_q;
    reg [31:0] stall_entry_o4_reg0_q;
    reg [31:0] stall_entry_o5_reg1_q;
    reg [31:0] stall_entry_o5_reg0_q;
    reg [31:0] stall_entry_o6_reg1_q;
    reg [31:0] stall_entry_o6_reg0_q;
    reg [31:0] stall_entry_o7_reg1_q;
    reg [31:0] stall_entry_o7_reg0_q;
    reg [31:0] stall_entry_o8_reg1_q;
    reg [31:0] stall_entry_o8_reg0_q;
    reg [31:0] stall_entry_o9_reg1_q;
    reg [31:0] stall_entry_o9_reg0_q;
    reg [31:0] stall_entry_o10_reg1_q;
    reg [31:0] stall_entry_o10_reg0_q;
    reg [31:0] stall_entry_o11_reg1_q;
    reg [31:0] stall_entry_o11_reg0_q;
    reg [31:0] stall_entry_o12_reg1_q;
    reg [31:0] stall_entry_o12_reg0_q;
    reg [31:0] stall_entry_o13_reg1_q;
    reg [31:0] stall_entry_o13_reg0_q;
    reg [31:0] stall_entry_o14_reg1_q;
    reg [31:0] stall_entry_o14_reg0_q;
    reg [0:0] stall_entry_o15_reg1_q;
    reg [0:0] stall_entry_o15_reg0_q;
    reg [0:0] stall_entry_o16_reg1_q;
    reg [0:0] stall_entry_o16_reg0_q;
    reg [0:0] stall_entry_o17_reg1_q;
    reg [0:0] stall_entry_o17_reg0_q;
    reg [7:0] stall_entry_o18_reg1_q;
    reg [7:0] stall_entry_o18_reg0_q;
    reg [7:0] stall_entry_o19_reg1_q;
    reg [7:0] stall_entry_o19_reg0_q;
    reg [7:0] stall_entry_o20_reg1_q;
    reg [7:0] stall_entry_o20_reg0_q;
    reg [7:0] stall_entry_o21_reg1_q;
    reg [7:0] stall_entry_o21_reg0_q;
    reg [7:0] stall_entry_o22_reg1_q;
    reg [7:0] stall_entry_o22_reg0_q;
    reg [7:0] stall_entry_o23_reg1_q;
    reg [7:0] stall_entry_o23_reg0_q;
    reg [7:0] stall_entry_o24_reg1_q;
    reg [7:0] stall_entry_o24_reg0_q;
    reg [7:0] stall_entry_o25_reg1_q;
    reg [7:0] stall_entry_o25_reg0_q;
    reg [7:0] stall_entry_o26_reg1_q;
    reg [7:0] stall_entry_o26_reg0_q;
    reg [7:0] stall_entry_o27_reg1_q;
    reg [7:0] stall_entry_o27_reg0_q;
    reg [7:0] stall_entry_o28_reg1_q;
    reg [7:0] stall_entry_o28_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg0_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg1_q;
    reg [7:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_frontAlmostEmpty_reg0(REG,45)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= in_almost_empty_in;
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,44)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= stall_entry_frontAlmostEmpty_reg0_q;
        end
    end

    // stall_entry_frontEmpty_reg0(REG,43)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= in_empty_in;
        end
    end

    // stall_entry_frontEmpty_reg1(REG,42)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= stall_entry_frontEmpty_reg0_q;
        end
    end

    // stall_entry_o28_reg0(REG,95)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o28_reg0_q <= in_visited_i_sroa_6_2_replace_phi106;
        end
    end

    // stall_entry_o28_reg1(REG,94)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o28_reg1_q <= stall_entry_o28_reg0_q;
        end
    end

    // stall_entry_o27_reg0(REG,93)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o27_reg0_q <= in_visited_i_sroa_42_2_replace_phi115;
        end
    end

    // stall_entry_o27_reg1(REG,92)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o27_reg1_q <= stall_entry_o27_reg0_q;
        end
    end

    // stall_entry_o26_reg0(REG,91)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o26_reg0_q <= in_visited_i_sroa_38_2_replace_phi114;
        end
    end

    // stall_entry_o26_reg1(REG,90)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o26_reg1_q <= stall_entry_o26_reg0_q;
        end
    end

    // stall_entry_o25_reg0(REG,89)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o25_reg0_q <= in_visited_i_sroa_34_2_replace_phi113;
        end
    end

    // stall_entry_o25_reg1(REG,88)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o25_reg1_q <= stall_entry_o25_reg0_q;
        end
    end

    // stall_entry_o24_reg0(REG,87)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o24_reg0_q <= in_visited_i_sroa_30_2_replace_phi112;
        end
    end

    // stall_entry_o24_reg1(REG,86)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o24_reg1_q <= stall_entry_o24_reg0_q;
        end
    end

    // stall_entry_o23_reg0(REG,85)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o23_reg0_q <= in_visited_i_sroa_26_2_replace_phi111;
        end
    end

    // stall_entry_o23_reg1(REG,84)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o23_reg1_q <= stall_entry_o23_reg0_q;
        end
    end

    // stall_entry_o22_reg0(REG,83)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o22_reg0_q <= in_visited_i_sroa_22_2_replace_phi110;
        end
    end

    // stall_entry_o22_reg1(REG,82)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o22_reg1_q <= stall_entry_o22_reg0_q;
        end
    end

    // stall_entry_o21_reg0(REG,81)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o21_reg0_q <= in_visited_i_sroa_18_2_replace_phi109;
        end
    end

    // stall_entry_o21_reg1(REG,80)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o21_reg1_q <= stall_entry_o21_reg0_q;
        end
    end

    // stall_entry_o20_reg0(REG,79)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o20_reg0_q <= in_visited_i_sroa_14_2_replace_phi108;
        end
    end

    // stall_entry_o20_reg1(REG,78)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o20_reg1_q <= stall_entry_o20_reg0_q;
        end
    end

    // stall_entry_o19_reg0(REG,77)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o19_reg0_q <= in_visited_i_sroa_10_2_replace_phi107;
        end
    end

    // stall_entry_o19_reg1(REG,76)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o19_reg1_q <= stall_entry_o19_reg0_q;
        end
    end

    // stall_entry_o18_reg0(REG,75)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o18_reg0_q <= in_visited_i_sroa_0_2_replace_phi105;
        end
    end

    // stall_entry_o18_reg1(REG,74)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o18_reg1_q <= stall_entry_o18_reg0_q;
        end
    end

    // stall_entry_o17_reg0(REG,73)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o17_reg0_q <= in_notcmp56127;
        end
    end

    // stall_entry_o17_reg1(REG,72)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o17_reg1_q <= stall_entry_o17_reg0_q;
        end
    end

    // stall_entry_o16_reg0(REG,71)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o16_reg0_q <= in_forked104;
        end
    end

    // stall_entry_o16_reg1(REG,70)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o16_reg1_q <= stall_entry_o16_reg0_q;
        end
    end

    // stall_entry_o15_reg0(REG,69)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg0_q <= in_exitcond26126;
        end
    end

    // stall_entry_o15_reg1(REG,68)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg1_q <= stall_entry_o15_reg0_q;
        end
    end

    // stall_entry_o14_reg0(REG,67)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg0_q <= in_dist_i_sroa_87_2_replace_phi120;
        end
    end

    // stall_entry_o14_reg1(REG,66)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg1_q <= stall_entry_o14_reg0_q;
        end
    end

    // stall_entry_o13_reg0(REG,65)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg0_q <= in_dist_i_sroa_70_2_replace_phi119;
        end
    end

    // stall_entry_o13_reg1(REG,64)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg1_q <= stall_entry_o13_reg0_q;
        end
    end

    // stall_entry_o12_reg0(REG,63)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg0_q <= in_dist_i_sroa_53_2_replace_phi118;
        end
    end

    // stall_entry_o12_reg1(REG,62)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg1_q <= stall_entry_o12_reg0_q;
        end
    end

    // stall_entry_o11_reg0(REG,61)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg0_q <= in_dist_i_sroa_36_2_replace_phi117;
        end
    end

    // stall_entry_o11_reg1(REG,60)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg1_q <= stall_entry_o11_reg0_q;
        end
    end

    // stall_entry_o10_reg0(REG,59)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg0_q <= in_dist_i_sroa_19_2_replace_phi116;
        end
    end

    // stall_entry_o10_reg1(REG,58)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg1_q <= stall_entry_o10_reg0_q;
        end
    end

    // stall_entry_o9_reg0(REG,57)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= in_dist_i_sroa_172_2_replace_phi125;
        end
    end

    // stall_entry_o9_reg1(REG,56)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg1_q <= stall_entry_o9_reg0_q;
        end
    end

    // stall_entry_o8_reg0(REG,55)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= in_dist_i_sroa_155_2_replace_phi124;
        end
    end

    // stall_entry_o8_reg1(REG,54)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg1_q <= stall_entry_o8_reg0_q;
        end
    end

    // stall_entry_o7_reg0(REG,53)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= in_dist_i_sroa_138_2_replace_phi123;
        end
    end

    // stall_entry_o7_reg1(REG,52)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg1_q <= stall_entry_o7_reg0_q;
        end
    end

    // stall_entry_o6_reg0(REG,51)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= in_dist_i_sroa_121_2_replace_phi122;
        end
    end

    // stall_entry_o6_reg1(REG,50)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg1_q <= stall_entry_o6_reg0_q;
        end
    end

    // stall_entry_o5_reg0(REG,49)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= in_dist_i_sroa_104_2_replace_phi121;
        end
    end

    // stall_entry_o5_reg1(REG,48)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= stall_entry_o5_reg0_q;
        end
    end

    // stall_entry_o4_reg0(REG,47)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= in_dist_i_sroa_0_0_pop23128;
        end
    end

    // stall_entry_o4_reg1(REG,46)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= stall_entry_o4_reg0_q;
        end
    end

    // bubble_join_stall_entry(BITJOIN,16)
    assign bubble_join_stall_entry_q = {stall_entry_o28_reg1_q, stall_entry_o27_reg1_q, stall_entry_o26_reg1_q, stall_entry_o25_reg1_q, stall_entry_o24_reg1_q, stall_entry_o23_reg1_q, stall_entry_o22_reg1_q, stall_entry_o21_reg1_q, stall_entry_o20_reg1_q, stall_entry_o19_reg1_q, stall_entry_o18_reg1_q, stall_entry_o17_reg1_q, stall_entry_o16_reg1_q, stall_entry_o15_reg1_q, stall_entry_o14_reg1_q, stall_entry_o13_reg1_q, stall_entry_o12_reg1_q, stall_entry_o11_reg1_q, stall_entry_o10_reg1_q, stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,17)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[31:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[63:32];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[95:64];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[127:96];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[159:128];
    assign bubble_select_stall_entry_g = bubble_join_stall_entry_q[191:160];
    assign bubble_select_stall_entry_h = bubble_join_stall_entry_q[223:192];
    assign bubble_select_stall_entry_i = bubble_join_stall_entry_q[255:224];
    assign bubble_select_stall_entry_j = bubble_join_stall_entry_q[287:256];
    assign bubble_select_stall_entry_k = bubble_join_stall_entry_q[319:288];
    assign bubble_select_stall_entry_l = bubble_join_stall_entry_q[351:320];
    assign bubble_select_stall_entry_m = bubble_join_stall_entry_q[352:352];
    assign bubble_select_stall_entry_n = bubble_join_stall_entry_q[353:353];
    assign bubble_select_stall_entry_o = bubble_join_stall_entry_q[354:354];
    assign bubble_select_stall_entry_p = bubble_join_stall_entry_q[362:355];
    assign bubble_select_stall_entry_q = bubble_join_stall_entry_q[370:363];
    assign bubble_select_stall_entry_r = bubble_join_stall_entry_q[378:371];
    assign bubble_select_stall_entry_s = bubble_join_stall_entry_q[386:379];
    assign bubble_select_stall_entry_t = bubble_join_stall_entry_q[394:387];
    assign bubble_select_stall_entry_u = bubble_join_stall_entry_q[402:395];
    assign bubble_select_stall_entry_v = bubble_join_stall_entry_q[410:403];
    assign bubble_select_stall_entry_w = bubble_join_stall_entry_q[418:411];
    assign bubble_select_stall_entry_x = bubble_join_stall_entry_q[426:419];
    assign bubble_select_stall_entry_y = bubble_join_stall_entry_q[434:427];
    assign bubble_select_stall_entry_z = bubble_join_stall_entry_q[442:435];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg0(REG,99)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg1(REG,98)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg0(REG,101)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg1(REG,100)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg0(REG,103)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg1(REG,102)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg0_q;
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x(STALLENABLE,37)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V0 = i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V1 = i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V2 = i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg0(REG,96)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg0_q <= merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_backStall;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg1(REG,97)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@33
    // out out_empty_out@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_profile_loop_o_valid@33
    // out out_c0_exit297_0_tpl@33
    // out out_c0_exit297_1_tpl@33
    // out out_c0_exit297_2_tpl@33
    // out out_c0_exit297_3_tpl@33
    // out out_c0_exit297_4_tpl@33
    // out out_c0_exit297_5_tpl@33
    // out out_c0_exit297_6_tpl@33
    // out out_c0_exit297_7_tpl@33
    // out out_c0_exit297_8_tpl@33
    // out out_c0_exit297_9_tpl@33
    // out out_c0_exit297_10_tpl@33
    // out out_c0_exit297_11_tpl@33
    // out out_c0_exit297_12_tpl@33
    // out out_c0_exit297_13_tpl@33
    // out out_c0_exit297_14_tpl@33
    // out out_c0_exit297_15_tpl@33
    // out out_c0_exit297_16_tpl@33
    // out out_c0_exit297_17_tpl@33
    // out out_c0_exit297_18_tpl@33
    // out out_c0_exit297_19_tpl@33
    // out out_c0_exit297_20_tpl@33
    // out out_c0_exit297_21_tpl@33
    // out out_c0_exit297_22_tpl@33
    // out out_c0_exit297_23_tpl@33
    // out out_c0_exit297_24_tpl@33
    // out out_c0_exit297_25_tpl@33
    // out out_c0_exit297_26_tpl@33
    // out out_c0_exit297_27_tpl@33
    // out out_c0_exit297_28_tpl@33
    DijkstraOptimisedID_i_sfc_s_c0_in_for_bo0000aoptimisedid_3089_26 thei_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_c0_eni26_0_tpl(GND_q),
        .in_c0_eni26_1_tpl(bubble_select_stall_entry_e),
        .in_c0_eni26_2_tpl(GND_q),
        .in_c0_eni26_3_tpl(bubble_select_stall_entry_f),
        .in_c0_eni26_4_tpl(bubble_select_stall_entry_g),
        .in_c0_eni26_5_tpl(bubble_select_stall_entry_h),
        .in_c0_eni26_6_tpl(bubble_select_stall_entry_i),
        .in_c0_eni26_7_tpl(bubble_select_stall_entry_j),
        .in_c0_eni26_8_tpl(bubble_select_stall_entry_k),
        .in_c0_eni26_9_tpl(bubble_select_stall_entry_l),
        .in_c0_eni26_10_tpl(bubble_select_stall_entry_c),
        .in_c0_eni26_11_tpl(bubble_select_stall_entry_d),
        .in_c0_eni26_12_tpl(bubble_select_stall_entry_w),
        .in_c0_eni26_13_tpl(bubble_select_stall_entry_x),
        .in_c0_eni26_14_tpl(bubble_select_stall_entry_y),
        .in_c0_eni26_15_tpl(bubble_select_stall_entry_z),
        .in_c0_eni26_16_tpl(bubble_select_stall_entry_q),
        .in_c0_eni26_17_tpl(bubble_select_stall_entry_r),
        .in_c0_eni26_18_tpl(bubble_select_stall_entry_s),
        .in_c0_eni26_19_tpl(bubble_select_stall_entry_t),
        .in_c0_eni26_20_tpl(bubble_select_stall_entry_u),
        .in_c0_eni26_21_tpl(bubble_select_stall_entry_v),
        .in_c0_eni26_22_tpl(bubble_select_stall_entry_p),
        .in_c0_eni26_23_tpl(bubble_select_stall_entry_b),
        .in_c0_eni26_24_tpl(bubble_select_stall_entry_n),
        .in_c0_eni26_25_tpl(bubble_select_stall_entry_m),
        .in_c0_eni26_26_tpl(bubble_select_stall_entry_o),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit297_0_tpl(),
        .out_c0_exit297_1_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl),
        .out_c0_exit297_2_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl),
        .out_c0_exit297_3_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl),
        .out_c0_exit297_4_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl),
        .out_c0_exit297_5_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl),
        .out_c0_exit297_6_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl),
        .out_c0_exit297_7_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl),
        .out_c0_exit297_8_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl),
        .out_c0_exit297_9_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl),
        .out_c0_exit297_10_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl),
        .out_c0_exit297_11_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl),
        .out_c0_exit297_12_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl),
        .out_c0_exit297_13_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl),
        .out_c0_exit297_14_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl),
        .out_c0_exit297_15_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl),
        .out_c0_exit297_16_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl),
        .out_c0_exit297_17_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl),
        .out_c0_exit297_18_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl),
        .out_c0_exit297_19_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl),
        .out_c0_exit297_20_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl),
        .out_c0_exit297_21_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl),
        .out_c0_exit297_22_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl),
        .out_c0_exit297_23_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl),
        .out_c0_exit297_24_tpl(),
        .out_c0_exit297_25_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl),
        .out_c0_exit297_26_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl),
        .out_c0_exit297_27_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl),
        .out_c0_exit297_28_tpl(i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // stall_entry_frontValid_reg0(REG,41)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= in_valid_in;
        end
    end

    // stall_entry_frontValid_reg1(REG,40)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= stall_entry_frontValid_reg0_q;
        end
    end

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,36)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // stall_entry_frontStall_reg0(REG,38)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= merged_in_SE_bubble_join_stall_entry_backStall;
        end
    end

    // stall_entry_frontStall_reg1(REG,39)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= stall_entry_frontStall_reg0_q;
        end
    end

    // sync_out_352(GPOUT,11)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg0(REG,159)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg1(REG,158)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg0(REG,157)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg1(REG,156)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg0(REG,155)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg1(REG,154)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg0(REG,153)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg1(REG,152)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg0(REG,151)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg1(REG,150)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg0(REG,149)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg1(REG,148)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg0(REG,147)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg1(REG,146)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg0(REG,145)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg1(REG,144)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg0(REG,143)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg1(REG,142)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg0(REG,141)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg1(REG,140)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg0(REG,139)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg1(REG,138)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg0(REG,137)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg1(REG,136)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg0(REG,135)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg1(REG,134)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg0(REG,133)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg1(REG,132)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg0(REG,131)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg1(REG,130)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg0(REG,129)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg1(REG,128)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg0(REG,127)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg1(REG,126)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg0(REG,125)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg1(REG,124)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg0(REG,123)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg1(REG,122)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg0(REG,121)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg1(REG,120)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg0(REG,119)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg1(REG,118)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg0(REG,117)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg1(REG,116)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg0(REG,115)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg1(REG,114)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg0(REG,113)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg1(REG,112)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg0(REG,111)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg1(REG,110)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg0(REG,109)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg1(REG,108)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg0(REG,107)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg1(REG,106)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg0_q;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg0(REG,105)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg0_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid;
        end
    end

    // i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg1(REG,104)
    always_ff @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg1_q <= i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg0_q;
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x(BITJOIN,20)
    assign bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q = {i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_28_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_27_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_26_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_25_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_23_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_22_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_21_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_20_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_19_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_18_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_17_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_16_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_15_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_14_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_13_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_12_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_11_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_10_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_9_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_8_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_7_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_6_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_5_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_4_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_3_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_2_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_c0_exit297_1_tpl_reg1_q, i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x(BITSELECT,21)
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[32:1];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[64:33];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[96:65];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[128:97];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[160:129];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[192:161];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[224:193];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_j = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[256:225];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_k = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[288:257];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_l = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[320:289];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_m = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[328:321];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_n = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[336:329];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_o = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[344:337];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_p = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[352:345];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[360:353];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_r = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[368:361];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_s = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[376:369];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_t = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[384:377];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_u = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[392:385];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_v = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[400:393];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_w = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[408:401];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_x = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[440:409];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_y = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[472:441];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_z = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[473:473];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_aa = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[474:474];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_bb = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[475:475];
    assign bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_cc = bubble_join_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q[476:476];

    // sync_out_353(GPOUT,12)@33
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V2;
    assign out_c0_exe10307 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_l;
    assign out_c0_exe11308 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_m;
    assign out_c0_exe12309 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_n;
    assign out_c0_exe1298 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_c;
    assign out_c0_exe13310 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_o;
    assign out_c0_exe14311 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_p;
    assign out_c0_exe15312 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_q;
    assign out_c0_exe16313 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_r;
    assign out_c0_exe17314 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_s;
    assign out_c0_exe18315 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_t;
    assign out_c0_exe19316 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_u;
    assign out_c0_exe20317 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_v;
    assign out_c0_exe21318 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_w;
    assign out_c0_exe22319 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_x;
    assign out_c0_exe2299 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_d;
    assign out_c0_exe23 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_y;
    assign out_c0_exe25 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_z;
    assign out_c0_exe26 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_aa;
    assign out_c0_exe27 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_bb;
    assign out_c0_exe28 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_cc;
    assign out_c0_exe3300 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_e;
    assign out_c0_exe4301 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_f;
    assign out_c0_exe5302 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_g;
    assign out_c0_exe6303 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_h;
    assign out_c0_exe7304 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_i;
    assign out_c0_exe8305 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_j;
    assign out_c0_exe9306 = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_k;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V1;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_b;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body34_i_dijkstraoptimisedids_c0_enter24931_dijkstraoptimisedid_3089_26_aunroll_x_V0;

    // rst_sync(RESETSYNC,160)
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
