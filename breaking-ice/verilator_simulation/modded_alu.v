// Reading file 'v2.asc'..

module alu (input iCLK, output iLED1, input iBTN2, input iBTN1, input CLKINJKT_HG, input CLKINJKT_LW);

wire n1;
// (0, 0, 'glb_netwk_0')
// (12, 1, 'sp4_r_v_b_6')
// (12, 2, 'sp4_r_v_b_38')
// (12, 3, 'neigh_op_tnr_7')
// (12, 3, 'sp4_r_v_b_27')
// (12, 4, 'neigh_op_rgt_7')
// (12, 4, 'sp4_r_v_b_14')
// (12, 5, 'neigh_op_bnr_7')
// (12, 5, 'sp4_r_v_b_3')
// (13, 0, 'fabout')
// (13, 0, 'local_g1_6')
// (13, 0, 'span4_vert_6')
// (13, 1, 'sp4_v_b_6')
// (13, 1, 'sp4_v_t_38')
// (13, 2, 'sp4_v_b_38')
// (13, 3, 'neigh_op_top_7')
// (13, 3, 'sp4_v_b_27')
// (13, 4, 'lutff_7/out')
// (13, 4, 'sp4_v_b_14')
// (13, 5, 'neigh_op_bot_7')
// (13, 5, 'sp4_v_b_3')
// (14, 3, 'neigh_op_tnl_7')
// (14, 4, 'neigh_op_lft_7')
// (14, 5, 'neigh_op_bnl_7')
// (15, 2, 'lutff_global/s_r')
// (15, 3, 'lutff_global/s_r')
// (15, 4, 'lutff_global/s_r')
// (15, 5, 'lutff_global/s_r')
// (16, 1, 'lutff_global/s_r')

wire CLK;
assign CLK=iCLK;
// (0, 0, 'glb_netwk_4')
// (11, 1, 'lutff_global/clk')
// (11, 2, 'lutff_global/clk')
// (11, 3, 'lutff_global/clk')
// (11, 30, 'neigh_op_tnr_2')
// (11, 30, 'neigh_op_tnr_6')
// (12, 1, 'lutff_global/clk')
// (12, 2, 'lutff_global/clk')
// (12, 3, 'lutff_global/clk')
// (12, 30, 'neigh_op_top_2')
// (12, 30, 'neigh_op_top_6')
// (12, 31, 'fabout')
// (12, 31, 'io_1/D_IN_0')
// (12, 31, 'io_1/PAD')
// (12, 31, 'local_g1_2')
// (12, 31, 'span4_horz_r_2')
// (13, 1, 'lutff_global/clk')
// (13, 2, 'lutff_global/clk')
// (13, 3, 'lutff_global/clk')
// (13, 4, 'lutff_global/clk')
// (13, 30, 'neigh_op_tnl_2')
// (13, 30, 'neigh_op_tnl_6')
// (13, 31, 'span4_horz_r_6')
// (14, 31, 'span4_horz_r_10')
// (15, 1, 'lutff_global/clk')
// (15, 2, 'lutff_global/clk')
// (15, 3, 'lutff_global/clk')
// (15, 4, 'lutff_global/clk')
// (15, 5, 'lutff_global/clk')
// (15, 31, 'span4_horz_r_14')
// (16, 1, 'lutff_global/clk')
// (16, 31, 'span4_horz_l_14')

wire n3;
// (0, 0, 'glb_netwk_5')
// (11, 1, 'lutff_global/cen')
// (11, 1, 'sp4_r_v_b_28')
// (11, 2, 'lutff_global/cen')
// (11, 2, 'sp4_r_v_b_17')
// (11, 3, 'lutff_global/cen')
// (11, 3, 'sp4_r_v_b_4')
// (12, 0, 'fabout')
// (12, 0, 'local_g1_4')
// (12, 0, 'span4_vert_28')
// (12, 1, 'lutff_global/cen')
// (12, 1, 'sp4_v_b_28')
// (12, 2, 'lutff_global/cen')
// (12, 2, 'neigh_op_tnr_3')
// (12, 2, 'sp4_v_b_17')
// (12, 3, 'lutff_global/cen')
// (12, 3, 'neigh_op_rgt_3')
// (12, 3, 'sp4_h_r_11')
// (12, 3, 'sp4_v_b_4')
// (12, 4, 'neigh_op_bnr_3')
// (13, 0, 'span12_vert_10')
// (13, 1, 'lutff_global/cen')
// (13, 1, 'sp12_v_b_10')
// (13, 2, 'neigh_op_top_3')
// (13, 2, 'sp12_v_b_9')
// (13, 3, 'lutff_3/out')
// (13, 3, 'lutff_global/cen')
// (13, 3, 'sp12_v_b_6')
// (13, 3, 'sp4_h_r_22')
// (13, 4, 'local_g3_5')
// (13, 4, 'lutff_global/s_r')
// (13, 4, 'neigh_op_bot_3')
// (13, 4, 'sp12_v_b_5')
// (13, 5, 'sp12_v_b_2')
// (13, 6, 'sp12_v_b_1')
// (14, 2, 'neigh_op_tnl_3')
// (14, 3, 'neigh_op_lft_3')
// (14, 3, 'sp4_h_r_35')
// (14, 4, 'neigh_op_bnl_3')
// (15, 1, 'lutff_global/cen')
// (15, 3, 'sp4_h_r_46')
// (16, 3, 'sp4_h_l_46')

wire n4;
// (0, 0, 'glb_netwk_7')
// (15, 2, 'lutff_global/cen')
// (15, 3, 'lutff_global/cen')
// (15, 4, 'lutff_global/cen')
// (15, 5, 'lutff_global/cen')
// (16, 1, 'lutff_global/cen')
// (17, 0, 'logic_op_tnr_1')
// (17, 1, 'neigh_op_rgt_1')
// (17, 2, 'neigh_op_bnr_1')
// (18, 0, 'logic_op_top_1')
// (18, 1, 'lutff_1/out')
// (18, 2, 'neigh_op_bot_1')
// (19, 0, 'fabout')
// (19, 0, 'local_g0_1')
// (19, 0, 'logic_op_tnl_1')
// (19, 1, 'neigh_op_lft_1')
// (19, 2, 'neigh_op_bnl_1')

reg n5 = 0;
// (10, 0, 'logic_op_tnr_0')
// (10, 1, 'neigh_op_rgt_0')
// (10, 2, 'neigh_op_bnr_0')
// (11, 0, 'logic_op_top_0')
// (11, 1, 'local_g0_0')
// (11, 1, 'lutff_0/out')
// (11, 1, 'lutff_6/in_0')
// (11, 2, 'local_g1_0')
// (11, 2, 'lutff_4/in_3')
// (11, 2, 'neigh_op_bot_0')
// (12, 0, 'logic_op_tnl_0')
// (12, 1, 'neigh_op_lft_0')
// (12, 2, 'neigh_op_bnl_0')

reg n6 = 0;
// (10, 0, 'logic_op_tnr_2')
// (10, 1, 'neigh_op_rgt_2')
// (10, 2, 'neigh_op_bnr_2')
// (11, 0, 'logic_op_top_2')
// (11, 1, 'lutff_2/out')
// (11, 2, 'local_g0_2')
// (11, 2, 'lutff_1/in_3')
// (11, 2, 'lutff_6/in_0')
// (11, 2, 'neigh_op_bot_2')
// (12, 0, 'logic_op_tnl_2')
// (12, 1, 'neigh_op_lft_2')
// (12, 2, 'neigh_op_bnl_2')

reg n7 = 0;
// (10, 0, 'logic_op_tnr_3')
// (10, 1, 'neigh_op_rgt_3')
// (10, 2, 'neigh_op_bnr_3')
// (11, 0, 'logic_op_top_3')
// (11, 1, 'local_g0_3')
// (11, 1, 'lutff_2/in_3')
// (11, 1, 'lutff_3/out')
// (11, 2, 'local_g0_3')
// (11, 2, 'lutff_6/in_3')
// (11, 2, 'neigh_op_bot_3')
// (12, 0, 'logic_op_tnl_3')
// (12, 1, 'neigh_op_lft_3')
// (12, 2, 'neigh_op_bnl_3')

reg n8 = 0;
// (10, 0, 'logic_op_tnr_6')
// (10, 1, 'neigh_op_rgt_6')
// (10, 1, 'sp4_h_r_1')
// (10, 2, 'neigh_op_bnr_6')
// (11, 0, 'logic_op_top_6')
// (11, 1, 'local_g3_6')
// (11, 1, 'lutff_3/in_0')
// (11, 1, 'lutff_6/out')
// (11, 1, 'sp4_h_r_12')
// (11, 2, 'neigh_op_bot_6')
// (12, 0, 'logic_op_tnl_6')
// (12, 1, 'neigh_op_lft_6')
// (12, 1, 'sp4_h_r_25')
// (12, 2, 'neigh_op_bnl_6')
// (13, 1, 'local_g2_4')
// (13, 1, 'lutff_0/in_0')
// (13, 1, 'sp4_h_r_36')
// (14, 1, 'sp4_h_l_36')

reg n9 = 0;
// (10, 1, 'neigh_op_tnr_0')
// (10, 2, 'neigh_op_rgt_0')
// (10, 3, 'neigh_op_bnr_0')
// (11, 1, 'neigh_op_top_0')
// (11, 2, 'local_g0_0')
// (11, 2, 'lutff_0/out')
// (11, 2, 'lutff_2/in_2')
// (11, 2, 'lutff_4/in_2')
// (11, 3, 'neigh_op_bot_0')
// (12, 1, 'neigh_op_tnl_0')
// (12, 2, 'neigh_op_lft_0')
// (12, 3, 'neigh_op_bnl_0')

reg n10 = 0;
// (10, 1, 'neigh_op_tnr_1')
// (10, 2, 'neigh_op_rgt_1')
// (10, 3, 'neigh_op_bnr_1')
// (11, 1, 'neigh_op_top_1')
// (11, 2, 'local_g3_1')
// (11, 2, 'lutff_1/out')
// (11, 2, 'lutff_4/in_0')
// (11, 2, 'lutff_5/in_3')
// (11, 3, 'neigh_op_bot_1')
// (12, 1, 'neigh_op_tnl_1')
// (12, 2, 'neigh_op_lft_1')
// (12, 3, 'neigh_op_bnl_1')

reg n11 = 0;
// (10, 1, 'neigh_op_tnr_2')
// (10, 2, 'neigh_op_rgt_2')
// (10, 3, 'neigh_op_bnr_2')
// (11, 1, 'neigh_op_top_2')
// (11, 2, 'local_g1_2')
// (11, 2, 'lutff_2/out')
// (11, 2, 'lutff_6/in_1')
// (11, 2, 'lutff_7/in_2')
// (11, 3, 'neigh_op_bot_2')
// (12, 1, 'neigh_op_tnl_2')
// (12, 2, 'neigh_op_lft_2')
// (12, 3, 'neigh_op_bnl_2')

reg n12 = 0;
// (10, 1, 'neigh_op_tnr_3')
// (10, 2, 'neigh_op_rgt_3')
// (10, 3, 'neigh_op_bnr_3')
// (11, 1, 'neigh_op_top_3')
// (11, 2, 'local_g1_3')
// (11, 2, 'lutff_0/in_0')
// (11, 2, 'lutff_3/out')
// (11, 2, 'lutff_6/in_2')
// (11, 3, 'neigh_op_bot_3')
// (12, 1, 'neigh_op_tnl_3')
// (12, 2, 'neigh_op_lft_3')
// (12, 3, 'neigh_op_bnl_3')

wire n13;
// (10, 1, 'neigh_op_tnr_4')
// (10, 2, 'neigh_op_rgt_4')
// (10, 3, 'neigh_op_bnr_4')
// (11, 1, 'neigh_op_top_4')
// (11, 2, 'lutff_4/out')
// (11, 3, 'neigh_op_bot_4')
// (12, 1, 'neigh_op_tnl_4')
// (12, 2, 'local_g0_4')
// (12, 2, 'lutff_1/in_1')
// (12, 2, 'neigh_op_lft_4')
// (12, 3, 'neigh_op_bnl_4')

reg n14 = 0;
// (10, 1, 'neigh_op_tnr_5')
// (10, 2, 'neigh_op_rgt_5')
// (10, 3, 'neigh_op_bnr_5')
// (11, 1, 'neigh_op_top_5')
// (11, 2, 'local_g0_5')
// (11, 2, 'lutff_3/in_2')
// (11, 2, 'lutff_4/in_1')
// (11, 2, 'lutff_5/out')
// (11, 3, 'neigh_op_bot_5')
// (12, 1, 'neigh_op_tnl_5')
// (12, 2, 'neigh_op_lft_5')
// (12, 3, 'neigh_op_bnl_5')

wire n15;
// (10, 1, 'neigh_op_tnr_6')
// (10, 2, 'neigh_op_rgt_6')
// (10, 3, 'neigh_op_bnr_6')
// (11, 1, 'neigh_op_top_6')
// (11, 2, 'lutff_6/out')
// (11, 3, 'neigh_op_bot_6')
// (12, 1, 'neigh_op_tnl_6')
// (12, 2, 'local_g1_6')
// (12, 2, 'lutff_5/in_2')
// (12, 2, 'neigh_op_lft_6')
// (12, 3, 'neigh_op_bnl_6')

reg n16 = 0;
// (10, 1, 'neigh_op_tnr_7')
// (10, 2, 'neigh_op_rgt_7')
// (10, 3, 'neigh_op_bnr_7')
// (11, 1, 'neigh_op_top_7')
// (11, 2, 'lutff_7/out')
// (11, 3, 'local_g1_7')
// (11, 3, 'lutff_4/in_2')
// (11, 3, 'lutff_5/in_3')
// (11, 3, 'neigh_op_bot_7')
// (12, 1, 'neigh_op_tnl_7')
// (12, 2, 'neigh_op_lft_7')
// (12, 3, 'neigh_op_bnl_7')

wire n17;
// (10, 2, 'neigh_op_tnr_0')
// (10, 3, 'neigh_op_rgt_0')
// (10, 4, 'neigh_op_bnr_0')
// (11, 2, 'neigh_op_top_0')
// (11, 3, 'lutff_0/out')
// (11, 4, 'neigh_op_bot_0')
// (12, 2, 'local_g3_0')
// (12, 2, 'lutff_5/in_0')
// (12, 2, 'neigh_op_tnl_0')
// (12, 3, 'neigh_op_lft_0')
// (12, 4, 'neigh_op_bnl_0')

reg n18 = 0;
// (10, 2, 'neigh_op_tnr_1')
// (10, 3, 'neigh_op_rgt_1')
// (10, 4, 'neigh_op_bnr_1')
// (11, 2, 'neigh_op_top_1')
// (11, 3, 'local_g2_1')
// (11, 3, 'lutff_1/out')
// (11, 3, 'lutff_4/in_3')
// (11, 3, 'lutff_7/in_2')
// (11, 4, 'neigh_op_bot_1')
// (12, 2, 'neigh_op_tnl_1')
// (12, 3, 'neigh_op_lft_1')
// (12, 4, 'neigh_op_bnl_1')

reg n19 = 0;
// (10, 2, 'neigh_op_tnr_2')
// (10, 3, 'neigh_op_rgt_2')
// (10, 4, 'neigh_op_bnr_2')
// (11, 2, 'neigh_op_top_2')
// (11, 3, 'local_g3_2')
// (11, 3, 'lutff_2/out')
// (11, 3, 'lutff_4/in_1')
// (11, 4, 'neigh_op_bot_2')
// (12, 2, 'neigh_op_tnl_2')
// (12, 3, 'local_g0_2')
// (12, 3, 'lutff_0/in_0')
// (12, 3, 'neigh_op_lft_2')
// (12, 4, 'neigh_op_bnl_2')

reg n20 = 0;
// (10, 2, 'neigh_op_tnr_3')
// (10, 3, 'neigh_op_rgt_3')
// (10, 4, 'neigh_op_bnr_3')
// (11, 2, 'neigh_op_top_3')
// (11, 3, 'local_g3_3')
// (11, 3, 'lutff_0/in_2')
// (11, 3, 'lutff_1/in_3')
// (11, 3, 'lutff_3/out')
// (11, 4, 'neigh_op_bot_3')
// (12, 2, 'neigh_op_tnl_3')
// (12, 3, 'neigh_op_lft_3')
// (12, 4, 'neigh_op_bnl_3')

wire n21;
// (10, 2, 'neigh_op_tnr_4')
// (10, 3, 'neigh_op_rgt_4')
// (10, 4, 'neigh_op_bnr_4')
// (11, 2, 'neigh_op_top_4')
// (11, 3, 'lutff_4/out')
// (11, 4, 'neigh_op_bot_4')
// (12, 2, 'local_g3_4')
// (12, 2, 'lutff_1/in_0')
// (12, 2, 'neigh_op_tnl_4')
// (12, 3, 'neigh_op_lft_4')
// (12, 4, 'neigh_op_bnl_4')

reg n22 = 0;
// (10, 2, 'neigh_op_tnr_5')
// (10, 3, 'neigh_op_rgt_5')
// (10, 4, 'neigh_op_bnr_5')
// (11, 2, 'neigh_op_top_5')
// (11, 3, 'local_g1_5')
// (11, 3, 'lutff_3/in_1')
// (11, 3, 'lutff_4/in_0')
// (11, 3, 'lutff_5/out')
// (11, 4, 'neigh_op_bot_5')
// (12, 2, 'neigh_op_tnl_5')
// (12, 3, 'neigh_op_lft_5')
// (12, 4, 'neigh_op_bnl_5')

reg n23 = 0;
// (10, 2, 'neigh_op_tnr_6')
// (10, 3, 'neigh_op_rgt_6')
// (10, 4, 'neigh_op_bnr_6')
// (11, 2, 'neigh_op_top_6')
// (11, 3, 'local_g2_6')
// (11, 3, 'lutff_0/in_0')
// (11, 3, 'lutff_2/in_0')
// (11, 3, 'lutff_6/out')
// (11, 4, 'neigh_op_bot_6')
// (12, 2, 'neigh_op_tnl_6')
// (12, 3, 'neigh_op_lft_6')
// (12, 4, 'neigh_op_bnl_6')

reg n24 = 0;
// (10, 2, 'neigh_op_tnr_7')
// (10, 3, 'neigh_op_rgt_7')
// (10, 4, 'neigh_op_bnr_7')
// (11, 2, 'neigh_op_top_7')
// (11, 3, 'local_g0_7')
// (11, 3, 'lutff_0/in_3')
// (11, 3, 'lutff_6/in_3')
// (11, 3, 'lutff_7/out')
// (11, 4, 'neigh_op_bot_7')
// (12, 2, 'neigh_op_tnl_7')
// (12, 3, 'neigh_op_lft_7')
// (12, 4, 'neigh_op_bnl_7')

wire n25;
// (10, 4, 'sp4_h_r_9')
// (11, 4, 'sp4_h_r_20')
// (12, 3, 'neigh_op_tnr_6')
// (12, 4, 'neigh_op_rgt_6')
// (12, 4, 'sp4_h_r_33')
// (12, 5, 'neigh_op_bnr_6')
// (13, 1, 'sp4_r_v_b_38')
// (13, 2, 'sp4_r_v_b_27')
// (13, 3, 'neigh_op_top_6')
// (13, 3, 'sp4_r_v_b_14')
// (13, 4, 'local_g1_3')
// (13, 4, 'lutff_6/out')
// (13, 4, 'lutff_global/cen')
// (13, 4, 'sp4_h_r_44')
// (13, 4, 'sp4_r_v_b_3')
// (13, 5, 'neigh_op_bot_6')
// (14, 0, 'span4_vert_38')
// (14, 1, 'sp4_v_b_38')
// (14, 2, 'sp4_v_b_27')
// (14, 3, 'neigh_op_tnl_6')
// (14, 3, 'sp4_v_b_14')
// (14, 4, 'neigh_op_lft_6')
// (14, 4, 'sp4_h_l_44')
// (14, 4, 'sp4_v_b_3')
// (14, 5, 'neigh_op_bnl_6')

