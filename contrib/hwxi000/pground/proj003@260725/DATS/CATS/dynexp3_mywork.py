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
the_D2VUSED: set[d2var] = set()
the_D2VDEFD: list[d2var] = [   ]
########################################################################
#
def \
the_D2VUSED_add(dvar: d2var)->None:
    the_D2VUSED.add(dvar)
def \
the_D2VDEFD_add(dvar: d2var)->None:
    the_D2VDEFD.append(dvar)
#
########################################################################
########################################################################
#
def \
d3exp_mywork(dexp: d3exp)->None:
    if False:
        pass
    elif isinstance(dexp, D3Evar):
        the_D2VUSED_add(dexp.arg1)
    elif isinstance(dexp, D3Edap0):
        d3exp000_mywork(dexp.arg1)
    elif isinstance(dexp, D3Edapp):
        d3exp000_mywork(dexp.arg1)
        d3explst_mywork(dexp.arg3)
    elif isinstance(dexp, D3Elet0):
        d3eclist_mywork(dexp.arg1)
        d3exp000_mywork(dexp.arg2)
    elif isinstance(dexp, D3Eift0):
        d3exp000_mywork(dexp.arg1)
        d3expopt_mywork(dexp.arg2)
        d3expopt_mywork(dexp.arg3)
    elif isinstance(dexp, D3Ewhere):
        d3exp000_mywork(dexp.arg1)
        d3eclist_mywork(dexp.arg2)
    elif isinstance(dexp, D3Eassgn):
        d3exp000_mywork(dexp.arg1)
        d3exp000_mywork(dexp.arg2)
    elif isinstance(dexp, D3Exazgn):
        d3exp000_mywork(dexp.arg1)
        d3exp000_mywork(dexp.arg2)
    elif isinstance(dexp, D3Exchng):
        d3exp000_mywork(dexp.arg1)
        d3exp000_mywork(dexp.arg2)
    elif isinstance(dexp, D3Eannot):
        d3exp000_mywork(dexp.arg1)
    elif isinstance(dexp, D3Eerrck):
        d3exp000_mywork(dexp.arg2)
    else:
        pass
    return None # end-of-[d3exp_mywork(...)]
#
def \
d3exp000_mywork(dexp: d3exp)->None:
    return d3exp_mywork(dexp)
def \
d3explst_mywork(d3es: d3explst)->None:
    return fnlist_foritm(d3es, d3exp_mywork)
def \
d3expopt_mywork(dopt: d3expopt)->None:
    return fnoptn_foritm(dopt, d3exp_mywork)
#
########################################################################
########################################################################
#
def \
d3pat_mywork(dpat: d3pat)->None:
    if False:
        pass
    elif isinstance(dpat, D3Pvar):
        the_D2VDEFD_add(dpat.arg1)
    elif isinstance(dpat, D3Pdapp):
        d3pat000_mywork(dpat.arg1)
        d3patlst_mywork(dpat.arg3)
    else:
        pass
    return None # end-of-[d3pat_mywork(...)]
#
def \
d3pat000_mywork(dpat: d3pat)->None:
    return d3pat_mywork(dpat)
def \
d3patlst_mywork(d3ps: d3patlst)->None:
    return fnlist_foritm(d3ps, d3pat_mywork)
def \
d3patopt_mywork(dopt: d3patopt)->None:
    return fnoptn_foritm(dopt, d3pat_mywork)
#
########################################################################
########################################################################
#
def \
d3ecl_mywork(d3cl: d3ecl)->None:
    return None # end-of-[d3ecl_mywork(...)]
#
def \
d3ecl000_mywork(d3cl: d3ecl)->None:
    return d3ecl_mywork(d3cl)
def \
d3eclist_mywork(dcls: d3eclist)->None:
    return fnlist_foritm(dcls, d3ecl_mywork)
#
########################################################################
########################################################################
#
def \
d3eclistopt_mywork(dopt: d3eclistopt)->None:
    return fnoptn_foritm(dopt, d3eclist_mywork)
#
########################################################################
########################################################################
#
def \
PY000_d3parsed_mywork\
(dpar: d3parsed)->None: return d3eclistopt_mywork(dpar.parsed)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj003@260725/DATS/CATS/dynexp3_mywork.py]
########################################################################
########################################################################
