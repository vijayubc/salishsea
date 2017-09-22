#!/usr/bin/env python

#https://software.ecmwf.int/wiki/display/CKB/ERA5+data+documentation
#https://software.ecmwf.int/wiki/display/CKB/How+to+download+ERA5+data+via+the+ECMWF+Web+API

from ecmwfapi import ECMWFDataServer
server = ECMWFDataServer()

time_period="1979-01-01/to/1990-01-01"
time_period="1990-01-01/to/2000-01-01"
time_period="2000-01-01/to/2010-01-01"
time_period="2010-01-01/to/2017-01-01"
time_period="2010-01-01/to/2011-01-01"

area="51.5/-127.0/46.0/-120.5"

# analyses
server.retrieve({
    "class": "ea",
    "dataset": "era5",
    "date": time_period,
    "expver": "1",
    "grid": "0.2/0.2",
    "area": area,
    "levtype": "sfc",
    "param": "msl/sp/10u/10v/2t/2d/tcc",
#    "param": "134.128/151.128/164.128/165.128/166.128/167.128/168.128",
#    "step": "0/1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16/17/18/19/20/21/22/23",
    "stream": "oper",
    "format": "netcdf",
    "target": "salish-ana.nc",
    "time": "00:00:00/01:00:00/02:00:00/03:00:00/04:00:00/05:00:00/06:00:00/07:00:00/08:00:00/09:00:00/10:00:00/11:00:00/12:00:00/13:00:00/14:00:00/15:00:00/16:00:00/17:00:00/18:00:00/19:00:00/20:00:00/21:00:00/22:00:00/23:00:00",
#    "time": "00:00:00/12:00:00",
#    "time": "00/12",
    "type": "an",
})

# forecats (03, 06, 09)
#KBserver.retrieve({
    #KB"class": "ea",
    #KB"dataset": "era5",
    #KB"date": time_period,
    #KB"expver": "1",
    #KB"grid": "0.2/0.2",
    #KB"area": area,
    #KB"levtype": "sfc",
    #KB"param": "msl/sp/10u/10v/2t/2d/tcc",
#KB#    "param": "134.128/151.128/164.128/165.128/166.128/167.128/168.128",
#KB#    "step": "1/2/3/4/5/6/7/8/9/10/11",
    #KB"step": "1",
    #KB"stream": "oper",
    #KB"format": "netcdf",
    #KB"target": "salish-frc.nc",
    #KB"time": "00/12",
    #KB"type": "fc",
#KB})

