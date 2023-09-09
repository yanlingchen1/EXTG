# spex
# log exe compare_xspec_spex

data pn mock_spectrum_tot_ideal-mdl_nH_1e20_z_005_suzakunorm_15e-4_pn_A299_T_0.8_abun0.3_nH0.00
pl dev xs
pl type data
pl rx 0.3:2.0

com cie
com reds
com rel 1 2

par 1 02:30 v 0.3
par 1 t v 0.8
par 1 norm v 2e7

par 1 2 z v 0.05
dist 0.05 z

par show

calc
pl
q
