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
@dataclass
class drpth_tbox:
    pass
type drpth = drpth_tbox
########################################################################
@dataclass
class fpath_tbox:
    gvn0: strn
    fnm1: strn
    fnm2: strn
    def __str__(self)->strn:
        return f"FPATH({self.fnm2})"
    def __repr__(self)->strn:
        return f"FPATH({self.fnm2!r})"
    pass
type fpath = fpath_tbox
########################################################################
#
def \
PY_fpath\
(gvn0: strn, fnm1: strn, fnm2: strn)->fpath:
    return fpath_tbox(gvn0, fnm1, fnm2)
#
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/filpath.py]
########################################################################
########################################################################
