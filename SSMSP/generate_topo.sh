#!/bin/bash

#cp ubcSSnBathymetryV17-02_a29d_efc9_4047.nc nemo.nc
#ncatted -a coordinates,bathymetry,c,c,"longitude latitude" nemo.nc 

res=0.0300x0.020
cdo remapbil,grid_$res nemo.nc topo_$res.nc
res=0.0150x0.010
cdo remapbil,grid_$res nemo.nc topo_$res.nc
res=0.0075x0.005
cdo remapbil,grid_$res nemo.nc topo_$res.nc