reg n26 = 0;
// (11, 0, 'logic_op_tnr_0')
// (11, 1, 'neigh_op_rgt_0')
// (11, 2, 'neigh_op_bnr_0')
// (12, 0, 'logic_op_top_0')
// (12, 1, 'local_g2_0')
// (12, 1, 'lutff_0/out')
// (12, 1, 'lutff_2/in_2')
// (12, 1, 'lutff_6/in_0')
// (12, 2, 'neigh_op_bot_0')
// (13, 0, 'logic_op_tnl_0')
// (13, 1, 'neigh_op_lft_0')
// (13, 2, 'neigh_op_bnl_0')

reg n27 = 0;
// (11, 0, 'logic_op_tnr_1')
// (11, 1, 'neigh_op_rgt_1')
// (11, 2, 'neigh_op_bnr_1')
// (12, 0, 'logic_op_top_1')
// (12, 1, 'lutff_1/out')
// (12, 2, 'neigh_op_bot_1')
// (13, 0, 'logic_op_tnl_1')
// (13, 1, 'local_g0_1')
// (13, 1, 'lutff_2/in_1')
// (13, 1, 'lutff_5/in_0')
// (13, 1, 'neigh_op_lft_1')
// (13, 2, 'neigh_op_bnl_1')

reg n28 = 0;
// (11, 0, 'logic_op_tnr_2')
// (11, 1, 'neigh_op_rgt_2')
// (11, 2, 'neigh_op_bnr_2')
// (12, 0, 'logic_op_top_2')
// (12, 1, 'local_g3_2')
// (12, 1, 'lutff_2/out')
// (12, 1, 'lutff_3/in_0')
// (12, 1, 'lutff_7/in_0')
// (12, 2, 'neigh_op_bot_2')
// (13, 0, 'logic_op_tnl_2')
// (13, 1, 'neigh_op_lft_2')
// (13, 2, 'neigh_op_bnl_2')

reg n29 = 0;
// (11, 0, 'logic_op_tnr_3')
// (11, 1, 'local_g2_3')
// (11, 1, 'lutff_0/in_1')
// (11, 1, 'neigh_op_rgt_3')
// (11, 2, 'neigh_op_bnr_3')
// (12, 0, 'logic_op_top_3')
// (12, 1, 'local_g1_3')
// (12, 1, 'lutff_3/out')
// (12, 1, 'lutff_7/in_1')
// (12, 2, 'neigh_op_bot_3')
// (13, 0, 'logic_op_tnl_3')
// (13, 1, 'neigh_op_lft_3')
// (13, 2, 'neigh_op_bnl_3')

reg n30 = 0;
// (11, 0, 'logic_op_tnr_4')
// (11, 1, 'neigh_op_rgt_4')
// (11, 2, 'neigh_op_bnr_4')
// (12, 0, 'logic_op_top_4')
// (12, 1, 'local_g3_4')
// (12, 1, 'lutff_0/in_1')
// (12, 1, 'lutff_4/out')
// (12, 1, 'lutff_7/in_2')
// (12, 2, 'neigh_op_bot_4')
// (13, 0, 'logic_op_tnl_4')
// (13, 1, 'neigh_op_lft_4')
// (13, 2, 'neigh_op_bnl_4')

reg n31 = 0;
// (11, 0, 'logic_op_tnr_5')
// (11, 1, 'neigh_op_rgt_5')
// (11, 2, 'neigh_op_bnr_5')
// (12, 0, 'logic_op_top_5')
// (12, 1, 'local_g3_5')
// (12, 1, 'lutff_4/in_0')
// (12, 1, 'lutff_5/out')
// (12, 1, 'lutff_7/in_3')
// (12, 2, 'neigh_op_bot_5')
// (13, 0, 'logic_op_tnl_5')
// (13, 1, 'neigh_op_lft_5')
// (13, 2, 'neigh_op_bnl_5')

wire n32;
// (11, 0, 'logic_op_tnr_6')
// (11, 1, 'neigh_op_rgt_6')
// (11, 2, 'neigh_op_bnr_6')
// (12, 0, 'logic_op_top_6')
// (12, 1, 'lutff_6/out')
// (12, 2, 'local_g0_6')
// (12, 2, 'lutff_5/in_3')
// (12, 2, 'neigh_op_bot_6')
// (13, 0, 'logic_op_tnl_6')
// (13, 1, 'neigh_op_lft_6')
// (13, 2, 'neigh_op_bnl_6')

wire n33;
// (11, 0, 'logic_op_tnr_7')
// (11, 1, 'neigh_op_rgt_7')
// (11, 2, 'neigh_op_bnr_7')
// (12, 0, 'logic_op_top_7')
// (12, 1, 'lutff_7/out')
// (12, 2, 'local_g1_7')
// (12, 2, 'lutff_1/in_3')
// (12, 2, 'neigh_op_bot_7')
// (13, 0, 'logic_op_tnl_7')
// (13, 1, 'neigh_op_lft_7')
// (13, 2, 'neigh_op_bnl_7')

wire n34;
// (11, 1, 'neigh_op_tnr_0')
// (11, 1, 'sp4_r_v_b_13')
// (11, 2, 'neigh_op_rgt_0')
// (11, 2, 'sp4_r_v_b_0')
// (11, 3, 'neigh_op_bnr_0')
// (12, 0, 'span4_vert_13')
// (12, 1, 'neigh_op_top_0')
// (12, 1, 'sp4_v_b_13')
// (12, 2, 'lutff_0/out')
// (12, 2, 'sp4_h_r_6')
// (12, 2, 'sp4_v_b_0')
// (12, 3, 'neigh_op_bot_0')
// (13, 1, 'neigh_op_tnl_0')
// (13, 2, 'local_g1_3')
// (13, 2, 'lutff_global/cen')
// (13, 2, 'neigh_op_lft_0')
// (13, 2, 'sp4_h_r_19')
// (13, 3, 'neigh_op_bnl_0')
// (14, 2, 'sp4_h_r_30')
// (15, 2, 'sp4_h_r_43')
// (16, 2, 'sp4_h_l_43')

wire n35;
// (11, 1, 'neigh_op_tnr_1')
// (11, 2, 'neigh_op_rgt_1')
// (11, 3, 'neigh_op_bnr_1')
// (12, 1, 'neigh_op_top_1')
// (12, 2, 'local_g2_1')
// (12, 2, 'lutff_0/in_1')
// (12, 2, 'lutff_1/out')
// (12, 3, 'neigh_op_bot_1')
// (13, 1, 'neigh_op_tnl_1')
// (13, 2, 'neigh_op_lft_1')
// (13, 3, 'neigh_op_bnl_1')

reg n36 = 0;
// (11, 1, 'neigh_op_tnr_2')
// (11, 2, 'neigh_op_rgt_2')
// (11, 3, 'neigh_op_bnr_2')
// (12, 1, 'local_g0_2')
// (12, 1, 'lutff_1/in_3')
// (12, 1, 'neigh_op_top_2')
// (12, 2, 'local_g2_2')
// (12, 2, 'lutff_2/out')
// (12, 2, 'lutff_7/in_3')
// (12, 3, 'neigh_op_bot_2')
// (13, 1, 'neigh_op_tnl_2')
// (13, 2, 'neigh_op_lft_2')
// (13, 3, 'neigh_op_bnl_2')

reg n37 = 0;
// (11, 1, 'neigh_op_tnr_3')
// (11, 2, 'neigh_op_rgt_3')
// (11, 3, 'neigh_op_bnr_3')
// (12, 1, 'neigh_op_top_3')
// (12, 2, 'local_g2_3')
// (12, 2, 'lutff_3/out')
// (12, 2, 'lutff_7/in_2')
// (12, 3, 'local_g0_3')
// (12, 3, 'lutff_5/in_2')
// (12, 3, 'neigh_op_bot_3')
// (13, 1, 'neigh_op_tnl_3')
// (13, 2, 'neigh_op_lft_3')
// (13, 3, 'neigh_op_bnl_3')

wire n38;
// (11, 1, 'neigh_op_tnr_4')
// (11, 2, 'neigh_op_rgt_4')
// (11, 3, 'neigh_op_bnr_4')
// (12, 1, 'neigh_op_top_4')
// (12, 2, 'local_g2_4')
// (12, 2, 'lutff_0/in_2')
// (12, 2, 'lutff_4/out')
// (12, 3, 'neigh_op_bot_4')
// (13, 1, 'neigh_op_tnl_4')
// (13, 2, 'neigh_op_lft_4')
// (13, 3, 'neigh_op_bnl_4')

wire n39;
// (11, 1, 'neigh_op_tnr_5')
// (11, 2, 'neigh_op_rgt_5')
// (11, 3, 'neigh_op_bnr_5')
// (12, 1, 'neigh_op_top_5')
// (12, 2, 'local_g2_5')
// (12, 2, 'lutff_0/in_3')
// (12, 2, 'lutff_5/out')
// (12, 3, 'neigh_op_bot_5')
// (13, 1, 'neigh_op_tnl_5')
// (13, 2, 'neigh_op_lft_5')
// (13, 3, 'neigh_op_bnl_5')

wire n40;
// (11, 1, 'neigh_op_tnr_7')
// (11, 2, 'neigh_op_rgt_7')
// (11, 3, 'neigh_op_bnr_7')
// (12, 1, 'neigh_op_top_7')
// (12, 2, 'local_g2_7')
// (12, 2, 'lutff_4/in_3')
// (12, 2, 'lutff_7/out')
// (12, 3, 'neigh_op_bot_7')
// (13, 1, 'neigh_op_tnl_7')
// (13, 2, 'neigh_op_lft_7')
// (13, 3, 'neigh_op_bnl_7')

reg n41 = 0;
// (11, 2, 'neigh_op_tnr_0')
// (11, 3, 'neigh_op_rgt_0')
// (11, 4, 'neigh_op_bnr_0')
// (12, 2, 'local_g1_0')
// (12, 2, 'lutff_7/in_0')
// (12, 2, 'neigh_op_top_0')
// (12, 3, 'local_g3_0')
// (12, 3, 'lutff_0/out')
// (12, 3, 'lutff_3/in_0')
// (12, 4, 'neigh_op_bot_0')
// (13, 2, 'neigh_op_tnl_0')
// (13, 3, 'neigh_op_lft_0')
// (13, 4, 'neigh_op_bnl_0')

reg n42 = 0;
// (11, 2, 'neigh_op_tnr_1')
// (11, 3, 'neigh_op_rgt_1')
// (11, 4, 'neigh_op_bnr_1')
// (12, 2, 'neigh_op_top_1')
// (12, 3, 'local_g2_1')
// (12, 3, 'lutff_1/out')
// (12, 3, 'lutff_2/in_3')
// (12, 3, 'lutff_6/in_3')
// (12, 4, 'neigh_op_bot_1')
// (13, 2, 'neigh_op_tnl_1')
// (13, 3, 'neigh_op_lft_1')
// (13, 4, 'neigh_op_bnl_1')

wire n43;
// (11, 2, 'neigh_op_tnr_2')
// (11, 3, 'neigh_op_rgt_2')
// (11, 4, 'neigh_op_bnr_2')
// (12, 2, 'local_g0_2')
// (12, 2, 'lutff_4/in_0')
// (12, 2, 'neigh_op_top_2')
// (12, 3, 'lutff_2/out')
// (12, 4, 'neigh_op_bot_2')
// (13, 2, 'neigh_op_tnl_2')
// (13, 3, 'neigh_op_lft_2')
// (13, 4, 'neigh_op_bnl_2')

reg n44 = 0;
// (11, 2, 'neigh_op_tnr_3')
// (11, 3, 'neigh_op_rgt_3')
// (11, 4, 'neigh_op_bnr_3')
// (12, 2, 'local_g1_3')
// (12, 2, 'lutff_7/in_1')
// (12, 2, 'neigh_op_top_3')
// (12, 3, 'local_g3_3')
// (12, 3, 'lutff_3/out')
// (12, 3, 'lutff_7/in_3')
// (12, 4, 'neigh_op_bot_3')
// (13, 2, 'neigh_op_tnl_3')
// (13, 3, 'neigh_op_lft_3')
// (13, 4, 'neigh_op_bnl_3')

reg n45 = 0;
// (11, 2, 'neigh_op_tnr_4')
// (11, 3, 'neigh_op_rgt_4')
// (11, 4, 'neigh_op_bnr_4')
// (12, 2, 'neigh_op_top_4')
// (12, 3, 'local_g0_4')
// (12, 3, 'lutff_2/in_2')
// (12, 3, 'lutff_4/out')
// (12, 4, 'neigh_op_bot_4')
// (13, 2, 'neigh_op_tnl_4')
// (13, 3, 'local_g0_4')
// (13, 3, 'lutff_5/in_3')
// (13, 3, 'neigh_op_lft_4')
// (13, 4, 'neigh_op_bnl_4')

reg n46 = 0;
// (11, 2, 'neigh_op_tnr_5')
// (11, 3, 'neigh_op_rgt_5')
// (11, 4, 'neigh_op_bnr_5')
// (12, 2, 'neigh_op_top_5')
// (12, 3, 'local_g2_5')
// (12, 3, 'lutff_1/in_2')
// (12, 3, 'lutff_2/in_1')
// (12, 3, 'lutff_5/out')
// (12, 4, 'neigh_op_bot_5')
// (13, 2, 'neigh_op_tnl_5')
// (13, 3, 'neigh_op_lft_5')
// (13, 4, 'neigh_op_bnl_5')

reg n47 = 0;
// (11, 2, 'neigh_op_tnr_6')
// (11, 3, 'neigh_op_rgt_6')
// (11, 4, 'neigh_op_bnr_6')
// (12, 2, 'neigh_op_top_6')
// (12, 3, 'local_g2_6')
// (12, 3, 'lutff_2/in_0')
// (12, 3, 'lutff_4/in_0')
// (12, 3, 'lutff_6/out')
// (12, 4, 'neigh_op_bot_6')
// (13, 2, 'neigh_op_tnl_6')
// (13, 3, 'neigh_op_lft_6')
// (13, 4, 'neigh_op_bnl_6')

reg n48 = 0;
// (11, 2, 'neigh_op_tnr_7')
// (11, 3, 'local_g2_7')
// (11, 3, 'lutff_0/in_1')
// (11, 3, 'neigh_op_rgt_7')
// (11, 4, 'neigh_op_bnr_7')
// (12, 2, 'local_g0_7')
// (12, 2, 'lutff_2/in_3')
// (12, 2, 'neigh_op_top_7')
// (12, 3, 'lutff_7/out')
// (12, 4, 'neigh_op_bot_7')
// (13, 2, 'neigh_op_tnl_7')
// (13, 3, 'neigh_op_lft_7')
// (13, 4, 'neigh_op_bnl_7')

wire n49;
// (12, 0, 'logic_op_tnr_0')
// (12, 1, 'neigh_op_rgt_0')
// (12, 2, 'local_g0_0')
// (12, 2, 'lutff_5/in_1')
// (12, 2, 'neigh_op_bnr_0')
// (13, 0, 'logic_op_top_0')
// (13, 1, 'lutff_0/out')
// (13, 2, 'neigh_op_bot_0')
// (14, 0, 'logic_op_tnl_0')
// (14, 1, 'neigh_op_lft_0')
// (14, 2, 'neigh_op_bnl_0')

reg n50 = 0;
// (12, 0, 'logic_op_tnr_1')
// (12, 1, 'neigh_op_rgt_1')
// (12, 2, 'neigh_op_bnr_1')
// (13, 0, 'logic_op_top_1')
// (13, 1, 'local_g1_1')
// (13, 1, 'lutff_0/in_2')
// (13, 1, 'lutff_1/out')
// (13, 1, 'lutff_6/in_0')
// (13, 2, 'neigh_op_bot_1')
// (14, 0, 'logic_op_tnl_1')
// (14, 1, 'neigh_op_lft_1')
// (14, 2, 'neigh_op_bnl_1')

reg n51 = 0;
// (12, 0, 'logic_op_tnr_2')
// (12, 1, 'neigh_op_rgt_2')
// (12, 2, 'local_g1_2')
// (12, 2, 'lutff_3/in_0')
// (12, 2, 'neigh_op_bnr_2')
// (13, 0, 'logic_op_top_2')
// (13, 1, 'local_g0_2')
// (13, 1, 'lutff_2/out')
// (13, 1, 'lutff_5/in_3')
// (13, 2, 'neigh_op_bot_2')
// (14, 0, 'logic_op_tnl_2')
// (14, 1, 'neigh_op_lft_2')
// (14, 2, 'neigh_op_bnl_2')

reg n52 = 0;
// (12, 0, 'logic_op_tnr_3')
// (12, 1, 'neigh_op_rgt_3')
// (12, 2, 'neigh_op_bnr_3')
// (13, 0, 'logic_op_top_3')
// (13, 1, 'lutff_3/out')
// (13, 2, 'local_g0_3')
// (13, 2, 'lutff_5/in_0')
// (13, 2, 'neigh_op_bot_3')
// (14, 0, 'logic_op_tnl_3')
// (14, 1, 'neigh_op_lft_3')
// (14, 2, 'neigh_op_bnl_3')

reg n53 = 0;
// (12, 0, 'logic_op_tnr_4')
// (12, 1, 'local_g2_4')
// (12, 1, 'lutff_5/in_3')
// (12, 1, 'neigh_op_rgt_4')
// (12, 2, 'neigh_op_bnr_4')
// (13, 0, 'logic_op_top_4')
// (13, 1, 'local_g1_4')
// (13, 1, 'lutff_4/out')
// (13, 1, 'lutff_5/in_2')
// (13, 2, 'neigh_op_bot_4')
// (14, 0, 'logic_op_tnl_4')
// (14, 1, 'neigh_op_lft_4')
// (14, 2, 'neigh_op_bnl_4')

wire n54;
// (12, 0, 'logic_op_tnr_5')
// (12, 1, 'neigh_op_rgt_5')
// (12, 2, 'local_g0_5')
// (12, 2, 'lutff_1/in_2')
// (12, 2, 'neigh_op_bnr_5')
// (13, 0, 'logic_op_top_5')
// (13, 1, 'lutff_5/out')
// (13, 2, 'neigh_op_bot_5')
// (14, 0, 'logic_op_tnl_5')
// (14, 1, 'neigh_op_lft_5')
// (14, 2, 'neigh_op_bnl_5')

reg n55 = 0;
// (12, 0, 'logic_op_tnr_6')
// (12, 1, 'neigh_op_rgt_6')
// (12, 2, 'neigh_op_bnr_6')
// (13, 0, 'logic_op_top_6')
// (13, 1, 'local_g3_6')
// (13, 1, 'lutff_0/in_3')
// (13, 1, 'lutff_3/in_2')
// (13, 1, 'lutff_6/out')
// (13, 2, 'neigh_op_bot_6')
// (14, 0, 'logic_op_tnl_6')
// (14, 1, 'neigh_op_lft_6')
// (14, 2, 'neigh_op_bnl_6')

