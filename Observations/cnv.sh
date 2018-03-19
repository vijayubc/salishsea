#!/bin/sh


for f in *_Obsdata16.nc; do
   aa=`ncdump -v time $f | grep units | grep time` 
   bb=`echo $aa | sed -e "s/time:units = //" | sed -e "s/;//" | sed -e "s/hours/seconds/" | sed -e "s/:00/:00:00/" | sed -e "s/\"//g"`
   echo $bb
#   ncatted -O -a units,time,m,c,"$bb" $f
   ncap2 -O  -s "time=3600*time" $f test.nc
   mv test.nc $f
done
