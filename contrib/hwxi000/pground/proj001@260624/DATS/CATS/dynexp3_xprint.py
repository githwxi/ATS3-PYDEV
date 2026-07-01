#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-07-01:
# Wed Jul  1 04:06:18 AM EDT 2026
#
########################################################################
type sint = int
type char = int
type strn = str
type dflt = float
type pyobj = object
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
########################################################################
from DATS.CATS.a3pydev import *
from DATS.CATS.dynexp2 import *
from DATS.CATS.dynexp3 import *
########################################################################
########################################################################
class xprnv:
    nind: sint = 0
    def indpr(self)->None:
        i0 = 0
        n0 = self.nind
        while(i0 < n0):
            i0 = i0 + 1
            print(' ', end='')
    def incby(self, dlta: sint)->None:
        self.nind += dlta
    def decby(self, dlta: sint)->None:
        self.nind -= dlta
    pass
########################################################################
########################################################################
#
ENV = TypeVar("ENV")
#
def fnlist_foritm_e1nv\
(xs: fnlist[X], e0: ENV, \
 work: Callable[[X, ENV], None])->None:
    x1 = None
    while True:
        if isinstance(xs, fnlist_cons):
            x1 = xs.arg1
            xs = xs.arg2
            work(x1, e0)
        else:
            break
    return None
#
########################################################################
########################################################################
#
def d3exp_xprenv\
(dexp: d3exp, xenv: xprnv)->None:
    xenv.indpr()
    if isinstance(dexp, D3Eint):
        print(f"D3Eint({dexp.arg1})")
    elif isinstance(dexp, D3Ebtf):
        print(f"D3Ebtf({dexp.arg1})")
    elif isinstance(dexp, D3Eflt):
        print(f"D3Eflt({dexp.arg1})")
    elif isinstance(dexp, D3Estr):
        print(f"D3Estr({dexp.arg1})")
    elif isinstance(dexp, D3Edapp):
        print("D3Edapp:")
        xenv.incby(2)
        d3exp_xprenv(dexp.arg1, xenv)
        print("D3Edapp:args:")
        xenv.incby(2)
        d3explst_xprenv(dexp.arg3, xenv)
        xenv.decby(2)
        xenv.decby(2)
    else:
        print(f"d3exp_xprenv: dexp = {dexp}")
#    
def d3explst_xprenv\
(d3es: d3explst, xenv: xprnv)->None:
    x1 = None
    xs : d3explst = d3es
    while True:
        if isinstance(xs, fnlist_cons):
            x1 = xs.arg1
            xs = xs.arg2
            d3exp_xprenv(x1, xenv)
        else:
            break
    return None # end-of-[d3explst_xprenv(d3es,xenv)]
#
########################################################################
########################################################################
#
def d3ecl_xprenv\
(d3cl: d3ecl, xenv: xprnv)->None:
    xenv.indpr()
    if isinstance(d3cl, D3Cstatic):
        print("D3Cstatic:")
        xenv.incby(2)
        d3ecl_xprenv(d3cl, xenv)
        xenv.decby(2)
    elif isinstance(d3cl, D3Cextern):
        print("D3Cextern:")
        xenv.incby(2)
        d3ecl_xprenv(d3cl, xenv)
        xenv.decby(2)
    elif isinstance(d3cl, D3Cfundclst):
        print("D3Cfundclst:")
        xenv.incby(2)
        d3fundclist_xprenv(d3cl.arg4, xenv)
        xenv.decby(2)
    else:
        print(f"d3ecl_xprenv: d3cl = {d3cl}")
#
def d3eclist_xprenv\
(dcls: d3eclist, xenv: xprnv)->None:
    x1 = None
    xs : d3eclist = dcls
    while True:
        if isinstance(xs, fnlist_cons):
            x1 = xs.arg1
            xs = xs.arg2
            d3ecl_xprenv(x1, xenv)
        else:
            break
    return None # end-of-[d3eclist_xprenv(d3es,xenv)]
#
def d3eclistopt_xprenv\
(dopt: d3eclistopt, xenv: xprnv)->None:
    if isinstance(dopt, fnoptn_nil):
        return None
    if isinstance(dopt, fnoptn_cons):
        return d3eclist_xprenv(dopt.arg1, xenv)
#
########################################################################
########################################################################
#
def d3fundcl_xprenv\
(dfun: d3fundcl, xenv: xprnv)->None:
    xenv.indpr()
    print(f"D3FUNDCL.dpid: {dfun.dpid}")
    xenv.indpr()
    print(f"D3FUNDCL.farg: {dfun.farg}")
    xenv.indpr()
    print(f"D3FUNDCL.tdxp: {dfun.tdxp}")
    xenv.indpr()
    print(f"d3fundcl_xprenv: dfun = {dfun}")
#
def d3fundclist_xprenv\
(d3fs: d3fundclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3fs, xenv, d3fundcl_xprenv)
#
########################################################################
########################################################################
#
def \
PY000_d3parsed_xprint(dpar: d3parsed)->None:
    xenv = xprnv()
    return d3eclistopt_xprenv(dpar.parsed, xenv)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/dynexp3_xprint.py]
########################################################################
########################################################################
