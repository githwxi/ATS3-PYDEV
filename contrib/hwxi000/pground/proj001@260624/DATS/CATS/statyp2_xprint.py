#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-07-01:
# Wed Jul  1 12:01:26 PM EDT 2026
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
from DATS.CATS.staexp2 import *
from DATS.CATS.statyp2 import *
########################################################################
from DATS.CATS.a3pydev_xprint import *
########################################################################
#
def s2typ_xprenv\
(styp: s2typ, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
#
    elif isinstance(styp, T2Pcst):
        print(f"T2Pcst({styp.arg1})")
    elif isinstance(styp, T2Pvar):
        print(f"T2Pvar({styp.arg1})")
    elif isinstance(styp, T2Plft):
        print(f"T2Plft({styp.arg1})")
#
    elif isinstance(styp, T2Ptop0):
        print(f"T2Ptop0({styp.arg1})")
    elif isinstance(styp, T2Ptop1):
        print(f"T2Ptop1({styp.arg1})")
#
    elif isinstance(styp, T2Papps):
        print("T2Papps:")
        xenv.indpr()
        print("T2Papps.arg1:")
        s2typ_nind_xprenv(styp.arg1, dlta, xenv)
        xenv.indpr()
        print("T2Papps.arg2:")
        t2yps_nind_xprenv(styp.arg2, dlta, xenv)
#
    elif isinstance(styp, T2Pfun1):
        print("T2Pfun1:")
        xenv.indpr()
        print("T2Pfun1.arg1:")
        s2typ_nind_xprenv(styp.arg1, dlta, xenv)
        xenv.indpr()
        print(f"T2Pfun1.arg2: {styp.arg2}")
        xenv.indpr(); print("T2Pfun1.arg3:")
        t2yps_nind_xprenv(styp.arg3, dlta, xenv)
        xenv.indpr(); print("T2Pfun1.arg4:")
        s2typ_nind_xprenv(styp.arg4, dlta, xenv)
#
    elif isinstance(styp, T2Ptext):
        print("T2Ptext:")
        xenv.indpr()
        print(f"T2Ptext.arg1: {styp.arg1}")
        xenv.indpr(); print("T2Ptext.arg2:")
        t2yps_nind_xprenv(styp.arg2, dlta, xenv)
#
    elif isinstance(styp, T2Pnone0):
        print("T2Pnone0:")
    elif isinstance(styp, T2Pnone1):
        print("T2Pnone1:")
        xenv.indpr(); print("T2Pnone1.arg1:")
        s2typ_nind_xprenv(styp.arg1, dlta, xenv)
    elif isinstance(styp, T2Ps2exp):
        print("T2Ps2exp:")
        xenv.indpr(); print("T2Ps2exp.arg1:")
        s2exp_nind_xprenv(styp.arg1, dlta, xenv)
#
    else:
        print(f"s2typ_xprenv: styp = {styp}")
#
    return None # end-of-[s2typ_xprenv(styp,xenv)]
#
def s2typlst_xprenv\
(t2ps: s2typlst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(t2ps, xenv, s2typ_xprenv)
#
########################################################################
#
def s2typ_nind_xprenv\
(styp: s2typ, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2typ_xprenv(styp, xenv); xenv.decby(dlta)
#
def t2yps_nind_xprenv\
(t2ps: s2typlst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2typlst_xprenv(t2ps, xenv); xenv.decby(dlta)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/statyp2_xprint.py]
########################################################################
########################################################################
