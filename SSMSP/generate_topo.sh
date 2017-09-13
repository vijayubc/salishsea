#!/bin/bash

#cp ubcSSnBathymetryV17-02_a29d_efc9_4047.nc nemo.nc
#ncatted -a coordinates,bathymetry,c,c,"longitude latitude" nemo.nc 

res=0.0300x0.020
cdo remapbil,grid_$res nemo.nc topo_$res.nc
#ncks -d lon,10,144 -d lat,14,208 topo_$res.nc topo_2km.nc

res=0.0150x0.010
cdo remapbil,grid_$res nemo.nc topo_$res.nc
#ncks -d lon,22,290 -d lat,22,415 topo_$res.nc topo_1m.nc

res=0.0075x0.005
cdo remapbil,grid_$res nemo.nc topo_$res.nc
#ncks -d lon,42,576 -d lat,50,829 topo_$res.nc topo_500m.nc