reg n56 = 0;
// (12, 1, 'local_g1_0')
// (12, 1, 'lutff_6/in_3')
// (12, 1, 'sp4_r_v_b_24')
// (12, 2, 'neigh_op_tnr_0')
// (12, 2, 'sp4_r_v_b_13')
// (12, 3, 'neigh_op_rgt_0')
// (12, 3, 'sp4_r_v_b_0')
// (12, 4, 'neigh_op_bnr_0')
// (13, 0, 'span4_vert_24')
// (13, 1, 'local_g2_0')
// (13, 1, 'lutff_1/in_1')
// (13, 1, 'sp4_v_b_24')
// (13, 2, 'neigh_op_top_0')
// (13, 2, 'sp4_v_b_13')
// (13, 3, 'lutff_0/out')
// (13, 3, 'sp4_v_b_0')
// (13, 4, 'neigh_op_bot_0')
// (14, 2, 'neigh_op_tnl_0')
// (14, 3, 'neigh_op_lft_0')
// (14, 4, 'neigh_op_bnl_0')

wire n57;
// (12, 1, 'neigh_op_tnr_5')
// (12, 2, 'local_g3_5')
// (12, 2, 'lutff_4/in_2')
// (12, 2, 'neigh_op_rgt_5')
// (12, 3, 'neigh_op_bnr_5')
// (13, 1, 'neigh_op_top_5')
// (13, 2, 'lutff_5/out')
// (13, 3, 'neigh_op_bot_5')
// (14, 1, 'neigh_op_tnl_5')
// (14, 2, 'neigh_op_lft_5')
// (14, 3, 'neigh_op_bnl_5')

reg n58 = 0;
// (12, 1, 'neigh_op_tnr_6')
// (12, 2, 'neigh_op_rgt_6')
// (12, 3, 'neigh_op_bnr_6')
// (13, 1, 'neigh_op_top_6')
// (13, 2, 'local_g0_6')
// (13, 2, 'lutff_5/in_1')
// (13, 2, 'lutff_6/out')
// (13, 3, 'neigh_op_bot_6')
// (14, 1, 'neigh_op_tnl_6')
// (14, 2, 'neigh_op_lft_6')
// (14, 3, 'neigh_op_bnl_6')

reg LED1 = 0;
assign iLED1 = LED1;
// (12, 1, 'neigh_op_tnr_7')
// (12, 2, 'neigh_op_rgt_7')
// (12, 3, 'neigh_op_bnr_7')
// (13, 1, 'neigh_op_top_7')
// (13, 2, 'local_g0_7')
// (13, 2, 'lutff_7/in_0')
// (13, 2, 'lutff_7/out')
// (13, 2, 'sp4_r_v_b_47')
// (13, 3, 'neigh_op_bot_7')
// (13, 3, 'sp4_r_v_b_34')
// (13, 4, 'sp4_r_v_b_23')
// (13, 5, 'sp4_r_v_b_10')
// (14, 1, 'neigh_op_tnl_7')
// (14, 1, 'sp4_v_t_47')
// (14, 2, 'neigh_op_lft_7')
// (14, 2, 'sp4_v_b_47')
// (14, 3, 'neigh_op_bnl_7')
// (14, 3, 'sp4_v_b_34')
// (14, 4, 'sp4_v_b_23')
// (14, 5, 'sp4_h_r_4')
// (14, 5, 'sp4_v_b_10')
// (15, 5, 'sp4_h_r_17')
// (16, 5, 'sp4_h_r_28')
// (17, 5, 'sp4_h_r_41')
// (17, 6, 'sp4_r_v_b_44')
// (17, 7, 'sp4_r_v_b_33')
// (17, 8, 'sp4_r_v_b_20')
// (17, 9, 'sp4_r_v_b_9')
// (17, 10, 'sp4_r_v_b_40')
// (17, 11, 'sp4_r_v_b_29')
// (17, 12, 'sp4_r_v_b_16')
// (17, 13, 'sp4_r_v_b_5')
// (17, 14, 'sp4_r_v_b_40')
// (17, 15, 'sp4_r_v_b_29')
// (17, 16, 'sp4_r_v_b_16')
// (17, 17, 'sp4_r_v_b_5')
// (17, 18, 'sp4_r_v_b_40')
// (17, 19, 'sp4_r_v_b_29')
// (17, 20, 'sp4_r_v_b_16')
// (17, 21, 'sp4_r_v_b_5')
// (17, 22, 'sp4_r_v_b_45')
// (17, 23, 'sp4_r_v_b_32')
// (17, 24, 'sp4_r_v_b_21')
// (17, 25, 'sp4_r_v_b_8')
// (17, 26, 'sp4_r_v_b_46')
// (17, 27, 'sp4_r_v_b_35')
// (17, 28, 'sp4_r_v_b_22')
// (17, 29, 'sp4_r_v_b_11')
// (17, 30, 'sp4_r_v_b_39')
// (18, 5, 'sp4_h_l_41')
// (18, 5, 'sp4_v_t_44')
// (18, 6, 'sp4_v_b_44')
// (18, 7, 'sp4_v_b_33')
// (18, 8, 'sp4_v_b_20')
// (18, 9, 'sp4_v_b_9')
// (18, 9, 'sp4_v_t_40')
// (18, 10, 'sp4_v_b_40')
// (18, 11, 'sp4_v_b_29')
// (18, 12, 'sp4_v_b_16')
// (18, 13, 'sp4_v_b_5')
// (18, 13, 'sp4_v_t_40')
// (18, 14, 'sp4_v_b_40')
// (18, 15, 'sp4_v_b_29')
// (18, 16, 'sp4_v_b_16')
// (18, 17, 'sp4_v_b_5')
// (18, 17, 'sp4_v_t_40')
// (18, 18, 'sp4_v_b_40')
// (18, 19, 'sp4_v_b_29')
// (18, 20, 'sp4_v_b_16')
// (18, 21, 'sp4_v_b_5')
// (18, 21, 'sp4_v_t_45')
// (18, 22, 'sp4_v_b_45')
// (18, 23, 'sp4_v_b_32')
// (18, 24, 'sp4_v_b_21')
// (18, 25, 'sp4_v_b_8')
// (18, 25, 'sp4_v_t_46')
// (18, 26, 'sp4_v_b_46')
// (18, 27, 'sp4_v_b_35')
// (18, 28, 'sp4_v_b_22')
// (18, 29, 'sp4_v_b_11')
// (18, 29, 'sp4_v_t_39')
// (18, 30, 'sp4_v_b_39')
// (18, 31, 'io_0/D_OUT_0')
// (18, 31, 'io_0/PAD')
// (18, 31, 'local_g0_2')
// (18, 31, 'span4_vert_26')

reg n60 = 0;
// (12, 1, 'sp4_h_r_3')
// (13, 1, 'local_g1_6')
// (13, 1, 'lutff_0/in_1')
// (13, 1, 'sp4_h_r_14')
// (14, 0, 'logic_op_tnr_3')
// (14, 1, 'neigh_op_rgt_3')
// (14, 1, 'sp4_h_r_27')
// (14, 2, 'neigh_op_bnr_3')
// (15, 0, 'logic_op_top_3')
// (15, 1, 'local_g2_3')
// (15, 1, 'lutff_0/in_3')
// (15, 1, 'lutff_3/out')
// (15, 1, 'sp4_h_r_38')
// (15, 2, 'neigh_op_bot_3')
// (16, 0, 'logic_op_tnl_3')
// (16, 1, 'neigh_op_lft_3')
// (16, 1, 'sp4_h_l_38')
// (16, 2, 'neigh_op_bnl_3')

reg n61 = 0;
// (12, 2, 'neigh_op_tnr_5')
// (12, 3, 'neigh_op_rgt_5')
// (12, 4, 'neigh_op_bnr_5')
// (13, 2, 'local_g0_5')
// (13, 2, 'lutff_5/in_2')
// (13, 2, 'neigh_op_top_5')
// (13, 3, 'local_g1_5')
// (13, 3, 'lutff_0/in_0')
// (13, 3, 'lutff_5/out')
// (13, 4, 'neigh_op_bot_5')
// (14, 2, 'neigh_op_tnl_5')
// (14, 3, 'neigh_op_lft_5')
// (14, 4, 'neigh_op_bnl_5')

wire n62;
// (12, 2, 'sp4_r_v_b_39')
// (12, 3, 'sp4_h_r_8')
// (12, 3, 'sp4_r_v_b_26')
// (12, 4, 'sp4_r_v_b_15')
// (12, 5, 'sp4_r_v_b_2')
// (13, 1, 'sp4_h_r_2')
// (13, 1, 'sp4_v_t_39')
// (13, 2, 'sp4_v_b_39')
// (13, 3, 'local_g0_5')
// (13, 3, 'lutff_3/in_0')
// (13, 3, 'sp4_h_r_21')
// (13, 3, 'sp4_v_b_26')
// (13, 4, 'local_g0_7')
// (13, 4, 'lutff_1/in_0')
// (13, 4, 'lutff_7/in_0')
// (13, 4, 'sp4_v_b_15')
// (13, 5, 'sp4_v_b_2')
// (14, 0, 'logic_op_tnr_5')
// (14, 1, 'neigh_op_rgt_5')
// (14, 1, 'sp4_h_r_15')
// (14, 2, 'neigh_op_bnr_5')
// (14, 3, 'sp4_h_r_32')
// (15, 0, 'logic_op_top_5')
// (15, 1, 'lutff_5/out')
// (15, 1, 'sp4_h_r_26')
// (15, 1, 'sp4_r_v_b_27')
// (15, 2, 'neigh_op_bot_5')
// (15, 2, 'sp4_r_v_b_14')
// (15, 3, 'sp4_h_r_45')
// (15, 3, 'sp4_r_v_b_3')
// (16, 0, 'logic_op_tnl_5')
// (16, 0, 'span4_vert_27')
// (16, 1, 'neigh_op_lft_5')
// (16, 1, 'sp4_h_r_39')
// (16, 1, 'sp4_v_b_27')
// (16, 2, 'neigh_op_bnl_5')
// (16, 2, 'sp4_v_b_14')
// (16, 3, 'sp4_h_l_45')
// (16, 3, 'sp4_v_b_3')
// (17, 1, 'sp4_h_l_39')

wire n63;
// (12, 3, 'neigh_op_tnr_1')
// (12, 4, 'neigh_op_rgt_1')
// (12, 5, 'neigh_op_bnr_1')
// (13, 3, 'neigh_op_top_1')
// (13, 4, 'local_g2_1')
// (13, 4, 'lutff_1/out')
// (13, 4, 'lutff_6/in_3')
// (13, 5, 'neigh_op_bot_1')
// (14, 3, 'neigh_op_tnl_1')
// (14, 4, 'neigh_op_lft_1')
// (14, 5, 'neigh_op_bnl_1')

reg n64 = 0;
// (12, 3, 'neigh_op_tnr_4')
// (12, 4, 'neigh_op_rgt_4')
// (12, 5, 'neigh_op_bnr_4')
// (13, 3, 'local_g1_4')
// (13, 3, 'lutff_3/in_2')
// (13, 3, 'neigh_op_top_4')
// (13, 3, 'sp4_r_v_b_36')
// (13, 4, 'local_g3_4')
// (13, 4, 'lutff_1/in_2')
// (13, 4, 'lutff_4/out')
// (13, 4, 'sp4_r_v_b_25')
// (13, 5, 'neigh_op_bot_4')
// (13, 5, 'sp4_r_v_b_12')
// (13, 6, 'sp4_r_v_b_1')
// (14, 2, 'sp4_h_r_6')
// (14, 2, 'sp4_v_t_36')
// (14, 3, 'neigh_op_tnl_4')
// (14, 3, 'sp4_v_b_36')
// (14, 4, 'neigh_op_lft_4')
// (14, 4, 'sp4_v_b_25')
// (14, 5, 'local_g2_4')
// (14, 5, 'lutff_0/in_0')
// (14, 5, 'neigh_op_bnl_4')
// (14, 5, 'sp4_v_b_12')
// (14, 6, 'sp4_v_b_1')
// (15, 2, 'sp4_h_r_19')
// (16, 2, 'sp4_h_r_30')
// (17, 1, 'sp4_r_v_b_13')
// (17, 2, 'sp4_h_r_43')
// (17, 2, 'sp4_r_v_b_0')
// (18, 0, 'span4_vert_13')
// (18, 1, 'local_g0_5')
// (18, 1, 'lutff_1/in_0')
// (18, 1, 'sp4_v_b_13')
// (18, 2, 'sp4_h_l_43')
// (18, 2, 'sp4_v_b_0')

wire n65;
// (12, 4, 'sp4_h_r_4')
// (13, 4, 'local_g0_1')
// (13, 4, 'lutff_6/in_1')
// (13, 4, 'lutff_7/in_2')
// (13, 4, 'sp4_h_r_17')
// (14, 4, 'sp4_h_r_28')
// (15, 1, 'neigh_op_tnr_6')
// (15, 1, 'sp4_r_v_b_41')
// (15, 2, 'neigh_op_rgt_6')
// (15, 2, 'sp4_r_v_b_28')
// (15, 3, 'neigh_op_bnr_6')
// (15, 3, 'sp4_r_v_b_17')
// (15, 4, 'sp4_h_r_41')
// (15, 4, 'sp4_r_v_b_4')
// (16, 0, 'span4_vert_41')
// (16, 1, 'neigh_op_top_6')
// (16, 1, 'sp4_v_b_41')
// (16, 2, 'lutff_6/out')
// (16, 2, 'sp4_v_b_28')
// (16, 3, 'neigh_op_bot_6')
// (16, 3, 'sp4_v_b_17')
// (16, 4, 'sp4_h_l_41')
// (16, 4, 'sp4_v_b_4')
// (17, 1, 'neigh_op_tnl_6')
// (17, 2, 'neigh_op_lft_6')
// (17, 3, 'neigh_op_bnl_6')

wire n66;
// (12, 4, 'sp4_h_r_8')
// (13, 4, 'local_g1_5')
// (13, 4, 'lutff_6/in_2')
// (13, 4, 'lutff_7/in_3')
// (13, 4, 'sp4_h_r_21')
// (14, 4, 'sp4_h_r_32')
// (15, 1, 'sp4_r_v_b_38')
// (15, 2, 'neigh_op_tnr_7')
// (15, 2, 'sp4_r_v_b_27')
// (15, 3, 'neigh_op_rgt_7')
// (15, 3, 'sp4_r_v_b_14')
// (15, 4, 'neigh_op_bnr_7')
// (15, 4, 'sp4_h_r_45')
// (15, 4, 'sp4_r_v_b_3')
// (16, 0, 'span4_vert_38')
// (16, 1, 'sp4_v_b_38')
// (16, 2, 'neigh_op_top_7')
// (16, 2, 'sp4_v_b_27')
// (16, 3, 'lutff_7/out')
// (16, 3, 'sp4_v_b_14')
// (16, 4, 'neigh_op_bot_7')
// (16, 4, 'sp4_h_l_45')
// (16, 4, 'sp4_v_b_3')
// (17, 2, 'neigh_op_tnl_7')
// (17, 3, 'neigh_op_lft_7')
// (17, 4, 'neigh_op_bnl_7')

wire n67;
// (13, 0, 'logic_op_tnr_1')
// (13, 1, 'neigh_op_rgt_1')
// (13, 2, 'neigh_op_bnr_1')
// (14, 0, 'logic_op_top_1')
// (14, 1, 'local_g3_1')
// (14, 1, 'lutff_1/in_1')
// (14, 1, 'lutff_1/out')
// (14, 2, 'neigh_op_bot_1')
// (15, 0, 'logic_op_tnl_1')
// (15, 1, 'neigh_op_lft_1')
// (15, 2, 'neigh_op_bnl_1')

wire n68;
// (13, 0, 'logic_op_tnr_2')
// (13, 1, 'neigh_op_rgt_2')
// (13, 2, 'neigh_op_bnr_2')
// (14, 0, 'logic_op_top_2')
// (14, 1, 'local_g0_2')
// (14, 1, 'lutff_2/in_2')
// (14, 1, 'lutff_2/out')
// (14, 2, 'neigh_op_bot_2')
// (15, 0, 'logic_op_tnl_2')
// (15, 1, 'neigh_op_lft_2')
// (15, 2, 'neigh_op_bnl_2')

wire n69;
// (13, 0, 'logic_op_tnr_3')
// (13, 1, 'neigh_op_rgt_3')
// (13, 2, 'neigh_op_bnr_3')
// (14, 0, 'logic_op_top_3')
// (14, 1, 'local_g0_3')
// (14, 1, 'lutff_3/in_2')
// (14, 1, 'lutff_3/out')
// (14, 2, 'neigh_op_bot_3')
// (15, 0, 'logic_op_tnl_3')
// (15, 1, 'neigh_op_lft_3')
// (15, 2, 'neigh_op_bnl_3')

wire n70;
// (13, 0, 'logic_op_tnr_4')
// (13, 1, 'neigh_op_rgt_4')
// (13, 2, 'neigh_op_bnr_4')
// (14, 0, 'logic_op_top_4')
// (14, 1, 'local_g2_4')
// (14, 1, 'lutff_4/in_2')
// (14, 1, 'lutff_4/out')
// (14, 2, 'neigh_op_bot_4')
// (15, 0, 'logic_op_tnl_4')
// (15, 1, 'neigh_op_lft_4')
// (15, 2, 'neigh_op_bnl_4')

wire n71;
// (13, 0, 'logic_op_tnr_5')
// (13, 1, 'neigh_op_rgt_5')
// (13, 2, 'neigh_op_bnr_5')
// (14, 0, 'logic_op_top_5')
// (14, 1, 'local_g2_5')
// (14, 1, 'lutff_5/in_2')
// (14, 1, 'lutff_5/out')
// (14, 2, 'neigh_op_bot_5')
// (15, 0, 'logic_op_tnl_5')
// (15, 1, 'neigh_op_lft_5')
// (15, 2, 'neigh_op_bnl_5')

wire n72;
// (13, 0, 'logic_op_tnr_6')
// (13, 1, 'neigh_op_rgt_6')
// (13, 2, 'neigh_op_bnr_6')
// (14, 0, 'logic_op_top_6')
// (14, 1, 'local_g1_6')
// (14, 1, 'lutff_6/in_1')
// (14, 1, 'lutff_6/out')
// (14, 2, 'neigh_op_bot_6')
// (15, 0, 'logic_op_tnl_6')
// (15, 1, 'neigh_op_lft_6')
// (15, 2, 'neigh_op_bnl_6')

wire n73;
// (13, 0, 'logic_op_tnr_7')
// (13, 1, 'neigh_op_rgt_7')
// (13, 2, 'neigh_op_bnr_7')
// (14, 0, 'logic_op_top_7')
// (14, 1, 'local_g2_7')
// (14, 1, 'lutff_7/in_2')
// (14, 1, 'lutff_7/out')
// (14, 2, 'neigh_op_bot_7')
// (15, 0, 'logic_op_tnl_7')
// (15, 1, 'neigh_op_lft_7')
// (15, 2, 'neigh_op_bnl_7')

reg n74 = 0;
// (13, 1, 'local_g0_0')
// (13, 1, 'lutff_4/in_2')
// (13, 1, 'lutff_5/in_1')
// (13, 1, 'sp4_h_r_8')
// (14, 0, 'logic_op_tnr_0')
// (14, 1, 'neigh_op_rgt_0')
// (14, 1, 'sp4_h_r_21')
// (14, 2, 'neigh_op_bnr_0')
// (15, 0, 'logic_op_top_0')
// (15, 1, 'lutff_0/out')
// (15, 1, 'sp4_h_r_32')
// (15, 2, 'neigh_op_bot_0')
// (16, 0, 'logic_op_tnl_0')
// (16, 1, 'neigh_op_lft_0')
// (16, 1, 'sp4_h_r_45')
// (16, 2, 'neigh_op_bnl_0')
// (17, 1, 'sp4_h_l_45')

