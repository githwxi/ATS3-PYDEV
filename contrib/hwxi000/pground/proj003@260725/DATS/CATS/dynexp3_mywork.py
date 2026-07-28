#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-07-28:
# Tue Jul 28 07:09:25 AM EDT 2026
#
########################################################################
type sint = int
type char = int
type strn = str
type dflt = float
########################################################################
from DATS.CATS.dynexp3 import *
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
########################################################################
########################################################################
the_d2vset_used: set[d2var] = set()
the_d2vlst_defd: list[d2var] = [   ]
########################################################################
########################################################################
#
def \
d3exp_mywork(dexp: d3exp)->None:
    if False:
        pass
    elif isinstance(dexp, D3Evar):
        the_d2vset_used.add(dexp.arg1)
    elif isinstance(dexp, D3Edapp):
        d3exp_mywork(dexp.arg1)
        d3explst_mywork(dexp.arg3)
    else:
        pass
    return None
#
def \
d3explst_mywork(d3es: d3explst)->None:
    return fnlist_foritm(d3es, d3exp_mywork)
#
########################################################################
########################################################################
#
def \
d3pat_mywork(dpat: d3pat)->None:
    if False:
        pass
    elif isinstance(dpat, D3Pvar):
        the_d2vlst_defd.append(dpat.arg1)
    elif isinstance(dpat, D3Pdapp):
        d3patlst_mywork(dpat.arg3)
    else:
        pass
    return None
#
def \
d3patlst_mywork(d3ps: d3patlst)->None:
    return fnlist_foritm(d3ps, d3pat_mywork)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj003@260725/DATS/CATS/dynexp3_mywork.py]
########################################################################
########################################################################
