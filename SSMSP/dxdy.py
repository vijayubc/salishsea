#!/usr/bin/env python

import numpy as np
rearth = 6378815.
deg2rad = np.pi/180.

def dxdy(lat,dlon,dlat):
    dx = deg2rad*dlon*rearth*np.cos(deg2rad*lat)
    dy = deg2rad*dlat*rearth
    return dx,dy

dx,dy = dxdy(45., 0.030,  0.02 )
print(dx,dy)
dx,dy = dxdy(45., 0.015,  0.01 )
print(dx,dy)
dx,dy = dxdy(45., 0.0075, 0.005)
print(dx,dy)