wire n75;
// (13, 1, 'neigh_op_tnr_0')
// (13, 2, 'neigh_op_rgt_0')
// (13, 3, 'neigh_op_bnr_0')
// (14, 1, 'neigh_op_top_0')
// (14, 2, 'local_g1_0')
// (14, 2, 'lutff_0/in_1')
// (14, 2, 'lutff_0/out')
// (14, 3, 'neigh_op_bot_0')
// (15, 1, 'neigh_op_tnl_0')
// (15, 2, 'neigh_op_lft_0')
// (15, 3, 'neigh_op_bnl_0')

wire n76;
// (13, 1, 'neigh_op_tnr_1')
// (13, 1, 'sp4_r_v_b_47')
// (13, 2, 'local_g2_1')
// (13, 2, 'lutff_6/in_1')
// (13, 2, 'neigh_op_rgt_1')
// (13, 2, 'sp4_r_v_b_34')
// (13, 3, 'neigh_op_bnr_1')
// (13, 3, 'sp4_r_v_b_23')
// (13, 4, 'local_g2_2')
// (13, 4, 'lutff_4/in_0')
// (13, 4, 'sp4_r_v_b_10')
// (14, 0, 'span4_vert_47')
// (14, 1, 'local_g1_1')
// (14, 1, 'lutff_5/in_1')
// (14, 1, 'lutff_6/in_2')
// (14, 1, 'neigh_op_top_1')
// (14, 1, 'sp4_v_b_47')
// (14, 2, 'local_g1_1')
// (14, 2, 'local_g2_1')
// (14, 2, 'lutff_1/in_1')
// (14, 2, 'lutff_1/out')
// (14, 2, 'lutff_3/in_2')
// (14, 2, 'lutff_5/in_1')
// (14, 2, 'lutff_6/in_1')
// (14, 2, 'lutff_7/in_1')
// (14, 2, 'sp4_v_b_34')
// (14, 3, 'neigh_op_bot_1')
// (14, 3, 'sp4_v_b_23')
// (14, 4, 'sp4_v_b_10')
// (15, 1, 'neigh_op_tnl_1')
// (15, 2, 'neigh_op_lft_1')
// (15, 3, 'neigh_op_bnl_1')

wire n77;
// (13, 1, 'neigh_op_tnr_2')
// (13, 2, 'neigh_op_rgt_2')
// (13, 3, 'neigh_op_bnr_2')
// (14, 1, 'neigh_op_top_2')
// (14, 2, 'local_g0_2')
// (14, 2, 'lutff_2/in_2')
// (14, 2, 'lutff_2/out')
// (14, 3, 'neigh_op_bot_2')
// (15, 1, 'neigh_op_tnl_2')
// (15, 2, 'neigh_op_lft_2')
// (15, 3, 'neigh_op_bnl_2')

wire n78;
// (13, 1, 'neigh_op_tnr_3')
// (13, 2, 'neigh_op_rgt_3')
// (13, 3, 'neigh_op_bnr_3')
// (14, 1, 'neigh_op_top_3')
// (14, 2, 'local_g1_3')
// (14, 2, 'lutff_3/in_1')
// (14, 2, 'lutff_3/out')
// (14, 3, 'neigh_op_bot_3')
// (15, 1, 'neigh_op_tnl_3')
// (15, 2, 'neigh_op_lft_3')
// (15, 3, 'neigh_op_bnl_3')

wire n79;
// (13, 1, 'neigh_op_tnr_4')
// (13, 2, 'neigh_op_rgt_4')
// (13, 3, 'neigh_op_bnr_4')
// (14, 1, 'neigh_op_top_4')
// (14, 2, 'local_g1_4')
// (14, 2, 'lutff_4/in_1')
// (14, 2, 'lutff_4/out')
// (14, 3, 'neigh_op_bot_4')
// (15, 1, 'neigh_op_tnl_4')
// (15, 2, 'neigh_op_lft_4')
// (15, 3, 'neigh_op_bnl_4')

wire n80;
// (13, 1, 'neigh_op_tnr_5')
// (13, 2, 'neigh_op_rgt_5')
// (13, 3, 'neigh_op_bnr_5')
// (14, 1, 'neigh_op_top_5')
// (14, 2, 'local_g2_5')
// (14, 2, 'lutff_5/in_2')
// (14, 2, 'lutff_5/out')
// (14, 3, 'neigh_op_bot_5')
// (15, 1, 'neigh_op_tnl_5')
// (15, 2, 'neigh_op_lft_5')
// (15, 3, 'neigh_op_bnl_5')

wire n81;
// (13, 1, 'neigh_op_tnr_6')
// (13, 2, 'neigh_op_rgt_6')
// (13, 3, 'neigh_op_bnr_6')
// (14, 1, 'neigh_op_top_6')
// (14, 2, 'local_g0_6')
// (14, 2, 'lutff_6/in_2')
// (14, 2, 'lutff_6/out')
// (14, 3, 'neigh_op_bot_6')
// (15, 1, 'neigh_op_tnl_6')
// (15, 2, 'neigh_op_lft_6')
// (15, 3, 'neigh_op_bnl_6')

wire n82;
//assign n82 = CLKINJKT_HG;
// (13, 1, 'neigh_op_tnr_7')
// (13, 2, 'neigh_op_rgt_7')
// (13, 3, 'neigh_op_bnr_7')
// (14, 1, 'neigh_op_top_7')
// (14, 2, 'local_g0_7')
// (14, 2, 'lutff_7/in_2')
// (14, 2, 'lutff_7/out')
// (14, 3, 'neigh_op_bot_7')
// (15, 1, 'neigh_op_tnl_7')
// (15, 2, 'neigh_op_lft_7')
// (15, 3, 'neigh_op_bnl_7')

reg n83 = 0;
// (13, 1, 'sp4_h_r_3')
// (14, 1, 'local_g0_6')
// (14, 1, 'lutff_1/in_3')
// (14, 1, 'sp4_h_r_14')
// (15, 0, 'logic_op_tnr_3')
// (15, 1, 'neigh_op_rgt_3')
// (15, 1, 'sp4_h_r_27')
// (15, 2, 'local_g0_3')
// (15, 2, 'lutff_1/in_2')
// (15, 2, 'neigh_op_bnr_3')
// (16, 0, 'logic_op_top_3')
// (16, 1, 'local_g2_3')
// (16, 1, 'lutff_3/in_0')
// (16, 1, 'lutff_3/out')
// (16, 1, 'sp4_h_r_38')
// (16, 2, 'local_g0_3')
// (16, 2, 'lutff_3/in_2')
// (16, 2, 'neigh_op_bot_3')
// (17, 0, 'logic_op_tnl_3')
// (17, 1, 'neigh_op_lft_3')
// (17, 1, 'sp4_h_l_38')
// (17, 2, 'neigh_op_bnl_3')

wire n84;
// (13, 2, 'neigh_op_tnr_0')
// (13, 3, 'neigh_op_rgt_0')
// (13, 4, 'neigh_op_bnr_0')
// (14, 2, 'neigh_op_top_0')
// (14, 3, 'local_g0_0')
// (14, 3, 'lutff_0/in_2')
// (14, 3, 'lutff_0/out')
// (14, 4, 'neigh_op_bot_0')
// (15, 2, 'neigh_op_tnl_0')
// (15, 3, 'neigh_op_lft_0')
// (15, 4, 'neigh_op_bnl_0')

wire n85;
// (13, 2, 'neigh_op_tnr_1')
// (13, 3, 'neigh_op_rgt_1')
// (13, 4, 'neigh_op_bnr_1')
// (14, 2, 'neigh_op_top_1')
// (14, 3, 'local_g1_1')
// (14, 3, 'lutff_1/in_1')
// (14, 3, 'lutff_1/out')
// (14, 4, 'neigh_op_bot_1')
// (15, 2, 'neigh_op_tnl_1')
// (15, 3, 'neigh_op_lft_1')
// (15, 4, 'neigh_op_bnl_1')

wire n86;
// (13, 2, 'neigh_op_tnr_2')
// (13, 3, 'neigh_op_rgt_2')
// (13, 4, 'neigh_op_bnr_2')
// (14, 2, 'neigh_op_top_2')
// (14, 3, 'local_g2_2')
// (14, 3, 'lutff_2/in_2')
// (14, 3, 'lutff_2/out')
// (14, 4, 'neigh_op_bot_2')
// (15, 2, 'neigh_op_tnl_2')
// (15, 3, 'neigh_op_lft_2')
// (15, 4, 'neigh_op_bnl_2')

wire n87;
// (13, 2, 'neigh_op_tnr_3')
// (13, 3, 'neigh_op_rgt_3')
// (13, 4, 'neigh_op_bnr_3')
// (14, 2, 'neigh_op_top_3')
// (14, 3, 'local_g1_3')
// (14, 3, 'lutff_3/in_1')
// (14, 3, 'lutff_3/out')
// (14, 4, 'neigh_op_bot_3')
// (15, 2, 'neigh_op_tnl_3')
// (15, 3, 'neigh_op_lft_3')
// (15, 4, 'neigh_op_bnl_3')

wire n88;
// (13, 2, 'neigh_op_tnr_4')
// (13, 3, 'neigh_op_rgt_4')
// (13, 4, 'neigh_op_bnr_4')
// (14, 2, 'neigh_op_top_4')
// (14, 3, 'local_g1_4')
// (14, 3, 'lutff_4/in_1')
// (14, 3, 'lutff_4/out')
// (14, 4, 'neigh_op_bot_4')
// (15, 2, 'neigh_op_tnl_4')
// (15, 3, 'neigh_op_lft_4')
// (15, 4, 'neigh_op_bnl_4')

wire n89;
// (13, 2, 'neigh_op_tnr_5')
// (13, 3, 'neigh_op_rgt_5')
// (13, 4, 'neigh_op_bnr_5')
// (14, 2, 'neigh_op_top_5')
// (14, 3, 'local_g0_5')
// (14, 3, 'lutff_5/in_2')
// (14, 3, 'lutff_5/out')
// (14, 4, 'neigh_op_bot_5')
// (15, 2, 'neigh_op_tnl_5')
// (15, 3, 'neigh_op_lft_5')
// (15, 4, 'neigh_op_bnl_5')

wire n90;
// (13, 2, 'neigh_op_tnr_6')
// (13, 3, 'neigh_op_rgt_6')
// (13, 4, 'neigh_op_bnr_6')
// (14, 2, 'neigh_op_top_6')
// (14, 3, 'local_g1_6')
// (14, 3, 'lutff_6/in_1')
// (14, 3, 'lutff_6/out')
// (14, 4, 'neigh_op_bot_6')
// (15, 2, 'neigh_op_tnl_6')
// (15, 3, 'neigh_op_lft_6')
// (15, 4, 'neigh_op_bnl_6')

wire n91;
// (13, 2, 'neigh_op_tnr_7')
// (13, 3, 'neigh_op_rgt_7')
// (13, 4, 'neigh_op_bnr_7')
// (14, 2, 'neigh_op_top_7')
// (14, 3, 'local_g1_7')
// (14, 3, 'lutff_7/in_1')
// (14, 3, 'lutff_7/out')
// (14, 4, 'neigh_op_bot_7')
// (15, 2, 'neigh_op_tnl_7')
// (15, 3, 'neigh_op_lft_7')
// (15, 4, 'neigh_op_bnl_7')

wire n92;
// (13, 3, 'neigh_op_tnr_0')
// (13, 4, 'neigh_op_rgt_0')
// (13, 5, 'neigh_op_bnr_0')
// (14, 3, 'neigh_op_top_0')
// (14, 4, 'local_g0_0')
// (14, 4, 'lutff_0/in_2')
// (14, 4, 'lutff_0/out')
// (14, 5, 'neigh_op_bot_0')
// (15, 3, 'neigh_op_tnl_0')
// (15, 4, 'neigh_op_lft_0')
// (15, 5, 'neigh_op_bnl_0')

wire n93;
// (13, 3, 'neigh_op_tnr_1')
// (13, 4, 'neigh_op_rgt_1')
// (13, 5, 'neigh_op_bnr_1')
// (14, 3, 'neigh_op_top_1')
// (14, 4, 'local_g2_1')
// (14, 4, 'lutff_1/in_2')
// (14, 4, 'lutff_1/out')
// (14, 5, 'neigh_op_bot_1')
// (15, 3, 'neigh_op_tnl_1')
// (15, 4, 'neigh_op_lft_1')
// (15, 5, 'neigh_op_bnl_1')

wire n94;
// (13, 3, 'neigh_op_tnr_2')
// (13, 4, 'neigh_op_rgt_2')
// (13, 5, 'neigh_op_bnr_2')
// (14, 3, 'neigh_op_top_2')
// (14, 4, 'local_g0_2')
// (14, 4, 'lutff_2/in_2')
// (14, 4, 'lutff_2/out')
// (14, 5, 'neigh_op_bot_2')
// (15, 3, 'neigh_op_tnl_2')
// (15, 4, 'neigh_op_lft_2')
// (15, 5, 'neigh_op_bnl_2')

wire n95;
// (13, 3, 'neigh_op_tnr_3')
// (13, 4, 'neigh_op_rgt_3')
// (13, 5, 'neigh_op_bnr_3')
// (14, 3, 'neigh_op_top_3')
// (14, 4, 'local_g2_3')
// (14, 4, 'lutff_3/in_2')
// (14, 4, 'lutff_3/out')
// (14, 5, 'neigh_op_bot_3')
// (15, 3, 'neigh_op_tnl_3')
// (15, 4, 'neigh_op_lft_3')
// (15, 5, 'neigh_op_bnl_3')

wire n96;
// (13, 3, 'neigh_op_tnr_4')
// (13, 4, 'neigh_op_rgt_4')
// (13, 5, 'neigh_op_bnr_4')
// (14, 3, 'neigh_op_top_4')
// (14, 4, 'local_g1_4')
// (14, 4, 'lutff_4/in_1')
// (14, 4, 'lutff_4/out')
// (14, 5, 'neigh_op_bot_4')
// (15, 3, 'neigh_op_tnl_4')
// (15, 4, 'neigh_op_lft_4')
// (15, 5, 'neigh_op_bnl_4')

wire n97;
// (13, 3, 'neigh_op_tnr_5')
// (13, 4, 'neigh_op_rgt_5')
// (13, 5, 'neigh_op_bnr_5')
// (14, 3, 'neigh_op_top_5')
// (14, 4, 'local_g0_5')
// (14, 4, 'lutff_5/in_2')
// (14, 4, 'lutff_5/out')
// (14, 5, 'neigh_op_bot_5')
// (15, 3, 'neigh_op_tnl_5')
// (15, 4, 'neigh_op_lft_5')
// (15, 5, 'neigh_op_bnl_5')

wire n98;
// (13, 3, 'neigh_op_tnr_6')
// (13, 4, 'neigh_op_rgt_6')
// (13, 5, 'neigh_op_bnr_6')
// (14, 3, 'neigh_op_top_6')
// (14, 4, 'local_g0_6')
// (14, 4, 'lutff_6/in_2')
// (14, 4, 'lutff_6/out')
// (14, 5, 'neigh_op_bot_6')
// (15, 3, 'neigh_op_tnl_6')
// (15, 4, 'neigh_op_lft_6')
// (15, 5, 'neigh_op_bnl_6')

wire n99;
// (13, 3, 'neigh_op_tnr_7')
// (13, 4, 'neigh_op_rgt_7')
// (13, 5, 'neigh_op_bnr_7')
// (14, 3, 'neigh_op_top_7')
// (14, 4, 'local_g1_7')
// (14, 4, 'lutff_7/in_1')
// (14, 4, 'lutff_7/out')
// (14, 5, 'neigh_op_bot_7')
// (15, 3, 'neigh_op_tnl_7')
// (15, 4, 'neigh_op_lft_7')
// (15, 5, 'neigh_op_bnl_7')

wire n100;
// (13, 4, 'local_g2_0')
// (13, 4, 'lutff_6/in_0')
// (13, 4, 'lutff_7/in_1')
// (13, 4, 'neigh_op_tnr_0')
// (13, 5, 'neigh_op_rgt_0')
// (13, 6, 'neigh_op_bnr_0')
// (14, 4, 'neigh_op_top_0')
// (14, 5, 'lutff_0/out')
// (14, 6, 'neigh_op_bot_0')
// (15, 4, 'neigh_op_tnl_0')
// (15, 5, 'neigh_op_lft_0')
// (15, 6, 'neigh_op_bnl_0')

wire n101;
// (14, 0, 'logic_op_tnr_2')
// (14, 1, 'local_g2_2')
// (14, 1, 'lutff_0/in_2')
// (14, 1, 'neigh_op_rgt_2')
// (14, 2, 'neigh_op_bnr_2')
// (15, 0, 'logic_op_top_2')
// (15, 1, 'lutff_2/out')
// (15, 2, 'neigh_op_bot_2')
// (16, 0, 'logic_op_tnl_2')
// (16, 1, 'local_g0_2')
// (16, 1, 'lutff_2/in_0')
// (16, 1, 'neigh_op_lft_2')
// (16, 2, 'neigh_op_bnl_2')

reg n102 = 0;
// (14, 1, 'local_g3_2')
// (14, 1, 'lutff_2/in_3')
// (14, 1, 'neigh_op_tnr_2')
// (14, 2, 'neigh_op_rgt_2')
// (14, 3, 'neigh_op_bnr_2')
// (15, 1, 'neigh_op_top_2')
// (15, 2, 'local_g3_2')
// (15, 2, 'lutff_2/in_1')
// (15, 2, 'lutff_2/out')
// (15, 3, 'neigh_op_bot_2')
// (16, 1, 'neigh_op_tnl_2')
// (16, 2, 'local_g1_2')
// (16, 2, 'lutff_3/in_0')
// (16, 2, 'neigh_op_lft_2')
// (16, 3, 'neigh_op_bnl_2')

reg n103 = 0;
// (14, 1, 'local_g3_3')
// (14, 1, 'lutff_3/in_3')
// (14, 1, 'neigh_op_tnr_3')
// (14, 2, 'neigh_op_rgt_3')
// (14, 3, 'neigh_op_bnr_3')
// (15, 1, 'neigh_op_top_3')
// (15, 2, 'local_g3_3')
// (15, 2, 'lutff_3/in_1')
// (15, 2, 'lutff_3/out')
// (15, 3, 'neigh_op_bot_3')
// (16, 1, 'neigh_op_tnl_3')
// (16, 2, 'local_g1_3')
// (16, 2, 'lutff_5/in_3')
// (16, 2, 'neigh_op_lft_3')
// (16, 3, 'neigh_op_bnl_3')

reg n104 = 0;
// (14, 1, 'local_g3_4')
// (14, 1, 'lutff_4/in_3')
// (14, 1, 'neigh_op_tnr_4')
// (14, 2, 'neigh_op_rgt_4')
// (14, 3, 'neigh_op_bnr_4')
// (15, 1, 'neigh_op_top_4')
// (15, 2, 'local_g0_4')
// (15, 2, 'lutff_4/in_2')
// (15, 2, 'lutff_4/out')
// (15, 3, 'neigh_op_bot_4')
// (16, 1, 'neigh_op_tnl_4')
// (16, 2, 'local_g0_4')
// (16, 2, 'lutff_5/in_1')
// (16, 2, 'neigh_op_lft_4')
// (16, 3, 'neigh_op_bnl_4')

