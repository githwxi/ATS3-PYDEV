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
    xenv.indpr()
    print(f"T2P000({sexp})")
#
def s2exp_nind_xprenv\
(sexp: s2exp, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2exp_xprenv(sexp, xenv); xenv.decby(dlta)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/staexp2_xprint.py]
########################################################################
########################################################################
