#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-07-02:
# Thu Jul  2 10:53:32 AM EDT 2026
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
########################################################################
from DATS.CATS.a3pydev_xprint import *
########################################################################
#
def s2exp_xprenv\
(sexp: s2exp, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(sexp, S2Ecst):
        print(f"S2Ecst: {sexp.arg1}")
    elif isinstance(sexp, S2Evar):
        print(f"S2Evar: {sexp.arg1}")
    elif isinstance(sexp, S2Eapps):
        print("S2Eapps:")
        xenv.indpr(); print("S2Eapps.arg1:")
        s2exp_nind_xprenv(sexp.arg1, dlta, xenv)
        xenv.indpr(); print("S2Eapps.arg2:")
        s2explst_nind_xprenv(sexp.arg2, dlta, xenv)
    elif isinstance(sexp, S2Elam1):
        print("S2Elam1:")
        xenv.indpr()
        print\
        (f"S2Elam1.arg1: {sexp.arg1}")
        xenv.indpr(); print("S2Elam1.arg2:")
        s2exp_nind_xprenv(sexp.arg2, dlta, xenv)
    elif isinstance(sexp, S2Efun1):
        print("S2Efun1:")
        xenv.indpr()
        print(f"S2Efun1.arg1: {sexp.arg1}")
        xenv.indpr()
        print(f"S2Efun1.arg2: {sexp.arg2}")
        xenv.indpr(); print("S2Efun1.arg3:")
        s2explst_nind_xprenv(sexp.arg3, dlta, xenv)
        xenv.indpr(); print("S2Efun1.arg4:")
        s2exp_nind_xprenv(sexp.arg4, dlta, xenv)
    else:
        print(f"s2exp_xprenv: sexp = {sexp}")
#
    return None # end-of-[s2exp_xprenv(sexp,xenv)]
#
########################################################################
#
def s2explst_xprenv\
(s2es: s2explst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(s2es, xenv, s2exp_xprenv)
#
########################################################################
#
def s2exp_nind_xprenv\
(sexp: s2exp, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2exp_xprenv(sexp, xenv); xenv.decby(dlta)
#
def s2explst_nind_xprenv\
(s2es: s2explst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2explst_xprenv(s2es, xenv); xenv.decby(dlta)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/staexp2_xprint.py]
########################################################################
########################################################################