reg n105 = 0;
// (14, 1, 'local_g3_5')
// (14, 1, 'lutff_5/in_3')
// (14, 1, 'neigh_op_tnr_5')
// (14, 2, 'neigh_op_rgt_5')
// (14, 3, 'neigh_op_bnr_5')
// (15, 1, 'neigh_op_top_5')
// (15, 2, 'local_g3_5')
// (15, 2, 'lutff_5/in_1')
// (15, 2, 'lutff_5/out')
// (15, 3, 'neigh_op_bot_5')
// (16, 1, 'neigh_op_tnl_5')
// (16, 2, 'local_g1_5')
// (16, 2, 'lutff_0/in_0')
// (16, 2, 'neigh_op_lft_5')
// (16, 3, 'neigh_op_bnl_5')

reg n106 = 0;
// (14, 1, 'local_g3_6')
// (14, 1, 'lutff_6/in_3')
// (14, 1, 'neigh_op_tnr_6')
// (14, 2, 'neigh_op_rgt_6')
// (14, 3, 'neigh_op_bnr_6')
// (15, 1, 'neigh_op_top_6')
// (15, 2, 'local_g2_6')
// (15, 2, 'lutff_6/in_2')
// (15, 2, 'lutff_6/out')
// (15, 3, 'neigh_op_bot_6')
// (16, 1, 'neigh_op_tnl_6')
// (16, 2, 'local_g1_6')
// (16, 2, 'lutff_0/in_3')
// (16, 2, 'neigh_op_lft_6')
// (16, 3, 'neigh_op_bnl_6')

reg n107 = 0;
// (14, 1, 'local_g3_7')
// (14, 1, 'lutff_7/in_3')
// (14, 1, 'neigh_op_tnr_7')
// (14, 2, 'neigh_op_rgt_7')
// (14, 3, 'neigh_op_bnr_7')
// (15, 1, 'neigh_op_top_7')
// (15, 2, 'local_g0_7')
// (15, 2, 'lutff_7/in_2')
// (15, 2, 'lutff_7/out')
// (15, 3, 'neigh_op_bot_7')
// (16, 1, 'neigh_op_tnl_7')
// (16, 2, 'local_g0_7')
// (16, 2, 'lutff_5/in_0')
// (16, 2, 'neigh_op_lft_7')
// (16, 3, 'neigh_op_bnl_7')

wire n108;
// (14, 1, 'lutff_7/cout')
// (14, 2, 'carry_in')
// (14, 2, 'carry_in_mux')

wire BTN2;
assign BTN2=iBTN2;
// (14, 1, 'sp4_r_v_b_13')
// (14, 2, 'sp4_r_v_b_0')
// (15, 0, 'span4_horz_r_2')
// (15, 0, 'span4_vert_13')
// (15, 1, 'local_g1_5')
// (15, 1, 'lutff_3/in_1')
// (15, 1, 'lutff_5/in_3')
// (15, 1, 'sp4_v_b_13')
// (15, 2, 'sp4_v_b_0')
// (16, 0, 'span4_horz_r_6')
// (17, 0, 'span4_horz_r_10')
// (18, 0, 'span4_horz_r_14')
// (19, 0, 'span4_horz_l_14')
// (19, 0, 'span4_horz_r_2')
// (20, 0, 'span4_horz_r_6')
// (20, 1, 'neigh_op_bnr_2')
// (20, 1, 'neigh_op_bnr_6')
// (21, 0, 'io_1/D_IN_0')
// (21, 0, 'io_1/PAD')
// (21, 0, 'span4_horz_r_10')
// (21, 1, 'neigh_op_bot_2')
// (21, 1, 'neigh_op_bot_6')
// (22, 0, 'span4_horz_r_14')
// (22, 1, 'neigh_op_bnl_2')
// (22, 1, 'neigh_op_bnl_6')
// (23, 0, 'span4_horz_l_14')

wire n110;
// (14, 2, 'local_g1_2')
// (14, 2, 'lutff_1/in_2')
// (14, 2, 'sp4_h_r_10')
// (15, 1, 'neigh_op_tnr_1')
// (15, 2, 'neigh_op_rgt_1')
// (15, 2, 'sp4_h_r_23')
// (15, 3, 'neigh_op_bnr_1')
// (16, 1, 'neigh_op_top_1')
// (16, 2, 'lutff_1/out')
// (16, 2, 'sp4_h_r_34')
// (16, 3, 'neigh_op_bot_1')
// (17, 1, 'neigh_op_tnl_1')
// (17, 2, 'neigh_op_lft_1')
// (17, 2, 'sp4_h_r_47')
// (17, 3, 'neigh_op_bnl_1')
// (18, 2, 'sp4_h_l_47')

reg n111 = 0;
// (14, 2, 'local_g3_0')
// (14, 2, 'lutff_0/in_3')
// (14, 2, 'neigh_op_tnr_0')
// (14, 3, 'neigh_op_rgt_0')
// (14, 4, 'neigh_op_bnr_0')
// (15, 2, 'neigh_op_top_0')
// (15, 3, 'local_g2_0')
// (15, 3, 'lutff_0/in_2')
// (15, 3, 'lutff_0/out')
// (15, 4, 'neigh_op_bot_0')
// (16, 2, 'local_g3_0')
// (16, 2, 'lutff_5/in_2')
// (16, 2, 'neigh_op_tnl_0')
// (16, 3, 'neigh_op_lft_0')
// (16, 4, 'neigh_op_bnl_0')

reg n112 = 0;
// (14, 2, 'local_g3_2')
// (14, 2, 'lutff_2/in_3')
// (14, 2, 'neigh_op_tnr_2')
// (14, 3, 'neigh_op_rgt_2')
// (14, 4, 'neigh_op_bnr_2')
// (15, 2, 'neigh_op_top_2')
// (15, 3, 'local_g2_2')
// (15, 3, 'lutff_2/in_2')
// (15, 3, 'lutff_2/out')
// (15, 4, 'neigh_op_bot_2')
// (16, 2, 'neigh_op_tnl_2')
// (16, 3, 'local_g1_2')
// (16, 3, 'lutff_5/in_0')
// (16, 3, 'neigh_op_lft_2')
// (16, 4, 'neigh_op_bnl_2')

reg n113 = 0;
// (14, 2, 'local_g3_3')
// (14, 2, 'lutff_3/in_3')
// (14, 2, 'neigh_op_tnr_3')
// (14, 3, 'neigh_op_rgt_3')
// (14, 4, 'neigh_op_bnr_3')
// (15, 2, 'neigh_op_top_3')
// (15, 3, 'local_g1_3')
// (15, 3, 'lutff_3/in_1')
// (15, 3, 'lutff_3/out')
// (15, 4, 'neigh_op_bot_3')
// (16, 2, 'local_g2_3')
// (16, 2, 'lutff_0/in_1')
// (16, 2, 'neigh_op_tnl_3')
// (16, 3, 'neigh_op_lft_3')
// (16, 4, 'neigh_op_bnl_3')

reg n114 = 0;
// (14, 2, 'local_g3_4')
// (14, 2, 'lutff_4/in_3')
// (14, 2, 'neigh_op_tnr_4')
// (14, 3, 'neigh_op_rgt_4')
// (14, 4, 'neigh_op_bnr_4')
// (15, 2, 'neigh_op_top_4')
// (15, 3, 'local_g2_4')
// (15, 3, 'lutff_4/in_2')
// (15, 3, 'lutff_4/out')
// (15, 4, 'neigh_op_bot_4')
// (16, 2, 'neigh_op_tnl_4')
// (16, 3, 'local_g0_4')
// (16, 3, 'lutff_5/in_3')
// (16, 3, 'neigh_op_lft_4')
// (16, 4, 'neigh_op_bnl_4')

reg n115 = 0;
// (14, 2, 'local_g3_5')
// (14, 2, 'lutff_5/in_3')
// (14, 2, 'neigh_op_tnr_5')
// (14, 3, 'neigh_op_rgt_5')
// (14, 4, 'neigh_op_bnr_5')
// (15, 2, 'neigh_op_top_5')
// (15, 3, 'local_g3_5')
// (15, 3, 'lutff_5/in_1')
// (15, 3, 'lutff_5/out')
// (15, 4, 'neigh_op_bot_5')
// (16, 2, 'local_g2_5')
// (16, 2, 'lutff_2/in_1')
// (16, 2, 'neigh_op_tnl_5')
// (16, 3, 'neigh_op_lft_5')
// (16, 4, 'neigh_op_bnl_5')

reg n116 = 0;
// (14, 2, 'local_g3_6')
// (14, 2, 'lutff_6/in_3')
// (14, 2, 'neigh_op_tnr_6')
// (14, 3, 'neigh_op_rgt_6')
// (14, 4, 'neigh_op_bnr_6')
// (15, 2, 'neigh_op_top_6')
// (15, 3, 'local_g3_6')
// (15, 3, 'lutff_6/in_1')
// (15, 3, 'lutff_6/out')
// (15, 4, 'neigh_op_bot_6')
// (16, 2, 'local_g3_6')
// (16, 2, 'lutff_2/in_3')
// (16, 2, 'neigh_op_tnl_6')
// (16, 3, 'neigh_op_lft_6')
// (16, 4, 'neigh_op_bnl_6')

reg n117 = 0;
// (14, 2, 'local_g3_7')
// (14, 2, 'lutff_7/in_3')
// (14, 2, 'neigh_op_tnr_7')
// (14, 3, 'neigh_op_rgt_7')
// (14, 4, 'neigh_op_bnr_7')
// (15, 2, 'neigh_op_top_7')
// (15, 3, 'local_g1_7')
// (15, 3, 'lutff_7/in_1')
// (15, 3, 'lutff_7/out')
// (15, 4, 'neigh_op_bot_7')
// (16, 2, 'local_g3_7')
// (16, 2, 'lutff_2/in_2')
// (16, 2, 'neigh_op_tnl_7')
// (16, 3, 'neigh_op_lft_7')
// (16, 4, 'neigh_op_bnl_7')

wire n118;
// (14, 2, 'lutff_7/cout')
// (14, 3, 'carry_in')
// (14, 3, 'carry_in_mux')

reg n119 = 0;
// (14, 2, 'neigh_op_tnr_1')
// (14, 3, 'neigh_op_rgt_1')
// (14, 4, 'neigh_op_bnr_1')
// (15, 2, 'neigh_op_top_1')
// (15, 3, 'local_g3_1')
// (15, 3, 'lutff_1/in_1')
// (15, 3, 'lutff_1/out')
// (15, 4, 'neigh_op_bot_1')
// (16, 2, 'local_g3_1')
// (16, 2, 'lutff_0/in_2')
// (16, 2, 'lutff_1/in_3')
// (16, 2, 'neigh_op_tnl_1')
// (16, 3, 'neigh_op_lft_1')
// (16, 4, 'neigh_op_bnl_1')

reg n120 = 0;
// (14, 3, 'local_g3_0')
// (14, 3, 'lutff_0/in_3')
// (14, 3, 'neigh_op_tnr_0')
// (14, 4, 'neigh_op_rgt_0')
// (14, 5, 'neigh_op_bnr_0')
// (15, 3, 'neigh_op_top_0')
// (15, 4, 'local_g1_0')
// (15, 4, 'lutff_0/in_1')
// (15, 4, 'lutff_0/out')
// (15, 5, 'neigh_op_bot_0')
// (16, 3, 'local_g3_0')
// (16, 3, 'lutff_5/in_2')
// (16, 3, 'neigh_op_tnl_0')
// (16, 4, 'neigh_op_lft_0')
// (16, 5, 'neigh_op_bnl_0')

reg n121 = 0;
// (14, 3, 'local_g3_1')
// (14, 3, 'lutff_1/in_3')
// (14, 3, 'neigh_op_tnr_1')
// (14, 4, 'neigh_op_rgt_1')
// (14, 5, 'neigh_op_bnr_1')
// (15, 3, 'neigh_op_top_1')
// (15, 4, 'local_g2_1')
// (15, 4, 'lutff_1/in_2')
// (15, 4, 'lutff_1/out')
// (15, 5, 'neigh_op_bot_1')
// (16, 3, 'local_g3_1')
// (16, 3, 'lutff_5/in_1')
// (16, 3, 'neigh_op_tnl_1')
// (16, 4, 'neigh_op_lft_1')
// (16, 5, 'neigh_op_bnl_1')

reg n122 = 0;
// (14, 3, 'local_g3_2')
// (14, 3, 'lutff_2/in_3')
// (14, 3, 'neigh_op_tnr_2')
// (14, 4, 'neigh_op_rgt_2')
// (14, 5, 'neigh_op_bnr_2')
// (15, 3, 'neigh_op_top_2')
// (15, 4, 'local_g0_2')
// (15, 4, 'lutff_2/in_2')
// (15, 4, 'lutff_2/out')
// (15, 5, 'neigh_op_bot_2')
// (16, 3, 'local_g3_2')
// (16, 3, 'lutff_3/in_2')
// (16, 3, 'neigh_op_tnl_2')
// (16, 4, 'neigh_op_lft_2')
// (16, 5, 'neigh_op_bnl_2')

reg n123 = 0;
// (14, 3, 'local_g3_3')
// (14, 3, 'lutff_3/in_3')
// (14, 3, 'neigh_op_tnr_3')
// (14, 4, 'neigh_op_rgt_3')
// (14, 5, 'neigh_op_bnr_3')
// (15, 3, 'neigh_op_top_3')
// (15, 4, 'local_g0_3')
// (15, 4, 'lutff_3/in_2')
// (15, 4, 'lutff_3/out')
// (15, 5, 'neigh_op_bot_3')
// (16, 3, 'local_g2_3')
// (16, 3, 'lutff_3/in_0')
// (16, 3, 'neigh_op_tnl_3')
// (16, 4, 'neigh_op_lft_3')
// (16, 5, 'neigh_op_bnl_3')

reg n124 = 0;
// (14, 3, 'local_g3_4')
// (14, 3, 'lutff_4/in_3')
// (14, 3, 'neigh_op_tnr_4')
// (14, 4, 'neigh_op_rgt_4')
// (14, 5, 'neigh_op_bnr_4')
// (15, 3, 'neigh_op_top_4')
// (15, 4, 'local_g0_4')
// (15, 4, 'lutff_4/in_2')
// (15, 4, 'lutff_4/out')
// (15, 5, 'neigh_op_bot_4')
// (16, 3, 'local_g2_4')
// (16, 3, 'lutff_3/in_1')
// (16, 3, 'neigh_op_tnl_4')
// (16, 4, 'neigh_op_lft_4')
// (16, 5, 'neigh_op_bnl_4')

reg n125 = 0;
// (14, 3, 'local_g3_5')
// (14, 3, 'lutff_5/in_3')
// (14, 3, 'neigh_op_tnr_5')
// (14, 4, 'neigh_op_rgt_5')
// (14, 5, 'neigh_op_bnr_5')
// (15, 3, 'neigh_op_top_5')
// (15, 4, 'local_g1_5')
// (15, 4, 'lutff_5/in_1')
// (15, 4, 'lutff_5/out')
// (15, 5, 'neigh_op_bot_5')
// (16, 3, 'local_g3_5')
// (16, 3, 'lutff_3/in_3')
// (16, 3, 'neigh_op_tnl_5')
// (16, 4, 'neigh_op_lft_5')
// (16, 5, 'neigh_op_bnl_5')

reg n126 = 0;
// (14, 3, 'local_g3_6')
// (14, 3, 'lutff_6/in_3')
// (14, 3, 'neigh_op_tnr_6')
// (14, 4, 'neigh_op_rgt_6')
// (14, 5, 'neigh_op_bnr_6')
// (15, 3, 'neigh_op_top_6')
// (15, 4, 'local_g2_6')
// (15, 4, 'lutff_6/in_2')
// (15, 4, 'lutff_6/out')
// (15, 5, 'neigh_op_bot_6')
// (16, 3, 'neigh_op_tnl_6')
// (16, 4, 'local_g0_6')
// (16, 4, 'lutff_7/in_3')
// (16, 4, 'neigh_op_lft_6')
// (16, 5, 'neigh_op_bnl_6')

reg n127 = 0;
// (14, 3, 'local_g3_7')
// (14, 3, 'lutff_7/in_3')
// (14, 3, 'neigh_op_tnr_7')
// (14, 4, 'neigh_op_rgt_7')
// (14, 5, 'neigh_op_bnr_7')
// (15, 3, 'neigh_op_top_7')
// (15, 4, 'local_g1_7')
// (15, 4, 'lutff_7/in_1')
// (15, 4, 'lutff_7/out')
// (15, 5, 'neigh_op_bot_7')
// (16, 3, 'neigh_op_tnl_7')
// (16, 4, 'local_g0_7')
// (16, 4, 'lutff_6/in_1')
// (16, 4, 'neigh_op_lft_7')
// (16, 5, 'neigh_op_bnl_7')

wire n128;
// (14, 3, 'lutff_7/cout')
// (14, 4, 'carry_in')
// (14, 4, 'carry_in_mux')

reg n129 = 0;
// (14, 4, 'local_g3_0')
// (14, 4, 'lutff_0/in_3')
// (14, 4, 'neigh_op_tnr_0')
// (14, 5, 'neigh_op_rgt_0')
// (14, 6, 'neigh_op_bnr_0')
// (15, 4, 'neigh_op_top_0')
// (15, 5, 'local_g0_0')
// (15, 5, 'lutff_0/in_2')
// (15, 5, 'lutff_0/out')
// (15, 6, 'neigh_op_bot_0')
// (16, 4, 'local_g2_0')
// (16, 4, 'lutff_7/in_1')
// (16, 4, 'neigh_op_tnl_0')
// (16, 5, 'neigh_op_lft_0')
// (16, 6, 'neigh_op_bnl_0')

reg n130 = 0;
// (14, 4, 'local_g3_1')
// (14, 4, 'lutff_1/in_3')
// (14, 4, 'neigh_op_tnr_1')
// (14, 5, 'neigh_op_rgt_1')
// (14, 6, 'neigh_op_bnr_1')
// (15, 4, 'neigh_op_top_1')
// (15, 5, 'local_g2_1')
// (15, 5, 'lutff_1/in_2')
// (15, 5, 'lutff_1/out')
// (15, 6, 'neigh_op_bot_1')
// (16, 4, 'local_g3_1')
// (16, 4, 'lutff_6/in_0')
// (16, 4, 'neigh_op_tnl_1')
// (16, 5, 'neigh_op_lft_1')
// (16, 6, 'neigh_op_bnl_1')

reg n131 = 0;
// (14, 4, 'local_g3_2')
// (14, 4, 'lutff_2/in_3')
// (14, 4, 'neigh_op_tnr_2')
// (14, 5, 'neigh_op_rgt_2')
// (14, 6, 'neigh_op_bnr_2')
// (15, 4, 'neigh_op_top_2')
// (15, 5, 'local_g3_2')
// (15, 5, 'lutff_2/in_1')
// (15, 5, 'lutff_2/out')
// (15, 6, 'neigh_op_bot_2')
// (16, 4, 'local_g3_2')
// (16, 4, 'lutff_7/in_0')
// (16, 4, 'neigh_op_tnl_2')
// (16, 5, 'neigh_op_lft_2')
// (16, 6, 'neigh_op_bnl_2')

reg n132 = 0;
// (14, 4, 'local_g3_3')
// (14, 4, 'lutff_3/in_3')
// (14, 4, 'neigh_op_tnr_3')
// (14, 5, 'neigh_op_rgt_3')
// (14, 6, 'neigh_op_bnr_3')
// (15, 4, 'neigh_op_top_3')
// (15, 5, 'local_g0_3')
// (15, 5, 'lutff_3/in_2')
// (15, 5, 'lutff_3/out')
// (15, 6, 'neigh_op_bot_3')
// (16, 4, 'local_g3_3')
// (16, 4, 'lutff_6/in_2')
// (16, 4, 'neigh_op_tnl_3')
// (16, 5, 'neigh_op_lft_3')
// (16, 6, 'neigh_op_bnl_3')

