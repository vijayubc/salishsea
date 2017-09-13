#!/usr/bin/env python

#https://software.ecmwf.int/wiki/display/WEBAPI/Brief+MARS+request+syntax
#http://apps.ecmwf.int/datasets/data/interim-full-daily

from ecmwfapi import ECMWFDataServer
server = ECMWFDataServer()

time_period="2010-01-01/to/2017-07-31"
time_period="1980-01-01/to/1990-01-01"
time_period="1990-01-01/to/2000-01-01"
time_period="2000-01-01/to/2010-01-01"
time_period="2010-01-01/to/2017-07-31"

area="51.5/-127.0/46.0/-120.5"

# analyses
server.retrieve({
    "class": "ei",
    "dataset": "interim",
    "date": time_period,
    "expver": "1",
    "grid": "0.2/0.2",
    "area": area,
    "levtype": "sfc",
    "param": "134.128/151.128/164.128/165.128/166.128/167.128/168.128",
    "step": "0",
    "stream": "oper",
    "format": "netcdf",
    "target": "salish-ana.nc",
    "time": "00/12",
    "type": "an",
})

# forecats (03, 06, 09)
server.retrieve({
    "class": "ei",
    "dataset": "interim",
    "date": time_period,
    "expver": "1",
    "grid": "0.2/0.2",
    "area": area,
    "levtype": "sfc",
    "param": "134.128/151.128/164.128/165.128/166.128/167.128/168.128",
    "step": "3/6/9",
    "stream": "oper",
    "format": "netcdf",
    "target": "salish-frc.nc",
    "time": "00/12",
    "type": "fc",
})

