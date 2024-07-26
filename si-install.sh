mkdir ~/bin
mkdir ~/program
mkdir ~/program/si
mkdir ~/program/ct

cd ~/program/si
mkdir mcl
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/mcl.taz
tar xzf mcl.taz
cd mcl
make all
mv t_mcl t_mhl t_pcs si_mcl si_mhl si_pcs t_mcl_1 t_mcl_2 si_mcl_1 si_mcl_2 si_mcl_3 ~/bin

cd ~/program/si
mkdir pvr
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/pvr.taz
tar xzf pvr.taz
cd pvr
make all
mv t_pvr si_pvr t_sec si_sfc t_mec si_mfc ~/bin

cd ~/program/si
mkdir osp
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/osp.taz
tar xzf osp.taz
cd osp
make all
mv t_osp si_osp2 si_osp3 t_ed si_ed t_de si_de t_eda si_eda t_dea si_dea t_lm t_lm_1 t_lm_2 si_lm si_lm_1 si_lm_2 si_lm_3 t_cht t_cht_1 t_cht_2 si_cht si_cht_1 si_cht_2 si_cht_3 ~/bin

cd ~/program/si
mkdir rar
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/rar.taz
tar xzf rar.taz
cd rar
make all
mv rar_gray rar_RGB si_rar sir_gray sir_RGB si_sir sie_gray sie_RGB si_sie pnr_gray pnr_RGB si_pnr pne_gray pne_RGB si_pne si_dmp ~/bin

cd ~/program/si
mkdir trim
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/trim.taz
tar xzf trim.taz
cd trim
make all
mv trim_gray trim_RGB si_trim paste_gray paste_RGB si_paste area_gray area_RGB area_RGB_nbg si_area si_cut ~/bin

cd ~/program/si/
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/rmsd.tar
tar -xf rmsd.tar
cd rmsd/src
make all
mv  rmsd_1d rmsd_2d rmsd_3d \
        rmsd_1d.CC rmsd_2d.CC rmsd_3d.CC rmsd_3d.VM \
        rmsd_2d.NZ rmsd_3d.NZ \
        MB_rmsd_2d.CC MB_rmsd_3d MB_rmsd_3d.CC MB_rmsd_3d.VM \
        xyv2t xyzv2t sub_2d sub_3d \
        add_2d add_3d add_2d.NZ add_3d.NZ add_2d_wm add_3d_wm ~/bin

cd ~/program/si
mkdir mask
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/mask.taz
tar xzf mask.taz
cd mask
make all
mv mask_gray mask_RGB si_mask ~/bin

cd ~/program/si
mkdir ovoid
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/ovoid.taz
tar xzf ovoid.taz
cd ovoid
make all
mv t_of t_of_oblate si_of si_of_oblate t_op si_op t_ofwd t_ofwd_oblate si_ofwd si_ofwd_oblate ~/bin

cd ~/program/si
mkdir affine
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/affine.taz
tar xzf affine.taz
cd affine
make all
mv affine_gray affine_RGB si_affine bli_gray bli_RGB si_tli si_ir ~/bin

mkdir cm
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/cm.taz
tar xzf cm.taz
cd cm
make all
mv tcm tcm_rgb trgb si_cm si_cm_rgb si_rgb gif_gcm sr_map sv_map ~/bin

cd ~/program/si
mkdir t2ps
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/t2ps.taz
tar xzf t2ps.taz
cd t2ps
make all
mv pid pig t2ps_P t2ps_L t2cl_P t2cl_L ~/bin

cd ~/program/si
mkdir 2cc
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/2cc.taz
tar xzf 2cc.taz
cd 2cc
make all
mv t_2cc si_2cc t_acc si_acc si_acc_utf si_rp ~/bin

mkdir ch
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/ch.taz
tar xzf ch.taz
cd ch
make all
mv t_ch_line t_ch t_chs t_bbs si_ch_zcp si_ch_stl si_ch si_chs si_bbs ~/bin

cd ~/program/si
mkdir fdk
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/fdk.taz
tar xzf fdk.taz
cd fdk
make all
mv 2d_hp_tg 2d_hp_sg 3d_hp_tg 3d_hp_sg hp_xp xp2xt xp2sg sg_f2p sg_f2p_1 sg_f2p_2 sg_f2p_3 sg_p2f dit_tbl hp2xp xp2tg_0 xp2tg_1 xp2tg_2 xp2tg_3 xp2tg_4 ~/bin

cd ~/program/si
mkdir henke
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/henke.taz
tar xzf henke.taz
cd henke
make all
mv rid_cm rid_dcc lpac_cm lpac_dcc ~/bin

cd ~/program/si
mkdir hvd
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/hvd.taz
tar xzf hvd.taz
cd hvd/src
make -f Makefile.64 all
mv si_a_stl si_b_stl si_c_stl \
         si_s_bev_0 si_m_bev_0 \
         si_s_bev_1 si_m_bev_1 \
         si_s_bev_2 si_m_bev_2 \
         si_s_bev_3 si_m_bev_3 \
         si_s_bev_4 si_m_bev_4 \
         si_t_bev_0 si_t_bev_1 si_t_bev_2 si_t_bev_3 si_t_bev_4 \
         si_x_bev_0 si_y_bev_0 si_z_bev_0 \
         si_x_bev_1 si_y_bev_1 si_z_bev_1 \
         si_x_bev_2 si_y_bev_2 si_z_bev_2 \
         si_x_bev_3 si_y_bev_3 si_z_bev_3 \
         si_x_bev_4 si_y_bev_4 si_z_bev_4 \
         stl_dump \
         stl_bev_0 stl_bev_1 stl_bev_2 stl_bev_3 stl_bev_4 \
         s3d_svm s3d_align s3d_RCG s3d_LL151D s3d_22PBVDP s3d_mpo2 s3d_mj2avi \
         trim_bev_0 gif_trim stop_watch ~/bin

