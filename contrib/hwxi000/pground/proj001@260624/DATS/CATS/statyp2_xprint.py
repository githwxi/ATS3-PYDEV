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
    xenv.indpr()
    print(f"T2P000({styp})")
#
def s2typ_nind_xprenv\
(styp: s2typ, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2typ_xprenv(styp, xenv)
    xenv.decby(dlta)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/statyp2_xprint.py]
########################################################################
########################################################################
