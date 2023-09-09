
log output tot_spec.log

# load data
data pn mock_spectrum_tot_ideal-mdl_nH_1e20_z_005_suzakunorm_15e-4_pn_A299_T_0.8_abun0.3_nH0.00
pl dev xs
pl type data
pl rx 0.3:2.0

# input model
com cie
com reds
com rel 1 2

# set parameter of cie
par 1 02:30 v 0.3
par 1 t v 0.8
par 1 norm v 2e7

# set distance
par 1 2 z v 0.05
dist 0.05 z


par 1 t v 0.1
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.1

par 1 t v 0.2
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.2

par 1 t v 0.30000000000000004
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.3

par 1 t v 0.4
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.4

par 1 t v 0.5
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.5

par 1 t v 0.6
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.6

par 1 t v 0.7000000000000001
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.7

par 1 t v 0.8
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.8

par 1 t v 0.9
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 0.9

par 1 t v 1.0
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.0

par 1 t v 1.1
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.1

par 1 t v 1.2000000000000002
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.2

par 1 t v 1.3000000000000003
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.3

par 1 t v 1.4000000000000001
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.4

par 1 t v 1.5000000000000002
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.5

par 1 t v 1.6
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.6

par 1 t v 1.7000000000000002
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.7

par 1 t v 1.8000000000000003
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.8

par 1 t v 1.9000000000000001
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 1.9

par 1 t v 2.0
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.0

par 1 t v 2.1
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.1

par 1 t v 2.2
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.2

par 1 t v 2.3000000000000003
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.3

par 1 t v 2.4000000000000004
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.4

par 1 t v 2.5000000000000004
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.5

par 1 t v 2.6
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.6

par 1 t v 2.7
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.7

par 1 t v 2.8000000000000003
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.8

par 1 t v 2.9000000000000004
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 2.9

par 1 t v 3.0000000000000004
par show

calc
pl

simulate noise f
simulate 1000000000

# save the output as qdp, where 1, 4 are the energies and the ctr
pl adum 3.0
log output close
