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
########################################################################
from DATS.CATS.a3pydev import *
from DATS.CATS.dynexp1 import *
########################################################################
from DATS.CATS.a3pydev_xprint import *
########################################################################
########################################################################
#
def d1exp_xprenv\
(dexp: d1exp, xenv: xprnv)->None:
#
    dlta = 2
    xenv.indpr()
#
    if False:
        pass
#
    elif isinstance(dexp, D1Ea3src):
        print(f"D1Ea3src(...)@{dexp.lctn}")
#
    else:
        print(f"d1exp_xprenv: dexp = {dexp}@{dexp.lctn}")
#
    return None # end-of-(d1exp_xprenv(dexp,xenv))
#
########################################################################
#
def d1explst_xprenv\
(d1es: d1explst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d1es, xenv, d1exp_xprenv)
    return None # end-of-[d1explst_xprenv(d1es,xenv)]
#
def d1expopt_xprenv\
(dopt: d1expopt, xenv: xprnv)->None:
    fnoptn_foritm_e1nv(dopt, xenv, d1exp_xprenv)
    return None # end-of-[d1expopt_xprenv(dopt,xenv)]
#
########################################################################
#
def d1exp_nind_xprenv\
(dexp: d1exp, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d1exp_xprenv(dexp, xenv); xenv.decby(dlta)
    return None # end-of-(d1exp_nind_xprenv(dexp,dlta,xenv))
#
def d1explst_nind_xprenv\
(d1es: d1explst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d1explst_xprenv(d1es, xenv); xenv.decby(dlta)
    return None # end-of-(d1explst_nind_xprenv(d1es,dlta,xenv))
#
def d1expopt_nind_xprenv\
(dopt: d1expopt, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d1expopt_xprenv(dopt, xenv); xenv.decby(dlta)
    return None # end-of-(d1expopt_nind_xprenv(dopt,dlta,xenv))
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/dynexp1_xprint.py]
########################################################################
########################################################################