reg n133 = 0;
// (14, 4, 'local_g3_4')
// (14, 4, 'lutff_4/in_3')
// (14, 4, 'neigh_op_tnr_4')
// (14, 5, 'neigh_op_rgt_4')
// (14, 6, 'neigh_op_bnr_4')
// (15, 4, 'neigh_op_top_4')
// (15, 5, 'local_g0_4')
// (15, 5, 'lutff_4/in_2')
// (15, 5, 'lutff_4/out')
// (15, 6, 'neigh_op_bot_4')
// (16, 4, 'local_g3_4')
// (16, 4, 'lutff_7/in_2')
// (16, 4, 'neigh_op_tnl_4')
// (16, 5, 'neigh_op_lft_4')
// (16, 6, 'neigh_op_bnl_4')

reg n134 = 0;
// (14, 4, 'local_g3_5')
// (14, 4, 'lutff_5/in_3')
// (14, 4, 'neigh_op_tnr_5')
// (14, 5, 'neigh_op_rgt_5')
// (14, 6, 'neigh_op_bnr_5')
// (15, 4, 'neigh_op_top_5')
// (15, 5, 'local_g0_5')
// (15, 5, 'lutff_5/in_2')
// (15, 5, 'lutff_5/out')
// (15, 6, 'neigh_op_bot_5')
// (16, 4, 'local_g2_5')
// (16, 4, 'lutff_6/in_3')
// (16, 4, 'neigh_op_tnl_5')
// (16, 5, 'neigh_op_lft_5')
// (16, 6, 'neigh_op_bnl_5')

reg n135 = 0;
// (14, 4, 'local_g3_6')
// (14, 4, 'lutff_6/in_3')
// (14, 4, 'neigh_op_tnr_6')
// (14, 5, 'neigh_op_rgt_6')
// (14, 6, 'neigh_op_bnr_6')
// (15, 3, 'sp4_r_v_b_37')
// (15, 4, 'neigh_op_top_6')
// (15, 4, 'sp4_r_v_b_24')
// (15, 5, 'local_g3_6')
// (15, 5, 'lutff_6/in_1')
// (15, 5, 'lutff_6/out')
// (15, 5, 'sp4_r_v_b_13')
// (15, 6, 'neigh_op_bot_6')
// (15, 6, 'sp4_r_v_b_0')
// (16, 2, 'local_g0_0')
// (16, 2, 'lutff_3/in_1')
// (16, 2, 'sp4_h_r_0')
// (16, 2, 'sp4_v_t_37')
// (16, 3, 'sp4_v_b_37')
// (16, 4, 'neigh_op_tnl_6')
// (16, 4, 'sp4_v_b_24')
// (16, 5, 'neigh_op_lft_6')
// (16, 5, 'sp4_v_b_13')
// (16, 6, 'neigh_op_bnl_6')
// (16, 6, 'sp4_v_b_0')
// (17, 2, 'sp4_h_r_13')
// (18, 2, 'sp4_h_r_24')
// (19, 2, 'sp4_h_r_37')
// (20, 2, 'sp4_h_l_37')

reg n136 = 0;
// (14, 4, 'local_g3_7')
// (14, 4, 'lutff_7/in_3')
// (14, 4, 'neigh_op_tnr_7')
// (14, 5, 'neigh_op_rgt_7')
// (14, 6, 'neigh_op_bnr_7')
// (15, 3, 'sp4_r_v_b_39')
// (15, 4, 'neigh_op_top_7')
// (15, 4, 'sp4_r_v_b_26')
// (15, 5, 'local_g3_7')
// (15, 5, 'lutff_7/in_1')
// (15, 5, 'lutff_7/out')
// (15, 5, 'sp4_r_v_b_15')
// (15, 6, 'neigh_op_bot_7')
// (15, 6, 'sp4_r_v_b_2')
// (16, 2, 'local_g1_7')
// (16, 2, 'lutff_3/in_3')
// (16, 2, 'sp4_h_r_7')
// (16, 2, 'sp4_v_t_39')
// (16, 3, 'sp4_v_b_39')
// (16, 4, 'neigh_op_tnl_7')
// (16, 4, 'sp4_v_b_26')
// (16, 5, 'neigh_op_lft_7')
// (16, 5, 'sp4_v_b_15')
// (16, 6, 'neigh_op_bnl_7')
// (16, 6, 'sp4_v_b_2')
// (17, 2, 'sp4_h_r_18')
// (18, 2, 'sp4_h_r_31')
// (19, 2, 'sp4_h_r_42')
// (20, 2, 'sp4_h_l_42')

wire n137;
// (14, 4, 'lutff_7/cout')
// (14, 5, 'carry_in')
// (14, 5, 'carry_in_mux')
// (14, 5, 'lutff_0/in_3')

reg n138 = 0;
// (15, 0, 'logic_op_tnr_2')
// (15, 1, 'local_g3_2')
// (15, 1, 'lutff_2/in_1')
// (15, 1, 'neigh_op_rgt_2')
// (15, 2, 'local_g1_2')
// (15, 2, 'lutff_0/in_1')
// (15, 2, 'neigh_op_bnr_2')
// (16, 0, 'logic_op_top_2')
// (16, 1, 'local_g3_2')
// (16, 1, 'lutff_2/out')
// (16, 1, 'lutff_3/in_2')
// (16, 2, 'local_g0_2')
// (16, 2, 'lutff_2/in_0')
// (16, 2, 'neigh_op_bot_2')
// (17, 0, 'logic_op_tnl_2')
// (17, 1, 'neigh_op_lft_2')
// (17, 2, 'neigh_op_bnl_2')

wire BTN1;
assign BTN1=iBTN1;
// (15, 1, 'local_g0_1')
// (15, 1, 'lutff_3/in_0')
// (15, 1, 'lutff_5/in_0')
// (15, 1, 'sp4_h_r_9')
// (16, 1, 'sp4_h_r_20')
// (17, 1, 'sp4_h_r_33')
// (18, 1, 'neigh_op_bnr_2')
// (18, 1, 'neigh_op_bnr_6')
// (18, 1, 'sp4_h_r_44')
// (18, 1, 'sp4_r_v_b_4')
// (19, 0, 'io_1/D_IN_0')
// (19, 0, 'io_1/PAD')
// (19, 0, 'span4_vert_4')
// (19, 1, 'neigh_op_bot_2')
// (19, 1, 'neigh_op_bot_6')
// (19, 1, 'sp4_h_l_44')
// (19, 1, 'sp4_v_b_4')
// (20, 1, 'neigh_op_bnl_2')
// (20, 1, 'neigh_op_bnl_6')

wire n140;
// (15, 1, 'neigh_op_tnr_0')
// (15, 2, 'neigh_op_rgt_0')
// (15, 3, 'neigh_op_bnr_0')
// (16, 1, 'neigh_op_top_0')
// (16, 2, 'local_g1_0')
// (16, 2, 'lutff_0/out')
// (16, 2, 'lutff_6/in_3')
// (16, 3, 'neigh_op_bot_0')
// (17, 1, 'neigh_op_tnl_0')
// (17, 2, 'neigh_op_lft_0')
// (17, 3, 'neigh_op_bnl_0')

wire n141;
// (15, 1, 'neigh_op_tnr_2')
// (15, 2, 'neigh_op_rgt_2')
// (15, 3, 'neigh_op_bnr_2')
// (16, 1, 'neigh_op_top_2')
// (16, 2, 'local_g3_2')
// (16, 2, 'lutff_2/out')
// (16, 2, 'lutff_6/in_1')
// (16, 3, 'neigh_op_bot_2')
// (17, 1, 'neigh_op_tnl_2')
// (17, 2, 'neigh_op_lft_2')
// (17, 3, 'neigh_op_bnl_2')

wire n142;
// (15, 1, 'neigh_op_tnr_3')
// (15, 2, 'neigh_op_rgt_3')
// (15, 3, 'neigh_op_bnr_3')
// (16, 1, 'neigh_op_top_3')
// (16, 2, 'local_g3_3')
// (16, 2, 'lutff_3/out')
// (16, 2, 'lutff_6/in_2')
// (16, 3, 'neigh_op_bot_3')
// (17, 1, 'neigh_op_tnl_3')
// (17, 2, 'neigh_op_lft_3')
// (17, 3, 'neigh_op_bnl_3')

wire n143;
// (15, 1, 'neigh_op_tnr_5')
// (15, 2, 'neigh_op_rgt_5')
// (15, 3, 'neigh_op_bnr_5')
// (16, 1, 'neigh_op_top_5')
// (16, 2, 'lutff_5/out')
// (16, 3, 'local_g1_5')
// (16, 3, 'lutff_7/in_3')
// (16, 3, 'neigh_op_bot_5')
// (17, 1, 'neigh_op_tnl_5')
// (17, 2, 'neigh_op_lft_5')
// (17, 3, 'neigh_op_bnl_5')

wire n144;
// (15, 2, 'lutff_1/cout')
// (15, 2, 'lutff_2/in_3')

wire n145;
// (15, 2, 'lutff_2/cout')
// (15, 2, 'lutff_3/in_3')

wire n146;
// (15, 2, 'lutff_3/cout')
// (15, 2, 'lutff_4/in_3')

wire n147;
// (15, 2, 'lutff_4/cout')
// (15, 2, 'lutff_5/in_3')

wire n148;
// (15, 2, 'lutff_5/cout')
// (15, 2, 'lutff_6/in_3')

wire n149;
// (15, 2, 'lutff_6/cout')
// (15, 2, 'lutff_7/in_3')

wire n150;
// (15, 2, 'lutff_7/cout')
// (15, 3, 'carry_in')
// (15, 3, 'carry_in_mux')
// (15, 3, 'lutff_0/in_3')

wire n151;
// (15, 2, 'neigh_op_tnr_3')
// (15, 3, 'neigh_op_rgt_3')
// (15, 4, 'neigh_op_bnr_3')
// (16, 2, 'neigh_op_top_3')
// (16, 3, 'local_g1_3')
// (16, 3, 'lutff_3/out')
// (16, 3, 'lutff_7/in_1')
// (16, 4, 'neigh_op_bot_3')
// (17, 2, 'neigh_op_tnl_3')
// (17, 3, 'neigh_op_lft_3')
// (17, 4, 'neigh_op_bnl_3')

wire n152;
// (15, 2, 'neigh_op_tnr_5')
// (15, 3, 'neigh_op_rgt_5')
// (15, 4, 'neigh_op_bnr_5')
// (16, 2, 'neigh_op_top_5')
// (16, 3, 'local_g2_5')
// (16, 3, 'lutff_5/out')
// (16, 3, 'lutff_7/in_2')
// (16, 4, 'neigh_op_bot_5')
// (17, 2, 'neigh_op_tnl_5')
// (17, 3, 'neigh_op_lft_5')
// (17, 4, 'neigh_op_bnl_5')

wire n153;
// (15, 2, 'sp4_r_v_b_36')
// (15, 3, 'neigh_op_tnr_6')
// (15, 3, 'sp4_r_v_b_25')
// (15, 4, 'neigh_op_rgt_6')
// (15, 4, 'sp4_r_v_b_12')
// (15, 5, 'neigh_op_bnr_6')
// (15, 5, 'sp4_r_v_b_1')
// (16, 1, 'sp4_v_t_36')
// (16, 2, 'local_g2_4')
// (16, 2, 'lutff_6/in_0')
// (16, 2, 'sp4_v_b_36')
// (16, 3, 'neigh_op_top_6')
// (16, 3, 'sp4_v_b_25')
// (16, 4, 'lutff_6/out')
// (16, 4, 'sp4_v_b_12')
// (16, 5, 'neigh_op_bot_6')
// (16, 5, 'sp4_v_b_1')
// (17, 3, 'neigh_op_tnl_6')
// (17, 4, 'neigh_op_lft_6')
// (17, 5, 'neigh_op_bnl_6')

wire n154;
// (15, 3, 'lutff_0/cout')
// (15, 3, 'lutff_1/in_3')

wire n155;
// (15, 3, 'lutff_1/cout')
// (15, 3, 'lutff_2/in_3')

wire n156;
// (15, 3, 'lutff_2/cout')
// (15, 3, 'lutff_3/in_3')

wire n157;
// (15, 3, 'lutff_3/cout')
// (15, 3, 'lutff_4/in_3')

wire n158;
// (15, 3, 'lutff_4/cout')
// (15, 3, 'lutff_5/in_3')

wire n159;
// (15, 3, 'lutff_5/cout')
// (15, 3, 'lutff_6/in_3')

wire n160;
// (15, 3, 'lutff_6/cout')
// (15, 3, 'lutff_7/in_3')

wire n161;
// (15, 3, 'lutff_7/cout')
// (15, 4, 'carry_in')
// (15, 4, 'carry_in_mux')
// (15, 4, 'lutff_0/in_3')

wire n162;
// (15, 3, 'neigh_op_tnr_7')
// (15, 4, 'neigh_op_rgt_7')
// (15, 5, 'neigh_op_bnr_7')
// (16, 3, 'local_g0_7')
// (16, 3, 'lutff_7/in_0')
// (16, 3, 'neigh_op_top_7')
// (16, 4, 'lutff_7/out')
// (16, 5, 'neigh_op_bot_7')
// (17, 3, 'neigh_op_tnl_7')
// (17, 4, 'neigh_op_lft_7')
// (17, 5, 'neigh_op_bnl_7')

wire n163;
// (15, 4, 'lutff_0/cout')
// (15, 4, 'lutff_1/in_3')

wire n164;
// (15, 4, 'lutff_1/cout')
// (15, 4, 'lutff_2/in_3')

wire n165;
// (15, 4, 'lutff_2/cout')
// (15, 4, 'lutff_3/in_3')

wire n166;
// (15, 4, 'lutff_3/cout')
// (15, 4, 'lutff_4/in_3')

wire n167;
// (15, 4, 'lutff_4/cout')
// (15, 4, 'lutff_5/in_3')

wire n168;
// (15, 4, 'lutff_5/cout')
// (15, 4, 'lutff_6/in_3')

wire n169;
// (15, 4, 'lutff_6/cout')
// (15, 4, 'lutff_7/in_3')

wire n170;
// (15, 4, 'lutff_7/cout')
// (15, 5, 'carry_in')
// (15, 5, 'carry_in_mux')
// (15, 5, 'lutff_0/in_3')

wire n171;
// (15, 5, 'lutff_0/cout')
// (15, 5, 'lutff_1/in_3')

wire n172;
// (15, 5, 'lutff_1/cout')
// (15, 5, 'lutff_2/in_3')

wire n173;
// (15, 5, 'lutff_2/cout')
// (15, 5, 'lutff_3/in_3')

wire n174;
// (15, 5, 'lutff_3/cout')
// (15, 5, 'lutff_4/in_3')

wire n175;
// (15, 5, 'lutff_4/cout')
// (15, 5, 'lutff_5/in_3')

wire n176;
// (15, 5, 'lutff_5/cout')
// (15, 5, 'lutff_6/in_3')

wire n177;
// (15, 5, 'lutff_6/cout')
// (15, 5, 'lutff_7/in_3')

wire n178;
// (14, 1, 'lutff_3/cout')

wire n179;
// (14, 3, 'lutff_0/cout')

wire n180;
// (14, 1, 'lutff_5/cout')

wire n181;
// (14, 3, 'lutff_2/cout')

wire n182;
// (14, 4, 'lutff_1/cout')

wire n183;
// (14, 3, 'lutff_4/cout')

wire n184;
// (14, 2, 'lutff_6/cout')

wire n185;
// (14, 4, 'lutff_3/cout')

wire n186;
// (14, 1, 'lutff_0/cout')

wire n187;
// (14, 3, 'lutff_6/cout')

wire n188;
// (14, 4, 'lutff_5/cout')

wire n189;
// (14, 1, 'lutff_2/cout')

wire n190;
// (14, 2, 'lutff_1/cout')

wire n191;
// (14, 1, 'lutff_4/cout')

wire n192;
// (14, 2, 'lutff_3/cout')

wire n193;
// (14, 3, 'lutff_1/cout')

wire n194;
// (14, 4, 'lutff_0/cout')

wire n195;
// (14, 1, 'lutff_6/cout')

wire n196;
// (14, 2, 'lutff_5/cout')

wire n197;
// (14, 4, 'lutff_2/cout')

wire n198;
// (14, 4, 'lutff_4/cout')

wire n199;
// (14, 2, 'lutff_0/cout')

wire n200;
// (14, 2, 'lutff_2/cout')

wire n201;
// (14, 3, 'lutff_3/cout')

wire n202;
// (15, 2, 'lutff_0/cout')

wire n203;
// (14, 2, 'lutff_4/cout')

wire n204;
// (14, 3, 'lutff_5/cout')

wire n205;
// (14, 1, 'lutff_1/cout')

wire n206;
// (14, 4, 'lutff_6/cout')

wire n207;
// (15, 5, 'lutff_0/lout')

wire n208;
// (15, 4, 'lutff_2/lout')

wire n209;
// (13, 1, 'lutff_2/lout')

wire n210;
// (12, 2, 'lutff_5/lout')

wire n211;
// (16, 3, 'lutff_3/lout')

wire n212;
// (11, 3, 'lutff_1/lout')

wire n213;
// (15, 1, 'lutff_5/lout')

wire n214;
// (15, 2, 'lutff_4/lout')

wire n215;
// (13, 4, 'lutff_1/lout')

wire n216;
// (14, 1, 'lutff_3/lout')

wire n217;
// (14, 3, 'lutff_0/lout')

wire n218;
// (11, 2, 'lutff_2/lout')

wire n219;
// (15, 3, 'lutff_5/lout')

wire n220;
// (15, 4, 'lutff_4/lout')

wire n221;
// (13, 1, 'lutff_4/lout')

wire n222;
// (12, 2, 'lutff_7/lout')

wire n223;
// (14, 5, 'lutff_0/lout')

wire n224;
// (16, 3, 'lutff_5/lout')

wire n225;
// (11, 1, 'lutff_6/lout')

wire n226;
// (11, 3, 'lutff_3/lout')

wire n227;
// (15, 2, 'lutff_6/lout')

wire n228;
// (14, 1, 'lutff_5/lout')

wire n229;
// (14, 3, 'lutff_2/lout')

wire n230;
// (14, 4, 'lutff_1/lout')

wire n231;
// (12, 3, 'lutff_2/lout')

wire n232;
// (11, 2, 'lutff_4/lout')

wire n233;
// (15, 4, 'lutff_6/lout')

wire n234;
// (18, 1, 'lutff_1/lout')

wire n235;
// (13, 1, 'lutff_6/lout')

wire n236;
// (12, 2, 'lutff_0/lout')

wire n237;
// (13, 2, 'lutff_5/lout')

wire n238;
// (12, 1, 'lutff_4/lout')

wire n239;
// (15, 1, 'lutff_0/lout')

wire n240;
// (16, 3, 'lutff_7/lout')

wire n241;
// (14, 1, 'lutff_7/lout')

wire n242;
// (14, 3, 'lutff_4/lout')

wire n243;
// (14, 2, 'lutff_6/lout')

wire n244;
// (14, 4, 'lutff_3/lout')

wire n245;
// (12, 3, 'lutff_4/lout')

wire n246;
// (11, 2, 'lutff_6/lout')

wire n247;
// (13, 2, 'lutff_7/lout')

wire n248;
// (12, 1, 'lutff_6/lout')

wire n249;
// (15, 2, 'lutff_1/out')

wire n250;
// (15, 2, 'lutff_1/lout')

wire n251;
// (14, 1, 'lutff_0/out')

wire n252;
// (14, 1, 'lutff_0/lout')

wire n253;
// (14, 1, 'carry_in_mux')

// Carry-In for (14 1)
assign n253 = 1;

