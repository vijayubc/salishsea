#!/bin/bash

exedir=~/local/gnu/5/getm/bin
exedir=~/local/intel/17.0.3/getm/bin

np=8

# run spin-up
#make namelist runtype=1 hotstart=False start="2015-12-01 00:00:00" stop="2016-01-01 00:00:00"
#mpiexec -np $np $exedir/getm_spherical_parallel
#mv salish_1km.2d.????.nc salish_1km.????.stderr Hot/

#mmv 'restart*.out' 'restart#1.in'
#rename -f 's/\.out$/\.in/' restart.????.out

# run annual tidal simulation
make namelist runtype=1 hotstart=True start="2016-01-01 00:00:00" stop="2017-01-01 00:00:00"
mpiexec -np $np $exedir/getm_spherical_parallel

# merge result files
#ncmerge salish_1km.2d.????.nc salish_1km.2d.nc
