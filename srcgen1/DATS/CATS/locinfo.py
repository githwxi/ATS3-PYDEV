########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
#
########################################################################
type sint = int
type strn = str
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
########################################################################
from DATS.CATS.filpath import *
########################################################################
@dataclass
class LCSRC000(ABC):
    pass
type lcsrc = LCSRC000
########################################################################
@dataclass
class LCSRCnone0(LCSRC000):
    pass
@dataclass
class LCSRCsome1(LCSRC000):
    arg1: strn
@dataclass
class LCSRCfpath(LCSRC000):
    arg1: fpath
########################################################################
#
def PY_LCSRCnone0()->LCSRCnone0:
    return LCSRCnone0()
def PY_LCSRCsome1(arg1: strn)->LCSRCsome1:
    return LCSRCsome1(arg1)
def PY_LCSRCfpath(arg1: fpath)->LCSRCfpath:
    return LCSRCfpath(arg1)
#
########################################################################
#
@dataclass
class postn_tbox:
    """
    A postn-value [pos] refers to a point
    in a char sequence; it minimally contains
    the total offset (ntot), the line number (nrow)
    and the line offset (ncol).
    """    
    ntot: sint
    nrow: sint
    ncol: sint
    pass
type postn = postn_tbox
#
@dataclass
class loctn_tbox:
    """
    A loctn-value [loc] refers to a range
    in a char sequence; it minimally contains
    certain info on the source of the sequence
    (e.g., the name of the file containing the
    char sequence), the starting position (loc.pbeg)
    of the range, and the ending position (loc.pend).
    """
    lsrc: lcsrc
    pbeg: postn
    pend: postn
    pass
type loctn = loctn_tbox
#
########################################################################
#
def \
PY_postn_make_int3 \
(ntot: sint, nrow: sint, ncol: sint) -> postn:
    return postn_tbox(ntot, nrow, ncol)
#
def \
PY_loctn_make_arg3 \
(arg1: lcsrc, arg2: postn, arg3: postn) -> loctn:
    return loctn_tbox(arg1, arg2, arg3)
def \
PY_loctn_make_fpath \
(arg1: fpath, arg2: postn, arg3: postn) -> loctn:
    return loctn_tbox(LCSRCfpath(arg1), arg2, arg3)
#
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/locinfo.py]
########################################################################
########################################################################