wire n254;
// (13, 4, 'lutff_7/lout')

wire n255;
// (16, 1, 'lutff_2/lout')

wire n256;
// (16, 2, 'lutff_1/lout')

wire n257;
// (14, 3, 'lutff_6/lout')

wire n258;
// (14, 4, 'lutff_5/lout')

wire n259;
// (12, 3, 'lutff_6/lout')

wire n260;
// (16, 4, 'lutff_7/lout')

wire n261;
// (15, 4, 'lutff_1/lout')

wire n262;
// (13, 1, 'lutff_1/lout')

wire n263;
// (15, 5, 'lutff_2/lout')

wire n264;
// (11, 1, 'lutff_3/lout')

wire n265;
// (15, 2, 'lutff_3/lout')

wire n266;
// (14, 1, 'lutff_2/lout')

wire n267;
// (14, 2, 'lutff_1/lout')

wire n268;
// (16, 2, 'lutff_3/lout')

wire n269;
// (14, 4, 'lutff_7/lout')

wire n270;
// (11, 2, 'lutff_1/lout')

wire n271;
// (15, 4, 'lutff_3/lout')

wire n272;
// (13, 1, 'lutff_3/lout')

wire n273;
// (15, 3, 'lutff_7/lout')

wire n274;
// (15, 5, 'lutff_4/lout')

wire n275;
// (12, 1, 'lutff_1/lout')

wire n276;
// (15, 2, 'lutff_5/lout')

wire n277;
// (11, 3, 'lutff_5/lout')

wire n278;
// (14, 1, 'lutff_4/lout')

wire n279;
// (14, 2, 'lutff_3/lout')

wire n280;
// (14, 3, 'lutff_1/lout')

wire n281;
// (14, 4, 'lutff_0/lout')

wire n282;
// (16, 2, 'lutff_5/lout')

wire n283;
// (12, 3, 'lutff_1/lout')

wire n284;
// (11, 2, 'lutff_3/lout')

wire n285;
// (15, 3, 'lutff_0/lout')

wire n286;
// (15, 5, 'lutff_6/lout')

wire n287;
// (12, 1, 'lutff_3/lout')

wire n288;
// (12, 2, 'lutff_2/lout')

wire n289;
// (15, 1, 'lutff_2/lout')

wire n290;
// (13, 4, 'lutff_4/lout')

wire n291;
// (11, 3, 'lutff_7/lout')

wire n292;
// (14, 1, 'lutff_6/lout')

wire n293;
// (14, 2, 'lutff_5/lout')

wire n294;
// (14, 4, 'lutff_2/lout')

wire n295;
// (12, 3, 'lutff_3/lout')

wire n296;
// (13, 2, 'lutff_6/lout')

wire n297;
// (15, 3, 'lutff_2/lout')

wire n298;
// (12, 1, 'lutff_5/lout')

wire n299;
// (12, 2, 'lutff_4/lout')

wire n300;
// (11, 3, 'lutff_0/lout')

wire n301;
// (13, 4, 'lutff_6/lout')

wire n302;
// (16, 2, 'lutff_0/lout')

wire n303;
// (14, 2, 'lutff_7/lout')

wire n304;
// (14, 4, 'lutff_4/lout')

wire n305;
// (12, 3, 'lutff_5/lout')

wire n306;
// (16, 4, 'lutff_6/lout')

wire n307;
// (15, 3, 'lutff_4/lout')

wire n308;
// (15, 5, 'lutff_1/lout')

wire n309;
// (12, 1, 'lutff_7/lout')

wire n310;
// (11, 3, 'lutff_2/lout')

wire n311;
// (14, 2, 'lutff_0/lout')

wire n312;
// (16, 1, 'lutff_3/lout')

wire n313;
// (16, 2, 'lutff_2/lout')

wire n314;
// (13, 3, 'lutff_3/lout')

wire n315;
// (12, 3, 'lutff_7/lout')

wire n316;
// (15, 3, 'lutff_6/lout')

wire n317;
// (15, 5, 'lutff_3/lout')

wire n318;
// (15, 4, 'lutff_5/lout')

wire n319;
// (12, 1, 'lutff_0/lout')

wire n320;
// (13, 1, 'lutff_5/lout')

wire n321;
// (11, 3, 'lutff_4/lout')

wire n322;
// (14, 2, 'lutff_2/lout')

wire n323;
// (15, 2, 'lutff_7/lout')

wire n324;
// (12, 3, 'lutff_0/lout')

wire n325;
// (13, 3, 'lutff_5/lout')

wire n326;
// (14, 3, 'lutff_3/lout')

wire n327;
// (11, 2, 'lutff_5/lout')

wire n328;
// (15, 5, 'lutff_5/lout')

wire n329;
// (15, 4, 'lutff_7/lout')

wire n330;
// (12, 1, 'lutff_2/lout')

wire n331;
// (12, 2, 'lutff_1/lout')

wire n332;
// (11, 1, 'lutff_0/lout')

wire n333;
// (15, 2, 'lutff_0/out')

wire n334;
// (15, 2, 'lutff_0/lout')

wire n335;
// (15, 2, 'carry_in_mux')

// Carry-In for (15 2)
assign n335 = 1;

wire n336;
// (11, 3, 'lutff_6/lout')

wire n337;
// (14, 2, 'lutff_4/lout')

wire n338;
// (16, 2, 'lutff_6/lout')

wire n339;
// (14, 3, 'lutff_5/lout')

wire n340;
// (15, 3, 'lutff_1/lout')

wire n341;
// (15, 4, 'lutff_0/lout')

wire n342;
// (13, 1, 'lutff_0/lout')

wire n343;
// (11, 2, 'lutff_7/lout')

wire n344;
// (15, 5, 'lutff_7/lout')

wire n345;
// (12, 2, 'lutff_3/lout')

wire n346;
// (11, 1, 'lutff_2/lout')

wire n347;
// (15, 1, 'lutff_3/lout')

wire n348;
// (15, 2, 'lutff_2/lout')

wire n349;
// (13, 3, 'lutff_0/lout')

wire n350;
// (14, 1, 'lutff_1/lout')

wire n351;
// (14, 3, 'lutff_7/lout')

wire n352;
// (14, 4, 'lutff_6/lout')

wire n353;
// (11, 2, 'lutff_0/lout')

wire n354;
// (15, 3, 'lutff_3/lout')

