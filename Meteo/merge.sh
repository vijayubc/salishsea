#!/bin/bash

decade=1980
decade=1990
decade=2000
decade=2010

ncpdq -U -O salish-ana.nc ana.nc
ncpdq -U -O salish-frc.nc frc.nc
cdo  mergetime ana.nc frc.nc  Salish_Interim_$decade.nc
#rm salish-ana.nc salish-frc.nc ana.nc frc.nc

