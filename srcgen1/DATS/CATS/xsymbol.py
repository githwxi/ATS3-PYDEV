########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
#
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
from typing import Union
########################################################################
type sint = int
type strn = str
########################################################################
from xstamp0 import stamp
########################################################################
@dataclass
class symbl_tbox:
    name: strn
    stmp: stamp
    pass
######
type sym_t = symbl_tbox
type symbl = symbl_tbox
######
def \
symbl_make_arg2 \
(name: strn, stmp: stamp) -> symbl:
    return symbl_tbox(name, stmp)
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/xsymbol.py]
########################################################################
########################################################################