assign n250 = /* LUT   15  2  1 */ 1'b0;
assign n252 = /* LUT   14  1  0 */ 1'b0;
assign n334 = /* LUT   15  2  0 */ 1'b0;
assign n207 = /* LUT   15  5  0 */ (n170 ? !n129 : n129);
assign n208 = /* LUT   15  4  2 */ (n164 ? !n122 : n122);
assign n209 = /* LUT   13  1  2 */ n27;
assign n210 = /* LUT   12  2  5 */ (n32 ? (n15 ? (n49 ? n17 : 1'b0) : 1'b0) : 1'b0);
assign n211 = /* LUT   16  3  3 */ (n125 ? 1'b0 : (n122 ? 1'b0 : (n124 ? 1'b0 : !n123)));
assign n212 = /* LUT   11  3  1 */ n20;
assign n213 = /* LUT   15  1  5 */ (BTN2 ? 1'b0 : !BTN1);
assign n214 = /* LUT   15  2  4 */ (n146 ? !n104 : n104);
assign n215 = /* LUT   13  4  1 */ (n64 ? 1'b0 : !n62);
assign n216 = /* LUT   14  1  3 */ !n103;
assign n217 = /* LUT   14  3  0 */ !n120;
assign n218 = /* LUT   11  2  2 */ n9;
assign n219 = /* LUT   15  3  5 */ (n158 ? !n115 : n115);
assign n220 = /* LUT   15  4  4 */ (n166 ? !n124 : n124);
assign n221 = /* LUT   13  1  4 */ n74;
assign n222 = /* LUT   12  2  7 */ (n36 ? 1'b0 : (n37 ? 1'b0 : (n44 ? 1'b0 : !n41)));
assign n223 = /* LUT   14  5  0 */ (n137 ? !n64 : 1'b0);
assign n224 = /* LUT   16  3  5 */ (n114 ? 1'b0 : (n120 ? 1'b0 : (n121 ? 1'b0 : !n112)));
assign n225 = /* LUT   11  1  6 */ n5;
assign n226 = /* LUT   11  3  3 */ n22;
assign n227 = /* LUT   15  2  6 */ (n148 ? !n106 : n106);
assign n228 = /* LUT   14  1  5 */ !n105;
assign n229 = /* LUT   14  3  2 */ !n122;
assign n230 = /* LUT   14  4  1 */ !n130;
assign n231 = /* LUT   12  3  2 */ (n42 ? 1'b0 : (n45 ? 1'b0 : (n46 ? 1'b0 : !n47)));
assign n232 = /* LUT   11  2  4 */ (n5 ? 1'b0 : (n9 ? 1'b0 : (n14 ? 1'b0 : !n10)));
assign n233 = /* LUT   15  4  6 */ (n168 ? !n126 : n126);
assign n234 = /* LUT   18  1  1 */ !n64;
assign n235 = /* LUT   13  1  6 */ n50;
assign n236 = /* LUT   12  2  0 */ (n39 ? (n38 ? n35 : 1'b0) : 1'b0);
assign n237 = /* LUT   13  2  5 */ (n61 ? 1'b0 : (n58 ? 1'b0 : !n52));
assign n238 = /* LUT   12  1  4 */ n31;
assign n239 = /* LUT   15  1  0 */ n60;
assign n240 = /* LUT   16  3  7 */ (n143 ? (n152 ? (n151 ? n162 : 1'b0) : 1'b0) : 1'b0);
assign n241 = /* LUT   14  1  7 */ !n107;
assign n242 = /* LUT   14  3  4 */ !n124;
assign n243 = /* LUT   14  2  6 */ !n116;
assign n244 = /* LUT   14  4  3 */ !n132;
assign n245 = /* LUT   12  3  4 */ n47;
assign n246 = /* LUT   11  2  6 */ (n7 ? (n12 ? (n11 ? n6 : 1'b0) : 1'b0) : 1'b0);
assign n247 = /* LUT   13  2  7 */ !LED1;
assign n248 = /* LUT   12  1  6 */ (n56 ? n26 : 1'b0);
assign n254 = /* LUT   13  4  7 */ (n66 ? (n65 ? 1'b1 : (n100 ? !n62 : 1'b1)) : (n100 ? !n62 : 1'b1));
assign n255 = /* LUT   16  1  2 */ n101;
assign n256 = /* LUT   16  2  1 */ !n119;
assign n257 = /* LUT   14  3  6 */ !n126;
assign n258 = /* LUT   14  4  5 */ !n134;
assign n259 = /* LUT   12  3  6 */ n42;
assign n260 = /* LUT   16  4  7 */ (n126 ? 1'b0 : (n133 ? 1'b0 : (n129 ? 1'b0 : !n131)));
assign n261 = /* LUT   15  4  1 */ (n163 ? !n121 : n121);
assign n262 = /* LUT   13  1  1 */ n56;
assign n263 = /* LUT   15  5  2 */ (n172 ? !n131 : n131);
assign n264 = /* LUT   11  1  3 */ n8;
assign n265 = /* LUT   15  2  3 */ (n145 ? !n103 : n103);
assign n266 = /* LUT   14  1  2 */ !n102;
assign n267 = /* LUT   14  2  1 */ 1'b1;
assign n268 = /* LUT   16  2  3 */ (n136 ? 1'b0 : (n83 ? 1'b0 : (n135 ? 1'b0 : !n102)));
assign n269 = /* LUT   14  4  7 */ !n136;
assign n270 = /* LUT   11  2  1 */ n6;
assign n271 = /* LUT   15  4  3 */ (n165 ? !n123 : n123);
assign n272 = /* LUT   13  1  3 */ n55;
assign n273 = /* LUT   15  3  7 */ (n160 ? !n117 : n117);
assign n274 = /* LUT   15  5  4 */ (n174 ? !n133 : n133);
assign n275 = /* LUT   12  1  1 */ n36;
assign n276 = /* LUT   15  2  5 */ (n147 ? !n105 : n105);
assign n277 = /* LUT   11  3  5 */ n16;
assign n278 = /* LUT   14  1  4 */ !n104;
assign n279 = /* LUT   14  2  3 */ !n113;
assign n280 = /* LUT   14  3  1 */ !n121;
assign n281 = /* LUT   14  4  0 */ !n129;
assign n282 = /* LUT   16  2  5 */ (n103 ? 1'b0 : (n111 ? 1'b0 : (n104 ? 1'b0 : !n107)));
assign n283 = /* LUT   12  3  1 */ n46;
assign n284 = /* LUT   11  2  3 */ n14;
assign n285 = /* LUT   15  3  0 */ (n150 ? !n111 : n111);
assign n286 = /* LUT   15  5  6 */ (n176 ? !n135 : n135);
assign n287 = /* LUT   12  1  3 */ n28;
assign n288 = /* LUT   12  2  2 */ n48;
assign n289 = /* LUT   15  1  2 */ !n138;
assign n290 = /* LUT   13  4  4 */ n76;
assign n291 = /* LUT   11  3  7 */ n18;
assign n292 = /* LUT   14  1  6 */ !n106;
assign n293 = /* LUT   14  2  5 */ !n115;
assign n294 = /* LUT   14  4  2 */ !n131;
assign n295 = /* LUT   12  3  3 */ n41;
assign n296 = /* LUT   13  2  6 */ n76;
assign n297 = /* LUT   15  3  2 */ (n155 ? !n112 : n112);
assign n298 = /* LUT   12  1  5 */ n53;
assign n299 = /* LUT   12  2  4 */ (n40 ? (n57 ? n43 : 1'b0) : 1'b0);
assign n300 = /* LUT   11  3  0 */ (n24 ? (n20 ? (n48 ? n23 : 1'b0) : 1'b0) : 1'b0);
assign n301 = /* LUT   13  4  6 */ (n63 ? 1'b0 : (n66 ? (n65 ? 1'b1 : !n100) : !n100));
assign n302 = /* LUT   16  2  0 */ (n106 ? (n119 ? (n113 ? n105 : 1'b0) : 1'b0) : 1'b0);
assign n303 = /* LUT   14  2  7 */ !n117;
assign n304 = /* LUT   14  4  4 */ !n133;
assign n305 = /* LUT   12  3  5 */ n37;
assign n306 = /* LUT   16  4  6 */ (n134 ? 1'b0 : (n132 ? 1'b0 : (n127 ? 1'b0 : !n130)));
assign n307 = /* LUT   15  3  4 */ (n157 ? !n114 : n114);
assign n308 = /* LUT   15  5  1 */ (n171 ? !n130 : n130);
assign n309 = /* LUT   12  1  7 */ (n31 ? 1'b0 : (n30 ? 1'b0 : (n29 ? 1'b0 : !n28)));
assign n310 = /* LUT   11  3  2 */ n23;
assign n311 = /* LUT   14  2  0 */ !n111;
assign n312 = /* LUT   16  1  3 */ (n138 ? !n83 : n83);
assign n313 = /* LUT   16  2  2 */ (n116 ? (n117 ? (n115 ? !n138 : 1'b0) : 1'b0) : 1'b0);
assign n314 = /* LUT   13  3  3 */ (n64 ? !n62 : 1'b0);
assign n315 = /* LUT   12  3  7 */ n44;
assign n316 = /* LUT   15  3  6 */ (n159 ? !n116 : n116);
assign n317 = /* LUT   15  5  3 */ (n173 ? !n132 : n132);
assign n318 = /* LUT   15  4  5 */ (n167 ? !n125 : n125);
assign n319 = /* LUT   12  1  0 */ n30;
assign n320 = /* LUT   13  1  5 */ (n51 ? (n53 ? 1'b0 : (n74 ? 1'b0 : n27)) : 1'b0);
assign n321 = /* LUT   11  3  4 */ (n18 ? 1'b0 : (n16 ? 1'b0 : (n19 ? 1'b0 : !n22)));
assign n322 = /* LUT   14  2  2 */ !n112;
assign n323 = /* LUT   15  2  7 */ (n149 ? !n107 : n107);
assign n324 = /* LUT   12  3  0 */ n19;
assign n325 = /* LUT   13  3  5 */ n45;
assign n326 = /* LUT   14  3  3 */ !n123;
assign n327 = /* LUT   11  2  5 */ n10;
assign n328 = /* LUT   15  5  5 */ (n175 ? !n134 : n134);
assign n329 = /* LUT   15  4  7 */ (n169 ? !n127 : n127);
assign n330 = /* LUT   12  1  2 */ n26;
assign n331 = /* LUT   12  2  1 */ (n33 ? (n54 ? (n13 ? n21 : 1'b0) : 1'b0) : 1'b0);
assign n332 = /* LUT   11  1  0 */ n29;
assign n336 = /* LUT   11  3  6 */ n24;
assign n337 = /* LUT   14  2  4 */ !n114;
assign n338 = /* LUT   16  2  6 */ (n140 ? (n142 ? (n141 ? n153 : 1'b0) : 1'b0) : 1'b0);
assign n339 = /* LUT   14  3  5 */ !n125;
assign n340 = /* LUT   15  3  1 */ (n154 ? !n119 : n119);
assign n341 = /* LUT   15  4  0 */ (n161 ? !n120 : n120);
assign n342 = /* LUT   13  1  0 */ (n55 ? (n50 ? (n60 ? n8 : 1'b0) : 1'b0) : 1'b0);
assign n343 = /* LUT   11  2  7 */ n11;
assign n344 = /* LUT   15  5  7 */ (n177 ? !n136 : n136);
assign n345 = /* LUT   12  2  3 */ n51;
assign n346 = /* LUT   11  1  2 */ n7;
assign n347 = /* LUT   15  1  3 */ (BTN2 ? 1'b0 : BTN1);
assign n348 = /* LUT   15  2  2 */ (n144 ? !n102 : n102);
assign n349 = /* LUT   13  3  0 */ n61;
assign n350 = /* LUT   14  1  1 */ !n83;
assign n351 = /* LUT   14  3  7 */ !n127;
assign n352 = /* LUT   14  4  6 */ !n135;
assign n353 = /* LUT   11  2  0 */ n12;
assign n354 = /* LUT   15  3  3 */ (n156 ? !n113 : n113);
assign n171 = /* CARRY 15  5  0 */ (1'b0 & n129) | ((1'b0 | n129) & n170);
assign n165 = /* CARRY 15  4  2 */ (1'b0 & n122) | ((1'b0 | n122) & n164);
assign n147 = /* CARRY 15  2  4 */ (1'b0 & n104) | ((1'b0 | n104) & n146);
assign n178 = /* CARRY 14  1  3 */ (1'b0 & n69) | ((1'b0 | n69) & n189);
assign n179 = /* CARRY 14  3  0 */ (1'b0 & n84) | ((1'b0 | n84) & n118);
assign n159 = /* CARRY 15  3  5 */ (n115 & 1'b0) | ((n115 | 1'b0) & n158);
assign n167 = /* CARRY 15  4  4 */ (1'b0 & n124) | ((1'b0 | n124) & n166);
assign n149 = /* CARRY 15  2  6 */ (1'b0 & n106) | ((1'b0 | n106) & n148);
assign n180 = /* CARRY 14  1  5 */ (n76 & n71) | ((n76 | n71) & n191);
assign n181 = /* CARRY 14  3  2 */ (1'b0 & n86) | ((1'b0 | n86) & n193);
assign n182 = /* CARRY 14  4  1 */ (1'b0 & n93) | ((1'b0 | n93) & n194);
assign n169 = /* CARRY 15  4  6 */ (1'b0 & n126) | ((1'b0 | n126) & n168);
assign n108 = /* CARRY 14  1  7 */ (1'b0 & n73) | ((1'b0 | n73) & n195);
assign n183 = /* CARRY 14  3  4 */ (n88 & 1'b0) | ((n88 | 1'b0) & n201);
assign n184 = /* CARRY 14  2  6 */ (n76 & n81) | ((n76 | n81) & n196);
assign n185 = /* CARRY 14  4  3 */ (1'b0 & n95) | ((1'b0 | n95) & n197);
assign n144 = /* CARRY 15  2  1 */ (1'b0 & n83) | ((1'b0 | n83) & n202);
assign n186 = /* CARRY 14  1  0 */ (1'b0 & n101) | ((1'b0 | n101) & n253);
assign n187 = /* CARRY 14  3  6 */ (n90 & 1'b0) | ((n90 | 1'b0) & n204);
assign n188 = /* CARRY 14  4  5 */ (1'b0 & n97) | ((1'b0 | n97) & n198);
assign n164 = /* CARRY 15  4  1 */ (1'b0 & n121) | ((1'b0 | n121) & n163);
assign n173 = /* CARRY 15  5  2 */ (n131 & 1'b0) | ((n131 | 1'b0) & n172);
assign n146 = /* CARRY 15  2  3 */ (n103 & 1'b0) | ((n103 | 1'b0) & n145);
assign n189 = /* CARRY 14  1  2 */ (1'b0 & n68) | ((1'b0 | n68) & n205);
assign n190 = /* CARRY 14  2  1 */ (n76 & n110) | ((n76 | n110) & n199);
assign n137 = /* CARRY 14  4  7 */ (n99 & 1'b0) | ((n99 | 1'b0) & n206);
assign n166 = /* CARRY 15  4  3 */ (1'b0 & n123) | ((1'b0 | n123) & n165);
assign n161 = /* CARRY 15  3  7 */ (n117 & 1'b0) | ((n117 | 1'b0) & n160);
assign n175 = /* CARRY 15  5  4 */ (1'b0 & n133) | ((1'b0 | n133) & n174);
assign n148 = /* CARRY 15  2  5 */ (n105 & 1'b0) | ((n105 | 1'b0) & n147);
assign n191 = /* CARRY 14  1  4 */ (1'b0 & n70) | ((1'b0 | n70) & n178);
assign n192 = /* CARRY 14  2  3 */ (n78 & n76) | ((n78 | n76) & n200);
assign n193 = /* CARRY 14  3  1 */ (n85 & 1'b0) | ((n85 | 1'b0) & n179);
assign n194 = /* CARRY 14  4  0 */ (1'b0 & n92) | ((1'b0 | n92) & n128);
assign n154 = /* CARRY 15  3  0 */ (1'b0 & n111) | ((1'b0 | n111) & n150);
assign n177 = /* CARRY 15  5  6 */ (n135 & 1'b0) | ((n135 | 1'b0) & n176);
assign n195 = /* CARRY 14  1  6 */ (n72 & n76) | ((n72 | n76) & n180);
assign n196 = /* CARRY 14  2  5 */ (n76 & n80) | ((n76 | n80) & n203);
assign n197 = /* CARRY 14  4  2 */ (1'b0 & n94) | ((1'b0 | n94) & n182);
assign n156 = /* CARRY 15  3  2 */ (1'b0 & n112) | ((1'b0 | n112) & n155);
assign n118 = /* CARRY 14  2  7 */ (n76 & n82) | ((n76 | n82) & n184);
assign n198 = /* CARRY 14  4  4 */ (n96 & 1'b0) | ((n96 | 1'b0) & n185);
assign n158 = /* CARRY 15  3  4 */ (1'b0 & n114) | ((1'b0 | n114) & n157);
assign n172 = /* CARRY 15  5  1 */ (1'b0 & n130) | ((1'b0 | n130) & n171);
assign n199 = /* CARRY 14  2  0 */ (n75 & 1'b0) | ((n75 | 1'b0) & n108);
assign n160 = /* CARRY 15  3  6 */ (n116 & 1'b0) | ((n116 | 1'b0) & n159);
assign n174 = /* CARRY 15  5  3 */ (1'b0 & n132) | ((1'b0 | n132) & n173);
assign n168 = /* CARRY 15  4  5 */ (n125 & 1'b0) | ((n125 | 1'b0) & n167);
assign n200 = /* CARRY 14  2  2 */ (1'b0 & n77) | ((1'b0 | n77) & n190);
assign n150 = /* CARRY 15  2  7 */ (1'b0 & n107) | ((1'b0 | n107) & n149);
assign n201 = /* CARRY 14  3  3 */ (n87 & 1'b0) | ((n87 | 1'b0) & n181);
assign n176 = /* CARRY 15  5  5 */ (1'b0 & n134) | ((1'b0 | n134) & n175);
assign n170 = /* CARRY 15  4  7 */ (n127 & 1'b0) | ((n127 | 1'b0) & n169);
assign n202 = /* CARRY 15  2  0 */ (n138 & 1'b0) | ((n138 | 1'b0) & n335);
assign n203 = /* CARRY 14  2  4 */ (n79 & 1'b0) | ((n79 | 1'b0) & n192);
assign n204 = /* CARRY 14  3  5 */ (1'b0 & n89) | ((1'b0 | n89) & n183);
assign n155 = /* CARRY 15  3  1 */ (n119 & 1'b0) | ((n119 | 1'b0) & n154);
assign n163 = /* CARRY 15  4  0 */ (n120 & 1'b0) | ((n120 | 1'b0) & n161);
assign n145 = /* CARRY 15  2  2 */ (n102 & 1'b0) | ((n102 | 1'b0) & n144);
assign n205 = /* CARRY 14  1  1 */ (n67 & 1'b0) | ((n67 | 1'b0) & n186);
assign n128 = /* CARRY 14  3  7 */ (n91 & 1'b0) | ((n91 | 1'b0) & n187);
assign n206 = /* CARRY 14  4  6 */ (1'b0 & n98) | ((1'b0 | n98) & n188);
assign n157 = /* CARRY 15  3  3 */ (n113 & 1'b0) | ((n113 | 1'b0) & n156);
/* FF 15  5  0 */ always @(posedge CLK) if (n4) n129 <= n1 ? 1'b0 : n207;
/* FF 15  4  2 */ always @(posedge CLK) if (n4) n122 <= n1 ? 1'b0 : n208;
/* FF 13  1  2 */ always @(posedge CLK) if (n3) n51 <= 1'b0 ? 1'b0 : n209;
/* FF 12  2  5 */ assign n39 = n210;
/* FF 16  3  3 */ assign n151 = n211;
/* FF 11  3  1 */ always @(posedge CLK) if (n3) n18 <= 1'b0 ? 1'b0 : n212;
/* FF 15  1  5 */ assign n62 = n213;
/* FF 15  2  4 */ always @(posedge CLK) if (n4) n104 <= n1 ? 1'b0 : n214;
/* FF 13  4  1 */ assign n63 = n215;
/* FF 14  1  3 */ assign n69 = n216;
/* FF 14  3  0 */ assign n84 = n217;
/* FF 11  2  2 */ always @(posedge CLK) if (n3) n11 <= 1'b0 ? 1'b0 : n218;
/* FF 15  3  5 always @(posedge CLK) if (n4) n115 <= n1 ? 1'b0 : n219;*/ always @(posedge CLK) if (n4) n115 <= CLKINJKT_LW;
/* FF 15  4  4 */ always @(posedge CLK) if (n4) n124 <= n1 ? 1'b0 : n220;
/* FF 13  1  4 */ always @(posedge CLK) if (n3) n53 <= 1'b0 ? 1'b0 : n221;
/* FF 12  2  7 */ assign n40 = n222;
/* FF 14  5  0 */ assign n100 = n223;
/* FF 16  3  5 */ assign n152 = n224;
/* FF 11  1  6 */ always @(posedge CLK) if (n3) n8 <= 1'b0 ? 1'b0 : n225;
/* FF 11  3  3 */ always @(posedge CLK) if (n3) n20 <= 1'b0 ? 1'b0 : n226;
/* FF 15  2  6 */ always @(posedge CLK) if (n4) n106 <= n1 ? 1'b0 : n227;
/* FF 14  1  5 */ assign n71 = n228;
/* FF 14  3  2 */ assign n86 = n229;
/* FF 14  4  1 */ assign n93 = n230;
/* FF 12  3  2 */ assign n43 = n231;
/* FF 11  2  4 */ assign n13 = n232;
/* FF 15  4  6 */ always @(posedge CLK) if (n4) n126 <= n1 ? 1'b0 : n233;
/* FF 18  1  1 */ assign n4 = n234;
/* FF 13  1  6 */ always @(posedge CLK) if (n3) n55 <= 1'b0 ? 1'b0 : n235;
/* FF 12  2  0 */ assign n34 = n236;
/* FF 13  2  5 */ assign n57 = n237;
/* FF 12  1  4 */ always @(posedge CLK) if (n3) n30 <= 1'b0 ? 1'b0 : n238;
/* FF 15  1  0 */ always @(posedge CLK) if (n3) n74 <= 1'b0 ? 1'b0 : n239;
/* FF 16  3  7 */ assign n66 = n240;
/* FF 14  1  7 */ assign n73 = n241;
/* FF 14  3  4 */ assign n88 = n242;
/* FF 14  2  6 */ assign n81 = n243;
/* FF 14  4  3 */ assign n95 = n244;
/* FF 12  3  4 */ always @(posedge CLK) if (n3) n45 <= 1'b0 ? 1'b0 : n245;
/* FF 11  2  6 */ assign n15 = n246;
/* FF 13  2  7 */ always @(posedge CLK) if (n34) LED1 <= 1'b0 ? 1'b0 : n247;
/* FF 12  1  6 */ assign n32 = n248;
/* FF 15  2  1 */ assign n249 = n250;
/* FF 14  1  0 */ assign n251 = n252;
/* FF 13  4  7 */ assign n1 = n254;
/* FF 16  1  2 */ always @(posedge CLK) if (n4) n138 <= n1 ? 1'b0 : n255;
/* FF 16  2  1 */ assign n110 = n256;
/* FF 14  3  6 */ assign n90 = n257;
/* FF 14  4  5 */ assign n97 = n258;
/* FF 12  3  6 */ always @(posedge CLK) if (n3) n47 <= 1'b0 ? 1'b0 : n259;
/* FF 16  4  7 */ assign n162 = n260;
/* FF 15  4  1 */ always @(posedge CLK) if (n4) n121 <= n1 ? 1'b0 : n261;
/* FF 13  1  1 */ always @(posedge CLK) if (n3) n50 <= 1'b0 ? 1'b0 : n262;
/* FF 15  5  2 */ always @(posedge CLK) if (n4) n131 <= n1 ? 1'b0 : n263;
/* FF 11  1  3 */ always @(posedge CLK) if (n3) n7 <= 1'b0 ? 1'b0 : n264;
/* FF 15  2  3 */always @(posedge CLK) if (n4) n103 <= n1 ? 1'b0 : n265;
/* FF 14  1  2 */ assign n68 = n266;
/* FF 14  2  1 */ assign n76 = n267;
/* FF 16  2  3 */ assign n142 = n268;
/* FF 14  4  7 */ assign n99 = n269;
/* FF 11  2  1 */ always @(posedge CLK) if (n3) n10 <= 1'b0 ? 1'b0 : n270;
/* FF 15  4  3 */ always @(posedge CLK) if (n4) n123 <= n1 ? 1'b0 : n271;
/* FF 13  1  3 */ always @(posedge CLK) if (n3) n52 <= 1'b0 ? 1'b0 : n272;
/* FF 15  3  7 always @(posedge CLK) if (n4) n117 <= n1 ? 1'b0 : n273;*/always @(posedge CLK) if (n4) n117 <= CLKINJKT_LW;
/* FF 15  5  4 */ always @(posedge CLK) if (n4) n133 <= n1 ? 1'b0 : n274;
/* FF 12  1  1 */ always @(posedge CLK) if (n3) n27 <= 1'b0 ? 1'b0 : n275;
/* FF 15  2  5 */ always @(posedge CLK) if (n4) n105 <= n1 ? 1'b0 : n276;
/* FF 11  3  5 */ always @(posedge CLK) if (n3) n22 <= 1'b0 ? 1'b0 : n277;
/* FF 14  1  4 */ assign n70 = n278;
/* FF 14  2  3 */ assign n78 = n279;
/* FF 14  3  1 */ assign n85 = n280;
/* FF 14  4  0 */ assign n92 = n281;
/* FF 16  2  5 */ assign n143 = n282;
/* FF 12  3  1 */ always @(posedge CLK) if (n3) n42 <= 1'b0 ? 1'b0 : n283;
/* FF 11  2  3 */ always @(posedge CLK) if (n3) n12 <= 1'b0 ? 1'b0 : n284;
/* FF 15  3  0 always @(posedge CLK) if (n4) n111 <= n1 ? 1'b0 : n285;*/ always @(posedge CLK) if (n4) n111 <= CLKINJKT_LW;
/* FF 15  5  6 */ always @(posedge CLK) if (n4) n135 <= n1 ? 1'b0 : n286;
/* FF 12  1  3 */ always @(posedge CLK) if (n3) n29 <= 1'b0 ? 1'b0 : n287;
/* FF 12  2  2 */ always @(posedge CLK) if (n3) n36 <= 1'b0 ? 1'b0 : n288;
/* FF 15  1  2 */ assign n101 = n289;
/* FF 13  4  4 */ always @(posedge CLK) if (n25) n64 <= n3 ? 1'b0 : n290;
/* FF 11  3  7 */ always @(posedge CLK) if (n3) n24 <= 1'b0 ? 1'b0 : n291;
/* FF 14  1  6 */ assign n72 = n292;
/* FF 14  2  5 */ assign n80 = n293;
/* FF 14  4  2 */ assign n94 = n294;
/* FF 12  3  3 */ always @(posedge CLK) if (n3) n44 <= 1'b0 ? 1'b0 : n295;
/* FF 13  2  6 */ always @(posedge CLK) if (n34) n58 <= 1'b0 ? 1'b0 : n296;
/* FF 15  3  2 always @(posedge CLK) if (n4) n112 <= n1 ? 1'b0 : n297;*/ always @(posedge CLK) if (n4) n112 <= CLKINJKT_LW;
/* FF 12  1  5 */ always @(posedge CLK) if (n3) n31 <= 1'b0 ? 1'b0 : n298;
/* FF 12  2  4 */ assign n38 = n299;
/* FF 11  3  0 */ assign n17 = n300;
/* FF 13  4  6 */ assign n25 = n301;
/* FF 16  2  0 */ assign n140 = n302;
/* FF 14  2  7 */ assign n82 = n303;
/* FF 14  4  4 */ assign n96 = n304;
/* FF 12  3  5 */ always @(posedge CLK) if (n3) n46 <= 1'b0 ? 1'b0 : n305;
/* FF 16  4  6 */ assign n153 = n306;
/* FF 15  3  4 always @(posedge CLK) if (n4) n114 <= n1 ? 1'b0 : n307;*/ always @(posedge CLK) if (n4) n114 <= CLKINJKT_LW;
/* FF 15  5  1 */ always @(posedge CLK) if (n4) n130 <= n1 ? 1'b0 : n308;
/* FF 12  1  7 */ assign n33 = n309;
/* FF 11  3  2 */ always @(posedge CLK) if (n3) n19 <= 1'b0 ? 1'b0 : n310;
/* FF 14  2  0 */ assign n75 = n311;
/* FF 16  1  3 */ always @(posedge CLK) if (n4) n83 <= n1 ? 1'b0 : n312;
/* FF 16  2  2 */ assign n141 = n313;
/* FF 13  3  3 */ assign n3 = n314;
/* FF 12  3  7 */ always @(posedge CLK) if (n3) n48 <= 1'b0 ? 1'b0 : n315;
/* FF 15  3  6 */ always @(posedge CLK) if (n4) n116 <= n1 ? 1'b0 : n316;
/* FF 15  5  3 */ always @(posedge CLK) if (n4) n132 <= n1 ? 1'b0 : n317;
/* FF 15  4  5 */ always @(posedge CLK) if (n4) n125 <= n1 ? 1'b0 : n318;
/* FF 12  1  0 */ always @(posedge CLK) if (n3) n26 <= 1'b0 ? 1'b0 : n319;
/* FF 13  1  5 */ assign n54 = n320;
/* FF 11  3  4 */ assign n21 = n321;
/* FF 14  2  2 */ assign n77 = n322;
/* FF 15  2  7 */always @(posedge CLK) if (n4) n107 <= n1 ? 1'b0 : n323; //always @(posedge CLK) if (n4) n107 <= CLKINJKT_LW;
/* FF 12  3  0 */ always @(posedge CLK) if (n3) n41 <= 1'b0 ? 1'b0 : n324;
/* FF 13  3  5 */ always @(posedge CLK) if (n3) n61 <= 1'b0 ? 1'b0 : n325;
/* FF 14  3  3 */ assign n87 = n326;
/* FF 11  2  5 */ always @(posedge CLK) if (n3) n14 <= 1'b0 ? 1'b0 : n327;
/* FF 15  5  5 */ always @(posedge CLK) if (n4) n134 <= n1 ? 1'b0 : n328;
/* FF 15  4  7 */ always @(posedge CLK) if (n4) n127 <= n1 ? 1'b0 : n329;
/* FF 12  1  2 */ always @(posedge CLK) if (n3) n28 <= 1'b0 ? 1'b0 : n330;
/* FF 12  2  1 */ assign n35 = n331;
/* FF 11  1  0 */ always @(posedge CLK) if (n3) n5 <= 1'b0 ? 1'b0 : n332;
/* FF 15  2  0 */ assign n333 = n334;
/* FF 11  3  6 */ always @(posedge CLK) if (n3) n23 <= 1'b0 ? 1'b0 : n336;
/* FF 14  2  4 */ assign n79 = n337;
/* FF 16  2  6 */ assign n65 = n338;
/* FF 14  3  5 */ assign n89 = n339;
/* FF 15  3  1 */ always @(posedge CLK) if (n4) n119 <= n1 ? 1'b0 : n340;
/* FF 15  4  0 */ always @(posedge CLK) if (n4) n120 <= n1 ? 1'b0 : n341;
/* FF 13  1  0 */ assign n49 = n342;
/* FF 11  2  7 */ always @(posedge CLK) if (n3) n16 <= 1'b0 ? 1'b0 : n343;
/* FF 15  5  7 */ always @(posedge CLK) if (n4) n136 <= n1 ? 1'b0 : n344;
/* FF 12  2  3 */ always @(posedge CLK) if (n3) n37 <= 1'b0 ? 1'b0 : n345;
/* FF 11  1  2 */ always @(posedge CLK) if (n3) n6 <= 1'b0 ? 1'b0 : n346;
/* FF 15  1  3 */ always @(posedge CLK) if (n3) n60 <= 1'b0 ? 1'b0 : n347;
/* FF 15  2  2 */ always @(posedge CLK) if (n4) n102 <= n1 ? 1'b0 : n348;
/* FF 13  3  0 */ always @(posedge CLK) if (n3) n56 <= 1'b0 ? 1'b0 : n349;
/* FF 14  1  1 */ assign n67 = n350;
/* FF 14  3  7 */ assign n91 = n351;
/* FF 14  4  6 */ assign n98 = n352;
/* FF 11  2  0 */ always @(posedge CLK) if (n3) n9 <= 1'b0 ? 1'b0 : n353;
/* FF 15  3  3 always @(posedge CLK) if (n4) n113 <= n1 ? 1'b0 : n354;*/always @(posedge CLK) if (n4) n113 <= CLKINJKT_LW;

endmodule