cd ~/program/si
mkdir ipr
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/ipr.taz
tar xzf ipr.taz
cd ipr
make all
mv check_marker t_pair_hg si_pair_hg voronoi_dm t_pair_dm si_pair_dm ~/bin

cd ~/program/si
mkdir oct
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/oct.taz
tar xzf oct.taz
cd oct
make all
mv oct_cmp_0 oct_cmp_180 oct_fit_180 oct_xy \
         oct_xt oct_xt_sa oct_xt_sbs \
         oct_xp oct_xp_sa oct_xp_sbs \
         oct_sg oct_sg_sa oct_sg_sbs \
         oct_tg oct_tg_sa oct_tg_sbs \
         oct_sg2tg_t oct_sg2tg_sa_t oct_sg2tg_sbs_t \
         xp2xt_float xt2xp_float sub_float add_float paste_float \
         hp2xt hp2xp trim_float t2t_float t2g_float \
         sg_f2h_n sg_f2h_r hp_h2f ~/bin

cd ~/program/si
mkdir seltzer
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/seltzer.taz
tar xzf seltzer.taz
cd seltzer
make all
mv lac_cm lac_dcc ~/bin

cd ~/program/si
mkdir si_bev
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/si_bev.taz
tar xzf si_bev.taz
cd si_bev/src
make all
mv si_s_stl si_s_tf \
         tf_s_stl tf_s_bev tf_s_bev_nss \
         si_s_bev si_s_bev_nss \
         si_m_stl si_m_tf \
         tf_m_stl tf_m_bev tf_m_bev_nss \
         si_m_bev si_m_bev_nss \
         si_t_bev si_t_bev_nss \
         si_x_bev si_x_bev_nss \
         si_y_bev si_y_bev_nss \
         si_z_bev si_z_bev_nss \
         t2g_movie t2g_movie_CM t2g_movie_gray gif_movie \
         g2t_split g2t_split_RGB gif_split \
         gif_area gif_area_nbg gif_trim \
         si_cim \
         put_label add_label \
         stop_watch ~/bin

cd ~/program/si
mkdir float
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/float.taz
tar xzf float.taz
cd float
make all
mv t_i2f t_f2i bin2t_f t_f2bin txt2t_f t_f2txt ~/bin

cd ~/program/si
mkdir float_junk
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/float_junk.taz
tar xzf float_junk.taz
cd float_junk
make all
mv pig pid sid txt2t_f t_f2txt \
         m+sd_float xp2xt_float xt2xp_float t2t_float t2g_float trim_float \
         paste_float paste_2d_float paste_3d_float \
         add_float add_2d_float add_3d_float sub_float \
         bli_float affine_2d_float tli_float affine_3d_float \
         hg_pair_float hg_trio_float rmsd_float rmsd_float_spr \
         gc_float of_float ~/bin

cd ~/program/si
mkdir rhp
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/rhp.taz
tar xzf rhp.taz
cd rhp
make all
mv hp2xt hp2xp hp_ta ta_dz hp_rc hp_stg_t hp_tg_t hp_cbp hp_fdk \
         trim_float t2t_float t2g_float sg_f2tg ~/bin

cd ~/program/si
mkdir radon
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/radon.taz
tar xzf radon.taz
cd radon
make fdk
mv fdk ~/bin/xp_fdk

cd ~/program/si
mkdir stl
cd stl
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/stl.tar
tar xf stl.tar
cd src
make all
mv admesh \
         stl_dmp stl_dmp_C \
         stl_nmm stl_chk stl_nav stl_fc stl_ac \
         stl_resize stl_shift stl_affine stl_a2b stl_b2a stl_color stl_merge \
         stl_ply stl_ply_big stl_ply_zcp stl_zcp zcp_stl \
         stl_bev stl_bev_SS stl_bev_C stl_bev_C_SS stl_bev_wf stl_bev_wf_nf \
         stl_bev_GIF stl_bev_GIF_SS stl_bev_C_GIF stl_bev_C_GIF_SS \
         stl_ar stl_ar_SS stl_ar_C stl_ar_C_SS stl_ar_wf stl_ar_wf_nf \
         stl_ar_GIF stl_ar_GIF_SS stl_ar_C_GIF stl_ar_C_GIF_SS \
         si_stl_A si_stl_B si_stl_C \
         stl_si \
         stl_of stl_of_oblate of_stl_ih of_stl_oh of_stl_th \
         t2g_movie t2g_movie_CM t2g_movie_gray gif_movie \
         g2t_split g2t_split_RGB gif_split \
         gif_area gif_area_nbg gif_trim \
         zcp2vrml2 zcp_scale zcp_dmp vf2zcp ~/bin

cd ~/program/
wget http://www-bl20.spring8.or.jp/~sp8ct/tmp/6mct.taz
tar xzf 6mct.taz
cd 6mct
make
mv check_his his2tiff his2rp his2raw \
         ri2xt ri2xp rr2xr ri2mp rr2mr ri2rc rr2rc \
         ri2sg rr2sg ri2tg rr2tg ri_stg_t rr_stg_t ri_tg_t rr_tg_t \
         t_f2txt txt2t_f pig pid sid t2t_float add_label pile_gray \
         check_his_cl check_his_ts check_his_of check_his_mv his2hg \
         his2tm his2tm_wms tm2psd sg_f2tg sg_f2tg_dpc ~/bin
